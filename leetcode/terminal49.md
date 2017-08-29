Use cases:
* User can track state of ship
  * Moving, loading, unloading.
* QPS
  * Let's say 5000 ships at a time
  * Potentially 5000 ship updates at a given time.

Services:
- Emailing
  * Requires an email, 4-char sign + shipping company, state

Persistence:
* Storage
  * Will need to store information of all the ships and keep it updated
  * A table for 5000 ship records and their statuses.
  * A table for subscribers: email with 4-char sign + shipping company

Github API rate limit is 60/hr. Let's say this is typical.

The use case of this system is to allow a user to track the state of a ship. When a user wants to subscribe, they will need to provide their email address, the 4-char call sign, and the shipping company (or some named identifier that can map to that information), and we can write that information onto our subscription database.

Let's say we have 5000 ships at a given time, which means we potentially have to make requests to to an API for 5000 rows of data over 30 minutes. That is a lot of requests to make within a given time and we may have to worry about rate limiting. Take Github's rate limit for example: it is 60 requests per hour, or 30 requests per half hour.

With three separate APIs, we have 90 requests per half hour. We can try to do a batch request for ship statuses. We will need 5000 / 90 in each batch so ~56 per batch per half hour to not hit rate limit. Github API for example allows a batch of 100 per request. I've worked with other APIs that allow up to 200, so definitely doable. We don't have to do all these requests all at once, we do it over time and then update the database accordingly. With these made-up numbers, we will potentially have an average of 5000 writes over 1800 seconds, which gives us a query/second of less than 3, which is very low.

Now onto user subscriptions: I'll make the assumption that there are 20,000 users in a life time, maybe over the course of a single day, all the users on average would subscribe to 5 ships, which would make for 100,000 write (or delete) queries per day, which for 86400 seconds a day would make ~1 write query per second. Putting these two tables together (ship status and subscriptions), it does not even come close to the limits of a SQL database like Postgres. But so far that's only for writing to the database, but reading from the subscription database should seem very insignificant. Let's say each ship only updates it's status three times a day on average, then we'd have 15000 reads from the subscription database per 86400 seconds, which makes for less than 1 query per second.

While we send requests to the APIs and write them onto our database, we will keep track of all the ships that have their statuses changed. Then, we will query our subscription database for all rows that match the ships that have changed statuses which will return to us a list of email addresses. We can send an email using to all these email addresses in the background, using a background job processor like Sidekiq to send the update email. 

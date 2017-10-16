select * from city where countrycode = 'USA' and population >= 120000;
SELECT * FROM city WHERE id = 1661;
SELECT * FROM city WHERE countrycode = 'JPN';
SELECT DISTINCT city FROM station WHERE mod(id, 2) = 0;
SELECT COUNT(city) - count(DISTINCT city) FROM station;

SELECT city, length(city) FROM station ORDER BY length(city), city LIMIT 1;

SELECT city, length(city) FROM station ORDER BY length(city) DESC, city LIMIT 1;

-- These two are equivalent
SELECT DISTINCT city FROM station WHERE city REGEXP '^[aeiou].*';
SELECT DISTINCT city FROM station WHERE left(city, 1) REGEXP '[aeiou]';

SELECT DISTINCT city FROM station WHERE city REGEXP '.*[aeiou]$';

-- These two are equivalent
SELECT DISTINCT city FROM station WHERE left(city, 1) REGEXP '[aeiou]' AND right(city, 1) REGEXP '[aeiou]';
SELECT DISTINCT city from station WHERE city REGEXP '^[aeiou].*[aeiou]$';

SELECT DISTINCT city FROM station WHERE left(city, 1) REGEXP '[^aeiou]';

SELECT DISTINCT city FROM station WHERE right(city, 1) REGEXP '[^aeiou]';

-- These two are equivalent
SELECT DISTINCT city FROM station WHERE city REGEXP '^[^aeiou]|[^aeiou]$';
SELECT DISTINCT city FROM station WHERE left(city, 1) REGEXP '[^aeiou]' OR right(city, 1) REGEXP '[^aeiou]';

SELECT DISTINCT city FROM station WHERE left(city, 1) REGEXP '[^aeiou]' AND right(city, 1) REGEXP '[^aeiou]';

SELECT name FROM students WHERE marks > 75 ORDER BY right(name, 3) ASC, id ASC;

SELECT name FROM employee ORDER BY name ASC;

SELECT name FROM employee WHERE salary > 2000 AND months < 10 ORDER BY id ASC:

SELECT SUM(city.population) FROM city JOIN country ON city.countrycode = country.code where continent = 'Asia';

SELECT city.name FROM city JOIN country ON city.countrycode = country.code WHERE continent = 'Africa';

SELECT country.continent, FLOOR(AVG(city.population)) FROM city JOIN country ON city.countrycode = country.code GROUP BY country.continent;

SELECT if(grades.grade < 8, concat('NULL'), students.name), grades.grade, students.marks
FROM students
JOIN grades ON students.marks >= grades.min_mark AND students.marks <= grades.max_mark
ORDER BY students.marks DESC, students.name ASC, student.marks ASC;

SELECT if(grades.grade < 8, concat('NULL'), students.name), grades.grade, students.marks
FROM students
JOIN grades ON students.marks >= grades.min_mark AND students.marks <= grades.max_mark
GROUP BY grades.grade DESC, students.name ASC, students.marks ASC;

SELECT hackers.hacker_id, hackers.name
FROM submissions
JOIN challenges ON challenges.challenge_id = submissions.challenge_id
JOIN difficulty ON challenges.difficulty_level = difficulty.difficulty_level
JOIN hackers ON submissions.hacker_id = hackers.hacker_id
WHERE submissions.score = difficulty.score AND challenges.difficulty_level = difficulty.difficulty_level
GROUP BY hackers.name, hackers.hacker_id
HAVING COUNT(submissions.hacker_id) > 1
ORDER BY COUNT(submissions.hacker_id) DESC, hackers.hacker_id ASC;

SELECT COUNT(id) FROM CITY WHERE population > 100000;

SELECT SUM(population) FROM CITY WHERE district = 'California';

SELECT AVG(population) FROM CITY WHERE district IS 'California';

SELECT FLOOR(AVG(population)) FROM CITY;

SELECT SUM(population) FROM CITY where COUNTRYCODE = 'JPN';

SELECT MAX(population) - MIN(population) FROM CITY;

SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', ''))) FROM EMPLOYEES;

SELECT (salary * months) AS total_earnings, COUNT(*) FROM employee GROUP BY total_earnings ORDER BY total_earnings DESC limit 1;

SELECT ROUND(SUM(lat_n), 2), ROUND(SUM(long_w), 2) FROM station;

SELECT ROUND(SUM(lat_n), 4) FROM station WHERE lat_n BETWEEN 38.7880 AND 137.2345;

SELECT ROUND(MAX(lat_n), 4) FROM station WHERE lat_n <= 137.2345;

SELECT ROUND(long_w, 4) FROM station WHERE lat_n <= 137.2345 ORDER BY lat_n DESC LIMIT 1;

SELECT ROUND(MIN(lat_n), 4) FROM station WHERE lat_n >= 38.7780;

SELECT ROUND(long_w, 4) FROM station WHERE lat_n >= 38.7780 ORDER_BY lat_n ASC LIMIT 1;

SELECT ROUND(
  ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MIN(long_w) - MAX(long_w)),
  4) FROM station;

SELECT ROUND(
  POWER(POWER(MIN(lat_n) - MAX(lat_n), 2) + POWER(MIN(long_w) - MAX(long_w), 2), 0.5), 4
) FROM station;

SELECT name, population, area
  FROM world
 WHERE population >= 25000000 OR area >= 3000000;

SELECT person.FirstName, person.astname, address.city, address.state
FROM person
LEFT JOIN address ON person.personid = address.personid;

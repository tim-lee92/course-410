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

SELECT wands.id, wands_property.age, wands.coins_needed, wands.power
FROM wands
JOIN wands_property ON wands.code = wands_property.code
WHERE wands_property.is_evil = 0
GROUP BY wands_property.age, wands.power
ORDER BY wands.power DESC, wands_property.age DESC;

SELECT wands.id, wands_property.age, wands.coins_needed, wands.power
FROM wands
JOIN wands_property ON wands.code = wands_property.code
WHERE wands_property.is_evil = 0 and wands.coins_needed =

-- States, Counties

-- 1 a
/* Write a Query that returns all the unique state 
names. */

SELECT DISTINCT state
FROM zipcodes
ORDER BY state ASC;

-- 1 b
/* Write a Query that returns all the Counties 
by State 
on separate lines. */

SELECT DISTINCT county, state
FROM zipcodes
ORDER BY state ASC, county ASC;

-- 1 c
/* Write a Query that returns all the Counties 
by state, 
as a concatenated string. */

SELECT GROUP_CONCAT(county), state
FROM zipcodes
GROUP BY state
ORDER BY state ASC;

-- 1 d
/* Write a Query that returns number of Counties 
by state. */

SELECT state, count(county)
FROM zipcodes
GROUP BY state
ORDER BY state ASC;

-- 1 e
/* Write a Query that returns all of the individual 
timezones. */

SELECT DISTINCT timezone
FROM zipcodes
ORDER BY timezone ASC;

-- There are many errors in the timezone column.
-- Perhaps this carries over into the next exercise.


-- Fixing Data 

-- 1 f

SELECT zip, city, state, county, timezone
FROM zipcodes
WHERE timezone = 'FALSE'
OR timezone is NULL;
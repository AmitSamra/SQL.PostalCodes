-- 2
/* Write a Query that returns the city, state and 
number of instances of all of the FALSE or NULL timezones. */

SELECT state, city, count(timezone)
FROM zipcodes
WHERE timezone = 'FALSE' OR timezone is NULL
GROUP BY state, city
ORDER BY state ASC, city ASC;

--or

SELECT state, city,
count(timezone) OVER(PARTITION BY state, city)
FROM zipcodes
WHERE timezone = 'FALSE' OR timezone is NULL
ORDER BY state ASC, city ASC; 

-- Not sure about the latter one above. Ask Dolio. 
-- 6
/* Write a Query that returns the city, state and number of 
instances of all of the timezones that have pipes (|) in them. */

SELECT zip, city, state, county,
(
    SELECT count(timezone)
    FROM zipcodes
    WHERE timezone like '%|%'
) a
FROM zipcodes
WHERE timezone like '%|%'
GROUP BY zip, city, state, county
ORDER BY state, city;
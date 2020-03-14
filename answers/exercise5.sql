-- 5 
/* Write a Query that locates the zipcode, city, state, and 
county of all of the timezones that have pipes (|) in them. */

SELECT zip, city, state, county, timezone
FROM zipcodes
WHERE timezone like '%|%'
ORDER BY state, city;
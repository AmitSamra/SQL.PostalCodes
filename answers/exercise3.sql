-- 3
/* Write a Query that finds the correct value for the missing 
timezones based on shared city, state or city, state, and county. */

SELECT z1.state, z1.city, z1.zip, z1.timezone, z2.state, z2.city, z2.zip, z2.timezone
FROM zipcodes AS z1 JOIN zipcodes AS z2
ON z1.zip = z2.zip
WHERE z1.timezone IS NOT NULL AND z2.timezone != 'FALSE'
ORDER BY z1.zip ASC;
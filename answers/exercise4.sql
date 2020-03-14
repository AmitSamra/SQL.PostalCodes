-- 4
/* Write a query that locates the correct values and updates 
the FALSE and NULL values. */

UPDATE zipcodes AS z1 
SET z1.timezone = z2.timezone
FROM 
(
	SELECT name, city
	FROM z1.zipcodes 
	WHERE z1.timezone IS NOT NULL
	GROUP BY state
) as z2
WHERE z1.timezone IS NULL
AND z1.state = z2.state;
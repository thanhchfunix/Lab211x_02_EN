--query the names of all cities where the CONTINENT is 'Africa'

SELECT c.name FROM City as c
INNER JOIN Country as ct
ON c.countrycode = ct.code
WHERE ct.continent = 'Africa'
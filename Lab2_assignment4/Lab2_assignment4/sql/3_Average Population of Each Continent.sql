--query the names of all the continents (COUNTRY.Continent) and their respective
--average city populations (CITY.Population) rounded down to the nearest integer
--TABLE: CITY and COUNTRY

SELECT ct.continent, FLOOR(AVG(c.population)) FROM City as c
INNER JOIN Country as ct
ON c.countrycode = ct.code
GROUP BY ct.continent

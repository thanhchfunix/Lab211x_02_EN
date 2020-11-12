--sum of the populations of all cities where the CONTINENT is 'Asia'

SELECT SUM(c.Population) FROM City as c
Inner Join Country as ct
On c.countrycode = ct.code and ct.continent = 'Asia'
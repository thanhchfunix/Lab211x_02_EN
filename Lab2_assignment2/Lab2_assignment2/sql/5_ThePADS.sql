SELECT CONCAT(Name, '(', Left(Occupation,1),')')
FROM Occupations
ORDER BY Name ASC

SELECT "There are a total of ", count(Occupation), concat(lower(Occupation),"s.")
FROM Occupations
GROUP BY Occupation
ORDER BY count(Occupation), Occupation ASC
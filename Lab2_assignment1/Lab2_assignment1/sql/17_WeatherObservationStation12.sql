SELECT DISTINCT CITY FROM STATION
WHERE NOT (LEFT(CITY, 1) = 'A' OR LEFT(CITY, 1) = 'E' OR LEFT(CITY, 1) = 'I' OR LEFT(CITY, 1) = 'O' OR LEFT(CITY, 1) = 'U')
AND NOT (RIGHT(CITY, 1) = 'a' OR RIGHT(CITY, 1) = 'e' OR RIGHT(CITY, 1) = 'i' OR RIGHT(CITY, 1) = 'o' OR RIGHT(CITY, 1) = 'u')
--Point P1(a, b), P2(c, d)
--a: equal the minimum value in Northern Latitude (LAT_N in STATION)
--b: equal the minimum value in Western Longitude (LONG_W in STATION).
--c: equal the maximum value in Northern Latitude (LAT_N in STATION).
--d: equal the maximum value in Western Longitude (LONG_W in STATION).
--Query the Manhattan Distance between points P1 and P2
--round it to a scale of 4 decimal places

SELECT ROUND(MAX(LAT_N) - MIN(LAT_N), 4) + ROUND(MAX(LONG_W) - MIN(LONG_W), 4)
FROM STATION;


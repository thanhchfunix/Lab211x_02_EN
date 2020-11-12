--Query: - The sum of all values in LAT_N rounded to a scale of  decimal places.
--The sum of all values in LONG_W rounded to a scale of  decimal places.
-- ID(int), CITY(varchar), STATE(varchar), LAT_N(float), LONG_W(float)
SELECT ROUND(CUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;
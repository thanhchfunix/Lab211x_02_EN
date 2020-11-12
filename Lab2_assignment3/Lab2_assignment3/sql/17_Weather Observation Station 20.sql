--A median is defined as a number separating the higher half 
--of a data set from the lower half
--Query the median of the Northern Latitudes (LAT_N) from STATION
--round answer to 4 decimal places

SELECT
 cast(((SELECT MAX(LAT_N) FROM
   (SELECT TOP 50 PERCENT LAT_N FROM Station ORDER BY LAT_N) AS BottomHalf)
 +
 (SELECT MIN(LAT_N) FROM
   (SELECT TOP 50 PERCENT LAT_N FROM Station ORDER BY LAT_N DESC) AS TopHalf)
) / 2 as decimal(10, 4)) AS Median
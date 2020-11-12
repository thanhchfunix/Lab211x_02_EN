--Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N)
--in STATION is greater than 38.7780
--Round answer to 4 decimal places

Select Round(LONG_W, 4) From STATION
Where LAT_N > 38.7780
Order By LAT_N ASC
Limit 1;
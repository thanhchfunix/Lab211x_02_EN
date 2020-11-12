--Query the smallest Northern Latitude (LAT_N) from STATION that is greater than
--38.7780
--Round answer to 4 decimal places

Select Round(Min(LAT_N), 4) From STATION
Where LAT_N > 38.7780
--Query the greatest value of the Northern Latitudes (LAT_N) from STATION
--that is less than 137.2345
--Truncate answer to 4 decimal places
Select Round(Max(LAT_N), 4) From STATION
Where LAT_N < 137.2345;
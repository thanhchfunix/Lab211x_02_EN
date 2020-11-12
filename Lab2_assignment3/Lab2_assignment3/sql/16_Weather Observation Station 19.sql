--Query the Euclidean Distance between points P1 and P2
--Display 4 decimal digits

Select 
	Round(Sqrt(Power(Max(LAT_N) - Min(LAT_N), 2) + Power(Max(LONG_W) - Min(LONG_W), 2)), 4) 
From STATION;
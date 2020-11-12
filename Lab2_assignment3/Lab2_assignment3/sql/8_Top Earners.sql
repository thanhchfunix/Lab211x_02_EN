--find the maximum total earnings for all employees as well as 
--the total number of employees who have maximum total earnings. 
--Then print these values as  space-separated integers
--total earning = month * salary
SELECT TOP 1 (salary * months), count (*) FROM Employee
GROUP BY (salary * months)
ORDER BY (salary * months) DESC
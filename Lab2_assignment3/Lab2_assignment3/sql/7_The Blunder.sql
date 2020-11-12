--finding the difference between miscalculation (using salaries with any zeroes 
--removed), and the actual average salary
SELECT CEILING(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) FROM Employees
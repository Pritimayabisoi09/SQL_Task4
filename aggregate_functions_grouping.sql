
-- Total Salary Paid to All Employees
SELECT SUM(Salary) AS Total_Salary
FROM Employees;

-- Average Salary in Each Department
SELECT Department, AVG(Salary) AS Avg_Salary
FROM Employees
GROUP BY Department;

-- Total Number of Employees in Each Department
SELECT Department, COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department;

-- Departments with More Than 1 Employee
SELECT Department, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 1;

-- Departments with Total Salary Greater Than 100000
SELECT Department, SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department
HAVING SUM(Salary) > 100000;

-- Maximum and Minimum Salary by Department
SELECT Department, MAX(Salary) AS Max_Salary, MIN(Salary) AS Min_Salary
FROM Employees
GROUP BY Department;

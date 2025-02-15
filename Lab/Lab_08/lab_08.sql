-- a) Display the employee details for departments that are the same in both the Emp and Dept tables
SELECT e.*
FROM Emp e
JOIN Dept d ON e.deptno = d.deptno;

-- b) Display the employee name and department name using a left outer join
SELECT e.ename AS Employee_Name, d.dname AS Department_Name
FROM Emp e
LEFT JOIN Dept d ON e.deptno = d.deptno;

-- c) Display the employee name and department name using a right outer join
SELECT e.ename AS Employee_Name, d.dname AS Department_Name
FROM Emp e
RIGHT JOIN Dept d ON e.deptno = d.deptno;

-- d) Display the details of employees who draw a salary greater than the average salary
WITH AvgSal AS (
    SELECT AVG(sal) AS Average_Salary
    FROM Emp
)
SELECT e.*
FROM Emp e
JOIN AvgSal a ON e.sal > a.Average_Salary;

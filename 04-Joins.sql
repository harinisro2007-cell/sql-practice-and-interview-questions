-- INNER JOIN

SELECT Employees.name, Departments.dept_name
FROM Employees
INNER JOIN Departments
ON Employees.dept_id = Departments.dept_id;


-- INNER JOIN with multiple columns

SELECT Employees.name, Employees.salary, Departments.dept_name
FROM Employees
INNER JOIN Departments
ON Employees.dept_id = Departments.dept_id;


-- LEFT JOIN

SELECT Employees.name, Departments.dept_name
FROM Employees
LEFT JOIN Departments
ON Employees.dept_id = Departments.dept_id;


-- RIGHT JOIN

SELECT Employees.name, Departments.dept_name
FROM Employees
RIGHT JOIN Departments
ON Employees.dept_id = Departments.dept_id;


-- JOIN with WHERE

SELECT Employees.name, Employees.salary, Departments.dept_name
FROM Employees
INNER JOIN Departments
ON Employees.dept_id = Departments.dept_id
WHERE Employees.salary > 50000;


-- JOIN with GROUP BY

SELECT Departments.dept_name, AVG(Employees.salary) AS average_salary
FROM Employees
INNER JOIN Departments
ON Employees.dept_id = Departments.dept_id
GROUP BY Departments.dept_name;


-- JOIN with GROUP BY and HAVING

SELECT Departments.dept_name, AVG(Employees.salary) AS average_salary
FROM Employees
INNER JOIN Departments
ON Employees.dept_id = Departments.dept_id
GROUP BY Departments.dept_name
HAVING AVG(Employees.salary) > 50000;

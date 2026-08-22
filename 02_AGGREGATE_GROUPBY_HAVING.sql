-- Aggregate Functions

SELECT COUNT(*)
FROM Employees;

SELECT SUM(salary)
FROM Employees;

SELECT AVG(salary)
FROM Employees;

SELECT MAX(salary)
FROM Employees;

SELECT MIN(salary)
FROM Employees;


-- GROUP BY

SELECT dept_id, COUNT(*)
FROM Employees
GROUP BY dept_id;

SELECT dept_id, AVG(salary)
FROM Employees
GROUP BY dept_id;

SELECT dept_id, MAX(salary)
FROM Employees
GROUP BY dept_id;

SELECT dept_id, MIN(salary)
FROM Employees
GROUP BY dept_id;

SELECT dept_id, SUM(salary)
FROM Employees
GROUP BY dept_id;


-- GROUP BY with multiple columns

SELECT dept_id, city, AVG(salary)
FROM Employees
GROUP BY dept_id, city;


-- HAVING

SELECT dept_id, AVG(salary)
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > 50000;


SELECT dept_id, COUNT(*)
FROM Employees
GROUP BY dept_id
HAVING COUNT(*) >= 3;


-- GROUP BY + HAVING + ORDER BY

SELECT dept_id, AVG(salary) AS average_salary
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > 50000
ORDER BY average_salary DESC;

-- SELECT
SELECT * FROM Employees;

SELECT name, salary
FROM Employees;


-- WHERE
SELECT name, salary
FROM Employees
WHERE salary > 50000;


-- AND
SELECT name, salary, dept_id
FROM Employees
WHERE salary > 50000
AND dept_id = 101;


-- OR
SELECT name, dept_id
FROM Employees
WHERE dept_id = 101
OR dept_id = 102;


-- BETWEEN
SELECT name, salary
FROM Employees
WHERE salary BETWEEN 40000 AND 70000;


-- IN
SELECT name, dept_id
FROM Employees
WHERE dept_id IN (101, 102, 103);


-- LIKE
SELECT name
FROM Employees
WHERE name LIKE 'A%';


-- ORDER BY ASC
SELECT name, salary
FROM Employees
ORDER BY salary ASC;


-- ORDER BY DESC
SELECT name, salary
FROM Employees
ORDER BY salary DESC;


-- Multiple columns
SELECT name, dept_id, salary
FROM Employees
ORDER BY dept_id ASC, salary DESC;


-- LIMIT
SELECT name, salary
FROM Employees
ORDER BY salary DESC
LIMIT 5;

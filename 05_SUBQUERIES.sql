-- SUBQUERIES


-- 1. Employees earning more than the average salary

SELECT name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);


-- 2. Employee with the highest salary

SELECT name, salary
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
);


-- 3. Employees earning the minimum salary

SELECT name, salary
FROM Employees
WHERE salary = (
    SELECT MIN(salary)
    FROM Employees
);


-- 4. Employees earning more than the highest salary
-- in department 101

SELECT name, salary
FROM Employees
WHERE salary > (
    SELECT MAX(salary)
    FROM Employees
    WHERE dept_id = 101
);


-- 5. Employees belonging to the department
-- that has the highest average salary

SELECT name, dept_id, salary
FROM Employees
WHERE dept_id = (
    SELECT dept_id
    FROM Employees
    GROUP BY dept_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);


-- 6. Second highest salary

SELECT name, salary
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM Employees
    )
);

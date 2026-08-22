-- CTE


-- 1. CTE to calculate average salary

WITH AverageSalary AS (
    SELECT AVG(salary) AS avg_salary
    FROM Employees
)
SELECT *
FROM AverageSalary;


-- 2. Employees earning more than average salary

WITH AverageSalary AS (
    SELECT AVG(salary) AS avg_salary
    FROM Employees
)
SELECT name, salary
FROM Employees, AverageSalary
WHERE salary > avg_salary;


-- 3. Average salary by department

WITH DepartmentSalary AS (
    SELECT dept_id, AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)
SELECT *
FROM DepartmentSalary;


-- 4. Departments with average salary greater than 50000

WITH DepartmentSalary AS (
    SELECT dept_id, AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)
SELECT *
FROM DepartmentSalary
WHERE average_salary > 50000;


-- 5. CTE with JOIN

WITH DepartmentSalary AS (
    SELECT dept_id, AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)
SELECT Departments.dept_name,
       DepartmentSalary.average_salary
FROM DepartmentSalary
INNER JOIN Departments
ON DepartmentSalary.dept_id = Departments.dept_id;

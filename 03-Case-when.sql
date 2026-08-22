-- CASE WHEN

SELECT name, salary,
       CASE
           WHEN salary >= 70000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM Employees;


-- CASE WHEN with department

SELECT name, dept_id,
       CASE
           WHEN dept_id = 101 THEN 'HR'
           WHEN dept_id = 102 THEN 'IT'
           WHEN dept_id = 103 THEN 'Finance'
           ELSE 'Other'
       END AS department_name
FROM Employees;


-- CASE WHEN with SUM

SELECT SUM(
           CASE
               WHEN salary >= 50000 THEN salary
               ELSE 0
           END
       ) AS total_salary
FROM Employees;


-- CASE WHEN with COUNT

SELECT COUNT(
           CASE
               WHEN salary >= 50000 THEN 1
           END
       ) AS employees_above_50000
FROM Employees;

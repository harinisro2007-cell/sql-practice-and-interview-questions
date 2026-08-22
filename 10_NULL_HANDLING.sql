-- NULL HANDLING

-- IS NULL
SELECT *
FROM Employees
WHERE salary IS NULL;


-- IS NOT NULL
SELECT *
FROM Employees
WHERE salary IS NOT NULL;


-- COALESCE()
SELECT name, COALESCE(salary, 0) AS salary
FROM Employees;


-- COALESCE() WITH CALCULATION
SELECT name,
       salary + COALESCE(bonus, 0) AS total
FROM Employees;


-- COALESCE() WITH MULTIPLE VALUES
SELECT name,
       COALESCE(bonus, commission, 0) AS amount
FROM Employees;


-- CASE WHEN WITH NULL
SELECT name,
       CASE
           WHEN salary IS NULL THEN 'Missing'
           WHEN salary >= 50000 THEN 'High'
           ELSE 'Low'
       END AS salary_status
FROM Employees;

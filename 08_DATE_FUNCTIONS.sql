-- DATE FUNCTIONS

-- CURRENT_DATE
SELECT CURRENT_DATE;


-- EXTRACT YEAR
SELECT name, joining_date,
       EXTRACT(YEAR FROM joining_date) AS year
FROM Employees;


-- EXTRACT MONTH
SELECT name, joining_date,
       EXTRACT(MONTH FROM joining_date) AS month
FROM Employees;


-- EXTRACT DAY
SELECT name, joining_date,
       EXTRACT(DAY FROM joining_date) AS day
FROM Employees;


-- DATEDIFF
SELECT name, joining_date,
       DATEDIFF(CURRENT_DATE, joining_date) AS days_worked
FROM Employees;


-- DATE_ADD
SELECT name, joining_date,
       DATE_ADD(joining_date, INTERVAL 1 YEAR) AS new_date
FROM Employees;


-- DATE_SUB
SELECT name, joining_date,
       DATE_SUB(joining_date, INTERVAL 1 MONTH) AS previous_date
FROM Employees;


-- DATE FILTERING
SELECT *
FROM Employees
WHERE joining_date >= '2024-01-01';

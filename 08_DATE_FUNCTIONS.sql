-- DATE FUNCTIONS

-- 1. CURRENT DATE
SELECT CURDATE();

-- 2. CURRENT DATE AND TIME
SELECT NOW();

-- 3. EXTRACT YEAR
SELECT name, hire_date,
       YEAR(hire_date) AS hire_year
FROM Employees;

-- 4. EXTRACT MONTH
SELECT name, hire_date,
       MONTH(hire_date) AS hire_month
FROM Employees;

-- 5. EXTRACT DAY
SELECT name, hire_date,
       DAY(hire_date) AS hire_day
FROM Employees;

-- 6. DATE DIFFERENCE
SELECT name, hire_date,
       DATEDIFF(CURDATE(), hire_date) AS days_worked
FROM Employees;

-- 7. ADD DAYS TO DATE
SELECT name, hire_date,
       DATE_ADD(hire_date, INTERVAL 30 DAY) AS new_date
FROM Employees;

-- 8. SUBTRACT DAYS FROM DATE
SELECT name, hire_date,
       DATE_SUB(hire_date, INTERVAL 30 DAY) AS previous_date
FROM Employees;

-- 9. FILTER BY YEAR
SELECT name, hire_date
FROM Employees
WHERE YEAR(hire_date) = 2025;

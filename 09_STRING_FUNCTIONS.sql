-- STRING FUNCTIONS

-- UPPER()
SELECT UPPER(name) AS name_upper
FROM Employees;


-- LOWER()
SELECT LOWER(name) AS name_lower
FROM Employees;


-- LENGTH()
SELECT name, LENGTH(name) AS name_length
FROM Employees;


-- CONCAT()
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM Employees;


-- SUBSTRING()
SELECT name, SUBSTRING(name, 1, 3) AS first_three
FROM Employees;


-- TRIM()
SELECT TRIM(name) AS cleaned_name
FROM Employees;


-- REPLACE()
SELECT name, REPLACE(city, 'Chennai', 'Madras') AS new_city
FROM Employees;

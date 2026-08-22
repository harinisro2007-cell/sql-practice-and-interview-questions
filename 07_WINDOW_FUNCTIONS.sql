-- WINDOW FUNCTIONS


-- 1. ROW_NUMBER

SELECT name, salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM Employees;


-- 2. RANK

SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Employees;


-- 3. DENSE_RANK

SELECT name, salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Employees;


-- 4. Window function with ORDER BY ASC

SELECT name, salary,
       ROW_NUMBER() OVER (ORDER BY salary ASC) AS row_num
FROM Employees;


-- 5. Ranking employees by salary

SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Employees;


-- 6. Multiple window functions

SELECT name, salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num,
       RANK() OVER (ORDER BY salary DESC) AS rank_num,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_num
FROM Employees;

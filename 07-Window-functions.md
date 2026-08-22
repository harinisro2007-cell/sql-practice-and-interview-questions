# Window Functions

Window functions let us do calculations across a set of rows, like ranking or numbering, without collapsing the rows like GROUP BY does. We still get every row back, just with an extra column added.

## 1. ROW_NUMBER

This gives each row a unique number based on the order we specify. Even if two people have the same salary, they still get different numbers.

```sql
SELECT name, salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM Employees;
```

Example output: highest salary gets 1, next gets 2, and so on, with no repeats.

## 2. RANK

This also ranks the rows, but if two rows have the same salary, they get the same rank. After a tie, it skips the next number.

```sql
SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Employees;
```

Example: if two people are tied for rank 1, the next person gets rank 3, not 2.

## 3. DENSE_RANK

This works like RANK, but it does not skip numbers after a tie.

```sql
SELECT name, salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM Employees;
```

Example: if two people are tied for rank 1, the next person gets rank 2, not 3.

## 4. Window function with ORDER BY ASC

We can also order in ascending order instead of descending, this time the lowest salary gets number 1.

```sql
SELECT name, salary,
       ROW_NUMBER() OVER (ORDER BY salary ASC) AS row_num
FROM Employees;
```

## 5. Ranking employees by salary within each department

This ranks employees separately inside each department, so each department starts at rank 1.

    SELECT name, dept_id, salary,
           RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS dept_salary_rank
    FROM Employees;



## 6. Multiple window functions together

We can also use more than one window function in the same query, this is helpful to compare how each one handles ties differently, side by side.

```sql
SELECT name, salary,
       ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num,
       RANK() OVER (ORDER BY salary DESC) AS rank_num,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank_num
FROM Employees;
```

This makes it easy to see, for the same tied salaries, how row_num keeps counting normally, rank_num skips numbers, and dense_rank_num does not.
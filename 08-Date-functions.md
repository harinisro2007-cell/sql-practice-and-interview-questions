# Date Functions

Date functions help us work with dates, things like getting today's date, pulling out the year or month from a date, finding the difference between two dates, or adding/subtracting time.

## CURRENT_DATE

This simply gives us today's date.

```sql
SELECT CURRENT_DATE;
```

Example output: `2026-08-22`

## EXTRACT YEAR

This pulls out just the year part from a date column.

```sql
SELECT name, joining_date,
       EXTRACT(YEAR FROM joining_date) AS year
FROM Employees;
```

If joining_date is `2022-05-14`, this returns `2022`.

## EXTRACT MONTH

This pulls out just the month part from a date column.

```sql
SELECT name, joining_date,
       EXTRACT(MONTH FROM joining_date) AS month
FROM Employees;
```

If joining_date is `2022-05-14`, this returns `5`.

## EXTRACT DAY

This pulls out just the day part from a date column.

```sql
SELECT name, joining_date,
       EXTRACT(DAY FROM joining_date) AS day
FROM Employees;
```

If joining_date is `2022-05-14`, this returns `14`.

## DATEDIFF

This tells us how many days are there between two dates. It is useful for finding how long someone has worked.

```sql
SELECT name, joining_date,
       DATEDIFF(CURRENT_DATE, joining_date) AS days_worked
FROM Employees;
```

If joining_date was a year ago, this would return something close to `365`.

## DATE_ADD

This adds a certain amount of time to a date. Here we are adding 1 year to the joining date.

```sql
SELECT name, joining_date,
       DATE_ADD(joining_date, INTERVAL 1 YEAR) AS new_date
FROM Employees;
```

If joining_date is `2022-05-14`, this returns `2023-05-14`.

## DATE_SUB

This subtracts a certain amount of time from a date. Here we are going back 1 month from the joining date.

```sql
SELECT name, joining_date,
       DATE_SUB(joining_date, INTERVAL 1 MONTH) AS previous_date
FROM Employees;
```

If joining_date is `2022-05-14`, this returns `2022-04-14`.

## Date Filtering

We can also use dates in a WHERE clause to filter rows, like getting only employees who joined after a certain date.

```sql
SELECT *
FROM Employees
WHERE joining_date >= '2024-01-01';
```

This returns only the employees who joined on or after 1st January 2024.
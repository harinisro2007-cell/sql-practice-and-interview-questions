# NULL Handling

In SQL, NULL means the value is missing or unknown. It is not the same as 0 or an empty string. Because of this, we cannot use `=` to check for NULL, we have to use special keywords.

## IS NULL

Use this when you want to find rows where a column has no value.

```sql
SELECT *
FROM Employees
WHERE salary IS NULL;
```

## IS NOT NULL

Use this when you want to find rows where a column does have a value.

```sql
SELECT *
FROM Employees
WHERE salary IS NOT NULL;
```

## COALESCE()

Sometimes a NULL value in the result looks bad or breaks a calculation. COALESCE() lets us replace NULL with a value of our choice.

```sql
SELECT name, COALESCE(salary, 0) AS salary
FROM Employees;
```

Here, if salary is NULL, it will show 0 instead.

## COALESCE() with a calculation

This is useful when we are adding two columns and one of them might be NULL. If we don't handle it, the whole result becomes NULL.

```sql
SELECT name,
       salary + COALESCE(bonus, 0) AS total
FROM Employees;
```

If bonus is NULL, it is treated as 0, so the total still comes out correctly.

## COALESCE() with multiple values

COALESCE() can take more than one column. It checks each one in order and returns the first value that is not NULL.

```sql
SELECT name,
       COALESCE(bonus, commission, 0) AS amount
FROM Employees;
```

So it checks bonus first, if that is NULL it checks commission, and if that is also NULL it finally uses 0.

## CASE WHEN with NULL

We can also handle NULL inside a CASE statement, this is useful when we want to label the data.

```sql
SELECT name,
       CASE
           WHEN salary IS NULL THEN 'Missing'
           WHEN salary >= 50000 THEN 'High'
           ELSE 'Low'
       END AS salary_status
FROM Employees;
```
# CTEs (Common Table Expressions)

A CTE is basically a temporary named result that we create using WITH, and then use it in a query right after, like a mini table we build for one query. It makes complex queries easier to read, especially when we need to reuse a calculation.

## 1. CTE to calculate average salary

Here we create a CTE called AverageSalary that holds just one value, the average salary. Then we select from it.

```sql
WITH AverageSalary AS (
    SELECT AVG(salary) AS avg_salary
    FROM Employees
)
SELECT *
FROM AverageSalary;
```

## 2. Employees earning more than average salary

Now we use that same CTE to compare each employee's salary against the average. This is much cleaner than writing the AVG() calculation again inside the WHERE clause.

```sql
WITH AverageSalary AS (
    SELECT AVG(salary) AS avg_salary
    FROM Employees
)
SELECT name, salary
FROM Employees, AverageSalary
WHERE salary > avg_salary;
```

## 3. Average salary by department

Here the CTE groups salaries by department first, so we get one average per department.

```sql
WITH DepartmentSalary AS (
    SELECT dept_id, AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)
SELECT *
FROM DepartmentSalary;
```

## 4. Departments with average salary greater than 50000

Once we have the department-wise average from the CTE, we can filter it just like a normal table.

```sql
WITH DepartmentSalary AS (
    SELECT dept_id, AVG(salary) AS average_salary
    FROM Employees
    GROUP BY dept_id
)
SELECT *
FROM DepartmentSalary
WHERE average_salary > 50000;
```

## 5. CTE with JOIN

We can also join a CTE with another table, here we take the department averages and join them with the Departments table to get the actual department names instead of just IDs.

```sql
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
```
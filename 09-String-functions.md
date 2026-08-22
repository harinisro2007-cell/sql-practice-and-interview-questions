# String Functions

String functions let us work with text data, things like changing case, joining text together, cutting out parts of a string, or replacing words.

## UPPER()

This converts all the letters in a column to uppercase.

```sql
SELECT UPPER(name) AS name_upper
FROM Employees;
```

## LOWER()

This converts all the letters in a column to lowercase.

```sql
SELECT LOWER(name) AS name_lower
FROM Employees;
```

## LENGTH()

This tells us how many characters are there in a string.

```sql
SELECT name, LENGTH(name) AS name_length
FROM Employees;
```

## CONCAT()

This joins two or more strings together. It is useful when we want to combine columns, like first name and last name into one.

```sql
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM Employees;
```

## SUBSTRING()

This is used to pick out a part of a string. We give it a starting position and how many characters we want.

```sql
SELECT name, SUBSTRING(name, 1, 3) AS first_three
FROM Employees;
```

Here it starts from position 1 and takes 3 characters.

## TRIM()

This removes extra spaces from the beginning and end of a string. It is helpful when data has been entered with unwanted spaces.

```sql
SELECT TRIM(name) AS cleaned_name
FROM Employees;
```

## REPLACE()

This finds a word inside a string and replaces it with another word.

```sql
SELECT name, REPLACE(city, 'Chennai', 'Madras') AS new_city
FROM Employees;
```

Here every occurrence of "Chennai" in the city column gets replaced with "Madras".
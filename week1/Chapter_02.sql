--------------------------------------------------------------
-- Practical SQL: A Beginner's Guide to Storytelling with Data
-- by Anthony DeBarros

-- Chapter 2 Code Examples
--------------------------------------------------------------

-- Listing 2-1: Querying all rows and columns from the teachers table

SELECT * FROM analysis.teachers;

-- Listing 2-2: Querying a subset of columns

SELECT last_name, first_name, salary FROM analysis.teachers;

-- Listing 2-3: Querying distinct values in the school column

SELECT DISTINCT school
FROM analysis.teachers;

-- Listing 2-4: Querying distinct pairs of values in the school and salary
-- columns

SELECT DISTINCT school, salary
FROM analysis.teachers;

-- Listing 2-5: Sorting a column with ORDER BY

SELECT first_name, last_name, salary
FROM analysis.teachers
ORDER BY salary DESC;

-- Listing 2-6: Sorting multiple columns with ORDER BY

SELECT last_name, school, hire_date
FROM analysis.teachers
ORDER BY school ASC, hire_date DESC;

-- Listing 2-7: Filtering rows using WHERE

SELECT last_name, school, hire_date
FROM analysis.teachers
WHERE school = 'Myers Middle School';

-- Examples of WHERE comparison operators

-- Teachers with first name of Janet
SELECT first_name, last_name, school
FROM analysis.teachers
WHERE first_name = 'Janet';

-- School names not equal to F.D. Roosevelt HS
SELECT school
FROM analysis.teachers
WHERE school != 'F.D. Roosevelt HS';

-- Teachers hired before Jan. 1, 2000
SELECT first_name, last_name, hire_date
FROM analysis.teachers
WHERE hire_date < '2000-01-01';

-- Teachers earning 43,500 or more
SELECT first_name, last_name, salary
FROM analysis.teachers
WHERE salary >= 43500;

-- Teachers who earn between $40,000 and $65,000
SELECT first_name, last_name, school, salary
FROM analysis.teachers
WHERE salary BETWEEN 40000 AND 65000;

-- Listing 2-8: Filtering with LIKE AND ILIKE

SELECT first_name
FROM analysis.teachers
WHERE first_name LIKE 'sam%';

SELECT first_name
FROM analysis.teachers
WHERE first_name LIKE 'sam%';

-- Listing 2-9: Combining operators using AND and OR

SELECT *
FROM analysis.teachers
WHERE school = 'Myers Middle School'
      AND salary < 40000;

SELECT *
FROM analysis.teachers
WHERE last_name = 'Cole'
      OR last_name = 'Bush';

SELECT *
FROM analysis.teachers
WHERE school = 'F.D. Roosevelt HS'
      AND (salary < 38000 OR salary > 40000);

-- Listing 2-10: A SELECT statement including WHERE and ORDER BY

SELECT first_name, last_name, school, hire_date, salary
FROM analysis.teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;

-- Assignment question Query
SELECT first_name
FROM analysis.teachers
WHERE first_name  LIKE  BINARY 'Sam%';
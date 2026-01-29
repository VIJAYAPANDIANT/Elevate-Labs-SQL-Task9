CREATE DATABASE task9;
USE task9;
1-- Create Employees Table with Salary Data
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

Insert Sample Data
INSERT INTO employees VALUES
(1, 'Arun', 'IT', 60000),
(2, 'Priya', 'HR', 45000),
(3, 'Karthik', 'IT', 75000),
(4, 'Divya', 'Finance', 50000),
(5, 'Rahul', 'Finance', 80000),
(6, 'Sneha', 'HR', 55000);

2️--Subquery in WHERE Clause
Employees earning more than average salary
SELECT emp_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);


--Explanation:

--Inner query calculates average salary

--Outer query compares each employee’s salary

3️--Subquery in SELECT Clause
Display salary and average salary together
SELECT emp_name,
       salary,
       (SELECT AVG(salary) FROM employees) AS avg_salary
FROM employees;


--Used when you want calculated values as columns.

4️--Subquery in FROM Clause
Use subquery as a derived table
SELECT department, avg_sal
FROM (
    SELECT department, AVG(salary) AS avg_sal
    FROM employees
    GROUP BY department
) AS dept_avg;


--Subquery in FROM must have an alias

5️--Correlated Subquery
Employees earning more than department average
SELECT emp_name, department, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);


--Why correlated?

--Inner query runs once for each row of outer query

6️--Same Logic Using JOIN (Performance Comparison)
SELECT e.emp_name, e.department, e.salary
FROM employees e
JOIN (
    SELECT department, AVG(salary) AS avg_sal
    FROM employees
    GROUP BY department
) d
ON e.department = d.department
WHERE e.salary > d.avg_sal;


--JOIN is usually faster than correlated subqueries.

7️--Subquery Returning Multiple Rows
Employees from highest paid departments
SELECT emp_name
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING MAX(salary) > 70000
);


--Uses IN for multi-row subquery results

8️--Common Subquery Errors (Debugging Practice)

--ERROR: Subquery returns more than 1 row

WHERE salary = (SELECT salary FROM employees);


--FIX:

WHERE salary IN (SELECT salary FROM employees);
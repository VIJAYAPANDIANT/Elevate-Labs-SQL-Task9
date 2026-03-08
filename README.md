# SQL Subqueries - Task 9

This repository contains examples of various **SQL Subqueries** using an employee salary dataset. It covers different types of subqueries, performance comparisons with JOINs, and common debugging practices.

## 🚀 Key Concepts Covered

1.  **Subquery in WHERE Clause**: Filtering rows based on an aggregate value (e.g., finding employees earning above average).
2.  **Subquery in SELECT Clause**: Adding calculated values as new columns (e.g., displaying employee salary alongside the company average).
3.  **Subquery in FROM Clause (Derived Tables)**: Using a subquery as a temporary table for further calculations.
4.  **Correlated Subqueries**: Subqueries that reference columns from the outer query, executed once for each row.
5.  **Multi-row Subqueries**: Using the `IN` operator to handle multiple results from a subquery.
6.  **Performance Comparison**: Comparing **Correlated Subqueries** with **JOINs** to understand efficiency.
7.  **Error Handling**: Identifying and fixing common subquery errors (e.g., "Subquery returns more than 1 row").

## 📂 Project Structure

- `task9.sql`: Contains the complete SQL script including database creation, table setup, sample data insertion, and all subquery examples.

## 🛠️ Usage

To run the examples:

1.  Ensure you have a SQL environment (like MySQL, PostgreSQL, or SQL Server) installed.
2.  Execute the `task9.sql` script to create the `task9` database and the `employees` table.
3.  Run the individual queries to see the results of different subquery types.

## 📊 Sample Data

The script utilizes an `employees` table with the following structure:

| ID  | Name    | Department | Salary |
| :-- | :------ | :--------- | :----- |
| 1   | Arun    | IT         | 60000  |
| 2   | Priya   | HR         | 45000  |
| 3   | Karthik | IT         | 75000  |
| ... | ...     | ...        | ...    |

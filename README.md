# 📊 Elevate Lab SQL Task 9: Mastering SQL Subqueries
A professional SQL project demonstrating the implementation of advanced database queries, specifically focusing on understanding, utilizing, and optimizing different types of SQL Subqueries.

## 📌 Project Objective
The primary goal of this task is to understand and implement different types of SQL subqueries using MySQL. It illustrates how subqueries can be used within various clauses (WHERE, SELECT, FROM) and explores advanced concepts like correlated subqueries and performance tuning against JOINs.

## 🛠️ Technical Scope
- **Database Management System:** SQL (MySQL / PostgreSQL / SQL Server compatible)
- **Core Concepts:** Relational Database Queries, Data Filtering, Derived Tables
- **Advanced Techniques:** Subqueries (WHERE, SELECT, FROM clauses), Correlated Subqueries, Multi-row Subqueries, Performance Comparison (JOINs vs Subqueries)

## 🗄️ Database Schema

### `employees` Table
| Column | Data Type | Constraint / Description |
|--------|-----------|--------------------------|
| `emp_id` | INT | Primary Key |
| `emp_name` | VARCHAR(50) | Full Name of Employee |
| `department` | VARCHAR(50) | Department Name |
| `salary` | INT | Employee Salary |

## 💻 SQL Implementations
Key operations demonstrated in the script:

- **Schema Creation & Data Insertion:**
  - Creation of the `task9` database.
  - Creating the `employees` table with salary and department data.
  - Populating the table with sample records to facilitate testing.

- **Subquery in WHERE Clause:**
  - Filtering rows based on aggregate values, such as finding employees earning more than the overall average salary.

- **Subquery in SELECT Clause:**
  - Adding calculated values as new columns, effectively displaying individual employee salaries alongside the company-wide average.

- **Subquery in FROM Clause (Derived Tables):**
  - Utilizing a subquery as a temporary table (requiring an alias) to perform further aggregations or filtering.

- **Correlated Subqueries:**
  - Implementing subqueries that reference columns from the outer query. This forces the inner query to execute once for each row of the outer query (e.g., employees earning more than their specific department's average).

- **Performance Comparison (JOIN vs Subquery):**
  - Demonstrating the same logical output using a `JOIN` instead of a correlated subquery, highlighting the typical performance benefits of `JOIN`s for large datasets.

- **Multi-row Subqueries:**
  - Using the `IN` operator to handle subqueries that return multiple rows (e.g., finding employees belonging to the highest-paying departments).

- **Common Errors & Debugging:**
  - Showcasing and resolving typical subquery issues, such as the "Subquery returns more than 1 row" error when using scalar operators (like `=`) instead of set operators (like `IN`).

## 🚀 Setup & Execution
1. **Initialize:** Execute the script to create the `task9` database and the `employees` table.
2. **Populate Data:** Run the `INSERT` statements to load initial records.
3. **Execute Basic Subqueries:** Run the `WHERE`, `SELECT`, and `FROM` subqueries to understand foundational subquery behavior.
4. **Execute Correlated Subqueries:** Test the correlated query to observe context-aware filtering.
5. **Compare Performance:** Run the equivalent `JOIN` query to understand alternative approaches and optimization strategies.
6. **Debug Multi-row Queries:** Analyze the multi-row subquery and the debugging example to understand common pitfalls.

> [!IMPORTANT]
> While subqueries offer a highly readable and logical way to construct complex queries, understanding when to replace them with `JOIN`s (especially Correlated Subqueries) is crucial for database performance tuning and optimization.

*Developed for Elevate Lab Internship Program - SQL Practice and Interview Preparation.*

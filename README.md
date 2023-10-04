# Data-Analysis-using-SQL
> This repository  covers the journey of how I learn Sql step by step

## Basic level 

**What is SQL?**
SQL, which stands for Structured Query Language, is a domain-specific language used for managing and manipulating relational databases. It allows users to interact with databases by defining, querying, updating, and managing data.

**Basic SQL Commands:**

1. **SELECT**: Used to retrieve data from one or more tables.
   Example:
   ```sql
   SELECT column1, column2 FROM tablename WHERE condition;
   ```

2. **INSERT**: Used to add new records to a table.
   Example:
   ```sql
   INSERT INTO tablename (column1, column2) VALUES (value1, value2);
   ```

3. **UPDATE**: Used to modify existing records in a table.
   Example:
   ```sql
   UPDATE tablename SET column1 = new_value WHERE condition;
   ```

4. **DELETE**: Used to remove records from a table.
   Example:
   ```sql
   DELETE FROM tablename WHERE condition;
   ```

5. **CREATE TABLE**: Used to create a new table.
   Example:
   ```sql
   CREATE TABLE tablename (
       column1 datatype,
       column2 datatype,
       ...
   );
   ```

6. **ALTER TABLE**: Used to modify an existing table structure.
   Example:
   ```sql
   ALTER TABLE tablename ADD column3 datatype;
   ```

7. **DROP TABLE**: Used to delete a table and all its data.
   Example:
   ```sql
   DROP TABLE tablename;
   ```

8. **SELECT DISTINCT**: Used to retrieve distinct values from a column.
   Example:
   ```sql
   SELECT DISTINCT column1 FROM tablename;
   ```

9. **ORDER BY**: Used to sort the result set.
   Example:
   ```sql
   SELECT column1, column2 FROM tablename ORDER BY column1 ASC;
   ```

10. **GROUP BY**: Used to group rows based on the values in one or more columns.
    Example:
    ```sql
    SELECT column1, COUNT(*) FROM tablename GROUP BY column1;
    ```

11. **JOIN**: Used to combine data from two or more tables based on a related column.
    Example:
    ```sql
    SELECT column1, column2 FROM table1 JOIN table2 ON table1.id = table2.id;
    ```

12. **WHERE**: Used to filter rows based on a condition.
    Example:
    ```sql
    SELECT column1 FROM tablename WHERE condition;
    ```

**SQL is not case-sensitive:** SQL statements can be written in uppercase or lowercase letters. For example, `SELECT` and `select` are equivalent.

These are some of the basic SQL commands and concepts. SQL is a powerful language with many more features and capabilities for managing and querying data in relational databases.


## Intermediate SQL Concepts:

1. **Subqueries**: Subqueries are nested SQL queries within another query. They can be used in the SELECT, FROM, or WHERE clauses to retrieve data or make comparisons.

   Example:
   ```sql
   SELECT column1 FROM tablename WHERE column2 = (SELECT MAX(column2) FROM tablename2);
   ```

2. **Joins (Advanced)**: Beyond basic joins, there are different types of joins like INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN to control how data is combined from multiple tables.

   Example:
   ```sql
   SELECT orders.order_id, customers.customer_name
   FROM orders
   LEFT JOIN customers ON orders.customer_id = customers.customer_id;
   ```

3. **Indexes**: Indexes are database structures that improve the speed of data retrieval operations on tables. They're essential for optimizing query performance on large datasets.

   Example:
   ```sql
   CREATE INDEX index_name ON tablename (column_name);
   ```

4. **Transactions**: A transaction is a sequence of SQL statements that are treated as a single unit of work. They ensure data integrity by allowing you to commit changes or roll them back if an error occurs.

   Example:
   ```sql
   BEGIN TRANSACTION;
   UPDATE account SET balance = balance - 100 WHERE account_id = 1;
   UPDATE account SET balance = balance + 100 WHERE account_id = 2;
   COMMIT;
   ```

5. **Views**: Views are virtual tables that are defined by SQL queries. They allow you to encapsulate complex queries and provide a simplified way to access data.

   Example:
   ```sql
   CREATE VIEW viewname AS
   SELECT column1, column2 FROM tablename WHERE condition;
   ```

6. **Stored Procedures**: A stored procedure is a precompiled collection of one or more SQL statements. They can be executed with a single call and are often used for code reusability and security.

   Example:
   ```sql
   CREATE PROCEDURE sp_example
   AS
   BEGIN
       -- SQL statements here
   END;
   ```

7. **Normalization**: Database normalization is the process of organizing data in a database to minimize data redundancy and dependency. It involves breaking tables into smaller, related tables.

8. **Aggregate Functions**: SQL provides functions like SUM, AVG, COUNT, MIN, and MAX for performing calculations on groups of rows.

   Example:
   ```sql
   SELECT AVG(salary) FROM employees WHERE department = 'Sales';
   ```

9. **Triggers**: Triggers are special types of stored procedures that are automatically executed when specific events occur in the database, such as INSERT, UPDATE, or DELETE operations.

   Example:
   ```sql
   CREATE TRIGGER trig_example
   AFTER INSERT ON tablename
   FOR EACH ROW
   BEGIN
       -- Trigger logic here
   END;
   ```

10. **Advanced SQL Security**: Implement security measures like user roles and permissions to control who can access and modify data in the database.

These intermediate SQL concepts expand your knowledge and skills in working with relational databases. They are essential for efficiently managing complex data operations and ensuring data integrity.

## Advanced SQL Concepts for Data Analysis:

1. **Window Functions**: Window functions allow you to perform calculations across a set of rows related to the current row. They are useful for tasks like calculating running totals or ranking data.

   Example:
   ```sql
   SELECT employee_name, salary, 
          SUM(salary) OVER (ORDER BY salary DESC) AS running_total
   FROM employees;
   ```

2. **Common Table Expressions (CTEs)**: CTEs are temporary result sets that can be referenced within a SELECT, INSERT, UPDATE, or DELETE statement. They make complex queries more readable and maintainable.

   Example:
   ```sql
   WITH cte AS (
      SELECT column1, column2 FROM tablename WHERE condition
   )
   SELECT * FROM cte;
   ```

3. **Advanced Aggregation**: Beyond basic aggregation functions, you can use GROUPING SETS, ROLLUP, and CUBE to generate multiple levels of subtotals in result sets.

   Example:
   ```sql
   SELECT department, city, SUM(sales)
   FROM sales_data
   GROUP BY GROUPING SETS ((department), (city), ());
   ```

4. **Pivoting Data**: You can use the PIVOT operator to transform rows into columns and vice versa, making it easier to analyze data in a different format.

   Example:
   ```sql
   SELECT *
   FROM (
      SELECT product, quantity FROM sales
   ) AS source
   PIVOT (
      SUM(quantity) FOR product IN ('A', 'B', 'C')
   ) AS pivot_table;
   ```

5. **Recursive Queries**: Recursive Common Table Expressions (RCTEs) allow you to work with hierarchical or recursive data structures, such as organizational charts or bill-of-materials data.

   Example:
   ```sql
   WITH RECURSIVE org_chart AS (
      SELECT employee_id, manager_id FROM employees WHERE manager_id IS NULL
      UNION ALL
      SELECT e.employee_id, e.manager_id FROM employees e
      JOIN org_chart o ON e.manager_id = o.employee_id
   )
   SELECT * FROM org_chart;
   ```

6. **Advanced Filtering**: Utilize advanced filtering techniques like regular expressions (REGEXP), full-text search (MATCH AGAINST), and geospatial functions for specialized data analysis.

   Example (Regular Expression):
   ```sql
   SELECT product_name FROM products WHERE REGEXP 'pattern';
   ```

7. **Temporal Data**: Handle temporal data effectively using features like temporal tables (system-versioned tables) and temporal queries to track changes over time.

   Example (Temporal Query):
   ```sql
   SELECT * FROM tablename
   FOR SYSTEM_TIME BETWEEN 'start_date' AND 'end_date';
   ```

8. **Analytics and Machine Learning Integration**: Some database systems offer integration with analytics and machine learning libraries, allowing you to perform advanced data analysis within the database environment.

9. **Data Partitioning**: Partition large tables to improve query performance by dividing them into smaller, more manageable segments.

   Example:
   ```sql
   CREATE TABLE sales_data (
      sales_date DATE,
      ...
   ) PARTITION BY RANGE (sales_date);
   ```

These advanced SQL concepts and techniques are invaluable for data analysts and data scientists who need to perform complex data manipulations, aggregations, and analysis tasks on large datasets.


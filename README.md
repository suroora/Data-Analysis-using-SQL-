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



**Intermediate SQL Concepts:**

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

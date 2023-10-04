# Data-Analysis-using-SQL
> This repository  covers the journey of how I learn Sql step by step

## Basic level 
Sure, here's a brief note on SQL (Structured Query Language):

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

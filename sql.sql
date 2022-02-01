## SQL Structure 
SELECT 
## Column you want to look at
FROM
## Table the data lives in
WHERE 
## Certain condition on the data
## WHERE is the filter
GROUP BY
## Column you want to aggregate by
HAVING
## Certain condition on the aggregation
ORDER BY
## Column you want to order results by and in ASCending or DESCending order
LIMIT
## The maximum number of rows you want your results to contain

AS --Renames a column or table with an alias for display, does not permanently change table/column names in the database

CASE -- A logical test that creates different output based on the conditions each CASE statement, closes with an END clause



=================

JOINs



=================
##Aggregators
SUM()
	
COUNT()
	
MAX()
		
MIN()
	
	
	//Adding a DISTINCT clause inside the aggregator function
	
	//Using GROUP BY with aggregators
==================	


//When to use HAVING

//Using ORDER BY to organize your results

//When to use LIMIT



//CASE Statements

//IF statements

//COALESCE() function
	
	
	
//Creating tables
	
//Deleting tables
	
//Dropping tables
	
//Temporary tables

//Subroutines




--The INSERT Statement. The INSERT INTO statement is used to add a new record (row) to a table. It has two forms as shown:
--• Insert into columns in order
--• Inster into columns by name

--Insert into columns in order:
INSERT INTO table_name
VALUE (value1, value2);

--Insert into columns by name
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);


--The UPDATE Statement. The UPDATE statement is used to edit records (rows) in a table. It includes a SET clause that indicates the column to edit and a WHERE clause for specifying the record(s)
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE some_column = some_value;

--Column Constraints. Column constraints are the rules applied to the values of individual columns.
-- PRIMARY KEY constraint can be used to uniquely identify the row
-- UNIQUE columns have a different value for every row
-- NOT NULL columns must have a value
-- DEFAULT assigns a default value for the column when no value is specified

-- There can be only one PRIMARY KEY column per table and multiple UNIQUE columns

CREATE TABLE student (
	id INTEGER PRIMARY KEY
	name TEXT UNIQUE
	grade INTEGER NOT NULL
	age INTEGER DEFAULT 10
);



-- ALTER TABLE Statement. The ALTER TABLE statement is used to modify the columns of an existing table. When combined wiht the ADD COLUMN clause, it is used to add a new column.

ALTER TABLE table_name
ADD column_name datatype;


-- CREATE TABLE Statement. The CREATE TABLE statement creates a new table in a database. It allows one to specify the name of the table and the name of each column in the table. 

CREATE TABLE table_name (
	column1 datatype,
	column2 datatype,
	column3 datatype
);


-- Dates
-- DATE: YYYY-MM-DD
-- DATETIME: YYYY--MM-DD hh:mm:ss

DATE() -- Converts timestamps to dates (YYYY-MM-DD)
TIME() -- Converts timestamps to time (hh:mm:ss)

--example
SELECT TIME(order_date)
FROM bodega;
-- in this example we have a table named bodega and a column named order_date


















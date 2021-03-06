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


CREATE TABLE friends (
  id INTEGER PRIMARY KEY
  name TEXT UNIQUE
  birthday DATE
);

INSERT INTO friends (name, birthday)
VALUE (Ororo Munroe, 1940-05-30);

SELECT * FROM friends;


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




-- create table

CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

-- add fren 

INSERT INTO friends (id, name, birthday)
VALUES (1, 'Ororo Munroe', '1940-05-30');

-- verify fren added

SELECT * 
FROM friends;

-- add two more fren

INSERT INTO friends (id, name, birthday)
VALUES (2, 'BFF One', 'YYYY-MM-DD');

INSERT INTO friends (id, name, birthday)
VALUES (3, 'BFF Two', 'YYYY-MM-DD');

-- verify

SELECT *
FROM friends

-- update first fren name from Ororo to Storm 

UPDATE friends 
SET name = 'Storm'
WHERE id = 1;

-- add a new column named email

The ALTER TABLE statement is used to add, delete, or modify columns in an existing table:

ALTER TABLE table_name
ADD COLUMN column DATA_TYPE;

Your code should look something like:

ALTER TABLE friends 
ADD COLUMN email TEXT; 

UPDATE friends
SET email = 'bffone@gmail.com'
WHERE id = 2;

UPDATE friends 
SET email = 'bfftwo@gmail.com'
WHERE id = 3;

-- DESTROY

DELETE FROM friends
WHERE id = 1;

-- verify

SELECT *
FROM friends

--https://glass.xyz/v/u53D3V1Ey_uF7QrHyMxPAO7M2aPC8cY_9WdJiIuDkLs=?display=iframe

SELECT * FROM aave_v2."LendingPool_evt_Deposit"
WHERE "hash" = ''
AND "evt_block_time" > now{} - internal '1 month'
ORDER BY "amount" DESC
LIMIT 10


1. Create a new database called owners_pets


2. Create the owners table
id column INT
first_name VARCHAR(30)
last_name VARCHAR(30)
city VARCHAR(30)
state CHAR(2)

3. Create the pets table which includes a foreign key
id 
species (30)
full_name (30)
age INT
owner_id INT

4. Add an email column to th owners table
email VARCHAR(50)

5. Change the data type of the last_name column in the owners table to VARCHAR(50)


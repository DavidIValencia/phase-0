1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state_name FROM states  WHERE region_id = "7";
6. SELECT state_name, population density FROM states WHERE population_density  > 50 ORDER BY population_density ASC;
7. SELECT state_name FROM states WHERE  population  > 1000000 and  population < 1500000
8. SELECT state_name, region_id FROM states ORDER BY region_id ASC;
9. SELECT region_name FROM regions WHERE region_name LIKE '%Central%';
10. SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER BY region_ID ASC;

<img src="./screenshot.png">

###What are databases for?

Databases are for storing information similarly to hashes and arrays.  What makes databases better is that they can hold several different pieces of information for one key as opposed to hashes and arrays that can only hold limited amounts of information.  Using queries is how to properly return values that you require out of the database.

###What is a one-to-many relationship?

A one-to-many relationship is one when a row in one table is linked to several tables in another table, but only one row in that table links to one row in the original table.

###What is a primary key? What is a foreign key? How can you determine which is which?

A primary key is a column within a table which distinguishes the rows from one another.  A foreign key is a column or combination of columns from another table which links a primary key from one table to be used by another table.  You can tell the two apart because a primary key will be used to uniquely identify the information, and a foreign key is a reference from one table to another.

###How can you select information out of a SQL database? What are some general guidelines for that?

You can select information using SELECT for columns and FROM for the table that you want to access.  You can also use other functions such as WHERE and ORDER BY to organize the information returned to you.  Some general guidelines are to end expressions with ";" and to use commas to select separate columns.
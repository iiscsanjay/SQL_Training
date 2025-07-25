-- Command Prototype

-- show all the databases/schema exists in the MySQL Server (
SHOW DATABASES;
-- select the database to use
USE DATABASE_NAME;
-- show all the tables in the database database Server 
SHOW TABLES;
-- Understand the details about any table
DESCRIBE TABLE_NAME;
DESC TABLE_NAME;

-- check if user exists in mysql
SELECT USER FROM  mysql.USER;

-- make the changes available at the same login options
FLUSH PRIVILEGES;

-- TO visulize the check constraints in MYSQL
SELECT * FROM information_schema.CHECK_CONSTRAINTS;

-- CHECKING INDEXes saved in MYSQL
SELECT table_schema, table_name, index_name, column_name
FROM information_schema.statistics
WHERE non_unique = 1 AND table_schema = "CareereraDB" and table_name = 'Students';

-- DDL Commands :

	-- CREATE
		CREATE DATABASE/SCHEMA [IF NOT EXISTS] Test;
		CREATE TABLE [IF NOT EXISTS] Students ( id int AUTO_INCREMENT PRIMARY KEY, name varchar(32));
		CREATE INDEX sname on Students (studentName);
		CREATE UNIQUE INDEX suname on Students (studentName);
		CREATE USER [IF NOT EXISTS] 'username'@'localhost' IDENTIFIED BY 'password';

	-- DROP
		DROP DATABASE [IF EXISTS] Test;
		DROP TABLE [IF EXISTS] Test;
		DROP USER IF EXISTS 'sanjayk'@'localhost';

	-- ALTER 
		ALTER TABLE Student ADD COLUMN ssn varchar(10) [first | after colname];
		ALTER TABLE Student MODIFY COLUMN ssn varchar(12) [first | after colname];
		ALTER TABLE Student DROP COLUMN ssn ;
		ALTER TABLE Student ADD CONSTRAINT check_student_age Check (studentAge > 20);
		ALTER TABLE Student DROP CONSTRAINT check_student_age;
		ALTER TABLe Student CHANGE ssn studentSSN varchar(23) [first | after colname];
		ALTER TABLE Student RENAME TO newStudent;
		ALTER TABLE Students drop index studentAgeIndex;
        ALTER USER 'sanjayk'@'192.168.29.%' ACCOUNT LOCK;
        ALTER USER 'sanjayk'@'192.168.29.%' ACCOUNT UNLOCK;
        ALTER USER 'sanjayk'@'localhost' IDENTIFIED BY '654321';

		
	-- TRUNCATE : It delete all the data in the tables
		TRUNCATE TABLE Students;

-- DML Commands 
	-- INSERT : Inserting the data into a table
	   -- SINGLE ENTRY
	   INSERT INTO Students (studentID,studnetName,studentAge, isTA)
	   VALUES (1,'ABCD',23,False);
   
	   -- Multiple ENTRY
	   INSERT INTO Students (studentID,studnetName,studentAge, isTA) VALUES 
	   (1,'ABCD',23,False),
	   (2,'XYFS',24,False),
	   (3,'HSFD',25,False);
   
	-- UPDATE : Modification the selected data according to critiera
		UPDATE TABLE_NAME 
		set colname = modifiedvalue
		WHERE primarycoloumn = 'value';

	-- DELETE : deleting the selected data according to critiera
		DELETE from Students
		WHERE studentId = 2;
        
--  DCL : GRANT / REVOKE
	-- GRANT
    GRANT COMMANDS on CareereraDB.* TO 'username'@'localhost'; -- Commands : CREATE, DROP, ALTER, TRUNCATE, INSERT, UPDATE, DELETE
    GRANT ALL PRIVILEGES on *.* To 'username'@'localhost';
    
    -- REVOKE
    REVOKE COMMANDS on CareereraDB.* FROM 'username'@'localhost'; -- Commands : CREATE, DROP, ALTER, TRUNCATE, INSERT, UPDATE, DELETE
    REVOKE ALL, GRANT OPTION FROM 'username'@'localhost';
 

-- DQL : Data Query Language
    SELECT COLFIELDS 
    FROM TABLE_NAME 
    [WHERE MULTIPLE CONDI1 ] (AND|OR)
    [GROUP BY COLNAME]
    [HAVING COND2]
    [ORDER BY COLNAME] [ASC/DESC] Default is Ascending
    [LIMIT N][OFFSET M] ;

-- TCL : Transaction Control Langauge 
   commit
   rollback
   savepoint

-- Join :
	Join
	Left JOIN
	RIGHT JOIN
	Union
	Union ALL

-- SubQuery 
--	Subquery as single result : Comparison Operation : =,>,<,>=,<=, IN, NOT IN, EXISTS, NOT EXISTS
--	Subquery as From clause : intermediate result for display as table : Alias table name
--	SubQuery as Correlated Query

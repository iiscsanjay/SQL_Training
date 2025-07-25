-- CHECKING IF DATABASE EXISTS, then drop the database
DROP DATABASE IF EXISTS CareereraDB;

-- Creating a database with name
CREATE DATABASE CareereraDB;

-- SELECTING THE DATABASE for usages
USE CareereraDB;

-- CREATE TABLE STUDENT, TRAINER, COURSE, ASSIGNMENT, GRADE
CREATE TABLE Student1 (
	studentID INT,
    studentName VARCHAR(22),
    studentGender CHAR ,
    studentAge INT,
    studentDOB DATETIME,
    isTA BINARY
);


CREATE INDEX NameIndex ON Student1 (studentName);
CREATE UNIQUE INDEX NameIndex1 ON Student1 (studentName);
   
ALTER TABLE Student1
	MODIFY COLUMN studentSSN varchar(10) FIRST;

ALTER TABLE Student1
	CHANGE isTA workingAsTA BOOL AFTER studentName;

ALTER TABLE Student1
	RENAME TO StudentFinal;
    
ALTER TABLE StudentFinal
	RENAME TO Student1;

ALTER TABLE Student1
	ADD COLUMN studentSSN VARCHAR(10) DEFAULT '0000000000' AFTER studentID ;
    
ALTER TABLE Student1
	DROP COLUMN studentSSN;
    
ALTER TABLE Student1
	DROP INDEX NameIndex;
ALTER TABLE Student1
	DROP INDEX NameIndex1;
ALTER TABLE Student1
	ADD CONSTRAINT Student_PK PRIMARY KEY (studentID);
ALTER TABLE Student1
	ADD CONSTRAINT Student1_AgeCheck CHECK (studentAge > 18);
	

CREATE TABLE Student2 (
	studentID  INT AUTO_INCREMENT PRIMARY KEY,
    studentName VARCHAR(22) NOT NULL,
    studentGender CHAR DEFAULT('M'),
    studentAge INT NOT NULL,
    studentDOB DATETIME DEFAULT CURRENT_TIMESTAMP,
    isTA BINARY,
	CHECK ( studentAge > 10 )
);

CREATE TABLE Student3 (
	studentID  VARCHAR(12),
    studentName VARCHAR(22) NOT NULL,
    studentGender CHAR DEFAULT('M'),
    studentAge INT NOT NULL,
    studentDOB DATETIME DEFAULT CURRENT_TIMESTAMP,
    isTA BINARY,
	CONSTRAINT Student3_AgeCheck CHECK (studentAge > 18),
    CONSTRAINT Student_PK PRIMARY KEY (studentID)
);



-- INSERT the data into Students
INSERT INTO Students (studentId, studentName, studentAge, studentGender,isTA ) 
VALUES (1,'Yaasar', 23, 'M',True);

INSERT INTO Students (studentName, studentAge, studentGender,isTA ) 
VALUES ('Somin', 25, 'M',False);

INSERT INTO Students (studentName, studentAge, studentGender,isTA ) VALUES
('Asha',22,'F',TRUE),
('Banita',23,'F',FALSE),
('Inam',24,'M',TRUE);

INSERT INTO Students (studentName, studentGender,isTA ) 
VALUES ('Sanjay','M',False);

-- DML
UPDATE Students 
set studentAge = 26
WHERE  studentId = 2;

UPDATE Students 
set studentName = 'Tomiwa'
WHERE studentId = 2;

-- DQL
SELECT * from Students;

DELETE from Students
	WHERE studentId = 2;


 
INSERT INTO Students (studentName, studentGender,isTA ) 
VALUES ('ABVSDS','F',True);


-- CREATE INDEX snameIndex on Students (studentName);
-- ALTER TABLE Students drop index snameIndex;
TRUNCATE TABLE Students;


-- REVOKE SELECT ON CareereraDB.Students FROM 'sanjayk'@'localhost';
-- REVOKE ALL, GRANT OPTION FROM 'sanjayk'@'localhost';


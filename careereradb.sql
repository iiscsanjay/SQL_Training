-- WRITING A SCRIPT FOR CREATING ANY ORIGANIZATION DATABASE as COLLEGE
DROP DATABASE IF EXISTS CareereraDB;

-- DROPPING the user
DROP USER IF EXISTS 'sanjayk'@'localhost';

-- CREATE A NEW DATABASE NAMED CareereraDB
CREATE DATABASE CareereraDB;

-- SELECT THE DATABASE IN which we want to process i.e.creation Table, insertion data, create users
USE CareereraDB;

CREATE TABLE instructors (
    instructor_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    instructor_name VARCHAR(32) NOT NULL,
    instructor_gender VARCHAR(12) NOT NULL,
    instructor_email   VARCHAR(32) NOT NULL,
    instructor_password VARCHAR(32) NOT NULL,
    instructor_dob DATETIME DEFAULT NULL
);

CREATE TABLE students (
    student_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(32) NOT NULL,
    student_gender VARCHAR(12) NOT NULL,
    student_email   VARCHAR(32) NOT NULL,
    student_password VARCHAR(32) NOT NULL,
    student_dob DATE DEFAULT NULL,
    student_isTA BOOLEAN, 
    student_age INT DEFAULT (20),
    CONSTRAINT AgeConstraint CHECK (student_age >=20)
);

CREATE TABLE courses (
    course_id VARCHAR(12) UNIQUE PRIMARY KEY,
    course_name VARCHAR(32) NOT NULL,
    instructor_id INT NULL,
    course_semester VARCHAR(32) NOT NULL,
    course_classroom VARCHAR(32) NOT NULL,
    course_timetable VARCHAR(32) NOT NULL,
    CONSTRAINT courses_instructors_fk FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

CREATE TABLE enrolled_students(
    course_id VARCHAR(12), 
    student_id INT NOT NULL,
    grade   VARCHAR(1) NOT NULL, 
    percentage float default 40.0,
    CONSTRAINT enrolled_students_pk 
        PRIMARY KEY (course_id,student_id),
    CONSTRAINT enrolled_students_courses_fk 
        FOREIGN KEY (course_id) REFERENCES courses(course_id),
    CONSTRAINT enrolled_students_students_fk
        FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- INSERT data instructors
INSERT INTO instructors (instructor_id, instructor_name, instructor_gender, instructor_email, instructor_password, instructor_dob) VALUES
(001,'Lee Wu','Male','lee@aum.edu','12345','1984-09-12'),
(002,'Zimin Gao','Male','kelvin@aum.edu','12345','1987-08-01'),
(003,'Kennedy Smith','Female','kennedy@aum.edu','12345','1967-02-19'),
(004,'S Dinc','Male','dinc@aum.edu','12345','1999-01-23'),
(005,'Bellinda Casamir','Female','bellinda@aum.edu','123456','1989-01-01'),
(006,'Hua Yan','Female','sophia@aum.com','123456','1994-01-04'),
(007,'Jason clutchfield','Male','jason@aum.edu','12345','1996-01-03'),
(008,'Dena Irvin','Female','dena@aum.edu','12345','1992-06-02');


INSERT INTO students (student_id, student_name, student_gender, student_email, student_password, student_dob, student_isTA, student_age) VALUES
(100,'Swathi Reddy','Female','sbendram@aum.edu','123456',NULL,1,21),
(101,'Shiva Reddy','Male','shiva@aum.edu','12345',NULL,0,23),
(102,'Sri Ram','Male','sri@aum.edu','12345',NULL,1,24),
(103,'Rekha Reddy','Female','rekha@aum.edu','12345',NULL,0,23),
(104,'Saiteja Reddy','Male','saiteja@aum.edu','12345',NULL,1,25),
(105,'Srinu Karra','Male','karra@aum.edu','12345','2010-09-21',0,23),
(106,'Jennifer Thomas','Female','jenne@aum.edu','12345','2009-10-23',1,25),
(107,'Lisa David','Female','lisa@aum.edu','12345','2006-02-02',1,26),
(108,'John William','Male','john@aum.edu','12345','2007-10-23',0,23);


INSERT INTO courses (course_id, course_name, instructor_id, course_semester, course_classroom, course_timetable) VALUES
('CSCI 200','C++ Programming','004','FALL','GH-201','MON 8:00 AM'),
('CSCI 201','Frontend Web Development','002','FALL','GH-202','TUE 1:00 PM'),
('CSCI 202','Computer Architechture','001','FALL','GH-203','WED 9:00 AM'),
('CSCI 203','Data Stuctures','004','FALL','GH-204','Thu 10:00 AM'),
('CSCI 204','Algorithms','004','FAll','GH-205','Tue 8:00 AM'),
('CSCI 300','Advanced C++ Programming','004','FALL','GH-202','TUE 8:00 AM'),
('CSCI 205','Python Programming','006','FALL','GH-206','Fri 8:00 AM');


INSERT INTO enrolled_students(course_id,student_id,grade) VALUES
('CSCI 200',101,'A'),
('CSCI 201',101,'B'),
('CSCI 202',101,'B'),
('CSCI 200',102,'B'),
('CSCI 201',102,'B'),
('CSCI 202',102,'B'),
('CSCI 203',103,'B'),
('CSCI 204',103,'B'),
('CSCI 205',103,'C'),
('CSCI 200',104,'C'),
('CSCI 200',105,'D'),
('CSCI 200',106,'D'),
('CSCI 201',107,'F'),
('CSCI 202',106,'F'),
('CSCI 203',107,'A'),
('CSCI 204',108,'A'),
('CSCI 200',108,'A');

-- Network Login Permission
-- CREATE USER 'sanjayk'@'192.168.29.%' IDENTIFIED BY '123456';
-- GRANT ALL PRIVILEGES ON CareereraDB.* TO 'sanjayk'@'192.168.29.%';

-- Local host login and permission
CREATE USER 'sanjayk'@'localhost' IDENTIFIED BY '123456';
-- CREATE USER 'sanjayk'@'192.168.%.%' IDENTIFIED BY '123456';


-- Given Permission to perform SELECT command

-- GRANT SELECT ON CareereraDB.* TO 'sanjayk'@'localhost';
-- GRANT SELECT ON CareereraDB.* TO 'sanjayk'@'192.168.%.%';
-- But still user doesn't have access to information_schema, mysql, performance_schema
GRANT ALL PRIVILEGES ON *.* TO 'sanjayk'@'localhost';
-- flush privileges;
-- Removing Permission to perform SELECT command
-- REVOKE SELECT ON CareereraDB.* FROM 'sanjayk'@'localhost';
-- Revoking all privileges from user
-- REVOKE ALL, GRANT OPTION FROM 'sanjayk'@'localhost';

CREATE INDEX studentNameINDEX ON Students (student_name);
CREATE INDEX studentAgeINDEX ON Students (student_age);

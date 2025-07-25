use CareereraDB;

select * from students;

-- DELETE FROM Students WHERE studentId = 100;

select @@global.secure_file_priv;
select @@global.local_infile;

-- variables
show variables like 'secure_file_priv';
show variables like 'local_infile';

/*
-- MYSQL WorkBench put in advanced add this line 
OPT_LOCAL_INFILE=1;

-- Command line
/usr/local/mysql/bin/mysql -u root -p --local_infile=1
*/

LOAD DATA LOCAL INFILE "/Users/sanjayk/Dropbox/Work/Careerera/Final/SQL/data.csv" INTO TABLE Students 
COLUMNS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
ESCAPED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

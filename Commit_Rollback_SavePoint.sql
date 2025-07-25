SET autocommit = 0;
-- SET autocommit = 1;
-- SET autocommit = OFF;
-- SET autocommit = ON;


-- 1. start a new transaction
START TRANSACTION;

use CareereraDB;

select * from students;

delete from students where studentId=110;

SAVEPOINT Test;

INSERT INTO Students VALUES (18,'Martin',23,'M','2003-05-21',1);

INSERT INTO Students VALUES (19,'Nishan',21,'M','2003-06-15',0);

INSERT INTO Students VALUES (20,'Nitin',26,'M','2003-04-05',1);

select * from students;

Rollback TO SAVEPOINT Test;

Rollback;

Commit;
SET autocommit = 1;

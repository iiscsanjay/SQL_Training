use CareereraDB;

SELECT COLFIELDS 
FROM TABLE_NAME 
[WHERE MULTIPLE CONDI1 ] (AND|OR)
[GROUP BY COLNAME]
[HAVING COND2]
[ORDER BY COLNAME] [ASC/DESC] Default is Ascending
[LIMIT N][OFFSET M] ;


-- * - wild cards: which selects all the fields in the selected tables
SELECT * FROM Students;

-- selective filed by speficy the field Names
SELECT studentId, studentName from Students;

-- selective field with limit clause: limit the results for result grid
-- selective field with limit and offset clause:  
-- limiting the results with given offset (position from where u need to select the result)
SELECT *
FROM Students
LIMIT 2 OFFSET 2;

-- Order BY : Sorting the result in any given order multiple sorting
SELECT * 
FROM Students
ORDER BY isTA DESC, studentGender ASC, studentAge DESC;

-- Conditional select : Multiple conditional clause
SELECT *
FROM Students
WHERE ((studentAge > 23) AND (studentGender ='M')) OR (studentGender ='F');


use om;
select * from Items;

SELECT artist, count(*)
from Items
GROUP BY artist;

SELECT artist, SUM(unit_price) as Total_Price
from Items
GROUP BY artist;

SELECT artist, MIN(unit_price)
from Items
GROUP BY artist;

SELECT artist, MAX(unit_price)
from Items
GROUP BY artist;

SELECT artist, AVG(unit_price)
from Items
GROUP BY artist;

SELECT customer_state, COUNT(*)
FROM Customers
GROUP BY customer_state
HAVING customer_state = 'OH';


use om;

select CONCAT(customer_first_name, " ", customer_last_name ) as "Name", title, artist, unit_price, order_qty, order_date
FROM customers as c
	JOIN orders as o
		ON c.customer_id = o.customer_id
	JOIN order_details as od
		ON o.order_id = od.order_id
	JOIN items as i
		ON od.item_id = i.item_id;


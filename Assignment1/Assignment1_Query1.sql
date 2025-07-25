-- Assignment 1 : Om Database
use om;


-- how to check what are the columns in table
-- describe / desc to find the details about table
-- describe customers;

-- Query 1
-- First Method 
select customer_first_name, customer_last_name
from orders
    join customers -- INNER JOIN NOT THESE (LEFT OUTER JOIN, RIGHT OUTER JOIN)
        on orders.customer_id = customers.customer_id
where Month(order_date) = 12;

-- Second Method 
select customer_first_name, customer_last_name
from orders, customers
where orders.customer_id = customers.customer_id and Month(order_date) = 12;

-- Third Method - Sub Query ( ) FROM or ur passing information from where clause
-- DISTINCT NAME 

select customer_first_name, customer_last_name
from customers
where customer_id IN 
    (select customer_id  
        from orders 
        where Month(order_date) = 12);

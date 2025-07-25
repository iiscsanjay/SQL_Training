-- Assignment 1 : Om Database

-- which database we have to work
use om;

-- Query 3

select customer_first_name, customer_last_name
from orders
    join customers -- INNER JOIN NOT THESE (LEFT OUTER JOIN, RIGHT OUTER JOIN)
        on orders.customer_id = customers.customer_id
where Month(shipped_date) = 7 and Year(shipped_date) = 2014;


select customer_first_name, customer_last_name
from customers
where customer_id IN 
    (select customer_id  
        from orders 
        where Month(shipped_date) = 7 and Year(shipped_date) = 2014);

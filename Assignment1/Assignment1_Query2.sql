-- Assignment 1 : Om Database

-- which database we have to work
use om;

-- Query 2
select concat(customer_first_name," ", customer_last_name) as "Customer Name"
from order_details as od
	JOIN orders as o
		ON od.order_id = o.order_id
	JOIN customers as c
		ON o.customer_id = c.customer_id
where order_qty > 1;

select concat(customer_first_name," ", customer_last_name) as "Customer Name"
from customers c
where customer_id IN 
    ( select customer_id 
        from orders 
        where order_id IN 
            ( select order_id 
                from order_details 
                where order_qty > 1 )
        );


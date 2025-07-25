-- Assignment 1 : Om Database

-- which database we have to work
use om;

-- Query 5
select concat(customer_first_name, " ", customer_last_name), order_date, shipped_date
from customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_details od
        ON o.order_id = od.order_id
    JOIN items i
        ON od.item_id = i.item_id
where od.item_id IN (1,5,6)
order by shipped_date ;




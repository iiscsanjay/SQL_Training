-- Assignment 1 : Om Database

-- which database we have to work
use om;

-- Query 4

select title, Artist, order_date
from orders o
    JOIN order_details od
        ON o.order_id = od.order_id
    JOIN items i
        ON od.item_id = i.item_id
where o.order_id IN (19,97,144,158);

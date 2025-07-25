use ap;

-- Represents all vendors but only select which has no invoice_id
--  JOIN - common between two tables
-- LEFT Join : - LEFT table all entries and from right table, only common enteries
-- Right Join : from left table, only common enteries and Right table all entries  

select vendor_name
From Vendors  
	LEFT JOIN Invoices  
		on Invoices.vendor_id = Vendors.vendor_id
where invoice_id is NULL;

-- JOIN (common between vendors vs invoices)
select distinct(vendor_name)  From Invoices  JOIN Vendors   on Invoices.vendor_id = Vendors.vendor_id;

-- SubQuery
select vendor_name from vendors where vendor_id IN ( select vendor_id from invoices);

-- Exists Clause 
select vendor_name 
from vendors v 
WHERE EXISTS (select vendor_id from invoices i where i.vendor_id =v.vendor_id);

-- Not Exists Clause 
select vendor_name 
from vendors v 
WHERE NOT EXISTS (select vendor_id from invoices i where i.vendor_id =v.vendor_id);


-- ANY Clause 
select * from invoices
	where invoice_total = ANY (select invoice_total from invoices);


-- ANY Clause 
select invoice_id from invoices 
	where invoice_total = (select min(invoice_total) from invoices);

-- ANY/SOME : compare all values and get result true for at least one value
-- ALL  : compare all values with one and get true for all the values



-- SubQuery
select distinct(vendor_name) from vendors 
	where vendor_id NOT IN ( select vendor_id from invoices);

-- select vendor_name 
-- from vendors 
-- where vendor_id IN ( select distinct(vendor_id) from invoice );
-- OUTER QUERY -- (SUB / INNER QUERY (SUB QUERY  ) )

-- using subquery to apply aggreated function : max,min,count,sub,avg

-- Comparison Operator
select * from invoices
where invoice_total > ( select avg(invoice_total) from invoices);

select * from invoices
where invoice_total = ( select max(invoice_total) from invoices);


-- Correlated Query
select distinct(vendor_name) 
from vendors v
where vendor_id IN  ( select vendor_id from invoices where vendor_id = v.vendor_id);
                

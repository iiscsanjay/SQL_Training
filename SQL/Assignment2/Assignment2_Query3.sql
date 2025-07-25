USE ap;

SELECT 
    vendor_name,
    invoice_number,
    invoice_date,
    (Invoice_total - payment_total - credit_total) AS balance_due 
FROM invoices AS i
    JOIN vendors AS v
	ON i.vendor_id = v.vendor_id
WHERE (invoice_total - credit_total - payment_total ) > 0
ORDER BY vendor_name ASC; 

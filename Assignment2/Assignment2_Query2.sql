USE ap;

SELECT 
    invoice_number,
    invoice_total,
    (payment_total + credit_total)  as  payment_credit_total,
    (Invoice_total - payment_total - credit_total) AS balance_due 
FROM invoices AS i
WHERE (invoice_total - credit_total - payment_total ) > 50
ORDER BY balance_due
LIMIT 5;

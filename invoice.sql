-- 1.
SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

-- 2.
SELECT MAX(total) FROM invoice;

-- 3.
SELECT MIN(total) FROM invoice;

-- 4.
SELECT final.* FROM (
SELECT invoice.*, SUM(invoice_line.unit_price * invoice_line.quantity) total_price
FROM invoice
JOIN invoice_line
ON invoice.invoice_id = invoice_line.invoice_id
GROUP BY invoice.invoice_id) final
WHERE total_price > 5;

-- 5.
SELECT final.* FROM (
SELECT invoice.*, SUM(invoice_line.unit_price * invoice_line.quantity) total_price
FROM invoice
JOIN invoice_line
ON invoice.invoice_id = invoice_line.invoice_id
GROUP BY invoice.invoice_id) final
WHERE total_price > 5;

-- 6.
SELECT COUNT(*) FROM invoice 
WHERE billing_state IN ('CA', 'TX', 'AZ');

-- 7.
SELECT AVG(total) FROM invoice;

-- 8.
SELECT SUM(total) FROM invoice;
-- Row Counts
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM order_items;

-- Null Emails
SELECT COUNT(*)
FROM customers
WHERE email IS NULL;

-- Future Signup Dates
SELECT *
FROM customers
WHERE signup_date > CURRENT_DATE;

-- Mumbai State Validation
SELECT *
FROM customers
WHERE city = 'Mumbai'
AND state != 'Maharashtra';

-- Distinct Purchasing Customers
SELECT COUNT(DISTINCT customer_id)
FROM orders;
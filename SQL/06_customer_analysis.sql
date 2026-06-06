-- Get Top 10 Customers by Revenue
SELECT
    c.customer_id,
    c.customer_name,
    SUM(
        p.price * oi.quantity
    ) AS revenue
    
FROM customers c

JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id

GROUP BY
    c.customer_id,
    c.customer_name

ORDER BY
    revenue DESC
LIMIT 10;

-- Customer Conversion Rate
SELECT
    COUNT(
        DISTINCT customer_id
    ) AS purchasing_customers,
    (
        COUNT(DISTINCT customer_id)::NUMERIC / 1000
    ) * 100 AS conversion_rate

FROM orders;
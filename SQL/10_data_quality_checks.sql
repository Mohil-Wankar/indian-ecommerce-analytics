-- Orders Without Products
SELECT
    COUNT(*) AS orders_without_items
FROM orders o

LEFT JOIN order_items oi
    ON o.order_id = oi.order_id

WHERE oi.order_id IS NULL;
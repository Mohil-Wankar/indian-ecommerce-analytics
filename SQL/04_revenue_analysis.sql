-- Total Revenue
SELECT
    SUM(p.price * oi.quantity) AS total_revenue
    
FROM order_items oi

JOIN products p
    ON oi.product_id = p.product_id;

-- Average Order Value
SELECT
    SUM(p.price * oi.quantity) AS total_revenue,

    COUNT(DISTINCT o.order_id) AS total_orders,

    SUM(p.price * oi.quantity) / COUNT(DISTINCT o.order_id) AS average_order_value

FROM order_items oi

JOIN products p
    ON oi.product_id = p.product_id
JOIN orders o
    ON oi.order_id = o.order_id;

-- Revenue By Category
SELECT
    p.category,

    SUM(
        p.price * oi.quantity
    ) AS category_revenue

FROM order_items oi

JOIN products p
    ON oi.product_id = p.product_id

GROUP BY
    p.category

ORDER BY
    category_revenue DESC;

-- Top Products By Revenue
SELECT
    p.product_name,

    SUM(
        p.price * oi.quantity
    ) AS product_revenue

FROM order_items oi

JOIN products p
    ON oi.product_id = p.product_id

GROUP BY
    p.product_name

ORDER BY
    product_revenue DESC
LIMIT 10;
-- Customer Segmentation Based on Revenue
SELECT
    c.customer_id,
    c.customer_name,

    SUM(
        p.price * oi.quantity
    ) AS revenue,

    CASE
        WHEN SUM(
            p.price * oi.quantity
        ) >= 200000
        THEN 'VIP'

        WHEN SUM(
            p.price * oi.quantity
        ) >= 100000
        THEN 'Regular'
        ELSE 'Low Value'
    END AS customer_segment

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
    revenue DESC;
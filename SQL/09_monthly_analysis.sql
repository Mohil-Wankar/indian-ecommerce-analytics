-- Get Monthly Revenue Analysis
SELECT
    DATE_TRUNC(
        'month',
        o.order_date
    ) AS month,
    SUM(
        p.price * oi.quantity
    ) AS revenue

FROM orders o

JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id

GROUP BY
    DATE_TRUNC(
        'month',
        o.order_date
    )

ORDER BY
    month;
-- Get Top Customers by Revenue with Window Functions
SELECT
    c.customer_id,
    c.customer_name,

    SUM(
        p.price * oi.quantity
    ) AS revenue,

    ROW_NUMBER() OVER (
        ORDER BY
            SUM(
                p.price * oi.quantity
            ) DESC
    ) AS row_num,

    RANK() OVER (
        ORDER BY
            SUM(
                p.price * oi.quantity
            ) DESC
    ) AS rank_num,

    DENSE_RANK() OVER (
        ORDER BY
            SUM(
                p.price * oi.quantity
            ) DESC
    ) AS dense_rank_num

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
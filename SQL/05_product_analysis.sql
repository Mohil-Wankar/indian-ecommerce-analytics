-- Get Product Revenue And Quantity
SELECT
    p.product_name,
    p.category,
    
    SUM(oi.quantity) AS total_quantity_sold,
    SUM(
        p.price * oi.quantity
    ) AS product_revenue

FROM order_items oi

JOIN products p
    ON oi.product_id = p.product_id

GROUP BY
    p.product_name,
    p.category

ORDER BY
    product_revenue DESC;

-- Top Product In Each Category
SELECT *
FROM (
    SELECT
        p.category,
        p.product_name,

        SUM(
            p.price * oi.quantity
        ) AS revenue,

        ROW_NUMBER() OVER (
            PARTITION BY p.category
            ORDER BY
                SUM(
                    p.price * oi.quantity
                ) DESC
        ) AS category_rank

    FROM order_items oi

    JOIN products p
        ON oi.product_id = p.product_id

    GROUP BY
        p.category,
        p.product_name
) AS ranked_products

WHERE category_rank = 1;
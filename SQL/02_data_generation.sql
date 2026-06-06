-- Generate Customers
INSERT INTO customers
(
    customer_name,
    email,
    city,
    state,
    signup_date
)
SELECT
    'Customer_' || gs,

    CASE
        WHEN random() < 0.05 THEN NULL
        ELSE LOWER('customer_' || gs || '@gmail.com')
    END,

    (
        ARRAY[
            'Mumbai',
            'Pune',
            'Nagpur',
            'Delhi',
            'Bangalore',
            'Hyderabad',
            'Chennai',
            'Kolkata'
        ]
    )[FLOOR(random()*8 + 1)],

    (
        ARRAY[
            'Maharashtra',
            'Maharashtra',
            'Maharashtra',
            'Delhi',
            'Karnataka',
            'Telangana',
            'Tamil Nadu',
            'West Bengal'
        ]
    )[FLOOR(random()*8 + 1)],

    CURRENT_DATE - FLOOR(random()*730)::INT

FROM generate_series(1,1000) AS gs;

-- Generate Products
INSERT INTO products
(
    product_name,
    category,
    price
)

SELECT
    'Product_' || gs,

    (
        ARRAY[
            'Electronics',
            'Fashion',
            'Home & Kitchen',
            'Books',
            'Sports',
            'Beauty'
        ]
    )[FLOOR(random()*6 + 1)],

    ROUND((random()*4900 + 100)::NUMERIC, 2)

FROM generate_series(1,100) AS gs;

-- Generate Orders
INSERT INTO orders
(
    customer_id,
    order_date,
    payment_method
)

SELECT
    FLOOR(random()*1000 + 1)::INT,

    CURRENT_DATE -
    FLOOR(random()*730)::INT,

    (
        ARRAY[
            'UPI',
            'Credit Card',
            'Debit Card',
            'Net Banking',
            'Cash on Delivery'
        ]
    )[FLOOR(random()*5 + 1)]

FROM generate_series(1,5000);

-- Generate Order Items
INSERT INTO order_items
(
    order_id,
    product_id,
    quantity
)

SELECT
    FLOOR(random()*5000 + 1)::INT,
    FLOOR(random()*100 + 1)::INT,
    FLOOR(random()*5 + 1)::INT

FROM generate_series(1,10000);
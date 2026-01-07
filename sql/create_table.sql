CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    product_name VARCHAR(50),
    category VARCHAR(50),
    region VARCHAR(20),
    quantity INT,
    unit_price INT
);

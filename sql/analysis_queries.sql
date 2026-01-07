-- Total Revenue
SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;

-- Monthly Sales Trend
SELECT 
    MONTH(order_date) AS month,
    SUM(quantity * unit_price) AS monthly_revenue
FROM sales
GROUP BY MONTH(order_date)
ORDER BY month;

-- Top Products by Revenue
SELECT 
    product_name,
    SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC;

-- Region-wise Revenue
SELECT 
    region,
    SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

-- Category-wise Performance
SELECT 
    category,
    SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY category;

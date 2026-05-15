


-- =========================================
-- Problem: Find top 2 selling products
-- in each category. If tie happens,
-- show all.
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Product_Sales table
CREATE TABLE product_sales (
    product_id INT,
    category VARCHAR(50),
    sales INT
);

-- Insert data into product_sales
INSERT INTO product_sales VALUES
(1, 'Electronics', 5000),
(2, 'Electronics', 7000),
(3, 'Electronics', 7000),
(4, 'Clothing', 3000),
(5, 'Clothing', 4500),
(6, 'Clothing', 2000),
(7, 'Furniture', 8000),
(8, 'Furniture', 6000);

-- Solution using DENSE_RANK
SELECT 
    category,
    product_id,
    sales
FROM (
    SELECT 
        category,
        product_id,
        sales,
        DENSE_RANK() OVER (
            PARTITION BY category
            ORDER BY sales DESC
        ) AS rnk
    FROM product_sales
) t
WHERE rnk <= 2;




-- =========================================
-- Problem: Find customers who have
-- purchased all available products.
-- =========================================


-- Create database
CREATE DATABASE company_db;
USE company_db;


-- Create Orders table
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    product_id INT
);



-- Create Products table
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50)
);



-- Insert data into orders
INSERT INTO orders VALUES
(1, 101, 1),
(2, 101, 2),
(3, 101, 1),
(4, 102, 2),
(5, 102, 3),
(6, 103, 1),
(7, 103, 2),
(8, 103, 3);



-- Insert data into products
INSERT INTO products VALUES
(1, 'Laptop'),
(2, 'Mobile'),
(3, 'Tablet');



-- Solution using GROUP BY + HAVING
SELECT 
    customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (
    SELECT COUNT(*)
    FROM products
);

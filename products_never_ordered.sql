

-- =========================================
-- SQL Interview Question
-- Problem: Find products which were never
-- ordered.
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Products table
CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50)
);

-- Create Orders table
CREATE TABLE orders (
    order_id INT,
    product_id INT
);

-- Insert data into products
INSERT INTO products VALUES
(1, 'Laptop'),
(2, 'Mobile'),
(3, 'Tablet'),
(4, 'Headphones');

-- Insert data into orders
INSERT INTO orders VALUES
(101, 1),
(102, 2),
(103, 1),
(104, 3);

-- Solution using NOT EXISTS
SELECT 
    product_id,
    product_name
FROM products p
WHERE NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.product_id = p.product_id
);

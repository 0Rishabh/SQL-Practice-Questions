



-- =========================================
-- SQL Interview Question
-- Problem: Find customers who have never
-- placed any order.
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;


-- Create Customers table
CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50)
);


-- Create Orders table
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE
);



-- Insert data into customers
INSERT INTO customers VALUES
(1, 'Amit'),
(2, 'Riya'),
(3, 'Suresh'),
(4, 'Neha');



-- Insert data into orders
INSERT INTO orders VALUES
(101, 1, '2024-01-01'),
(102, 1, '2024-01-05'),
(103, 2, '2024-01-03');




-- Solution using LEFT JOIN + NULL check
SELECT 
    c.customer_id,
    c.customer_name
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

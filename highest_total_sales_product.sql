



-- =========================================
-- Problem: Find product(s) whose total
-- sales amount is highest.
-- If tie happens, show all.
-- =========================================


-- Create database
CREATE DATABASE company_db;
USE company_db;



-- Create Sales table
CREATE TABLE sales (
    sale_id INT,
    product_id INT,
    sale_date DATE,
    amount INT
);



-- Insert data into sales
INSERT INTO sales VALUES
(1, 101, '2024-01-01', 500),
(2, 101, '2024-01-02', 700),
(3, 101, '2024-01-03', 300),

(4, 102, '2024-01-01', 400),
(5, 102, '2024-01-02', 600),

(6, 103, '2024-01-01', 1000),
(7, 103, '2024-01-02', 1200),
(8, 103, '2024-01-03', 800);





-- Solution using CTE + Subquery
WITH temp AS (
    SELECT 
        product_id,
        SUM(amount) AS total_sales
    FROM sales
    GROUP BY product_id
)

SELECT 
    product_id,
    total_sales
FROM temp
WHERE total_sales = (
    SELECT MAX(total_sales)
    FROM temp
);

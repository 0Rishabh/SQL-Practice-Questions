

-- =========================================
-- Problem: Return dates where sales amount
-- is greater than the previous day.
-- =========================================



-- Create database
CREATE DATABASE company_db;
USE company_db;


-- Create Sales table
CREATE TABLE sales (
    sale_date DATE,
    amount INT
);


-- Insert data into sales
INSERT INTO sales VALUES
('2024-01-01', 100),
('2024-01-02', 120),
('2024-01-03', 90),
('2024-01-04', 110),
('2024-01-05', 130),
('2024-01-06', 125),
('2024-01-07', 140);


-- Solution using WINDOW FUNCTION (LAG)
SELECT 
    sale_date
FROM (
    SELECT 
        sale_date,
        amount,
        LAG(amount) OVER (ORDER BY sale_date) AS prev_amount
    FROM sales
) t
WHERE amount > prev_amount;

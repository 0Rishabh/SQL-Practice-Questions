

-- =========================================
-- Problem: Find customer balance where
-- credit adds money and debit subtracts
-- money.
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Transactions table
CREATE TABLE transactions (
    transaction_id INT,
    customer_id INT,
    transaction_type VARCHAR(20),
    amount INT
);

-- Insert data into transactions
INSERT INTO transactions VALUES
(1, 101, 'credit', 500),
(2, 101, 'debit', 200),
(3, 102, 'credit', 700),
(4, 102, 'debit', 300),
(5, 103, 'credit', 400),
(6, 103, 'debit', 500),
(7, 104, 'credit', 1000);



-- Solution using CASE + GROUP BY
SELECT 
    customer_id,
    SUM(
        CASE
            WHEN transaction_type = 'credit' THEN amount
            WHEN transaction_type = 'debit' THEN -amount
            ELSE 0
        END
    ) AS balance
FROM transactions
GROUP BY customer_id;

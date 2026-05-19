


-- =========================================
-- Problem: Create a salary category column
-- based on employee salary.
-- salary >= 70000 → 'High'
-- salary between 50000 and 69999 → 'Medium'
-- salary < 50000 → 'Low'
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

-- Insert data into employees
INSERT INTO employees VALUES
(1, 'Amit', 'IT', 50000),
(2, 'Riya', 'HR', 40000),
(3, 'Rahul', 'IT', 70000),
(4, 'Sneha', 'Finance', 55000),
(5, 'Ankit', 'HR', 45000),
(6, 'Pooja', 'IT', 80000),
(7, 'Karan', 'Support', 30000);

-- Solution using CASE statement
SELECT 
    emp_name,
    salary,
    CASE
        WHEN salary >= 70000 THEN 'High'
        WHEN salary >= 50000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;

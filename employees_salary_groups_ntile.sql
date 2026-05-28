

-- =========================================
-- Problem: Divide employees into 3
-- salary groups within the company.
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
(7, 'Karan', 'Finance', 60000);

-- Solution using NTILE()
SELECT 
    emp_name,
    salary,
    NTILE(3) OVER (
        ORDER BY salary DESC
    ) AS salary_group
FROM employees;

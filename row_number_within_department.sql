


-- =========================================
-- Problem: Show unique row number
-- within each department based on
-- salary from highest to lowest.
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



-- Solution using ROW_NUMBER()
SELECT 
    emp_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_number_in_department
FROM employees;

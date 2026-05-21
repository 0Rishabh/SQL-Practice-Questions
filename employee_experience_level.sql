


-- =========================================
-- Problem: Create an experience level
-- column using CASE WHEN conditions.
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



-- Solution using CASE WHEN
SELECT 
    emp_name,
    emp_id,
    CASE
        WHEN emp_id <= 2 THEN 'Junior'
        WHEN emp_id BETWEEN 3 AND 5 THEN 'Mid-Level'
        ELSE 'Senior'
    END AS experience_level
FROM employees;




-- =========================================
-- Problem: Create a bonus column based
-- on employee department using CASE WHEN.
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
    department,
    salary,
    CASE
        WHEN department = 'IT' THEN salary * 0.20
        WHEN department = 'HR' THEN salary * 0.10
        WHEN department = 'Finance' THEN salary * 0.15
        ELSE salary * 0.05
    END AS bonus
FROM employees;

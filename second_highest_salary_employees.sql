-- =========================================
-- SQL Interview Question
-- Problem: Find the second highest salary
-- in the company. If multiple employees
-- have the same second highest salary,
-- show all.
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Employees table
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Insert data into employees
INSERT INTO employees VALUES
(1, 'Amit', 'IT', 60000),
(2, 'Riya', 'HR', 40000),
(3, 'Suresh', 'IT', 75000),
(4, 'Neha', 'Finance', 50000),
(5, 'Karan', 'IT', 80000),
(6, 'Pooja', 'HR', 42000),
(7, 'Rahul', 'Finance', 52000),
(8, 'Anjali', 'IT', 60000),
(9, 'Vikas', 'HR', 45000),
(10, 'Meena', 'Finance', 48000);


-- Solution 1: Using ORDER BY + LIMIT OFFSET

SELECT 
    emp_name,
    department,
    salary
FROM employees
WHERE salary = (
    SELECT salary 
    FROM employees 
    ORDER BY salary DESC 
    LIMIT 1 OFFSET 1
);


-- Solution 2: Using WINDOW FUNCTION
SELECT 
    emp_name,
    salary
FROM (
    SELECT 
        emp_name,
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM employees
) t
WHERE rnk = 2;

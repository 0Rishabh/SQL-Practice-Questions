-- =========================================n
-- Problem: Find department-wise total salary
-- Show only departments where total salary
-- is more than 100000
-- =========================================


-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create employees table
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    joining_year INT
);

-- Insert data
INSERT INTO employees VALUES
(1, 'Amit', 'IT', 50000, 2021),
(2, 'Riya', 'HR', 40000, 2020),
(3, 'Rahul', 'IT', 60000, 2019),
(4, 'Sneha', 'Finance', 55000, 2021),
(5, 'Ankit', 'HR', 45000, 2022),
(6, 'Pooja', 'IT', 70000, 2020);

-- Solution
SELECT 
    department, 
    SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;

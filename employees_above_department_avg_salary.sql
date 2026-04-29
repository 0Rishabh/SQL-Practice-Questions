
-- =========================================
-- Problem: Find employees whose salary is
-- higher than the average salary of their
-- own department.
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

-- Solution using CTE + WINDOW FUNCTION
WITH temp AS (
    SELECT 
        emp_name,
        department,
        salary,
        AVG(salary) OVER (
            PARTITION BY department
        ) AS avg_salary
    FROM employees
)
SELECT 
    emp_name,
    department,
    salary
FROM temp
WHERE salary > avg_salary;

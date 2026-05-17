

-- =========================================
-- Problem: Find employees who work in the
-- same department as 'Rahul'.
-- Exclude Rahul from result
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30)
);

-- Create Employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert data into departments
INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

-- Insert data into employees
INSERT INTO employees VALUES
(1, 'Amit', 1, 50000),
(2, 'Riya', 2, 40000),
(3, 'Rahul', 1, 70000),
(4, 'Sneha', 3, 55000),
(5, 'Ankit', 2, 45000),
(6, 'Pooja', 1, 70000);

-- Solution using SUBQUERY
SELECT 
    e.emp_name,
    d.dept_name,
    e.salary
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
WHERE e.dept_id = (
    SELECT dept_id
    FROM employees
    WHERE emp_name = 'Rahul'
)
AND e.emp_name <> 'Rahul';




-- =========================================
-- Problem: Find the department having
-- the highest number of employees.
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Departments table (Parent)
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(30)
);

-- Create Employees table (Child)
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

-- Solution using GROUP BY + ORDER BY
SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS total_employees
FROM departments d
JOIN employees e
    ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY total_employees DESC
LIMIT 1;

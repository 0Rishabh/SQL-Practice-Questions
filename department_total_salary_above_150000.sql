-- =========================================
-- Problem: Show department name and total
-- salary of that department. Display only
-- those departments where total salary is
-- greater than 1,50,000.
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

-- Create Departments table
CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
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

-- Insert data into departments
INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

-- Solution 1: Using CTE
WITH temp AS (
    SELECT 
        e.emp_name,
        d.dept_name,
        e.salary
    FROM employees e
    JOIN departments d
        ON e.department = d.dept_name
)
SELECT 
    dept_name,
    SUM(salary) AS total_salary
FROM temp
GROUP BY dept_name
HAVING SUM(salary) > 150000;

-- Solution 2: Using GROUP BY directly
SELECT 
    d.dept_name,
    SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d
    ON e.department = d.dept_name
GROUP BY d.dept_name
HAVING SUM(e.salary) > 150000;

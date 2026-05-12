

-- =========================================
-- Problem: Find project names where more
-- than one employee belongs to that
-- project’s department.
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

-- Create Projects table
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert data into departments
INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing'),
(5, 'Support');

-- Insert data into employees
INSERT INTO employees VALUES
(1, 'Amit', 1, 50000),
(2, 'Riya', 2, 40000),
(3, 'Rahul', 1, 70000),
(4, 'Sneha', 3, 55000),
(5, 'Ankit', 2, 45000),
(6, 'Pooja', 1, 70000),
(7, 'Karan', 5, 38000);

-- Insert data into projects
INSERT INTO projects VALUES
(101, 'Website Revamp', 1),
(102, 'Recruitment Drive', 2),
(103, 'Budget Planning', 3),
(104, 'Security Upgrade', 1);

-- Solution using JOIN + GROUP BY + HAVING
SELECT 
    p.project_name,
    COUNT(e.emp_id) AS total_employees
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
JOIN projects p
    ON d.dept_id = p.dept_id
GROUP BY p.project_id, p.project_name
HAVING COUNT(e.emp_id) > 1;

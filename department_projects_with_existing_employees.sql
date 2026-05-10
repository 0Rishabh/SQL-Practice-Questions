

-- =========================================
-- Problem: Find department name and total
-- number of projects, but show only those
-- departments where at least one employee
-- exists.
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
(4, 'Marketing');

-- Insert data into employees
INSERT INTO employees VALUES
(1, 'Amit', 1, 50000),
(2, 'Riya', 2, 40000),
(3, 'Rahul', 1, 70000),
(4, 'Sneha', 3, 55000),
(5, 'Ankit', 2, 45000),
(6, 'Pooja', 1, 70000);

-- Insert data into projects
INSERT INTO projects VALUES
(101, 'Website Revamp', 1),
(102, 'Recruitment Drive', 2),
(103, 'Budget Planning', 3),
(104, 'Security Upgrade', 1);

-- Solution using JOIN + GROUP BY
SELECT 
    d.dept_name,
    COUNT(DISTINCT p.project_id) AS total_projects
FROM departments d
JOIN employees e
    ON d.dept_id = e.dept_id
JOIN projects p
    ON d.dept_id = p.dept_id
GROUP BY d.dept_name;

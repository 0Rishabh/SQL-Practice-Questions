

-- =========================================
-- Problem: Find all employees whose
-- department is IT
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
(3, 'Finance');

-- Insert data into employees
INSERT INTO employees VALUES
(1,

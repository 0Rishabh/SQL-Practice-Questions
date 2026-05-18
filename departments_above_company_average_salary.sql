

-- =========================================
-- Problem: Find department names where
-- average employee salary is greater
-- than company average salary.
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


-- Solution using JOIN + GROUP BY + HAVING + Subquery
SELECT 
    d.dept_name,
    AVG(e.salary) AS avg_department_salary
FROM employees e
JOIN departments d
    ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) > (
    SELECT AVG(salary)
    FROM employees
);

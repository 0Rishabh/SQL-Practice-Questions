


-- =========================================
-- Problem: Find employees who earn more
-- than their manager.
-- =========================================

-- Create database
CREATE DATABASE company_db;
USE company_db;

-- Create Employee_Manager table
CREATE TABLE employee_manager (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT,
    manager_id INT
);

-- Insert data
INSERT INTO employee_manager VALUES
(1, 'Amit', 60000, NULL),
(2, 'Riya', 40000, 1),
(3, 'Suresh', 75000, 1),
(4, 'Neha', 50000, 2),
(5, 'Karan', 80000, 3),
(6, 'Pooja', 42000, 2),
(7, 'Rahul', 52000, 3),
(8, 'Anjali', 60000, 4);

-- Solution using SELF JOIN
SELECT 
    e.emp_name,
    e.salary,
    m.emp_name AS manager_name,
    m.salary AS manager_salary
FROM employee_manager e
JOIN employee_manager m
    ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;



-- =========================================
-- Problem: Find the department which has
-- the highest total salary. If multiple
-- departments have the same highest total,
-- show all.
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




-- Solution 1: Using CTE + MAX
WITH temp AS (
    SELECT 
        department,
        SUM(salary) AS total_salary
    FROM employees
    GROUP BY department
)
SELECT 
    department,
    total_salary
FROM temp
WHERE total_salary = (
    SELECT MAX(total_salary)
    FROM temp
);



-- Solution 2: Using WINDOW FUNCTION
SELECT 
    department,
    total_salary
FROM (
    SELECT 
        department,
        SUM(salary) AS total_salary,
        RANK() OVER (ORDER BY SUM(salary) DESC) AS rnk
    FROM employees
    GROUP BY department
) t
WHERE rnk = 1;

-- =========================================
-- Problem: Find employees whose salary
-- increased continuously every month.
-- =========================================



-- Create database
CREATE DATABASE company_db;
USE company_db;



-- Create Employee_Salary table
CREATE TABLE employee_salary (
    emp_id INT,
    salary_month DATE,
    salary INT
);


-- Insert data into employee_salary
INSERT INTO employee_salary VALUES
(1, '2024-01-01', 50000),
(1, '2024-02-01', 55000),
(1, '2024-03-01', 60000),

(2, '2024-01-01', 40000),
(2, '2024-02-01', 42000),
(2, '2024-03-01', 41000),

(3, '2024-01-01', 70000),
(3, '2024-02-01', 75000),
(3, '2024-03-01', 80000);




-- Solution using CTE + LAG
WITH temp AS (
    SELECT 
        emp_id,
        salary_month,
        salary,
        LAG(salary) OVER (
            PARTITION BY emp_id
            ORDER BY salary_month
        ) AS prev_salary
    FROM employee_salary
)

SELECT 
    emp_id
FROM temp
GROUP BY emp_id
HAVING COUNT(*) - 1 = SUM(
    CASE
        WHEN salary > prev_salary THEN 1
        ELSE 0
    END
);

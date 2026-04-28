# SQL Practice Questions

This repository contains frequently asked SQL interview questions with solutions.
Each question is written in a separate SQL file for clarity.

---


## 📌 Questions List

### 1️⃣ Average Salary by Department
- **File:** `average_salary_by_department.sql`
- **Problem:** Find the average salary of employees in each department.
- **Concepts:** GROUP BY, AVG()


---


### 2️⃣ Department-wise Total Salary (HAVING clause)
- **File:** `department_wise_total_salary.sql`
- **Problem:** Find departments where total salary is more than 100000.
- **Concepts:** GROUP BY, SUM(), HAVING


---


### 3️⃣ Highest Salary in Each Department
- **File:** `highest_salary_each_department.sql`
- **Problem:** Find the highest salary in each department.
- **Concepts:** GROUP BY, MAX()


---



### 4️⃣ Employee(s) with Highest Salary
- **File:** `employee_with_highest_salary.sql`
- **Problem:** Find the employee(s) who have the highest salary in the company.
- **Concepts:** Subquery, MAX()

---



### 5️⃣ Highest Salary Employee in Each Department
- **File:** `highest_salary_employee_each_department.sql`
- **Problem:** Find the employee(s) with the highest salary in each department.
- **Concepts:** CTE, JOIN, GROUP BY, MAX()


---



### 6️⃣ Second Highest Salary Employee
- **File:** `second_highest_salary_employee.sql`
- **Problem:** Find the employee(s) who earn the second highest salary.
- **Concepts:** Subquery, DISTINCT, ORDER BY, LIMIT


---

### 7️⃣ Employee Salary with Department Name
- **File:** `employee_salary_with_department.sql`
- **Problem:** Find employee name, salary, and department name.
- **Concepts:** JOIN, FOREIGN KEY

---


### 8️⃣ Employees from IT Department
- **File:** `employees_from_it_department.sql`
- **Problem:** Find all employees whose department is IT.
- **Concepts:** JOIN, WHERE clause


---


### 9️⃣ All Departments with Employees (LEFT JOIN)
- **File:** `all_departments_with_employees.sql`
- **Problem:** Show all departments and their employee names, including departments with no employees.
- **Concepts:** LEFT JOIN

---


### 🔟 Departments with No Employees
- **File:** `departments_with_no_employees.sql`
- **Problem:** Find departments that do not have any employees.
- **Concepts:** LEFT JOIN, NULL check


---


### 1️⃣1️⃣ Employee Count per Department
- **File:** `employee_count_per_department.sql`
- **Problem:** Find the number of employees in each department.
- **Concepts:** JOIN, GROUP BY, COUNT


---


### 1️⃣2️⃣ Department with Highest Employees
- **File:** `department_with_max_employees.sql`
- **Problem:** Find the department having the highest number of employees.
- **Concepts:** JOIN, GROUP BY, COUNT, ORDER BY


---


### 1️⃣3️⃣ Employees Above Average Salary
- **File:** `employees_above_average_salary.sql`
- **Problem:** Find employees who earn more than the company’s average salary.
- **Concepts:** Subquery, AVG, JOIN

---


### 1️⃣4️⃣ Employees, Departments, and Projects
- **File:** `employees_departments_projects.sql`
- **Problem:** Show employee name, department name, and project name.
- **Concepts:** Multiple JOINs, Foreign Keys


---

### 1️⃣5️⃣ Employees in Departments with Multiple Projects
- **File:** `employees_in_departments_with_multiple_projects.sql`
- **Problem:** Find employees working in departments that have more than one project.
- **Concepts:** Subquery, GROUP BY, HAVING


---

### 1️⃣6️⃣ Departments with Average Salary Above 55,000
- **File:** `department_avg_salary_above_55000.sql`
- **Problem:** Find department-wise average salary and display only those departments where average salary is greater than 55,000.
- **Concepts:** GROUP BY, HAVING, AVG


---

### 1️⃣7️⃣ Employees Above 50,000 with Department
- **File:** `employees_above_50000_with_department.sql`
- **Problem:** Show employee name and department name for employees earning more than 50,000.
- **Concepts:** JOIN, WHERE

---

### 1️⃣8️⃣ Departments with Total Salary Above 1,50,000
- **File:** `department_total_salary_above_150000.sql`
- **Problem:** Show department name and total salary where total salary is greater than 1,50,000.
- **Concepts:** CTE, GROUP BY, HAVING, SUM, JOIN

---


### 1️⃣9️⃣ Employees with Highest Salary
- **File:** `employees_with_highest_salary.sql`
- **Problem:** Find employee(s) who have the highest salary in the company.
- **Concepts:** Subquery, MAX

---

### 2️⃣0️⃣ Top 2 Highest Salary per Department
- **File:** `top_2_highest_salary_per_department.sql`
- **Problem:** Find top 2 highest salary employees in each department.
- **Concepts:** CTE, Window Function, DENSE_RANK

































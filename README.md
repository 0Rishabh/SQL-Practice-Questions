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


---

### 2️⃣1️⃣ Employees Above Department Average Salary
- **File:** `employees_above_department_avg_salary.sql`
- **Problem:** Find employees whose salary is higher than the average salary of their own department.
- **Concepts:** CTE, Window Function, AVG


---


### 2️⃣2️⃣ Department with Highest Total Salary
- **File:** `department_with_highest_total_salary.sql`
- **Problem:** Find the department with the highest total salary. If multiple departments have the same highest total, display all.
- **Concepts:** CTE, GROUP BY, SUM, Window Function, RANK


---

### 2️⃣3️⃣ Second Highest Salary Employees
- **File:** `second_highest_salary_employees.sql`
- **Problem:** Find the second highest salary in the company and show all employees having that salary.
- **Concepts:** Subquery, ORDER BY, LIMIT, Window Function, DENSE_RANK

---

### 2️⃣4️⃣ Employees Earning More Than Their Manager
- **File:** `employees_earning_more_than_manager.sql`
- **Problem:** Find employees whose salary is greater than their manager’s salary.
- **Concepts:** Self Join, Comparison

---


### 2️⃣5️⃣ Sales Greater Than Previous Day
- **File:** `sales_increasing_over_previous_day.sql`
- **Problem:** Return dates where the sales amount is greater than the previous day.
- **Concepts:** Window Function, LAG

---

### 2️⃣6️⃣ Products Never Ordered
- **File:** `products_never_ordered.sql`
- **Problem:** Find products that were never ordered.
- **Concepts:** NOT EXISTS, Subquery


---

### 2️⃣7️⃣ Top Scoring Subject per Student
- **File:** `top_scoring_subject_per_student.sql`
- **Problem:** Find the subject with highest marks for each student.
- **Concepts:** Window Function, RANK


---


### 2️⃣8️⃣ Department Projects with Existing Employees
- **File:** `department_projects_with_existing_employees.sql`
- **Problem:** Find department name and total number of projects only for departments having at least one employee.
- **Concepts:** JOIN, GROUP BY, COUNT DISTINCT


---




### 2️⃣9️⃣ Employees Above Department Average (Correlated Subquery) and  (not window function)
- **File:** `employees_above_department_avg_correlated.sql`
- **Problem:** Find employees earning more than their department’s average salary using correlated subquery.
- **Concepts:** Correlated Subquery, AVG


---

### 3️⃣0️⃣Customers Who Purchased All Products
- **File:** `customers_purchased_all_products.sql`
- **Problem:** Find customers who purchased all available products.
- **Concepts:** GROUP BY, HAVING, COUNT DISTINCT, Subquery

---
### 3️⃣1️⃣ Mutual Friendships
- **File:** `mutual_friendships.sql`
- **Problem:** Find mutual friendship pairs and avoid duplicate pairs.
- **Concepts:** Self Join, 👉 Avoid duplicate pairs like: -- (1,2) -- (2,1)


---
### 3️⃣2️⃣ Employees Not Assigned to Projects
- **File:** `employees_not_assigned_to_projects.sql`
- **Problem:** Find employees whose departments do not have any projects assigned.
- **Concepts:** LEFT JOIN, NULL Check

---


### 3️⃣3️⃣ Projects with Multiple Department Employees
- **File:** `projects_with_multiple_department_employees.sql`
- **Problem:** Find project names where more than one employee belongs to the project’s department.
- **Concepts:** JOIN, GROUP BY, HAVING


---

### 3️⃣4️⃣ Employees with Continuous Monthly Salary Increase
- **File:** `employees_salary_increased_every_month.sql`
- **Problem:** Find employees whose salary increased continuously every month.
- **Concepts:** CTE, Window Function, LAG, CASE, GROUP BY


---

### 3️⃣5️⃣ Customer Balance from Transactions
- **File:** `customer_balance_from_transactions.sql`
- **Problem:** Calculate customer balance where credit adds money and debit subtracts money.
- **Concepts:** CASE, SUM, GROUP BY

---
### 3️⃣6️⃣ Top 2 Selling Products per Category
- **File:** `top_2_selling_products_per_category.sql`
- **Problem:** Find top 2 selling products in each category and include ties.
- **Concepts:** Window Function, DENSE_RANK, PARTITION BY

---

### 3️⃣7️⃣ Customers with No Orders
- **File:** `customers_with_no_orders.sql`
- **Problem:** Find customers who have never placed any order.
- **Concepts:** LEFT JOIN, NULL Check

---

### 3️⃣8️⃣ Employees in Same Department as Rahul
- **File:** `employees_same_department_as_rahul.sql`
- **Problem:** Find employees working in the same department as Rahul without hardcoding department id.
- **Concepts:** Subquery, JOIN, Filtering

---

### 3️⃣9️⃣ Departments Above Company Average Salary
- **File:** `departments_above_company_average_salary.sql`
- **Problem:** Find departments whose average employee salary is greater than the company average salary.
- **Concepts:** JOIN, GROUP BY, HAVING, Subquery, AVG

---

### 4️⃣0️⃣ Employee Salary Category
- **File:** `employee_salary_category.sql`
- **Problem:** Create a salary category column based on salary ranges.
- **Concepts:** CASE Statement, Conditional Logic

---

### 4️⃣1️⃣ Employee Bonus by Department
- **File:** `employee_bonus_by_department.sql`
- **Problem:** Create a bonus column based on employee department rules.
- **Concepts:** CASE WHEN, Conditional Logic

---

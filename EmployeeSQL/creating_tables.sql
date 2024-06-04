-- Creating tables ---

-- Create the departments table
CREATE TABLE departments (
	dept_no VARCHAR(20) PRIMARY KEY,
	dept_name VARCHAR(20)
);

-- Check data import
SELECT *
FROM departments;

--------------------------------------------------------------------
-- Create the dept_emp table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(20)
);

-- Check data import
SELECT *
FROM dept_emp;
--------------------------------------------------------------------
-- Create the dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(20),
	emp_no INT
);

-- Check data import
SELECT *
FROM dept_manager;

--------------------------------------------------------------------
-- Create the employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(20),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(20),
	hire_date DATE
);

-- Check data import
SELECT *
FROM employees;

--------------------------------------------------------------------
-- Create the salaries table
CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

-- Check data import
SELECT *
FROM salaries;

--------------------------------------------------------------------
-- Create the titles table
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR 
);

-- Check data import
SELECT *
FROM titles;

--------------------------------------------------------------------
-- 1. List the employee number, last name, first name, sex, and salary of each employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

--------------------------------------------------------------------
-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--------------------------------------------------------------------
-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.emp_no, dept_manager.dept_no, departments.dept_no, departments.dept_name, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;

--------------------------------------------------------------------
-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

--------------------------------------------------------------------
-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

--------------------------------------------------------------------
-- 6. List each employee in the Sales department, including their employee number, last name, and first name.

--------------------------------------------------------------------
-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

--------------------------------------------------------------------
-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

--------------------------------------------------------------------
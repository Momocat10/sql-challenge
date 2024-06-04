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
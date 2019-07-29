CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender CHAR(1),
	hire_date DATE);
	
CREATE TABLE department (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR);
	
CREATE TABLE dept_emp (
	emp_no INT REFERENCES employees(emp_no),
	dept_no VARCHAR REFERENCES department(dept_no),
	from_date DATE,
	to_date DATE);
	
CREATE TABLE dept_manager (
	dept_no VARCHAR REFERENCES department(dept_no),
	emp_no INT REFERENCES employees(emp_no),
	from_date DATE,
	to_date DATE);
	
CREATE TABLE salaries (
	emp_no INT REFERENCES employees(emp_no),
	salary NUMERIC,
	from_date DATE,
	to_date DATE);
	
CREATE TABLE titles (
	emp_no INT REFERENCES employees(emp_no),
	title VARCHAR,
	from_date DATE,
	to_date DATE);
	
	
select * from titles
WHERE to_date = '9999-01-01'
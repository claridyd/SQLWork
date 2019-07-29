--How many employees are there?
select count(*) from employees
--#1 List emp_no, lastname, firstname, gender and salary
SELECT 
	e.emp_no,
	e.last_name, 
	e.first_name,
	e.gender,
	s.salary
FROM employees as e
LEFT JOIN salaries as s
ON e.emp_no = s.emp_no;

--#2 List all employees who were hired in 1986
SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date > '1985-12-31' and hire_date < '1987-01-01';

--how many managers are there?
select count(*) from dept_manager;

--#3 List manager of each dept
SELECT 
	dm.dept_no,
	d.dept_name,
	dm.emp_no, 
	e.last_name,
	e.first_name,
	e.hire_date,
	dm.to_date
FROM dept_manager as dm
LEFT JOIN employees as e
ON dm.emp_no = e.emp_no
LEFT join department as d
on dm.dept_no = d.dept_no;

--#4 List the department of each employee
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name	
FROM employees as e 
LEFT JOIN dept_emp as de
on e.emp_no = de.emp_no
LEFT JOIN department as d
on de.dept_no = d.dept_no;

--#5 List all employees whose first name is Hercules and last names begin with B
SELECT
	first_name,
	last_name
FROM employees
where first_name = 'Hercules'
and last_name like 'B%';

--#6 List employees in Sales dept 
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name	
FROM employees as e 
LEFT JOIN dept_emp as de
on e.emp_no = de.emp_no
LEFT JOIN department as d
on de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

--#7 List employees in Sales and Development
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name	
FROM employees as e 
LEFT JOIN dept_emp as de
on e.emp_no = de.emp_no
LEFT JOIN department as d
on de.dept_no = d.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development';

--#8 in desc order list the frequency count of employee lst names
SELECT
	last_name,
	COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


--View Employee number, name, gender, and salary
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no=s.emp_no;

--List employees who were hired in 1986
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '1986%';

--List managers' department number, department name, employee number, last name, first name, start and end employment dates
SELECT m.emp_no, m.dept_no, d.dept_name, e.first_name, e.last_name,  m.from_date, m.to_date
FROM dept_manager AS m
JOIN departments AS d ON m.dept_no=d.dept_no
JOIN employees AS e ON m.emp_no=e.emp_no;

--List the department of each employee with the following information: employee number, last name, first name, and department name
SELECT de.emp_no, e.first_name, e.last_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no=e.emp_no
JOIN departments AS d ON de.dept_no=d.dept_no;
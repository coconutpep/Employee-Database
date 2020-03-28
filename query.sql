SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no=s.emp_no;
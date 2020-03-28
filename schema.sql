CREATE TABLE departments(
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR (255) NOT NULL
);

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	birth_date VARCHAR(10) NOT NULL,
	first_name VARCHAR(255),
	last_name VARCHAR(255) NOT Null,
	gender VARCHAR(1),
	hire_date VARCHAR(10) NOT NULL
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date VARCHAR(10) NOT NULL,
	to_date VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	from_date VARCHAR(10) NOT NULL,
	to_date VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR(255) NOT NULL,
	from_date VARCHAR(10) NOT NULL,
	to_date VARCHAR(10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date VARCHAR(10) NOT NULL,
	to_date VARCHAR(10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
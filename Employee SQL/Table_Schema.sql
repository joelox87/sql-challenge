DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(5),
	birth_date DATE,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(1),
	hire_date DATE
);

CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(25)
);

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(4),
	PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
	emp_no INTEGER,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no INTEGER,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR(25)
);
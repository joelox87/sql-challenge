--Query 1 - List the following details of each employee: employee number, last name, 
--first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

--Query 2 - List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--Query 3 - List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, departments.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no;
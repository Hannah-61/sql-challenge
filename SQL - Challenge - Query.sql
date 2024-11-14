--Question 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

--Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '1986%';

--Question 3
SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM department_managers
JOIN employees ON department_managers.emp_no = employees.emp_no
JOIN departments ON department_managers.dept_no = departments.dept_no;

--Question 4
SELECT department_employees.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
JOIN employees ON department_employees.emp_no = employees.emp_no
JOIN departments ON department_employees.dept_no = departments.dept_no;

--Question 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question 6
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN department_employees ON employees.emp_no = department_employees.emp_no
JOIN departments ON department_employees.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

--Question 7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN department_employees ON employees.emp_no = department_employees.emp_no
JOIN departments ON department_employees.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');

--Question 8
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;

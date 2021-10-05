USE employees;

SELECT DISTINCT last_name FROM employees
# WHERE last_name LIKE 'Z%'
ORDER By last_name DESC
LIMIT 10;

SELECT emp_no,salary FROM salaries
ORDER BY salary DESC
LIMIT 5;

SELECT emp_no,salary FROM salaries
ORDER BY salary DESC
LIMIT 5
OFFSET 45;
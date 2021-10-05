USE employees;

SELECT * FROM employees
WHERE first_name = 'Irena' && gender = 'M' || first_name = 'Vidya' && gender = 'M' || first_name = 'Maya' && gender = 'M'
ORDER BY first_name ASC, last_name ASC;

SELECT * FROM employees
WHERE last_name LIKE 'E%';

SELECT  * FROM employees
WHERE last_name Like '%q%';

SELECT * FROM employees
WHERE last_name LIKE 'E%' || last_name LIKE '%E';

SELECT * FROM employees
WHERE last_name LIKE 'E%' && last_name LIKE '%E';

SELECT * FROM employees
WHERE last_name LIKE 'Q%' && last_name NOT LIKE 'qu%';



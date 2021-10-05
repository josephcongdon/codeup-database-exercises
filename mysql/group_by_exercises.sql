USE employees;

SELECT DISTINCT title FROM titles;

SELECT salary, COUNT(*) from salaries
GROUP BY salary
ORDER BY COUNT(*) DESC;


SELECT title, COUNT(*) FROM titles
WHERE to_date > NOW()
GROUP BY title;


SELECT last_name, COUNT(*) FROM employees
WHERE last_name LIKE 'E%' && last_name LIKE '%E'
GROUP BY last_name;
SELECT * FROM employees;

SELECT last_name, COUNT(*) FROM employees
WHERE last_name LIKE '%q%' && last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY last_name;

SELECT COUNT(gender), gender FROM employees
WHERE first_name = 'Irena'
|| first_name = 'Vidya'
|| first_name = 'Maya'
GROUP BY gender;





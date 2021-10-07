USE employees;

SELECT * FROM employees
WHERE first_name = 'Irena' && gender = 'M' || first_name = 'Vidya' && gender = 'M' || first_name = 'Maya' && gender = 'M'
ORDER BY first_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya' , 'Maya')
  AND gender ='M'
ORDER BY first_name;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya' , 'Maya')
    #   AND gender ='M'
ORDER BY first_name ,last_name;

# SELECT * FROM employees
                    # WHERE last_name LIKE '%e%' ORDER BY

SELECT * FROM employees
WHERE last_name LIKE 'E%';

SELECT  * FROM employees
WHERE last_name Like '%q%';

SELECT * FROM employees
WHERE last_name LIKE 'E%' || last_name LIKE '%E';

SELECT CONCAT(first_name, ' ' , last_name)  FROM employees
WHERE last_name LIKE 'E%' && last_name LIKE '%E';

SELECT CONCAT(first_name, ' ', last_name, ' ', birth_date ) FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

SELECT CONCAT(first_name, ' ', last_name, ' ', birth_date ) FROM employees
WHERE (MONTH(birth_date) = 12
AND DAY(birth_date) = 25)
AND YEAR(hire_date) BETWEEN 1900 AND 1999;

SELECT CONCAT(first_name, ' ', last_name, ' ', birth_date, ' ', hire_date ) FROM employees
WHERE (MONTH(birth_date) = 12
    AND DAY(birth_date) = 25)
  AND YEAR(birth_date) BETWEEN 1900 AND 2000
ORDER BY birth_date, hire_date DESC;

SELECT CONCAT(DATEDIFF(now(), hire_date),' ',first_name,' ',last_name) From employees
WHERE (MONTH(birth_date) = 12
  AND DAY(birth_date) = 25)
  AND YEAR(hire_date) BETWEEN 1900 AND 2000
ORDER BY hire_date;

SELECT * FROM employees
WHERE last_name LIKE 'Q%' && last_name NOT LIKE 'qu%';



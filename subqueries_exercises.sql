USE employees;



# Let's say we know the employee numbers are both in the department manager and employees tables. They are the same in each. So we can select all the emp_no from dept_manager

USE employees;

SELECT emp_no FROM dept_manager;

SELECT birth_date, CONCAT(first_name, ' ', last_name)
FROM employees
WHERE emp_no IN (
    SELECT emp_no FROM dept_manager
);

# USE codeup_test_db;
#
# INSERT INTO preferences (person_id, album_id) VALUES ((SELECT id FROM persons WHERE first_name = 'Tareq'), (SELECT id FROM albums WHERE name = '1'));
#
# UPDATE preferences
# SET album_id = (SELECT id FROM albums WHERE name = 'Led Zeppelin IV')
# WHERE album_id = (SELECT id FROM albums WHERE name = '1')
#   AND person_id = (SELECT id FROM persons WHERE first_name = 'Tareq')
# ;


SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM dept_emp
    WHERE emp_no = '101010'
)
LIMIT 69;

SELECT title, COUNT(*) from titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    )
GROUP BY title;

SELECT first_name, last_name FROM employees
WHERE gender = 'F'
AND emp_no IN(
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
    );

create database if not exists food_db;

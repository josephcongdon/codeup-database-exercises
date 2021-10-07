USE join_test_db;
USE employees;
CREATE DATABASE IF NOT EXISTS join_test_db;

CREATE TABLE roles (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        PRIMARY KEY (id)
);

CREATE TABLE users (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL,
        role_id INT UNSIGNED DEFAULT NULL,
        PRIMARY KEY (id),
        FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
        ('bob', 'bob@example.com', 1),
        ('joe', 'joe@example.com', 2),
        ('sally', 'sally@example.com', 3),
        ('adam', 'adam@example.com', 3),
        ('jane', 'jane@example.com', null),
        ('mike', 'mike@example.com', null);


SELECT users.name, roles.name FROM roles JOIN users ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users LEFT JOIN roles ON roles.id = users.role_id;

SELECT users.name, roles.name FROM users RIGHT JOIN roles ON roles.id = users.role_id;


INSERT INTO users (name, email, role_id) VALUES
        ('phil', 'phil@example.com', 1),
        ('rob', 'rob@example.com', 2),
        ('steve', 'steve@example.com', 2),
        ('brad', 'brad@example.com', null);

SELECT users.name, roles.name FROM users FT JOIN roles ON users.role_id = roles.id;

INSERT INTO roles (name) VALUE ('agent');

SELECT * FROM roles;

DESCRIBE roles;

SELECT users.name, roles.name FROM users RIGHT JOIN roles ON users.role_id = roles.id;

UPDATE users SET role_id = 5 WHERE users.name = 'mark';

SELECT roles.name AS role, COUNT(users.name) AS 'users with role' FROM users RIGHT JOIN roles on
roles.id = users.role_id GROUP BY roles.name ORDER BY COUNT(users.name);

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', d.dept_name
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE gender='F';


SELECT title, COUNT(title)
FROM titles t JOIN dept_emp de ON t.emp_no = de.emp_no JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service'
  AND t.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY t.title;





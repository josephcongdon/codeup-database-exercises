USE employees;

SELECT CONCAT(emp_no,' - ' ,first_name,' ', last_name) AS full_name , birth_date AS DOB FROM employees
LIMIT 10;

SELECT CONCAT(title), COUNT(*) FROM titles
GROUP BY title;

SHOW INDEXES FROm departments;

SHOW INDEXES FROM employees;


ALTER TABLE salaries ADD INDEX salary_index (salary);

SELECT salary FROM salaries
WHERE salary < 700000 AND salary > 50000;

USE codeup_test_db;
SELECT * FROM quotes;

CREATE TABLE different_quotes (
    id INT NOT NULL AUTO_INCREMENT,
    content VARCHAR(240) NOT NULL,
    author VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);


INSERT INTO different_quotes (content, author)
VALUES ( 'Death is a funny thing. Not funny haha, like a Woody Allen movie, but funny strange, like a Woody Allen marriage.', 'Norm Macdonald');

SHOW INDEXES FROM different_quotes;

ALTER TABLE different_quotes ADD UNIQUE (content, author);

SELECT * FROM different_quotes;
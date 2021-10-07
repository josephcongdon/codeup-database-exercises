USE employees;

SHOW INDEXES FROM salaries;

SHOW TABLES;

DESCRIBE departments;

SELECT * FROM departments;


DESCRIBE dept_emp;

SELECT * FROM dept_emp;

DESCRIBE dept_manager;

DESCRIBE employees;

DESCRIBE salaries;

DESCRIBE titles;

USE codeup_test_db;

SHOW TABLES;

SELECT * FROM albums;

DESCRIBE albums;

ALTER TABLE albums ADD UNIQUE unique_artists (artist, name);

CREATE TABLE persons (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    album_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (album_id) REFERENCES albums (id)
);
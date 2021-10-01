USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (65),
    record_name VARCHAR(35),
    release_date SMALLINT UNSIGNED NOT NULL,
    sales FLOAT(6,2) NOT NULL,
    genre VARCHAR(50),
    PRIMARY KEY (id)
);
USE codeup_test_db;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
	user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(65) NOT NULL,
	address VARCHAR(200) NOT NULL,
	join_date DATETIME NOT NULL,
	personal_statement TEXT,
	hours_volunteered DOUBLE NOT NULL DEFAULT 0,
	friends INT NOT NULL,
	PRIMARY KEY (user_id)
	);
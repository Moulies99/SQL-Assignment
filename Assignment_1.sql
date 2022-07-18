-- task 1
CREATE DATABASE IF NOT EXISTS training;

USE training;

-- task 2 
create table demography
(
	CustID int AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(1),
PRIMARY KEY (CustID)
);

-- task 3
INSERT INTO demography ( Name, Age, Gender)
VALUES('John', 25, 'M');

-- task 4
INSERT INTO demography ( Name, Age, Gender)
VALUES('Pawan', 26, 'M'),
	 ('Hema', 31, 'F');

-- task 5
INSERT INTO demography ( Name, Gender)
VALUES ('Rekha',  'F');

-- task 6
SELECT
	*
FROM
	demography;

-- task 7
UPDATE 
	demography
SET
	Age = NULL
WHERE
	Name = 'John';
    

-- task 8
SELECT
	*
FROM
	demography
WHERE
	Age is NULL;

-- task 9
DELETE FROM demography;

-- task 10
DROP TABLE demography;
CREATE DATABASE day2;

USE day2;

CREATE TABLE cats (name VARCHAR(100), age INT);

SELECT
   *
FROM
   cats;

INSERT INTO
   cats(name, age)
VALUES
   ('Jetson', 7);

INSERT INTO
   cats(age, name)
VALUES
   (12, 'Victoria');

INSERT INTO
   cats(name, age)
VALUES
   ('Charlie', 10),
   ('Sadie', 3),
   ('Lazy Bear', 1);

CREATE TABLE people (
   first_name VARCHAR(20),
   last_name VARCHAR(20),
   age INT
);

SELECT
   *
FROM
   people;

INSERT INTO
   people(first_name, last_name, age)
VALUES
   ('Tina', 'Belcher', 7);

INSERT INTO
   people(first_name, last_name, age)
VALUES
   ('Bob', 'Belcher', 42);

INSERT INTO
   people(first_name, last_name, age)
VALUES
   ('Linda', 'Belcher', 45),
   ('Philip', 'Frond', 38),
   ('Calvin', 'Fischoeder', 70);

DESC people;

CREATE TABLE people2 (
   first_name VARCHAR(20) DEFAULT 'Ram',
   last_name VARCHAR(20) DEFAULT 'Thapa',
   age INT
);

SELECT
   *
FROM
   people2;

INSERT INTO
   people2 (first_name, age)
VALUES
   (NULL, 78);

CREATE TABLE people3 (
   first_name VARCHAR(20) NOT NULL DEFAULT 'Ram',
   last_name VARCHAR(20) DEFAULT 'Thapa',
   age INT
);

INSERT INTO
   people3 (first_name, last_name, age)
VALUES
   ('VALUE', NULL, 78);

SELECT
   *
FROM
   people3;

CREATE TABLE people4 (
   id INT PRIMARY KEY,
   first_name VARCHAR(20) NOT NULL DEFAULT 'Ram',
   last_name VARCHAR(20) DEFAULT 'Thapa',
   age INT
);

INSERT INTO
   people4 (id, first_name, last_name, age)
VALUES
   (2, 'VALUE', 'LAST', 78);

SELECT
   *
FROM
   people4;

-- IDENTITY(1, 1) For Ms SQL Server, instead of AUTO_INCREMENT
CREATE TABLE people5 (
   id INT PRIMARY KEY AUTO_INCREMENT,
   first_name VARCHAR(20) NOT NULL DEFAULT 'Ram',
   last_name VARCHAR(20) DEFAULT 'Thapa',
   age INT
);

INSERT INTO
   people5 (first_name, last_name, age)
VALUES
   ('VALUE', 'LAST', 78);

SELECT
   *
FROM
   people5;

-- Alternative way to define primary key
CREATE TABLE people5 (
   id INT AUTO_INCREMENT,
   first_name VARCHAR(20) NOT NULL DEFAULT 'Ram',
   last_name VARCHAR(20) DEFAULT 'Thapa',
   age INT,
   PRIMARY KEY (id) -- <-------------------------------------
);

CREATE TABLE employees (
   id INT AUTO_INCREMENT PRIMARY KEY,
   last_name VARCHAR(100) NOT NULL,
   first_name VARCHAR(100) NOT NULL,
   middle_name VARCHAR(100),
   age INT NOT NULL,
   current_status VARCHAR(100) NOT NULL DEFAULT 'employed'
);
-- For MYSQL
show databases;

-- For Ms SQL Server
SELECT
  name
FROM
  sys.databases;

CREATE DATABASE soap_store;

DROP DATABASE soap_store;

USE soap_store;

-- For MYSQL
SELECT
  database();

-- For Ms SQL Server
SELECT
  DB_NAME() AS CurrentDatabase;

CREATE TABLE cats (
  name VARCHAR(100),
  breed VARCHAR(100),
  age INT
);

-- For MYSQL
SHOW TABLES;

-- For Ms SQL Server
SELECT
  name
FROM
  sys.tables;

-- For MYSQL
DESC cats;

-- For MySQL: OPtion 2 for DESCRIBE cats;
SHOW COLUMNS
FROM
  cats;

-- For Ms SQL Server
EXEC sp_help 'cats';

CREATE TABLE tweets (
  username VARCHAR(14),
  content VARCHAR(140),
  favorites INT
);

DROP TABLE tweets;

-- In Microsoft SQL Server, sp_help stands for "stored procedure help." 
-- When you execute sp_help <object_name>, it provides comprehensive details about the specified object 
-- (e.g., a table, view, or stored procedure), such as:
-- Column names and data types
-- Primary and foreign keys
-- Indexes
-- Constraints
-- Triggers
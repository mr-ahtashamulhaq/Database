-- Create a database named company_db;
CREATE DATABASE company_db;
SHOW databases;

-- Create a database named school_db only if it does not already exist;
CREATE DATABASE IF NOT EXISTS school_db;
SHOW databases;

-- List all databases present on your MySQL server;
SHOW databases;

-- Switch your session to use the company_db database;
USE company_db;
SELECT database();

-- Create a database named test_environment;
CREATE DATABASE test_environment;
SHOW DATABASES;

-- Verify which database is currently selected;
SELECT DATABASE();

-- Switch from company_db to school_db;
USE school_db;
SELECT DATABASE();

-- Drop the database test_environment;
DROP DATABASE test_environment;
SHOW DATABASES;

-- Try dropping a database named archive_db only if it exists;
DROP DATABASE IF EXISTS
archive_db;

-- Create three databases named sales_db, hr_db, and finance_db;
CREATE DATABASE sales_db;
CREATE DATABASE hr_db;
CREATE DATABASE finance_db;

-- List all databases again and confirm the three new databases appear;
SHOW DATABASES;

-- Switch to the sales_db database;
USE sales_db;
SELECT DATABASE();

-- Drop the finance_db database;
DROP DATABASE finance_db;
SHOW DATABASES;

-- Switch back to the hr_db database;
USE hr_db;
SELECT DATABASE();

-- Drop the company_db database and confirm it no longer appears in the database list;
DROP DATABASE company_db;
SHOW DATABASES;
-- Alter the users table to add a phone_number column that cannot be NULL.
ALTER TABLE users
ADD COLUMN phone_number VARCHAR(20) NOT NULL DEFAULT 'UNKNOWN';

-- Alter the products table to add a category column with a default value of general.
ALTER TABLE products
ADD COLUMN category VARCHAR(50) DEFAULT 'General';

-- Modify the price column in the products table to support decimal values with two decimal places.
ALTER TABLE products
MODIFY COLUMN price DECIMAL(10,2) CHECK (price > 0);

-- Add a CHECK constraint to the users table to ensure age is at least 13.
ALTER TABLE users
MODIFY COLUMN age INT CHECK(age >= 13);

-- Alter the users table to make the full_name column NOT NULL.
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(100) NOT NULL;

-- Add a UNIQUE constraint to the phone_number column in the users table.
SET SQL_SAFE_UPDATES = 0;

UPDATE users --Pre existing table having duplicates
SET phone_number = CONCAT('900000', user_ID);

ALTER TABLE users
MODIFY COLUMN phone_number VARCHAR(20) NOT NULL UNIQUE ;

-- Alter the products table to rename the category column to product_category.
ALTER TABLE products
RENAME COLUMN category TO product_category;

-- Drop the CHECK constraint that enforces minimum age on the users table.
ALTER TABLE users
MODIFY COLUMN age INT;

-- Alter the users table to change the data type of phone_number to support international formats.
ALTER TABLE users
MODIFY COLUMN phone_number VARCHAR(100) NOT NULL;
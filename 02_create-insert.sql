-- Create a users table with columns for user ID, full name, email, age, and account creation date. Enforce that email is unique and age cannot be negative.
CREATE TABLE users(
	user_ID INT NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    age INT CHECK (age >=0),
    creation_time DATETIME DEFAULT CURRENT_TIMESTAMP
);


-- Create a products table with product ID, product name, price, stock quantity, and created date. Ensure price is greater than zero and stock quantity defaults to zero.

CREATE TABLE products(
	product_ID INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    stock_quantity INT DEFAULT 0,
    created_date DATE DEFAULT (CURRENT_DATE)
);


-- Insert five realistic user records into the users table.
INSERT INTO users(user_ID,full_name,email, age)
VALUES
(7017,"Ahtasham ul haq","mr.ahtashamulhaq@gmail.com",19),
(7018,"Ahmad Raza","ahmadraza@gmail.com",21),
(7019,"Ali Hassan","alihassan@gmail.com",20),
(7020,"Ali Hamza","alihamza@gmail.com",20),
(7021,"Noman","noman@gmail.com",18);


-- Insert ten product records with different prices and stock quantities.
INSERT INTO products(product_ID, product_name, price, stock_quantity)
VALUES
	(101, "Watch", 4500, 50),
    (102,"Glasses", 2000, 45),
    (103,"Mobiles", 75000, 10),
    (104,"I-pad", 125000, 8),
    (105,"MAC-BOOK", 450000, 15),
    (106,"Perfumes", 8000, 76),
    (107,"Bags", 1500, 103),
    (108,"Shoes", 5500, 150),
    (109,"Jakcet", 10000, 25),
    (110,"Laptop Bags", 2800, 60);


-- Insert a user record without specifying the created_at value and rely on the default.
INSERT INTO users(user_ID, full_name, email, age, phone_number)
VALUES(7025, "OSAMA", "osama@gmail.com", 25, '9000007025');


-- Insert a product record without specifying the stock_quantity and verify the default value is applied.
INSERT INTO products(product_ID, product_name, price, category)
VALUES(111, "Drink", 750,"Bevrages" );


-- Try inserting two users with the same email address and observe the behavior.
INSERT INTO users(user_ID, full_name, email, age, phone_number)
VALUES
(7026, "Afzal", "afzal@gmail.com", 19, 9000007026),
(7027, "Afzal arshad", "afzal@gmail.com", 20, 9000007027);  --This Query raised error of duplication of Email


-- Drop the products table completely.
DROP TABLE products;

-- Recreate the products table with improved data types and constraints.
CREATE TABLE products(
	product_ID INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    stock_quantity INT DEFAULT 0,
    product_category VARCHAR(50) DEFAULT 'General',
    created_date DATE DEFAULT (CURRENT_DATE)
);
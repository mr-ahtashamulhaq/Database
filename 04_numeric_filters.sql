-- RELATION - 1
CREATE TABLE users (
    user_id INT NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT,
    phone_number VARCHAR(25),
    creation_date DATE DEFAULT (CURRENT_DATE)
);
INSERT INTO users (user_id, full_name, email, age, phone_number)
VALUES
(1, 'Ali Hassan', 'alihassan@gmail.com', 20, '9000000001'),
(2, 'Ahmad Raza', 'ahmad@yahoo.com', 22, NULL),
(3, 'Ahtasham Ul Haq', 'ahtasham@gmail.com', 19, '9000000003'),
(4, 'Sara Khan', 'sara@gmail.com', 27, '9000000004'),
(5, 'Noman', NULL, 18, NULL),
(6, 'Ali Hamza', 'alihamza@gmail.com', 21, '9000000006'),
(7, 'Zara Ali', 'zara@hotmail.com', 30, '9000000007'),
(8, 'Usman', 'usman@gmail.com', 65, '9000000008');


-- RELATION - 2
CREATE TABLE products (
    product_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    stock_quantity INT,
    product_category VARCHAR(50)
);
INSERT INTO products (product_id, product_name, price, stock_quantity, product_category)
VALUES
(101, 'Smartphone', 75000, 15, 'Electronics'),
(102, 'Notebook', 300, 200, 'Stationery'),
(103, 'Laptop Bag', 2800, 60, 'Accessories'),
(104, 'Story Book', 500, 8, 'Books'),
(105, 'Wireless Mouse', 1500, 120, 'Electronics'),
(106, 'Office Chair', 12000, 5, 'Furniture'),
(107, 'Water Bottle', 800, 50, 'General'),
(108, 'MacBook Pro', 250000, 3, 'Electronics');


-- QUERIES

-- Users older than 18
SELECT * FROM users
WHERE age > 18;

-- Users aged between 18 and 25
SELECT * FROM users
WHERE age BETWEEN 18 AND 25;

-- Products priced above 5000
SELECT * FROM products
WHERE price > 5000;

-- Products priced between 2000 and 10000
SELECT * FROM products
WHERE price BETWEEN 2000 AND 10000;

-- Products with stock less than 10
SELECT * FROM products
WHERE stock_quantity < 10;

-- Products with stock between 10 and 50
SELECT * FROM products
WHERE stock_quantity BETWEEN 10 AND 50;
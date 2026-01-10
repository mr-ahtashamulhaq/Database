--RELATION - 1
CREATE TABLE customers (
    customer_id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    created_date DATE
);
INSERT INTO customers (customer_id, customer_name, email, created_date)
VALUES
(1, 'Ali Hassan', 'ali@gmail.com', '2023-01-10'),
(2, 'Ahtasham Ul Haq', 'ahtasham@gmail.com', '2023-03-15'),
(3, 'Sara Khan', 'sara@gmail.com', '2023-05-20'),
(4, 'Ahmad Raza', 'ahmad@yahoo.com', '2024-01-05'),
(5, 'Noman', 'noman@gmail.com', '2024-02-18');


--RELATION - 2
CREATE TABLE orders (
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE,
    order_amount DECIMAL(10,2),
    order_status VARCHAR(30)
);
INSERT INTO orders (order_id, customer_id, order_date, order_amount, order_status)
VALUES
(101, 1, '2024-01-01', 12000, 'Completed'),
(102, 1, '2024-01-15', 8000, 'Completed'),
(103, 2, '2024-02-01', 15000, 'Completed'),
(104, 2, '2024-02-10', 22000, 'Completed'),
(105, 2, '2024-03-05', 5000, 'Cancelled'),
(106, 3, '2024-03-12', 18000, 'Completed'),
(107, 3, '2024-03-20', 25000, 'Completed'),
(108, 4, '2024-04-01', 9000, 'Pending'),
(109, 4, '2024-04-10', 30000, 'Completed'),
(110, 5, '2024-04-15', 7000, 'Completed'),
(111, 5, '2024-04-20', 14000, 'Completed');


--RELATION - 3
CREATE TABLE order_items (
    order_item_id INT NOT NULL,
    order_id INT NOT NULL,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);
INSERT INTO order_items (order_item_id, order_id, product_name, quantity, price)
VALUES
(1, 101, 'Smartphone', 1, 12000),
(2, 102, 'Headphones', 2, 4000),
(3, 103, 'Laptop Bag', 3, 5000),
(4, 104, 'Laptop', 1, 22000),
(5, 105, 'Mouse', 1, 5000),
(6, 106, 'Office Chair', 1, 18000),
(7, 107, 'Monitor', 2, 12500),
(8, 108, 'Keyboard', 3, 3000),
(9, 109, 'MacBook', 1, 30000),
(10, 110, 'Shoes', 2, 3500),
(11, 111, 'Backpack', 2, 7000);


-- Find the total number of customers.
SELECT COUNT(*) FROM customers;

-- Find the total number of orders.
SELECT COUNT(*) FROM orders;

-- Find the total revenue from all orders.
SELECT SUM(order_amount) FROM orders;

-- Find the average order amount.
SELECT AVG(order_amount) FROM orders;

-- Find the minimum and maximum order amount.
SELECT MIN(order_amount) AS 'Minimum Order',
       MAX(order_amount) AS 'Maximum Order'
FROM orders;
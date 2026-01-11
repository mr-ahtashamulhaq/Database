CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    created_date DATE
);
INSERT INTO customers (customer_id, customer_name, email, created_date) VALUES
(1, 'Ali Hassan', 'ali@gmail.com', '2023-01-10'),
(2, 'Ahtasham Ul Haq', 'ahtasham@gmail.com', '2023-03-15'),
(3, 'Sara Khan', 'sara@gmail.com', '2023-05-20'),
(4, 'Ahmad Raza', 'ahmad@yahoo.com', '2024-01-05'),
(5, 'Noman', 'noman@gmail.com', '2024-02-18'),
(6, 'Ayesha', 'ayesha@gmail.com', '2024-02-18');


CREATE TABLE orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2),
    order_status VARCHAR(30)
);
INSERT INTO orders (order_id, customer_id, order_date, order_amount, order_status) VALUES
(101, 1, '2024-01-01', 12000, 'Completed'),
(102, 1, '2024-01-15', 8000, 'Completed'),
(103, 2, '2024-02-01', 15000, 'Completed'),
(104, 2, '2024-02-10', 22000, 'Completed'),
(105, 2, '2024-03-05', 5000, 'Cancelled'),
(106, 3, '2024-03-12', 18000, 'Completed'),
(107, 3, '2024-03-20', 25000, 'Completed'),
(108, 4, '2024-04-01', 9000, 'Pending'),
(109, 4, '2024-04-10', 30000, 'Completed'),
(110, NULL, '2024-04-15', 7000, 'Completed');

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2)
);
INSERT INTO order_items (order_item_id, order_id, product_name, quantity, price) VALUES
(1, 101, 'Smartphone', 1, 12000),
(2, 102, 'Headphones', 2, 4000),
(3, 103, 'Laptop Bag', 3, 5000),
(4, 104, 'Laptop', 1, 22000),
(5, 105, 'Mouse', 1, 5000),
(6, 106, 'Office Chair', 1, 18000),
(7, 107, 'Monitor', 2, 12500),
(8, 107, 'Keyboard', 1, 3000),
(9, 109, 'MacBook', 1, 30000),
(10, 110, 'Shoes', 2, 3500);

-- Retrieve all orders along with the customer name for each order using an INNER JOIN.
SELECT order_id, customer_name
FROM orders o
INNER JOIN customers c 
ON o.customer_id = c.customer_id;

-- Retrieve all customers and their orders, including customers who have not placed any orders.
SELECT customer_name,order_id
FROM  customers c
LEFT JOIN orders o 
ON o.customer_id = c.customer_id;

-- Retrieve all orders and their customers, including orders that do not have a matching customer.
SELECT order_id,customer_name
FROM  customers c
RIGHT JOIN orders o 
ON o.customer_id = c.customer_id;

-- Retrieve all order items along with the order date and customer name.
SELECT product_name, order_date, customer_name
FROM order_items oi
JOIN orders o 
ON oi.order_id = o.order_id 
JOIN customers c 
ON c.customer_id = o.customer_id;

-- Retrieve all orders along with their order items. Show order ID, product name, and quantity.
SELECT o.order_id, oi.product_name, oi.quantity
FROM order_items AS oi
JOIN orders AS o ON o.order_id = oi.order_id

-- Retrieve all products sold along with the customer who bought them.
SELECT oi.product_name, customer_name
FROM order_items AS oi
JOIN orders AS o 
ON o.order_id = oi.order_id
JOIN customers c 
ON o.customer_id = c.customer_id

-- Retrieve all order items and include the customer name who placed the order.
SELECT oi.order_item_id, oi.product_name, oi.quantity, c.customer_name
FROM order_items oi
JOIN orders o
  ON oi.order_id = o.order_id
JOIN customers c
  ON o.customer_id = c.customer_id;

-- Retrieve customer names and total order amounts for customers who have placed at least one order.
SELECT c.customer_name, SUM(o.order_amount) as total_order
FROM customers c
join orders o 
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name

-- Retrieve all customers and show the total number of orders for each customer, including customers with zero orders.
SELECT c.customer_name, COUNT(o.order_id)
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name;

-- Retrieve customers and their latest order date.
SELECT c.customer_id, c.customer_name, MAX(o.order_date) AS latest_order_date
FROM customers c
LEFT JOIN orders o
  ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name;

-- Retrieve all customers who have placed more than one order using JOIN and GROUP BY.
SELECT c.customer_id, c.customer_name
FROM customers c
JOIN orders o
  ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1;
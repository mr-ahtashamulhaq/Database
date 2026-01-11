-- Update the email domain to @company.com for all customers whose email currently ends with @gmail.com.
UPDATE customers
SET email = CONCAT(SUBSTRING_INDEX(email, '@', 1), '@company.com')
WHERE email LIKE '%@gmail.com';

-- Increase the order amount by 10% for all orders placed before 2024-02-01.
UPDATE orders
SET order_amount = order_amount * 1.10
WHERE order_date < '2024-02-01';

-- Set the order status to Cancelled for all orders that have no associated order items.
UPDATE orders
SET order_status = 'Cancelled'
WHERE order_id NOT IN (
    SELECT DISTINCT order_id FROM order_items
);

-- Update the customer name to Unknown for customers whose email is NULL.
UPDATE customers
SET customer_name = 'Unknown'
WHERE email IS NULL;

-- Delete all orders that have status Cancelled.
DELETE FROM orders
WHERE order_status = 'Cancelled';

-- Truncate the order_items table as part of a full data reset.
TRUNCATE TABLE order_items;

-- Update the price of all Laptop products in order_items to increase by 5%.
UPDATE order_items
SET price = price * 1.05
WHERE product_name = 'Laptop';

-- Delete customers who have never placed an order.
DELETE FROM customers
WHERE customer_id NOT IN (
    SELECT DISTINCT customer_id FROM orders WHERE customer_id IS NOT NULL
);

-- Use REPLACE to insert or update a customer record with customer_id = 10.
REPLACE INTO customers (customer_id, customer_name, email, created_date)
VALUES (10, 'New Customer', 'new@company.com', CURRENT_DATE);

-- Use REPLACE to update an order with order_id = 101 to status Completed.
REPLACE INTO orders (order_id, customer_id, order_date, order_amount, order_status)
SELECT order_id, customer_id, order_date, order_amount, 'Completed'
FROM orders
WHERE order_id = 101;

-- Update all orders to set order_status = Completed where the order amount is greater than the average order amount.
UPDATE orders
SET order_status = 'Completed'
WHERE order_amount > (
    SELECT AVG(order_amount) FROM orders
);

-- Delete all order items where quantity is zero.
DELETE FROM order_items
WHERE quantity = 0;

-- Truncate the orders table while keeping the table structure intact.
TRUNCATE TABLE orders;

-- Update customers to append (VIP) to their name if their total spending exceeds 50,000.
UPDATE customers c
SET customer_name = CONCAT(customer_name, ' (VIP)')
WHERE c.customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING SUM(order_amount) > 50000
);
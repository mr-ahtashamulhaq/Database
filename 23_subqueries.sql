-- Find customers who have placed at least one order using a subquery.
SELECT *
FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM orders
);

-- Find customers who have never placed an order using a subquery.
SELECT *
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id FROM orders WHERE customer_id IS NOT NULL
);

-- Find orders whose order amount is greater than the average order amount.
SELECT *
FROM orders
WHERE order_amount > (
    SELECT AVG(order_amount) FROM orders
);

-- Find orders that belong to customers whose name starts with the letter A using a subquery.
SELECT *
FROM orders
WHERE customer_id IN (
    SELECT customer_id
    FROM customers
    WHERE customer_name LIKE 'A%'
);

-- Find customers who have placed at least one order using a subquery.
SELECT *
FROM customers
WHERE customer_id IN (
    SELECT customer_id FROM orders
);

-- Find customers who have never placed an order using a subquery.
SELECT *
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id FROM orders WHERE customer_id IS NOT NULL
);

-- Find orders whose order amount is greater than the average order amount.
SELECT *
FROM orders
WHERE order_amount > (
    SELECT AVG(order_amount) FROM orders
);

-- Find orders that belong to customers whose name starts with the letter A using a subquery.
SELECT *
FROM orders
WHERE customer_id IN (
    SELECT customer_id
    FROM customers
    WHERE customer_name LIKE 'A%'
);

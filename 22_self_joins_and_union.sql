-- Retrieve pairs of customers who were created in the same year using a SELF JOIN.
SELECT CONCAT(c1.customer_name,", ",c2.customer_name) as pairs
FROM customers c1 
JOIN customers c2 
ON  YEAR(c1.created_date) = YEAR(c2.created_date)
AND c1.customer_id < c2.customer_id

-- Retrieve all orders along with their order status and customer email.
SELECT o.order_id,
    o.order_status,
    c.email
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;

-- Retrieve customer IDs that appear in both the customers table and the orders table.
SELECT DISTINCT c.customer_id
FROM customers c
JOIN orders o
  ON c.customer_id = o.customer_id;

-- Retrieve all unique customer IDs that appear in either the customers table or the orders table using UNION.
SELECT customer_id FROM customers
UNION
SELECT customer_id FROM orders;

-- Retrieve all customer IDs that appear in both the customers table and the orders table using UNION ALL and explain the duplicates.
SELECT customer_id FROM customers
UNION ALL
SELECT customer_id FROM orders;

-- Retrieve all orders placed by customers whose name starts with the letter A.
SELECT o.order_id, o.order_date, o.order_amount
FROM orders o
JOIN customers c
  ON o.customer_id = c.customer_id
WHERE c.customer_name LIKE 'A%';

-- Retrieve all products that were sold in more than one order.
SELECT oi.product_name
FROM order_items oi
GROUP BY oi.product_name
HAVING COUNT(DISTINCT oi.order_id) > 1;

-- Retrieve all customers and orders in a single result set using UNION ALL, clearly distinguishing between customer rows and order rows.
SELECT 'CUSTOMER' AS row_type, c.customer_id AS id, c.customer_name AS name, NULL AS related_id
FROM customers c
UNION ALL
SELECT 'ORDER' AS row_type, o.order_id AS id, NULL AS name, o.customer_id AS related_id
FROM orders o;

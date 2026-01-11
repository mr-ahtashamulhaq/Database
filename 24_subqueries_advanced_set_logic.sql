-- Find products that were sold in every order.
SELECT product_name
FROM order_items
GROUP BY product_name
HAVING COUNT(DISTINCT order_id) = (
    SELECT COUNT(*) FROM orders
);

-- Find customers who have never ordered a product named Laptop.
SELECT *
FROM customers
WHERE customer_id NOT IN (
    SELECT o.customer_id
    FROM orders o
    JOIN order_items oi
      ON o.order_id = oi.order_id
    WHERE oi.product_name = 'Laptop'
);

-- Find customers whose total spending is greater than any single order amount.
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING SUM(order_amount) > ANY (
    SELECT order_amount FROM orders
);

-- Find customers whose total spending is greater than all single order amounts.
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING SUM(order_amount) > ALL (
    SELECT order_amount FROM orders
);

-- Find orders whose total value (sum of quantity × price) is greater than the average order value.
SELECT order_id
FROM order_items
GROUP BY order_id
HAVING SUM(quantity * price) > (
    SELECT AVG(order_total)
    FROM (
        SELECT SUM(quantity * price) AS order_total
        FROM order_items
        GROUP BY order_id
    ) t
);

-- Find products that were sold only in orders placed by a single customer.
SELECT oi.product_name
FROM order_items oi
JOIN orders o
  ON oi.order_id = o.order_id
GROUP BY oi.product_name
HAVING COUNT(DISTINCT o.customer_id) = 1;

-- Find customers whose first order amount was greater than their last order amount.
SELECT customer_id
FROM orders o
GROUP BY customer_id
HAVING
    (SELECT order_amount
     FROM orders
     WHERE customer_id = o.customer_id
     ORDER BY order_date ASC
     LIMIT 1)
  >
    (SELECT order_amount
     FROM orders
     WHERE customer_id = o.customer_id
     ORDER BY order_date DESC
     LIMIT 1);
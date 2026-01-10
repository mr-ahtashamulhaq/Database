-- Find the number of orders placed on each order date.
SELECT order_date, COUNT(*)
FROM orders
GROUP BY order_date;

-- Find the total revenue generated on each order date.
SELECT order_date, SUM(order_amount) AS 'Total Revenue'
FROM orders
GROUP BY order_date;

-- Find the month-wise total revenue using order_date.
SELECT MONTH(order_date) AS order_month, SUM(order_amount)
FROM orders
GROUP BY MONTH(order_date);

-- Find days where total order revenue exceeded 20,000.
SELECT order_date, SUM(order_amount) AS total_rev
FROM orders
GROUP BY order_date
HAVING total_rev > 20000;

-- Find the total revenue generated per customer per month.
SELECT customer_id,
       YEAR(order_date) AS order_year,
       MONTH(order_date) AS order_month,
       SUM(order_amount) AS total_revenue
FROM orders
GROUP BY customer_id, YEAR(order_date), MONTH(order_date);

-- Find the total revenue generated per order status.
SELECT order_status, SUM(order_amount)
FROM orders
GROUP BY order_status;

-- Find the number of orders per order status.
SELECT order_status, COUNT(*)
FROM orders
GROUP BY order_status;

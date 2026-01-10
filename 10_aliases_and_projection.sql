-- User names and emails with aliases
SELECT full_name AS "Full Name", email AS 'Email'
FROM users;

-- Product name and price with aliases
SELECT product_name AS 'item_name', price AS 'item_price'
FROM products;

-- Users with renamed columns, sorted by age descending
SELECT full_name AS "Name", age AS 'user_age'
FROM users
ORDER BY age DESC;

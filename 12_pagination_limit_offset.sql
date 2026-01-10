-- First 5 users by creation date
SELECT * FROM users
ORDER BY creation_date
LIMIT 5;

-- 5 users starting from 3rd row (age ascending)
SELECT * FROM users
ORDER BY age
LIMIT 2,5;

-- 3 products starting from 2nd row (price descending)
SELECT * FROM products
ORDER BY price DESC
LIMIT 1,3;

-- Users sorted alphabetically, first 10
SELECT * FROM users
ORDER BY full_name
LIMIT 10;

-- Page 2, page size 5, stock quantity descending
SELECT * FROM products
ORDER BY stock_quantity DESC
LIMIT 5 OFFSET 5;

-- Page 3, page size 4, price ascending
SELECT * FROM products
ORDER BY price
LIMIT 4 OFFSET 8;

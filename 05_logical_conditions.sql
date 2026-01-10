-- Users older than 20 with gmail accounts
SELECT * FROM users
WHERE age > 20 AND email LIKE '%@gmail.com';

-- Users younger than 18 or older than 60
SELECT * FROM users
WHERE age < 20 OR age > 60;

-- Products with high price and sufficient stock
SELECT * FROM products
WHERE price > 10000 AND stock_quantity > 5;

-- Products cheap or heavily stocked
SELECT * FROM products
WHERE price < 2000 OR stock_quantity > 100;

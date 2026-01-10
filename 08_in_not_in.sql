-- Users aged 18, 21, or 25
SELECT * FROM users
WHERE age IN (18,21,25);

-- Users not aged 18, 21, or 25
SELECT * FROM users
WHERE age NOT IN (18,21,25);

-- Products in selected categories
SELECT * FROM products
WHERE product_category IN ('Electronics', 'Accessories', 'General');

-- Products not in General category
SELECT * FROM products
WHERE product_category != 'General';

-- Products in General category
SELECT * FROM products
WHERE product_category = 'General';
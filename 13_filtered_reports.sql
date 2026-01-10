-- Users with non-null emails sorted alphabetically
SELECT * FROM users
WHERE email IS NOT NULL
ORDER BY email;

-- Electronics products sorted by price
SELECT * FROM products
WHERE product_category = 'Electronics'
ORDER BY price;

-- Products using table alias
SELECT TEMP_TABLE.product_name,
       TEMP_TABLE.price,
       TEMP_TABLE.product_category
FROM products TEMP_TABLE;

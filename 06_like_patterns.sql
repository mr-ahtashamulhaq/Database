-- Gmail users
SELECT * FROM users
WHERE email LIKE '%gmail.com';

-- Names starting with A (case-sensitive)
SELECT * FROM users
WHERE full_name LIKE BINARY 'A%';

-- Names containing Ali
SELECT * FROM users
WHERE full_name LIKE '%Ali%';

-- Products with Book in name
SELECT * FROM products
WHERE product_name LIKE '%Book%';

-- Products without letter a in name
SELECT * FROM products
WHERE product_name NOT LIKE '%a%';

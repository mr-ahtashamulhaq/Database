-- Distinct product categories
SELECT DISTINCT product_category
FROM products;

-- Distinct email domains
SELECT DISTINCT SUBSTRING_INDEX(email,'@',-1) AS email_domain
FROM users
WHERE email IS NOT NULL;

-- Distinct ages sorted ascending
SELECT DISTINCT age
FROM users
ORDER BY age;

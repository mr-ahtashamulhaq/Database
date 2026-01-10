-- Users with phone numbers
SELECT * FROM users
WHERE phone_number IS NOT NULL;

-- Users without phone numbers
SELECT * FROM users
WHERE phone_number IS NULL;

-- Users without yahoo emails (including NULL)
SELECT * FROM users
WHERE email NOT LIKE '%yahoo%'
   OR email IS NULL;

-- Users with NULL or empty email
SELECT * FROM users
WHERE email IS NULL OR email = '';

-- Fix a table that allows negative order amounts.
ALTER TABLE orders
ADD CONSTRAINT chk_order_amount
CHECK (order_amount >= 0);

-- Add a composite primary key to prevent duplicate products within the same order.
ALTER TABLE order_items
DROP PRIMARY KEY;

ALTER TABLE order_items
ADD PRIMARY KEY (order_id, product_name);
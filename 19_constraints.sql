-- Allow deletion of an order and automatically delete all related order items.
ALTER TABLE order_items
DROP FOREIGN KEY ffb2;

ALTER TABLE order_items
ADD CONSTRAINT ffb2
FOREIGN KEY (order_id)
REFERENCES orders(order_id)
ON DELETE CASCADE;

-- Alter an existing orders table to add a primary key on order_id.
ALTER TABLE orders
ADD PRIMARY KEY (order_id);

-- Alter an existing orders table to add a foreign key constraint on customer_id.
ALTER TABLE orders
ADD CONSTRAINT ffbb
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

-- Allow deletion of a customer and automatically delete all related orders.
ALTER TABLE orders
DROP FOREIGN KEY ffbb;

ALTER TABLE orders
ADD CONSTRAINT ffbb
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
ON DELETE CASCADE;

-- Modify the foreign key to set customer_id to NULL when a customer is deleted.
ALTER TABLE orders
DROP FOREIGN KEY ffbb;

ALTER TABLE orders
MODIFY customer_id INT NULL;

ALTER TABLE orders
ADD CONSTRAINT ffbb
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id)
ON DELETE SET NULL;
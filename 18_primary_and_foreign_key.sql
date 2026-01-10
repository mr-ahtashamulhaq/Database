-- Create a customers table with a primary key on customer_id.
CREATE TABLE customers (
    customer_id INT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    created_date DATE,
    PRIMARY KEY (customer_id)
);

-- Create an orders table where order_id is the primary key and customer_id is a foreign key referencing customers(customer_id).
CREATE TABLE orders (
    order_id INT NOT NULL,
    customer_id INT NOT NULL,
    order_date DATE,
    order_amount DECIMAL(10,2),
    order_status VARCHAR(30),
    PRIMARY KEY (order_id)
);

-- Create an order_items table with a primary key and a foreign key referencing orders(order_id).
CREATE TABLE order_items (
    order_item_id INT NOT NULL,
    order_id INT NOT NULL,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    PRIMARY KEY (order_item_id),
    CONSTRAINT ffb2 FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
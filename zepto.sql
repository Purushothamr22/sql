CREATE DATABASE Zepto;
USE Zepto;

-- Create the customer table
CREATE TABLE customer (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    place VARCHAR(100),
    order_info VARCHAR(255)
);

INSERT INTO customer (id, name, place, order_info) VALUES
(1, 'George', 'Bangalore', 'Order1'),
(2, 'Emily', 'Mysore', 'Order2'),
(3, 'John', 'Delhi', 'Order3'),
(4, 'Lily', 'Bangalore', 'Order4'),
(5, 'Gary', 'Mumbai', 'Order5');

SELECT * FROM customer;
SELECT COUNT(*) AS total_customers FROM customer;
SELECT MAX(id) AS max_id FROM customer;
UPDATE customer SET order_info = 'New Order' WHERE id = 1;
SELECT * FROM customer WHERE name LIKE 'G%Y';
SELECT * FROM customer WHERE name LIKE '%i%';
SELECT * FROM customer WHERE place IN ('Bangalore', 'Mysore');

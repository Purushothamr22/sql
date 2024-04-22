CREATE DATABASE CUSTOMER_1;
USE CUSTOMER_1;
-- Create the table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_order_id INT,
    customer_order_amount DECIMAL(10, 2),
    customer_place VARCHAR(100),
     FOREIGN KEY (customer_order_id) REFERENCES orders(order_id)
);

-- Apply aggregate functions
SELECT COUNT(*) AS total_customers FROM customer;
SELECT MAX(customer_order_amount) AS max_order_amount FROM customer;
SELECT MIN(customer_order_amount) AS min_order_amount FROM customer;
SELECT AVG(customer_order_amount) AS avg_order_amount FROM customer;
SELECT SUM(customer_order_amount) AS total_order_amount FROM customer;

-- Update customer order information based on id
UPDATE customer SET customer_order_amount = 150.00 WHERE customer_id = 1;

-- Retrieve the records whose name starts with "G" and ends with "Y"
SELECT * FROM customer WHERE customer_name LIKE 'G%Y';

-- Retrieve the records whose name contains the letter "i"
SELECT * FROM customer WHERE customer_name LIKE '%i%';

-- Retrieve customer information if place matches with "Bangalore" or "Mysore"
SELECT * FROM customer WHERE customer_place IN ('Bangalore', 'Mysore');

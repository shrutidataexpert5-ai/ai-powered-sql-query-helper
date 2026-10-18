CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;

CREATE TABLE customers (customer_idcustomer_id
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    city        VARCHAR(50),
    email       VARCHAR(100)
);

CREATE TABLE products (
    product_id   INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category     VARCHAR(50),
    price        DECIMAL(10,2) NOT NULL
);

CREATE TABLE orders (
    order_id    INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id  INT NOT NULL,
    quantity    INT NOT NULL,
    order_date  DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers (name, city, email) VALUES
('Amit Sharma', 'Pune', 'amit.sharma@example.com'),
('Priya Deshmukh', 'Mumbai', 'priya.deshmukh@example.com'),
('Rahul Verma', 'Delhi', 'rahul.verma@example.com'),
('Sneha Joshi', 'Pune', 'sneha.joshi@example.com'),
('Karan Mehta', 'Ahmedabad', 'karan.mehta@example.com'),
('Neha Patil', 'Nagpur', 'neha.patil@example.com'),
('Vikram Singh', 'Delhi', 'vikram.singh@example.com'),
('Anjali Kulkarni', 'Pune', 'anjali.kulkarni@example.com'),
('Rohan Gupta', 'Mumbai', 'rohan.gupta@example.com'),
('Pooja Nair', 'Bangalore', 'pooja.nair@example.com');

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 55000.00),
('Smartphone', 'Electronics', 22000.00),
('Office Chair', 'Furniture', 4500.00),
('Study Table', 'Furniture', 6000.00),
('Wireless Mouse', 'Electronics', 800.00),
('Bookshelf', 'Furniture', 3200.00),
('Bluetooth Speaker', 'Electronics', 1800.00),
('Desk Lamp', 'Furniture', 900.00),
('Keyboard', 'Electronics', 1200.00),
('Backpack', 'Accessories', 1500.00);

INSERT INTO orders (customer_id, product_id, quantity, order_date) VALUES
(1, 1, 1, '2026-01-05'),
(2, 3, 2, '2026-01-10'),
(3, 2, 1, '2026-01-12'),
(4, 5, 3, '2026-01-15'),
(5, 4, 1, '2026-01-18'),
(6, 7, 2, '2026-01-20'),
(1, 9, 1, '2026-02-02'),
(7, 1, 1, '2026-02-05'),
(8, 6, 1, '2026-02-08'),
(9, 2, 2, '2026-02-10'),
(10, 8, 1, '2026-02-14'),
(2, 10, 1, '2026-02-16'),
(3, 5, 4, '2026-02-18'),
(4, 3, 1, '2026-02-20'),
(5, 1, 1, '2026-02-22'),
(6, 2, 1, '2026-02-25'),
(9, 9, 2, '2026-03-01'),
(10, 7, 1, '2026-03-03'),
(1, 4, 1, '2026-03-05'),
(8, 10, 2, '2026-03-08');

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
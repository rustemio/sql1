USE [21291001_PERF];
GO

CREATE TABLE customers_perf (
    customer_id INT PRIMARY KEY,
    first_name NVARCHAR(100),
    last_name NVARCHAR(100),
    city NVARCHAR(100),
    country NVARCHAR(100),
    email NVARCHAR(150)
);

CREATE TABLE products_perf (
    product_id INT PRIMARY KEY,
    product_name NVARCHAR(200),
    category NVARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE orders_perf (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    total_amount DECIMAL(12,2)
);
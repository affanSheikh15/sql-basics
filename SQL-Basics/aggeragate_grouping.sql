create database if not exists Salesdb;
use salesdb;
select database();


create table sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    amount DECIMAL(10,2),
    sales_date DATE
);

select * from sales;

INSERT INTO sales (product, category, amount, sales_date) VALUES
('iPhone 14', 'Electronics', 999.99, '2025-07-01'),
('Samsung TV', 'Electronics', 499.99, '2025-07-02'),
('Nike Shoes', 'Footwear', 120.50, '2025-07-02'),
('Dell Laptop', 'Electronics', 850.00, '2025-07-03'),
('Leather Wallet', 'Accessories', 45.00, '2025-07-03'),
('Adidas Jacket', 'Clothing', 95.00, '2025-07-04'),
('Canon Camera', 'Electronics', 560.00, '2025-07-04'),
('Formal Shirt', 'Clothing', 35.00, '2025-07-05'),
('AirPods Pro', 'Electronics', 249.99, '2025-07-05'),
('Sports Watch', 'Accessories', 150.00, '2025-07-06'),
('Running Shoes', 'Footwear', 135.75, '2025-07-06'),
('Bluetooth Speaker', 'Electronics', 89.99, '2025-07-07'),
('Handbag', 'Accessories', 75.00, '2025-07-07'),
('Smartwatch', 'Electronics', 199.00, '2025-07-08'),
('T-Shirt', 'Clothing', 25.00, '2025-07-08');

select * from sales;

select count(*) from sales;
select sum(amount) from sales;
select avg(amount) from sales;
select min(amount) ,max(amount) from sales;
 
 -- GROUP BY  use krne liye specific columns ko total values ke liye 
 
 select category,sum(amount)
 from sales
 group by category
 
 
 having sum(amount)>1000;  -- having as a condition work krta hai


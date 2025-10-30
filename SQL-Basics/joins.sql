create database if not exists customerdb;
use customerdb;
select database();

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

select * from customers;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product VARCHAR(100),
    amount DECIMAL(10,2),
    order_date DATE,
    customer_id INT
);

INSERT INTO customers (customer_id, name, email) VALUES
(1, 'Ali Raza', 'ali@example.com'),
(2, 'Sara Khan', 'sara@example.com'),
(3, 'Bilal Ahmed', 'bilal@example.com'),
(4, 'Hina Sheikh', 'hina@example.com');

INSERT INTO orders (order_id, product, amount, order_date, customer_id) VALUES
(101, 'iPhone 14', 999.99, '2025-07-01', 1),
(102, 'Dell Laptop', 850.00, '2025-07-02', 2),
(103, 'Nike Shoes', null, '2025-07-03', 1),
(104, 'Smartwatch', 199.00, '2025-07-03', 6),
(105, 'Leather Wallet', 45.00, '2025-07-04', 4),
(106, 'Canon Camera', null, '2025-07-05', 3);

select * from orders;



 -- INNER JOIN
 
 select customers.name,orders.product,orders.amount
 from customers
 inner join orders on customers.customer_id = orders.customer_id;

-- LEFT JOIN 

select customers.name,orders.product,orders.amount
from customers
left join orders on customers.customer_id = orders.customer_id;

-- union

-- right join

select customers.name,orders.product,orders.amount
from customers
right join orders on customers.customer_id = orders.customer_id;
 
 
 -- is null
 
 select product,amount
 from orders
 where amount is null;




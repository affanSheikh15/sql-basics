CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE ecommerce_sales (
    Transaction_ID varchar(100),
    Customer_ID VARCHAR(50),
    Region VARCHAR(100),
    Product VARCHAR(255),
    Category VARCHAR(100),
    Price DECIMAL(10,2),
    Quantity INT,
    Discount_Percent DECIMAL(5,2),
    Total_Revenue DECIMAL(12,2),
    Payment_Method VARCHAR(50)
);

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/global_ecommerce_sales.csv'
INTO TABLE ecommerce_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Transaction_ID, Customer_ID, Region, Product, Category, Price, Quantity, Discount_Percent, Total_Revenue, Payment_Method);


DESCRIBE ecommerce_sales;

SELECT * FROM ecommerce_sales LIMIT 20;




create database if not exists Shopdb;
use Shopdb;
select database();

create table Customer(
     CustomerID int auto_increment primary key,
     Name varchar(100),
     email varchar(100) unique,
     address varchar(200)
);

insert into Customer(Name,email,address)
values 
('affan sheikh','affan12@gmail.com','Karachi,Pakistan'),
('ashhad bihari','ashhad14@gmail.com','Mumbai,India'),
('sajeel cr','sajile14@gmail.com','Dehli,India');
 
select * from Customer;

-- update or rename waala column ko 

ALTER TABLE Customer
RENAME COLUMN city TO address;

UPDATE Customer
SET address = 'Pune'
WHERE name = 'sajeel cr';


select * from Customer where name = 'sajeel cr';
-- delete krliya
delete from Customer where name = 'ashhad bihari';

-- ab waapsi row add kr rha ashhad waali 

INSERT INTO Customer (name, email, address)
VALUES ('ashhad bihari', 'ashhad14@gmail.com', 'Mumbai,India');

select * from Customer where name = 'ashhad bihari';







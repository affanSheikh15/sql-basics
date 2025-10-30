create database if not exists Collegedb;
use Collegedb;
select database();

create table Students(                         -- table create krne ke liye
	StudentID int auto_increment primary key,
    name varchar(100),
    age  tinyint,
    email varchar(100),
    joindate date
);

select * from Students; -- view krne ke liye table

insert into Students(name,age,email,joindate)
values
('affan sheikh',22,'affa@gmail.com','2025-03-14'),
('ashhad ali',23,'bihar@gmail.com','2025-04-15')
;

alter table Students add column City varchar(50);
alter table Students modify age smallint;
alter table Students rename column email to StudentEmail;

-- drop table if exists tablename; poore table permanent dlt 

-- truncate table table_name ; poori rows ko dlt columns same rehte stucture

 select * from Customer;

-- RETRIEVING DATA

select Name from Customer;
select distinct Name , address from Customer; -- distinct duplicate ko remove krdeta

-- FILTERING DATA

-- and both must true
-- or 1 true 
-- not exclusive ans

select * from Customer where address like '%Bihar%';
select * from Customer where Name = 'sajeel cr' and address like '%Sadar%';
select * from Customer where Name = 'sajeel cr' and address like '%Bihar%';
select * from Customer where address not like '%Bihar%';

-- sorting the data 

select * from Customer order by Name ASC;
select * from Customer order by CustomerID DESC;




create database if not exists StudentInfo;
use studentinfo;
select database();

CREATE TABLE Students (
    student_id INT auto_increment primary KEY,
    name VARCHAR(50),
    age tinyint,
    gender VARCHAR(10),
    city VARCHAR(50),
    join_date DATE
);

drop table students;

INSERT INTO Students VALUES
(1, 'Affan Sheikh', 22, 'Male', 'Lahore', '2025-03-14'),
(2, 'Ashhad Ali', 23, 'Male', 'Karachi', '2025-04-15'),
(3, 'Hina Khan', 21, 'Female', 'Islamabad', '2025-02-10'),
(4, 'Sara Malik', 25, 'Female', 'Multan', '2025-01-20'),
(5, 'Usman Tariq', 24, 'Male', 'Lahore', '2025-06-01');

select * from Students;

-- q1 select function 

select name , age from Students;

-- q2 where

select * from students where age < 22;

-- q3 order by 

select * from students order by age desc;

-- DISTINCT , LIMIT , BETWEEN , IN 

-- q1 Duplicate values ko remove karke sirf unique values dikhata hai.

select distinct  city from students;
 
-- q2 query ke result mein kitni rows dikhani hain, wo control karta hai.
 
select * from students limit 3;
 
-- q3 Range ke beech values ko filter karta hai (inclusive hota hai).
 
 select name,age from students where age between 21 and 23;
 
-- q4 Check karta hai ke value kisi list ke andar hai ya nahi.
 
select name,city from students where city in ('Lahore','Karachi')
 





create database if not exists freelancer_analysis;
use  freelancer_analysis;


CREATE TABLE freelancers (
    freelancer_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(100),
    skills TEXT,
    hourly_rate DECIMAL(10,2),
    response_time_hrs DECIMAL(5,2),
    total_projects INT,
    on_time_delivery DECIMAL(5,3),
    avg_rating DECIMAL(3,2),
    revisions_avg DECIMAL(4,2),
    success_ratio DECIMAL(5,3),
    reliability_index DECIMAL(5,3),
    reliability_label TINYINT
);

SELECT * FROM freelancers LIMIT 10;


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    freelancer_id INT,
    project_category VARCHAR(50),
    deadline_days INT,
    actual_days_taken INT,
    budget_usd DECIMAL(10,2),
    client_rating DECIMAL(3,2),
    delivered_on_time TINYINT,
    project_success TINYINT,
    FOREIGN KEY (freelancer_id) REFERENCES freelancers(freelancer_id)
);

SELECT * FROM projects limit 10;

-- Top 10 Freelancers by Success Ratio

select name , country , success_ratio 
from freelancers
order by success_ratio desc
limit 40;

-- Average Project Budget by Category -- 

select project_category,avg(budget_usd) as avg_budget
from projects 
group by project_category
order by avg_budget desc;

-- On-Time Delivery vs Project Success -- 

select delivered_on_time , count(*) as total,
        sum(project_success) as successful_projects
from projects 
group by delivered_on_time;


-- Country-wise Average Rating -- 


select country , avg(avg_rating) as avg_rating
from freelancers
group by country 
order by avg_rating desc
limit 10;





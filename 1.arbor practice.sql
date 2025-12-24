CREATE DATABASE IF NOT EXISTS arbor;
drop database arbor1;
use arbor;
create table  IF NOT EXISTS employee
(emp_id int primary key,
full_name varchar(50) not null,
salary int,
DOJ date #'YYY-MM-DD'
);
insert into employee values
(1,'rani kanhe', 100000, '2002-06-26'),
(2,'rutuja kanhe', 200000,'2005-06-25');

select*from employee;


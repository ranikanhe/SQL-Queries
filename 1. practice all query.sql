CREATE DATABASE college;
drop database college;
use college;
CREATE TABLE Student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade CHAR(1),
    city VARCHAR(20)
);
DROP TABLE STUDENT;
INSERT INTO Student(rollno ,name,marks,grade,city)
values
(101,'anil',78,'c','Pune'),
(102,'Bhumika',93,'A', 'Mumbai'),
(103,'chetan',85,'B','Mumbai'),
(104,'emanel',12,'F','Delhi'),
(105,'dhruv',96,'A','Delhi'),
(106,'Farah',82,'B','Delhi');

SELECT*FROM Student;

#select specific columnns
select salary from studenet;

#WHERE
SELECT*FROM Student
WHERE marks>80;

#select col1,col2 student
select*from student
WHERE Marks>80 and city='mumbai';

select*from student
WHERE MARKS <40 and City='delhi';

#limit clause
select*from student 
WHERE Marks>89
limit 3;

#order by clause
select*from student
order by city ASC;

Select*from student
order by rollno desc
limit 2;

#Aggregatwe Function
#count,max,min,sum,avg

select max(marks) from student;
select count(name) from student;
select sum(marks)from student;
select avg(marks) from student;


#group by clause
select city, count(name)
from student
group by city;

select city, avg(marks)
from student
group by city
order by city desc;

select grade , count(rollno)
from student 
group by grade
order by grade desc;

#having clause
select count (name),city
from student
group by city
having max(marks)>90;

#table related query###########################

#use formula UPDATE the table
SET SQL_SAFE_UPDATES=0;
#table related query
#11111111111111111111111111
UPDATE Student
SET GRADE='O'
WHERE GRADE='A';

UPDATE STUDENT
SET MARKS=82
WHERE rollno=105;

# than ass the +1 marks add this this query
update student
set marks=marks+1;
select*from student;

#22222222222222222222222222
#delect (to delete existing rows)
delete from student
WHERE marks<33;

select*from student

##Revisting Foreign key
#REATE database try1;
-- drop database try;
-- use try1;

-- create table dept(
-- id int primary key,
-- name varchar(50)
-- );

-- create table teacher(
-- id INT primary key,
-- name varchar(50),
-- dept_id int,
-- foreign key(dept_id) references dept(id)
-- );

create table student(
rollno int primary key,
name varchar(50)
##########Table related queries################
#1.Alter  add column
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;


#1.create the data (company1)
create database company1;

#2.delete tha data (company1)
drop database company1;

#3. Create Database (company)
#4. Create tables in the company database
create database company;

USE company;
#i. employee table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary INT,
    age INT,
    dept_id INT
);
#ii. department table
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    address VARCHAR(100)
);
#5. Insert 10 records into both tables
#Insert into department
INSERT INTO department (dept_id, dept_name, address) VALUES
(1, 'A', 'Mumbai'),
(2, 'B', 'Delhi'),
(3, 'C', 'Pune'),
(4, 'D', 'Chennai'),
(5, 'E', 'Bangalore'),
(6, 'F', 'Hyderabad'),
(7, 'G', 'Kolkata'),
(8, 'H', 'Goa'),
(9, 'I', 'Jaipur'),
(10,'J', 'Nagpur');

#Insert into employee
INSERT INTO employee (emp_id, first_name, last_name, salary, age, dept_id) VALUES
(101, 'Ravi', 'Kumar', 35000, 25, 1),
(102, 'Sneha', 'Patil', 40000, 28, 2),
(103, 'Amit', 'Sharma', 30000, 23, 1),
(104, 'Priya', 'Jadhav', 45000, 30, 3),
(105, 'Vikas', 'Kale', 38000, 27, 4),
(106, 'Neha', 'Desai', 29000, 22, 3),
(107, 'Rohan', 'Singh', 50000, 31, 5),
(108, 'Pooja', 'More', 32000, 24, 1),
(109, 'Kiran', 'Joshi', 41000, 29, 2),
(110, 'Meena', 'Nair', 36000, 26, 1);

#6. Select and view all data from employee
SELECT * FROM employee;

#7. Select and view all data from department
SELECT * FROM department;

#8. Select employees who are from Department “A”
#Method 1: Using dept_id
#Department A = dept_id = 1
#(From our inserted values)
SELECT * FROM employee
WHERE dept_id = 1;





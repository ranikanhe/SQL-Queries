-- Create employee2

create database employee9;
drop database e;
use employee2;
CREATE TABLE IF NOT EXISTS employee2(
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10, 2),
    department VARCHAR(50),
    hire_date DATE,
    is_manager BOOLEAN
);

-- Insert Sample Data
INSERT INTO employee2 (employee_id, employee_name, salary, department, hire_date, is_manager)
VALUES
    (1, 'John Doe', 60000, 'IT', '2022-01-15', true),
    (2, 'Jane Smith', 75000, 'HR', '2023-04-20', false),
    (3, 'Bob Johnson', 50000, 'Marketing', '2023-08-10', false),
    (4, 'Alice Williams', 90000, 'IT', '2022-11-05', true),
    (5, 'Charlie Brown', 65000, 'Finance', '2023-02-28', false),
    (6, 'Diana Miller', 80000, 'Marketing', '2023-06-15', false),
    (7, 'Ethan Davis', 55000, 'IT', '2023-10-01', false),
    (8, 'Fiona Moore', 70000, 'Finance', '2023-12-12', false),
    (9, 'George Wilson', 95000, 'HR', '2022-03-25', true),
    (10, 'Hannah Lee', 48000, 'Marketing', '2024-01-08', false),
(11, 'Grace Taylor', 55000, 'IT', '2023-03-12', false),
    (12, 'Henry Clark', 72000, 'Marketing', '2022-05-25', false),
    (13, 'Ivy Turner', 49000, 'Finance', '2023-08-18', false),
    (14, 'Jack Harris', 68000, 'IT', '2024-01-02', false),
    (15, 'Kimberly Adams', 60000, 'HR', '2023-09-15', true),
    (16, 'Liam Martin', 80000, 'Finance', '2023-11-30', false),
    (17, 'Mia Stewart', 52000, 'Marketing', '2024-03-06', false),
    (18, 'Noah White', 90000, 'IT', '2022-07-21', true),
    (19, 'Olivia Turner', 48000, 'HR', '2024-02-14', false),
    (20, 'Patrick Brown', 67000, 'Marketing', '2022-10-08', false),
    (21, 'Quinn Miller', 61000, 'Finance', '2023-04-03', false),
    (22, 'Ryan Davis', 76000, 'IT', '2024-05-18', false),
    (23, 'Sophia Wilson', 53000, 'HR', '2022-12-12', false),
    (24, 'Thomas Hall', 82000, 'Marketing', '2023-06-27', false),
    (25, 'Uma Harris', 47000, 'Finance', '2024-01-20', false),
    (26, 'Victor Lee', 69000, 'IT', '2022-08-05', false),
    (27, 'Willa Jackson', 59000, 'HR', '2023-01-30', false),
    (28, 'Xander Taylor', 78000, 'Marketing', '2024-04-15', false),
    (29, 'Yara Martinez', 51000, 'Finance', '2022-11-10', false),
    (30, 'Zane Carter', 73000, 'IT', '2023-05-25', false);
    
    select* from employee2;


-- Question 1: Find employees with a salary greater than $50,000.
select * from employee2
where salary <50000;

-- Question 2: Identify employees hired before '2022-01-01'.
SELECT * FROM employee2
WHERE hire_date < '2022-01-01';

-- Question 3: List employees with a salary between $40,000 and $60,000.
SELECT * FROM employee2
WHERE salary BETWEEN 40000 AND 60000;
#or 
SELECT*FROM employee2
WHERE salary >=40000 and salary<=60000;

-- Question 6: List employees whose department is 'IT'.
SELECT* FROM employee2
WHERE department='it';

-- Question 7: Find employees not working in the 'HR' department.
SELECT*FROM employee2
WHERE department!='HR';

-- Question 8: Identify employees with a salary equal to $70,000.
SELECT * FROM employee2
WHERE salary = 70000;

-- Question 9: List employees hired after '2022-06-01' and not in the 'Finance' department.
SELECT * FROM employee2
WHERE hire_date > '2022-06-01'
  AND department <> 'Finance';
  
-- Question 10: Find employees with an employee_id less than 100.
select*from employee2
where employee_id<100;

-- Question 11: List employees who are managers or have a salary greater than $80,000.
select*from employee2
where is_manager = true or salary>80000;

-- Question 12: Find employees not in the 'Marketing' department and hired before '2022-12-31'.
select*from employee2
where department<>'markting'
and hire_date<'2022-12-31';

-- Question 13: Identify employees with a salary less than $60,000 and in the 'IT' department.
SELECT*FROM  employee2
where salary <60000
and department='IT';

-- Question 14: List employees hired in '2023' or working in the 'HR' department.
SELECT * FROM employee2
WHERE YEAR(hire_date) = 2023
   OR department = 'HR';
select *from employee2
WHERE hire_date BETWEEN '2023-01-01' AND '2023-12-31'
   OR department = 'HR';
   
-- Question 15: Find employees with a salary less than $50,000 or hired after '2022-09-01'.

SELECT * FROM employee2
WHERE salary < 50000
   OR hire_date > '2022-09-01';






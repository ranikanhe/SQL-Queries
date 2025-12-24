#Create Table
CREATE DATABASE college;
drop database college;
use college;

##Create Table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    JoinDate DATE
); 

#View Table Structure
DESCRIBE Employees;          -- MySQL

#or
SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'Employees';

#Insert Data into Table
INSERT INTO Employees VALUES
(1, 'Rani', 'HR', 35000, '2023-05-01');

#Select Data from Table
SELECT * FROM Employees;
#or
SELECT Name, Salary FROM Employees;

#Update Table Data
UPDATE Employees
SET Salary = 40000
WHERE EmpID = 1;

#Delete Data from Table
DELETE FROM Employees
WHERE EmpID = 1;

#Truncate Table (Delete All Records)
TRUNCATE TABLE Employees;

#Drop Table
DROP TABLE Employees;

#Add Column to Table
ALTER TABLE Employees
ADD Email VARCHAR(50);

#Modify Column
ALTER TABLE Employees
MODIFY Salary INT;

#Rename Column
ALTER TABLE Employees
RENAME COLUMN Name TO EmployeeName;

#Rename Table
RENAME TABLE Employees TO Staff;


CREATE TABLE Students (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) UNIQUE,
    Age INT CHECK (Age >= 18)
);







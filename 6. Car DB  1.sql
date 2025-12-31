-- Create CarDB database
CREATE DATABASE IF NOT EXISTS CarDB;
USE CarDB;

-- Create Cars Table
CREATE TABLE IF NOT EXISTS Cars (
    CarID INT PRIMARY KEY,
    Brand VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    EngineType VARCHAR(20),
    FuelType VARCHAR(20),
    TransmissionType VARCHAR(20),
    Color VARCHAR(20),
    Mileage INT,
    Price DECIMAL(10, 2)
);

-- Insert 30 Rows of Sample Car Data
-- Insert rows from CarID 1 to 30

INSERT INTO Cars (CarID, Brand, Model, Year, EngineType, FuelType, TransmissionType, Color, Mileage, Price)
VALUES
(1, 'Toyota', 'Camry', 2022, 'V6', 'Gasoline', 'Automatic', 'Blue', 15000, 25000.00),
(2, 'Honda', 'Accord', 2021, '4-cylinder', 'Gasoline', 'CVT', 'Silver', 18000, 22000.50),
(3, 'Ford', 'Mustang', 2020, 'V8', 'Gasoline', 'Manual', 'Red', 12000, 35000.75),
(4, 'Chevrolet', 'Malibu', 2022, '4-cylinder', 'Hybrid', 'Automatic', 'White', 16000, 28000.25),
(5, 'BMW', '3 Series', 2021, 'Inline-6', 'Gasoline', 'Automatic', 'Black', 20000, 40000.90),
(6, 'Mercedes-Benz', 'C-Class', 2020, 'V6', 'Diesel', 'Automatic', 'Gray', 22000, 45000.00),
(7, 'Audi', 'A4', 2022, 'Inline-4', 'Gasoline', 'S-Tronic', 'Green', 14000, 38000.50),
(8, 'Tesla', 'Model 3', 2021, 'Electric', 'Electric', 'Automatic', 'Silver', 10000, 50000.75),
(9, 'Hyundai', 'Elantra', 2020, 'Inline-4', 'Gasoline', 'CVT', 'Blue', 17000, 20000.90),
(10, 'Kia', 'Optima', 2022, 'Turbocharged', 'Gasoline', 'Automatic', 'Black', 13000, 30000.25),
(11, 'Ford', 'F-150', 2021, 'V8', 'Gasoline', 'Automatic', 'Red', 18000, 45000.50),
(12, 'Chevrolet', 'Silverado', 2020, 'V8', 'Flex Fuel', 'Automatic', 'White', 15000, 42000.75),
(13, 'Toyota', 'Highlander', 2022, 'V6', 'Hybrid', 'Automatic', 'Gray', 12000, 38000.00),
(14, 'Honda', 'Pilot', 2021, 'V6', 'Gasoline', 'Automatic', 'Silver', 16000, 35000.25),
(15, 'Jeep', 'Grand Cherokee', 2020, 'V6', 'Diesel', 'Automatic', 'Black', 20000, 42000.90),
(16, 'Subaru', 'Outback', 2022, 'Flat-4', 'Gasoline', 'CVT', 'Blue', 14000, 32000.50),
(17, 'Mazda', 'CX-5', 2021, 'Inline-4', 'Gasoline', 'Automatic', 'Red', 18000, 28000.75),
(18, 'Nissan', 'Rogue', 2020, 'Inline-4', 'Gasoline', 'CVT', 'White', 22000, 25000.00),
(19, 'Lexus', 'RX', 2022, 'V6', 'Hybrid', 'Automatic', 'Silver', 12000, 55000.50),
(20, 'Acura', 'MDX', 2021, 'V6', 'Gasoline', 'Automatic', 'Black', 16000, 48000.25),
(21, 'Tesla', 'Model Y', 2020, 'Electric', 'Electric', 'Automatic', 'Blue', 18000, 60000.90),
(22, 'Volkswagen', 'Atlas', 2022, 'V6', 'Gasoline', 'Automatic', 'Gray', 14000, 35000.00),
(23, 'Volvo', 'XC90', 2021, 'Inline-4', 'Gasoline', 'Automatic', 'White', 20000, 48000.50),
(24, 'Jaguar', 'F-PACE', 2020, 'V6', 'Gasoline', 'Automatic', 'Red', 15000, 52000.75),
(25, 'Land Rover', 'Range Rover', 2022, 'V8', 'Gasoline', 'Automatic', 'Black', 12000, 70000.00),
(26, 'Porsche', 'Cayenne', 2021, 'V6', 'Gasoline', 'Automatic', 'Silver', 18000, 65000.50),
(27, 'BMW', 'X5', 2020, 'Inline-6', 'Diesel', 'Automatic', 'Blue', 16000, 60000.75),
(28, 'Mercedes-Benz', 'GLE', 2022, 'V6', 'Hybrid', 'Automatic', 'Black', 14000, 72000.90),
(29, 'Audi', 'Q7', 2021, 'V6', 'Gasoline', 'Automatic', 'Gray', 20000, 68000.25),
(30, 'Lamborghini', 'Urus', 2020, 'V8', 'Gasoline', 'Automatic', 'Yellow', 12000, 250000.00),
(31, 'Ford', 'Escape', 2022, 'Inline-4', 'Hybrid', 'CVT', 'Green', 15000, 32000.00),
(32, 'Chevrolet', 'Equinox', 2021, 'Inline-4', 'Gasoline', 'Automatic', 'Silver', 18000, 28000.50),
(33, 'Toyota', 'Rav4', 2020, 'Inline-4', 'Gasoline', 'Automatic', 'Blue', 12000, 30000.75),
(34, 'Nissan', 'Murano', 2022, 'V6', 'Gasoline', 'CVT', 'Red', 16000, 35000.90),
(35, 'Honda', 'CR-V', 2021, 'Inline-4', 'Hybrid', 'CVT', 'White', 20000, 32000.25),
(36, 'Jeep', 'Wrangler', 2020, 'V6', 'Gasoline', 'Automatic', 'Black', 14000, 38000.50),
(37, 'Mazda', 'CX-9', 2022, 'Inline-4', 'Gasoline', 'Automatic', 'Gray', 18000, 35000.75),
(38, 'Hyundai', 'Santa Fe', 2021, 'V6', 'Gasoline', 'Automatic', 'Silver', 22000, 33000.00),
(39, 'Subaru', 'Forester', 2020, 'Flat-4', 'Gasoline', 'CVT', 'Blue', 12000, 28000.50),
(40, 'Volkswagen', 'Tiguan', 2022, 'Inline-4', 'Gasoline', 'Automatic', 'White', 16000, 30000.75),
(41, 'Ford', 'Ranger', 2021, 'Inline-4', 'Gasoline', 'Automatic', 'Red', 18000, 35000.90),
(42, 'Chevrolet', 'Colorado', 2020, 'V6', 'Gasoline', 'Automatic', 'Black', 20000, 32000.25),
(43, 'Ram', '1500', 2022, 'V8', 'Gasoline', 'Automatic', 'Gray', 14000, 38000.50),
(44, 'GMC', 'Sierra', 2021, 'V8', 'Gasoline', 'Automatic', 'Silver', 16000, 40000.75),
(45, 'Toyota', 'Tundra', 2020, 'V8', 'Gasoline', 'Automatic', 'White', 18000, 42000.00),
(46, 'Nissan', 'Titan', 2022, 'V8', 'Gasoline', 'Automatic', 'Blue', 20000, 45000.50),
(47, 'Honda', 'Ridgeline', 2021, 'V6', 'Gasoline', 'Automatic', 'Red', 16000, 38000.75),
(48, 'Chevrolet', 'Silverado HD', 2020, 'V8', 'Diesel', 'Automatic', 'Black', 18000, 50000.90),
(49, 'GMC', 'Sierra HD', 2022, 'V8', 'Diesel', 'Automatic', 'Gray', 14000, 52000.25),
(50, 'Ford', 'F-250', 2021, 'V8', 'Diesel', 'Automatic', 'White', 16000, 55000.50),
(51, 'Toyota', 'Land Cruiser', 2020, 'V8', 'Gasoline', 'Automatic', 'Black', 12000, 85000.75),
(52, 'Lexus', 'LX', 2022, 'V8', 'Hybrid', 'Automatic', 'Silver', 18000, 90000.00),
(53, 'Land Rover', 'Discovery', 2021, 'V6', 'Diesel', 'Automatic', 'Blue', 16000, 95000.50),
(54, 'Jeep', 'Grand Wagoneer', 2020, 'V8', 'Gasoline', 'Automatic', 'Red', 14000, 100000.75),
(55, 'Lincoln', 'Navigator', 2022, 'V6', 'Hybrid', 'Automatic', 'White', 18000, 110000.90),
(56, 'Tesla', 'Model S', 2021, 'Electric', 'Electric', 'Automatic', 'Black', 20000, 95000.25),
(57, 'Porsche', 'Taycan', 2020, 'Electric', 'Electric', 'Automatic', 'Silver', 12000, 100000.50),
(58, 'Audi', 'e-tron', 2022, 'Electric', 'Electric', 'Automatic', 'Blue', 16000, 90000.75),
(59, 'Jaguar', 'I-PACE', 2021, 'Electric', 'Electric', 'Automatic', 'Gray', 18000, 92000.00),
(60, 'Mercedes-Benz', 'EQC', 2020, 'Electric', 'Electric', 'Automatic', 'Black', 14000, 97000.50),
(61, 'Ford', 'Mustang Mach-E', 2022, 'Electric', 'Electric', 'Automatic', 'Red', 16000, 89000.75),
(62, 'Volkswagen', 'ID.4', 2021, 'Electric', 'Electric', 'Automatic', 'White', 18000, 85000.90),
(63, 'Chevrolet', 'Bolt EV', 2020, 'Electric', 'Electric', 'Automatic', 'Silver', 14000, 80000.25),
(64, 'Hyundai', 'Kona Electric', 2022, 'Electric', 'Electric', 'Automatic', 'Blue', 16000, 75000.50),
(65, 'Kia', 'Soul EV', 2021, 'Electric', 'Electric', 'Automatic', 'Red', 18000, 72000.75),
(66, 'Nissan', 'Leaf', 2020, 'Electric', 'Electric', 'Automatic', 'Gray', 14000, 68000.00),
(67, 'BMW', 'iX3', 2022, 'Electric', 'Electric', 'Automatic', 'Black', 16000, 70000.50),
(68, 'Audi', 'Q4 e-tron', 2021, 'Electric', 'Electric', 'Automatic', 'White', 18000, 73000.75),
(69, 'Tesla', 'Model X', 2020, 'Electric', 'Electric', 'Automatic', 'Silver', 14000, 120000.90),
(70, 'Porsche', 'Macan', 2022, 'V6', 'Gasoline', 'Automatic', 'Blue', 16000, 65000.25);	
-- 1.	Retrieve the details of cars with prices greater than the average price.
-- 2.	Retrieve the brand and model of the car with the highest mileage. 
-- 3.	List cars with prices higher than the average price of cars with the fuel type = 'Gasoline'.
-- 4.	Find the brand with the most car models in the dataset.
-- 5.	Retrieve cars with prices closest to the average price, rounded to the nearest hundred.
-- 6.	List cars with prices higher than the average price of cars manufactured in the year 2021.
-- 7.	Find the model of the cheapest car among those with a V8 engine.
-- 8.	Retrieve brands with more than two car models in the dataset.
-- 9.	List cars with prices higher than the average price of cars with the same transmission type and fuel type.
-- 10.	Find the brand with the highest total mileage across all models.
#SQL- HW Questions After Lecture 5

#Airline Data_Base Related Queries:

-- Create Database
CREATE DATABASE AirlinesDB1;
USE AirlinesDB1;

-- Create Flights Table
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    FlightNumber VARCHAR(10),
    DepartureCity VARCHAR(50),
    ArrivalCity VARCHAR(50),
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    AircraftType VARCHAR(50),
    AvailableSeats INT,
    TicketPrice DECIMAL(10, 2),
    AirlineName VARCHAR(50)
);

-- Insert 40 Rows of Sample Data
-- Insert rows from FlightID 1 to 40

INSERT INTO Flights (FlightID, FlightNumber, DepartureCity, ArrivalCity, DepartureTime, ArrivalTime, AircraftType, AvailableSeats, TicketPrice, AirlineName)
VALUES
(1, 'BA123', 'London', 'New York', '2023-01-15 08:00:00', '2023-01-15 14:00:00', 'Boeing 777', 200, 1200.50, 'British Airways'),
(2, 'DL456', 'New York', 'Paris', '2023-01-20 12:00:00', '2023-01-20 18:00:00', 'Airbus A350', 180, 1500.75, 'Delta Airlines'),
(3, 'AF789', 'Paris', 'Amsterdam', '2023-01-25 14:30:00', '2023-01-25 16:30:00', 'Airbus A320', 150, 900.25, 'Air France'),
(4, 'UA567', 'New York', 'Los Angeles', '2023-01-30 16:00:00', '2023-01-30 20:00:00', 'Boeing 737', 120, 1100.90, 'United Airlines'),
(5, 'EK345', 'Dubai', 'London', '2023-02-05 18:30:00', '2023-02-05 22:30:00', 'Boeing 787', 220, 1300.75, 'Emirates'),
(6, 'SQ890', 'Singapore', 'Sydney', '2023-02-10 20:00:00', '2023-02-11 02:00:00', 'Airbus A380', 180, 1400.25, 'Singapore Airlines'),
(7, 'QF456', 'Sydney', 'Auckland', '2023-02-15 22:30:00', '2023-02-16 01:30:00', 'Boeing 787', 100, 800.50, 'Qantas'),
(8, 'LH123', 'Frankfurt', 'Tokyo', '2023-02-20 02:00:00', '2023-02-20 10:00:00', 'Airbus A350', 300, 1800.90, 'Lufthansa'),
(9, 'TK567', 'Istanbul', 'Moscow', '2023-02-25 04:30:00', '2023-02-25 08:30:00', 'Boeing 777', 160, 1200.00, 'Turkish Airlines'),
(10, 'AA234', 'Chicago', 'Los Angeles', '2023-03-01 06:00:00', '2023-03-01 09:30:00', 'Airbus A320', 130, 950.75, 'American Airlines'),
(11, 'BA567', 'London', 'Berlin', '2023-03-20 14:30:00', '2023-03-20 17:30:00', 'Boeing 737', 110, 1100.25, 'British Airways'),
(12, 'DL789', 'Atlanta', 'Chicago', '2023-03-25 18:00:00', '2023-03-25 20:00:00', 'Airbus A330', 90, 900.75, 'Delta Airlines'),
(13, 'EK345', 'Dubai', 'Mumbai', '2023-03-30 20:30:00', '2023-03-30 23:30:00', 'Boeing 777', 200, 1200.90, 'Emirates'),
(14, 'UA567', 'New York', 'San Francisco', '2023-04-05 22:00:00', '2023-04-06 02:00:00', 'Airbus A350', 150, 1000.50, 'United Airlines'),
(15, 'SQ890', 'Singapore', 'Hong Kong', '2023-04-10 02:30:00', '2023-04-10 04:30:00', 'Airbus A380', 180, 1500.25, 'Singapore Airlines'),
(16, 'QF456', 'Sydney', 'Melbourne', '2023-04-15 04:00:00', '2023-04-15 05:30:00', 'Boeing 787', 100, 800.75, 'Qantas'),
(17, 'LH123', 'Frankfurt', 'Barcelona', '2023-04-20 06:30:00', '2023-04-20 09:00:00', 'Airbus A350', 300, 1800.25, 'Lufthansa'),
(18, 'TK567', 'Istanbul', 'Athens', '2023-04-25 08:00:00', '2023-04-25 10:00:00', 'Boeing 737', 160, 1300.90, 'Turkish Airlines'),
(19, 'AA234', 'Chicago', 'Miami', '2023-04-30 10:30:00', '2023-04-30 12:30:00', 'Airbus A320', 130, 950.50, 'American Airlines'),
(20, 'AF567', 'Paris', 'Rome', '2023-05-05 12:00:00', '2023-05-05 14:00:00', 'Airbus A330', 150, 1600.00, 'Air France'),
(21, 'BA123', 'London', 'New York', '2023-05-10 15:30:00', '2023-05-10 18:30:00', 'Boeing 777', 200, 1200.50, 'British Airways'),
(22, 'DL456', 'New York', 'Paris', '2023-05-15 18:00:00', '2023-05-15 22:00:00', 'Airbus A350', 180, 1500.75, 'Delta Airlines'),
(23, 'AF789', 'Paris', 'Amsterdam', '2023-05-20 20:30:00', '2023-05-20 22:30:00', 'Airbus A320', 150, 900.25, 'Air France'),
(24, 'UA567', 'New York', 'Los Angeles', '2023-05-25 22:00:00', '2023-05-26 02:00:00', 'Boeing 737', 120, 1100.90, 'United Airlines'),
(25, 'EK345', 'Dubai', 'London', '2023-06-01 01:30:00', '2023-06-01 05:30:00', 'Boeing 787', 220, 1300.75, 'Emirates'),
(26, 'SQ890', 'Singapore', 'Sydney', '2023-06-05 04:00:00', '2023-06-05 07:00:00', 'Airbus A380', 180, 1400.25, 'Singapore Airlines'),
(27, 'QF456', 'Sydney', 'Auckland', '2023-06-10 06:30:00', '2023-06-10 09:30:00', 'Boeing 787', 100, 800.50, 'Qantas'),
(28, 'LH123', 'Frankfurt', 'Tokyo', '2023-06-15 08:00:00', '2023-06-15 15:00:00', 'Airbus A350', 300, 1800.90, 'Lufthansa'),
(29, 'TK567', 'Istanbul', 'Moscow', '2023-06-20 12:30:00', '2023-06-20 15:30:00', 'Boeing 777', 160, 1200.00, 'Turkish Airlines'),
(30, 'AA234', 'Chicago', 'Los Angeles', '2023-06-25 16:00:00', '2023-06-25 20:00:00', 'Airbus A320', 130, 950.75, 'American Airlines'),
(31, 'BA567', 'London', 'Berlin', '2023-03-20 14:30:00', '2023-03-20 17:30:00', 'Boeing 737', 110, 1100.25, 'British Airways'),
(32, 'DL789', 'Atlanta', 'Chicago', '2023-03-25 18:00:00', '2023-03-25 20:00:00', 'Airbus A330', 90, 900.75, 'Delta Airlines'),
(33, 'EK345', 'Dubai', 'Mumbai', '2023-03-30 20:30:00', '2023-03-30 23:30:00', 'Boeing 777', 200, 1200.90, 'Emirates'),
(34, 'UA567', 'New York', 'San Francisco', '2023-04-05 22:00:00', '2023-04-06 02:00:00', 'Airbus A350', 150, 1000.50, 'United Airlines'),
(35, 'SQ890', 'Singapore', 'Hong Kong', '2023-04-10 02:30:00', '2023-04-10 04:30:00', 'Airbus A380', 180, 1500.25, 'Singapore Airlines'),
(36, 'QF456', 'Sydney', 'Melbourne', '2023-04-15 04:00:00', '2023-04-15 05:30:00', 'Boeing 787', 100, 800.75, 'Qantas'),
(37, 'LH123', 'Frankfurt', 'Barcelona', '2023-04-20 06:30:00', '2023-04-20 09:00:00', 'Airbus A350', 300, 1800.25, 'Lufthansa'),
(38, 'TK567', 'Istanbul', 'Athens', '2023-04-25 08:00:00', '2023-04-25 10:00:00', 'Boeing 737', 160, 1300.90, 'Turkish Airlines'),
(39, 'AA234', 'Chicago', 'Miami', '2023-04-30 10:30:00', '2023-04-30 12:30:00', 'Airbus A320', 130, 950.50, 'American Airlines'),
(40, 'AF567', 'Paris', 'Rome', '2023-05-05 12:00:00', '2023-05-05 14:00:00', 'Airbus A330', 150, 1600.00, 'Air France');

-- Select and Display All Rows
SELECT * FROM Flights;

#Mix Up Question’s

-- 1.	Retrieve all flight details from the Flights table.
-- 2.	Find the total number of available seats for all flights.
-- 3.	List unique departure cities in alphabetical order.
-- 4.	Display flights departing from 'New York' with departure time later than '2023-01-30 00:00:00'.
-- 5.	Calculate the average ticket price for all flights.
-- 6.	Show flights with available seats less than 150 and departure time after '2023-02-20 00:00:00'.
-- 7.	Retrieve flights operated by 'Emirates' airline.
-- 8.	Find the maximum number of available seats among all flights.
-- 9.	Display flights arriving in 'Los Angeles' with arrival time before '2023-05-01 00:00:00'.
-- 10.	Calculate the total revenue generated from ticket sales for all flights.

-- -- 1. Retrieve all flight details from the Flights table.
-- SELECT * FROM Flights;

-- -- 2. Find the total number of available seats for all flights.
-- SELECT SUM(AvailableSeats) AS TotalAvailableSeats FROM Flights;

-- -- 3. List unique departure cities in alphabetical order.
-- SELECT DISTINCT DepartureCity FROM Flights ORDER BY DepartureCity;

-- -- 4. Display flights departing from 'New York' with departure time later than '2023-01-30 00:00:00'.
-- SELECT * FROM Flights WHERE DepartureCity = 'New York' AND DepartureTime > '2023-01-30 00:00:00';

-- -- 5. Calculate the average ticket price for all flights.
-- SELECT AVG(TicketPrice) AS AverageTicketPrice FROM Flights;

-- -- 6. Show flights with available seats less than 150 and departure time after '2023-02-20 00:00:00'.
-- SELECT * FROM Flights WHERE AvailableSeats < 150 AND DepartureTime > '2023-02-20 00:00:00';

-- -- 7. Retrieve flights operated by 'Emirates' airline.
-- SELECT * FROM Flights WHERE AirlineName = 'Emirates';

-- -- 8. Find the maximum number of available seats among all flights.
-- SELECT MAX(AvailableSeats) AS MaxAvailableSeats FROM Flights;

-- -- 9. Display flights arriving in 'Los Angeles' with arrival time before '2023-05-01 00:00:00'.
-- SELECT * FROM Flights WHERE ArrivalCity = 'Los Angeles' AND ArrivalTime < '2023-05-01 00:00:00';

-- -- 10. Calculate the total revenue generated from ticket sales for all flights.
-- SELECT SUM(TicketPrice * AvailableSeats) AS TotalRevenue FROM Flights;



-- More Questions

-- 1.	Retrieve the count of flights for each departure city.
-- 2.	Find the average ticket price for each airline.
-- 3.	List the departure cities with the total number of available seats, ordered by seat count in descending order.
-- 4.	Display the arrival cities and the maximum ticket price among flights arriving there.
-- 5.	Show the average available seats and total revenue for each departure city, but only for cities with an average seat count greater than 150.
-- 6.	Retrieve the count of flights for each aircraft type, but limit the result to the top 5 types with the highest counts.
-- 7.	Retrieve flights operated by 'Emirates' airline.
-- 8.	Find the maximum number of available seats among all flights.
-- 9.	Display flights arriving in 'Los Angeles' with arrival time before '2023-05-01 00:00:00'.
-- 10.	Calculate the total revenue generated from ticket sales for all flights.
-- 11.	Retrieve the count of flights for each arrival city with more than 2 flights.
-- 12.	List departure cities and their total revenue from ticket sales, ordering by revenue in descending order.
-- 13.	Show airlines and their average ticket prices, but include only airlines with more than 5 flights.
-- 14.	Display the arrival cities with the lowest average ticket prices.
-- 15.	Find departure cities and the total number of flights departing from each city, limiting the result to the top 3 cities.
-- 16.	Retrieve airlines and the total number of flights operated by each airline, but show only airlines with more than 10 flights.
-- 17.	List departure cities and their average ticket prices, ordering by average ticket price in ascending order.
-- 18.	Display arrival cities and the total number of available seats for each city, limiting the result to the bottom 5 cities.
-- 19.	Show airlines and the earliest departure time among their flights.
-- 20.	Calculate the average ticket price for each aircraft type, but limit the result to the bottom 3 aircraft types.
-- 21.	Retrieve departure cities and their total revenue from ticket sales, but show only cities with total revenue greater than $100,000.
-- 22.	List airlines and their total revenue from ticket sales, but include only airlines with more than 8 flights.
-- 23.	Display arrival cities and the latest arrival time among flights for each city.
-- 24.	Find departure cities and their total revenue from ticket sales, ordering by revenue in descending order, and show only the top 5 cities.
-- 25.	Show airlines and the average number of available seats, but include only airlines with an average seat count greater than 170.
-- 26.	Retrieve departure cities and the total number of flights for each city, ordering by flight count in ascending order.
-- 27.	List arrival cities and the average ticket prices, but include only cities with an average ticket price less than $1100.
-- 28.	Display airlines and the total revenue from ticket sales, ordering by revenue in ascending order.
-- 29.	Find the departure cities and their total revenue from ticket sales, but show only cities with total revenue greater than $80,000.
-- 30.	Calculate the average ticket price for each aircraft type, but include only types with an average ticket price greater than $1200.
-- 31.	Retrieve arrival cities and the total number of flights for each city, limiting the result to the bottom 3 cities.
-- 32.	Show airlines and the total revenue from ticket sales, but include only airlines with an average ticket price greater than $1300.
-- 33.	Display departure cities and the earliest departure time among flights for each city, but show only cities with more than 3 flights.
-- 34.	Retrieve airlines and their average ticket prices, ordering by average ticket price in descending order.
-- 35.	List departure cities and the total number of available seats for each city, but include only cities with total available seats greater than 500.
-- 36.	Show arrival cities and the latest arrival time among flights for each city, ordering by arrival time in descending order.
-- 37.	Retrieve airlines and the maximum ticket price among their flights, limiting the result to the top 4 airlines.
-- 38.	Display departure cities and the average number of available seats, but include only cities with an average seat count greater than 120.
-- 39.	Find arrival cities and the total revenue from ticket sales, but show only cities with total revenue greater than $90,000.
-- 40.	Calculate the average ticket price for each aircraft type, but include only types with an average ticket price greater than $1100 and order by average ticket price in descending order.

-- 1. Retrieve the count of flights for each departure city.
SELECT DepartureCity, COUNT(*) AS NumberOfFlights
FROM Flights
GROUP BY DepartureCity;

-- 2. Find the average ticket price for each airline.
SELECT AirlineName, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY AirlineName;

-- 3. List the departure cities with the total number of available seats, ordered by seat count in descending order.
SELECT DepartureCity, SUM(AvailableSeats) AS TotalAvailableSeats
FROM Flights
GROUP BY DepartureCity
ORDER BY TotalAvailableSeats DESC;

-- 4. Display the arrival cities and the maximum ticket price among flights arriving there.
SELECT ArrivalCity, MAX(TicketPrice) AS MaxTicketPrice
FROM Flights
GROUP BY ArrivalCity;

-- 5. Show the average available seats and total revenue for each departure city, but only for cities with an average seat count greater than 150.
SELECT DepartureCity, AVG(AvailableSeats) AS AverageAvailableSeats, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY DepartureCity
HAVING AverageAvailableSeats > 150;

-- 6. Retrieve the count of flights for each aircraft type, but limit the result to the top 5 types with the highest counts.
SELECT AircraftType, COUNT(*) AS NumberOfFlights
FROM Flights
GROUP BY AircraftType
ORDER BY NumberOfFlights DESC
LIMIT 5;

-- 7. List airlines with the total revenue generated from ticket sales, ordered by revenue in descending order, and show only the top 3.
SELECT AirlineName, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY AirlineName
ORDER BY TotalRevenue DESC
LIMIT 3;

-- 8. Display departure cities and their corresponding average ticket prices, but include only cities with an average ticket price greater than $1200.
SELECT DepartureCity, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY DepartureCity
HAVING AverageTicketPrice > 1200;

-- 9. Find the departure cities and the earliest departure time among flights for each city.
SELECT DepartureCity, MIN(DepartureTime) AS EarliestDepartureTime
FROM Flights
GROUP BY DepartureCity;

-- 10. Calculate the total revenue and average ticket price for each airline, but show only airlines with an average ticket price less than $1500.
SELECT AirlineName, SUM(TicketPrice * AvailableSeats) AS TotalRevenue, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY AirlineName
HAVING AverageTicketPrice < 1500;

-- 11. Retrieve the count of flights for each arrival city with more than 2 flights.
SELECT ArrivalCity, COUNT(*) AS NumberOfFlights
FROM Flights
GROUP BY ArrivalCity
HAVING NumberOfFlights > 2;

-- 12. List departure cities and their total revenue from ticket sales, ordering by revenue in descending order.
SELECT DepartureCity, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY DepartureCity
ORDER BY TotalRevenue DESC;

-- 13. Show airlines and their average ticket prices, but include only airlines with more than 5 flights.
SELECT AirlineName, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY AirlineName
HAVING COUNT(*) > 5;

-- 14. Display the arrival cities with the lowest average ticket prices.
SELECT ArrivalCity, MIN(TicketPrice) AS MinTicketPrice
FROM Flights
GROUP BY ArrivalCity
ORDER BY MinTicketPrice;

-- 15. Find departure cities and the total number of flights departing from each city, limiting the result to the top 3 cities.
SELECT DepartureCity, COUNT(*) AS NumberOfFlights
FROM Flights
GROUP BY DepartureCity
ORDER BY NumberOfFlights DESC
LIMIT 3;

-- 16. Retrieve airlines and the total number of flights operated by each airline, but show only airlines with more than 10 flights.
SELECT AirlineName, COUNT(*) AS NumberOfFlights
FROM Flights
GROUP BY AirlineName
HAVING NumberOfFlights > 10;

-- 17. List departure cities and their average ticket prices, ordering by average ticket price in ascending order.
SELECT DepartureCity, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY DepartureCity
ORDER BY AverageTicketPrice;

-- 18. Display arrival cities and the total number of available seats for each city, limiting the result to the bottom 5 cities.
SELECT ArrivalCity, SUM(AvailableSeats) AS TotalAvailableSeats
FROM Flights
GROUP BY ArrivalCity
ORDER BY TotalAvailableSeats
LIMIT 5;

-- 19. Show airlines and the earliest departure time among their flights.
SELECT AirlineName, MIN(DepartureTime) AS EarliestDepartureTime
FROM Flights
GROUP BY AirlineName;

-- 20. Calculate the average ticket price for each aircraft type, but limit the result to the bottom 3 aircraft types.
SELECT AircraftType, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY AircraftType
ORDER BY AverageTicketPrice
LIMIT 3;

-- 21. Retrieve departure cities and their total revenue from ticket sales, but show only cities with total revenue greater than $100,000.
SELECT DepartureCity, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY DepartureCity
HAVING TotalRevenue > 100000;

-- 22. List airlines and their total revenue from ticket sales, but include only airlines with more than 8 flights.
SELECT AirlineName, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY AirlineName
HAVING COUNT(*) > 8;

-- 23. Display arrival cities and the latest arrival time among flights for each city.
SELECT ArrivalCity, MAX(ArrivalTime) AS LatestArrivalTime
FROM Flights
GROUP BY ArrivalCity;

-- 24. Find departure cities and their total revenue from ticket sales, ordering by revenue in descending order, and show only the top 5 cities.
SELECT DepartureCity, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY DepartureCity
ORDER BY TotalRevenue DESC
LIMIT 5;

-- 25. Show airlines and the average number of available seats, but include only airlines with an average seat count greater than 170.
SELECT AirlineName, AVG(AvailableSeats) AS AverageAvailableSeats
FROM Flights
GROUP BY AirlineName
HAVING AverageAvailableSeats > 170;

-- 26. Retrieve departure cities and the total number of flights for each city, ordering by flight count in ascending order.
SELECT DepartureCity, COUNT(*) AS NumberOfFlights
FROM Flights
GROUP BY DepartureCity
ORDER BY NumberOfFlights;

-- 27. List arrival cities and the average ticket prices, but include only cities with an average ticket price less than $1100.
SELECT ArrivalCity, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY ArrivalCity
HAVING AverageTicketPrice < 1100;

-- 28. Display airlines and the total revenue from ticket sales, ordering by revenue in ascending order.
SELECT AirlineName, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY AirlineName
ORDER BY TotalRevenue;

-- 29. Find the departure cities and their total revenue from ticket sales, but show only cities with total revenue greater than $80,000.
SELECT DepartureCity, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY DepartureCity
HAVING TotalRevenue > 80000;

-- 30. Calculate the average ticket price for each aircraft type, but include only types with an average ticket price greater than $1200.
SELECT AircraftType, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY AircraftType
HAVING AverageTicketPrice > 1200;
-- 31. Retrieve arrival cities and the total number of flights for each city, limiting the result to the bottom 3 cities.
SELECT ArrivalCity, COUNT(*) AS NumberOfFlights
FROM Flights
GROUP BY ArrivalCity
ORDER BY NumberOfFlights
LIMIT 3;

-- 32. Show airlines and the total revenue from ticket sales, but include only airlines with an average ticket price greater than $1300.
SELECT AirlineName, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY AirlineName
HAVING AVG(TicketPrice) > 1300;

-- 33. Display departure cities and the earliest departure time among flights for each city, but show only cities with more than 3 flights.
SELECT DepartureCity, MIN(DepartureTime) AS EarliestDepartureTime
FROM Flights
GROUP BY DepartureCity
HAVING COUNT(*) > 3;

-- 34. Retrieve airlines and their average ticket prices, ordering by average ticket price in descending order.
SELECT AirlineName, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY AirlineName
ORDER BY AverageTicketPrice DESC;

-- 35. List departure cities and the total number of available seats for each city, but include only cities with total available seats greater than 500.
SELECT DepartureCity, SUM(AvailableSeats) AS TotalAvailableSeats
FROM Flights
GROUP BY DepartureCity
HAVING TotalAvailableSeats > 500;

-- 36. Show arrival cities and the latest arrival time among flights for each city, ordering by arrival time in descending order.
SELECT ArrivalCity, MAX(ArrivalTime) AS LatestArrivalTime
FROM Flights
GROUP BY ArrivalCity
ORDER BY LatestArrivalTime DESC;

-- 37. Retrieve airlines and the maximum ticket price among their flights, limiting the result to the top 4 airlines.
SELECT AirlineName, MAX(TicketPrice) AS MaxTicketPrice
FROM Flights
GROUP BY AirlineName
LIMIT 4;

-- 38. Display departure cities and the average number of available seats, but include only cities with an average seat count greater than 120.
SELECT DepartureCity, AVG(AvailableSeats) AS AverageAvailableSeats
FROM Flights
GROUP BY DepartureCity
HAVING AverageAvailableSeats > 120;

-- 39. Find arrival cities and the total revenue from ticket sales, but show only cities with total revenue greater than $90,000.
SELECT ArrivalCity, SUM(TicketPrice * AvailableSeats) AS TotalRevenue
FROM Flights
GROUP BY ArrivalCity
HAVING TotalRevenue > 90000;

-- 40. Calculate the average ticket price for each aircraft type, but include only types with an average ticket price greater than $1100 and order by average ticket price in descending order.
SELECT AircraftType, AVG(TicketPrice) AS AverageTicketPrice
FROM Flights
GROUP BY AircraftType
HAVING AverageTicketPrice > 1100
ORDER BY AverageTicketPrice DESC;
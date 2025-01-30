create database project_dbms;
drop database project_dbms;
use project_dbms;
CREATE TABLE Properties (
    AreaID INT PRIMARY KEY AUTO_INCREMENT,
    Address VARCHAR(255) NOT NULL,
    DistanceFromUniversity DECIMAL(5, 2) NOT NULL,
    RideFee DECIMAL(10, 2) NOT NULL
);
INSERT INTO Properties (AreaID, Address, DistanceFromUniversity, RideFee)
VALUES
    (1, 'Khagan', 1.5, 10.00),
    (2, 'Changao', 1.0, 0.00),
    (3, 'Amin Model Town', 1.6, 20.00),
    (4, 'Ashulia', 2.8, 20.00),
    (5, 'Torque Fashion', 1.4, 20.00),
    (6, 'Dattapara', 3.0, 10.00);
select *from properties;
CREATE TABLE Owners (
    OwnerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);
INSERT INTO Owners (OwnerID, FirstName, LastName, PhoneNumber, Email)
VALUES
    (1001, 'Abdul', 'Rahman', '017123-45678', 'abdul@example.com'),
    (1002, 'Farida', 'Begum', '017234-56789', 'farida@example.com'),
    (1003, 'Hasan', 'Mahmud', '017345-67890', 'hasan@example.com'),
    (1004, 'Ayesha', 'Khatun', '017456-78901', 'ayesha@example.com'),
    (1005, 'Imran', 'Hossain', '017567-89012', 'imran@example.com'),
    (1006, 'Sultana', 'Jahan', '017678-90123', 'sultana@example.com'),
    (1007, 'Rafiq', 'Uddin', '017789-01234', 'rafiq@example.com'),
    (1008, 'Nazma', 'Akhter', '017890-12345', 'nazma@example.com'),
    (1009, 'Shahab', 'Uddin', '017901-23456', 'shahab@example.com'),
    (1010, 'Liton', 'Kumar', '017345-67890', 'liton@example.com'),
    (1011, 'Shipa', 'Rani', '017234-56789', 'shipa@example.com'),
    (1012, 'Bashir', 'Ahmed', '017123-45678', 'bashir@example.com'),
    (1013, 'Joy', 'Chakraborty', '017567-89012', 'joy@example.com'),
    (1014, 'Shahadat', 'Sarkar', '017678-90123', 'shahadat@example.com'),
    (1015, 'Nilufar', 'Rahman', '017012-34567', 'nilufar@example.com'),
    (1016, 'Anwar', 'Hossain', '017012-67890', 'anwar@example.com'),
    (1017, 'Rahima', 'Khatun', '017123-78901', 'rahima@example.com'),
    (1018, 'Salma', 'Begum', '017234-89012', 'salma@example.com'),
    (1019, 'Jahirul', 'Islam', '017345-90123', 'jahirul@example.com'),
    (1020, 'Nazrul', 'Islam', '017456-01234', 'nazrul@example.com'),
    (1021, 'Rubina', 'Akhter', '017567-12345', 'rubina@example.com'),
    (1022, 'Mizanur', 'Rahman', '017678-23456', 'mizanur@example.com'),
    (1023, 'Ferdous', 'Ahmed', '017789-34567', 'ferdous@example.com'),
    (1024, 'Shirin', 'Akhter', '017890-45678', 'shirin@example.com'),
    (1025, 'Mokhlesur', 'Rahman', '017901-56789', 'mokhles@example.com'),
    (1026, 'Kamrul', 'Hassan', '017012-67891', 'kamrul@example.com'),
    (1027, 'Munira', 'Jahan', '017123-78902', 'munira@example.com'),
    (1028, 'Faisal', 'Uddin', '017234-89013', 'faisal@example.com'),
    (1029, 'Rehana', 'Akter', '017345-90124', 'rehana@example.com'),
    (1030, 'Motiur', 'Rahman', '017456-01235', 'motiur@example.com'),
    (1031, 'Daffodil International', 'University', '09617901212', 'hall@daffodilvarsity.edu.bd');
SELECT * FROM Owners;
CREATE TABLE Buildings (
    BuildingID INT PRIMARY KEY AUTO_INCREMENT,
    BuildingName VARCHAR(100) NOT NULL,
    RentFee DECIMAL(10, 2) NOT NULL,
    UtilitiesFee DECIMAL(10, 2) NOT NULL,
    GenderPreference ENUM('Male', 'Female', 'Both') NOT NULL,
    HouseType VARCHAR(50) NOT NULL,
    OwnerID INT NOT NULL,
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);

INSERT INTO Buildings (BuildingID, BuildingName, RentFee, UtilitiesFee, GenderPreference, HouseType, OwnerID) 
VALUES
(1, "Boy's block", 4500.00, 50.00, 'Male', 'Shared Room', 1009),
(2, 'Ripon villa', 5000.00, 0.00, 'Male', 'Shared Room', 1004),
(3, 'Green Villa Khagan', 14550.00, 45.00, 'Male', 'Apartment', 1005),
(4, 'Skyline Khagan', 3550.00, 55.00, 'Both', 'Seat', 1001),
(5, 'Elite Apartments', 3500.00, 0.00, 'Female', 'Seat', 1007),
(6, 'Sarkar Villa', 12000.00, 100.00, 'Both', 'Apartment', 1014),
(7, 'Shipahi Villa', 15000.00, 0.00, 'Male', 'Shared Room', 1011),
(8, 'Liton Villa', 13000.00, 50.00, 'Male', 'Apartment', 1010),
(9, 'B bariya', 3550.00, 45.00, 'Female', 'Seat', 1002),
(10, 'Joy Villa', 5000.00, 60.00, 'Male', 'Single Room', 1023),
(11, 'Model Town Villa', 11700.00, 100.00, 'Female', 'Apartment', 1021),
(12, 'Model Town Heights', 2650.00, 65.00, 'Both', 'Shared Room', 1026),
(13, 'Amin Plaza', 6000.00, 60.00, 'Male', 'Shared Apartment', 1018),
(14, 'Amin Residency', 2550.00, 55.00, 'Both', 'Seat', 1022),
(15, 'Luxury Apartments', 15750.00, 75.00, 'Female', 'Apartment', 1019),
(16, 'Rehana Villa', 8500.00, 130.00, 'Female', 'Apartment', 1029),
(17, 'Motiur Villa', 9000.00, 150.00, 'Male', 'Apartment', 1030),
(18, 'Munira Villa', 8000.00, 120.00, 'Female', 'Apartment', 1027),
(19, 'Mokhlesur Villa', 8500.00, 130.00, 'Male', 'Apartment', 1025),
(20, 'Khatun Plaza', 1800.00, 250.00, 'Both', 'Plaza', 1017),
(21, 'Begum Heights', 2200.00, 270.00, 'Female', 'Heights', 1018),
(22, 'Islam Residency', 2000.00, 220.00, 'Female', 'Residency', 1019),
(23, 'Nazrul Apartments', 2500.00, 300.00, 'Male', 'Apartments', 1020),
(24, 'Akhter Mansion', 1500.00, 200.00, 'Both', 'Mansion', 1021),
(25, 'Rahman Residency', 15000.00, 2000.00, 'Both', 'Apartment', 1011),
(26, 'Begum Plaza', 12000.00, 1500.00, 'Female', 'Apartment', 1022),
(27, 'Mahmud Mansion', 18000.00, 2500.00, 'Male', 'Apartment', 1023),
(28, 'Khatun Apartments', 16000.00, 2200.00, 'Both', 'Apartment', 1024),
(29, 'Hossain Villa', 14000.00, 1800.00, 'Both', 'Villa', 1025),
(30, 'Jahan Heights', 17000.00, 2300.00, 'Female', 'Apartment', 1016),
(31, 'Uddin Tower', 19000.00, 2700.00, 'Male', 'Apartment', 1027),
(32, 'Akhter Residency', 13000.00, 1600.00, 'Both', 'Apartment', 1028),
(33, 'Shahab Lodge', 11000.00, 1400.00, 'Male', 'Lodge', 1029),
(34, 'Liton Villa', 15000.00, 2000.00, 'Both', 'Villa', 1010),
(35, 'Begum Plaza', 8000.00, 100.00, 'Both', 'Apartment', 1012),
(36, 'Hossain Villa', 9000.00, 150.00, 'Male', 'Shared Room', 1025);
SELECT * FROM Buildings;
ALTER TABLE Buildings ADD COLUMN AreaID INT;
ALTER TABLE Buildings MODIFY COLUMN AreaID INT NOT NULL;
ALTER TABLE Buildings ADD CONSTRAINT FK_Building_Property FOREIGN KEY (AreaID) REFERENCES Properties(AreaID);
CREATE TABLE Hostels (
    HostelID INT PRIMARY KEY AUTO_INCREMENT,
    HostelName VARCHAR(100) NOT NULL,
    HallFee DECIMAL(10, 2) NOT NULL,
    GenderAllowed ENUM('Male', 'Female', 'Both') NOT NULL,
    OperatedBy VARCHAR(100),
    OwnerID INT NOT NULL,
    FOREIGN KEY (OwnerID) REFERENCES Owners(OwnerID)
);
INSERT INTO Hostels (HostelName, HallFee, GenderAllowed, OperatedBy, OwnerID)
VALUES
('RASG-1', 21000.00, 'Female', 'Campus Admin', 1031),
('RASG-2', 5500.00, 'Female', 'Campus Admin', 1031),
('YKSG-1', 21000.00, 'Both', 'Campus Admin', 1031),
('YKSG-2', 21000.00, 'Male', 'Campus Admin', 1031),
('RASG-1(container)', 21000.00, 'Female', 'Campus Admin', 1031);
select *from Hostels;
INSERT INTO HostelsInCampus (Hostel_name, Hall_Fee, GenderAllowed) VALUES
('RASG-2 EX (MULTIPURPUS BUILDING)', 21000, 'Female');


SELECT OwnerID, FirstName, LastName  
FROM Owners  
WHERE OwnerID IN (SELECT OwnerID FROM Buildings WHERE RentFee > 15000);
SELECT HostelName, HallFee  
FROM Hostels  
WHERE HallFee = (SELECT MIN(HallFee) FROM Hostels);
SELECT BuildingName, RentFee  
FROM Buildings  
WHERE RentFee = (SELECT MAX(RentFee) FROM Buildings);
SELECT AVG(RentFee) AS AverageRent  
FROM Buildings;
SELECT BuildingName, RentFee  
FROM Buildings  
WHERE RentFee > (SELECT AVG(RentFee) FROM Buildings);
SELECT SUM(UtilitiesFee)  
FROM Buildings  
WHERE OwnerID = (SELECT OwnerID FROM Owners WHERE FirstName = 'Abdul' AND LastName = 'Rahman');
SELECT COUNT(*)  
FROM Hostels  
WHERE GenderAllowed = 'Male';
SELECT Address  
FROM Properties  
WHERE DistanceFromUniversity > (SELECT AVG(DistanceFromUniversity) FROM Properties);
SELECT BuildingName  
FROM Buildings  
WHERE UtilitiesFee = (SELECT MAX(UtilitiesFee) FROM Buildings);
SELECT DISTINCT OwnerID  
FROM Owners  
WHERE OwnerID IN (SELECT OwnerID FROM Buildings)  
AND OwnerID IN (SELECT OwnerID FROM Hostels);
SELECT COUNT(*)  
FROM Properties  
WHERE RideFee < (SELECT AVG(RideFee) FROM Properties);
SELECT FirstName, LastName, PhoneNumber, Email 
FROM Owners 
WHERE OwnerID IN ( 
    SELECT DISTINCT OwnerID FROM Buildings 
    WHERE RentFee > (SELECT AVG(RentFee) FROM Buildings) 
); 
SELECT BuildingName  
FROM Buildings  
WHERE OwnerID = (SELECT OwnerID FROM Buildings WHERE BuildingName = "Boy's block");
SELECT FirstName, LastName  
FROM Owners  
WHERE OwnerID IN (SELECT OwnerID FROM Hostels WHERE OperatedBy = 'Campus Admin');
SELECT GenderPreference, BuildingName, RentFee, UtilitiesFee
FROM Buildings
WHERE UtilitiesFee = (
    SELECT MAX(UtilitiesFee)
    FROM Buildings
    WHERE GenderPreference = Buildings.GenderPreference
);
SELECT HostelName  
FROM Hostels  
WHERE OwnerID IN (SELECT OwnerID FROM Properties WHERE DistanceFromUniversity > 2.0);
SELECT FirstName, LastName  
FROM Owners  
WHERE OwnerID = (SELECT OwnerID FROM Buildings WHERE RentFee = (SELECT MIN(RentFee) FROM Buildings));
SELECT OwnerID, COUNT(*) AS BuildingCount  
FROM Buildings  
GROUP BY OwnerID;
SELECT BuildingName  
FROM Buildings  
WHERE OwnerID IN (SELECT OwnerID FROM Owners WHERE Email LIKE '%.com');
SELECT BuildingName  
FROM Buildings  
WHERE UtilitiesFee > (SELECT 2 * MIN(UtilitiesFee) FROM Buildings);
SELECT * FROM Buildings;
SELECT * FROM Owners;
SELECT * FROM Properties WHERE DistanceFromUniversity <= 2.0;
SELECT HostelName  
FROM Hostels  
WHERE OwnerID = 1031;
SELECT COUNT(*) AS TotalBuildings FROM Buildings;
SELECT AVG(UtilitiesFee) AS AverageUtilitiesFee FROM Buildings;
SET SQL_SAFE_UPDATES= 0;
UPDATE Hostels
 SET OperatedBy = 'Creative International';
 select *from Hostels;
 SELECT SUM(RentFee) AS TotalRent FROM Buildings;
 SELECT Address FROM Properties;

SELECT OwnerID, COUNT(*) AS PropertyCount  
FROM Buildings  
GROUP BY OwnerID  
ORDER BY PropertyCount DESC  
LIMIT 1; 
  SELECT Buildings.BuildingName, Owners.FirstName, Owners.LastName  
FROM Buildings  
JOIN Owners ON Buildings.OwnerID = Owners.OwnerID;
SELECT Buildings.BuildingName, Properties.Address  
FROM Buildings  
JOIN Properties ON Buildings.BuildingID = Properties.AreaID;
SELECT Buildings.BuildingName, Owners.FirstName, Owners.LastName
FROM Buildings
JOIN Owners ON Buildings.OwnerID = Owners.OwnerID
WHERE Buildings.RentFee BETWEEN 5000 AND 10000;
SELECT Hostels.HostelName, Buildings.BuildingName  
FROM Hostels  
JOIN Buildings ON Hostels.OwnerID = Buildings.OwnerID;











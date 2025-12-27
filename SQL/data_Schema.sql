CREATE DATABASE luxury_housing;
USE luxury_housing;

CREATE TABLE luxury_housing_bangalore (
    Property_ID VARCHAR(30) PRIMARY KEY,
    Micro_Market VARCHAR(100),
    Project_Name VARCHAR(150),
    Developer_Name VARCHAR(150),
    Unit_Size_Sqft FLOAT,
    Configuration VARCHAR(50),
    Ticket_Price_Cr DECIMAL(10,2),
    Transaction_Type VARCHAR(50),
    Buyer_Type VARCHAR(50),
    Purchase_Quarter VARCHAR(20),
    Connectivity_Score float,
    Amenity_Score FLOAT,
    Possession_Status VARCHAR(50),
    Sales_Channel VARCHAR(100),
    NRI_Buyer BOOLEAN,
    Locality_Infra_Score FLOAT,
    Avg_Traffic_Time_Min INT,
    Buyer_Comments TEXT,
    Price_per_Sqft FLOAT,
    Quarter_Number INT,
    Booking_Flag boolean
);

USE luxury_housing;
SELECT *
FROM luxury_housing_bangalore
LIMIT 10;

SELECT 
    Possession_Status,
    COUNT(*) AS total_properties
FROM luxury_housing_bangalore
GROUP BY Possession_Status;

SELECT 
    Developer_Name,
    AVG(Ticket_Price_Cr) AS avg_ticket_price_cr
FROM luxury_housing_bangalore
WHERE Ticket_Price_Cr IS NOT NULL
GROUP BY Developer_Name
ORDER BY avg_ticket_price_cr DESC;

SELECT 
    Developer_Name,
    COUNT(*) AS total_properties
FROM luxury_housing_bangalore
GROUP BY Developer_Name
ORDER BY total_properties DESC;




    







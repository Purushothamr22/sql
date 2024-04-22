CREATE DATABASE OnlineStore;

USE OnlineStore;

CREATE TABLE Appliances (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Model VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    PowerConsumption DECIMAL(6,2),
    WarrantyPeriod VARCHAR(50)
);

INSERT INTO Appliances VALUES
    (1, 'Refrigerator', 'Brand A', 'Model X', 'Description of refrigerator', 'Kitchen Appliances', 999.99, 50, 200.5, '2 years'),
    (2, 'Washing Machine', 'Brand B', 'Model Y', 'Description of washing machine', 'Laundry Appliances', 699.99, 30, 300.75, '3 years'),
    (3, 'Microwave Oven', 'Brand C', 'Model Z', 'Description of microwave oven', 'Kitchen Appliances', 149.99, 80, 120.25, '1 year'),
    (4, 'Dishwasher', 'Brand D', 'Model W', 'Description of dishwasher', 'Kitchen Appliances', 399.99, 40, 150.0, '2 years'),
    (5, 'Vacuum Cleaner', 'Brand E', 'Model V', 'Description of vacuum cleaner', 'Home Cleaning Appliances', 199.99, 60, 80.5, '1 year');

SET SQL_SAFE_UPDATES = 0;
UPDATE Appliances SET Price = 899.99 WHERE ProductID = 1;
UPDATE Appliances SET StockQuantity = 40 WHERE ProductID = 2;
UPDATE Appliances SET WarrantyPeriod = '5 years' WHERE ProductID = 3;
UPDATE Appliances SET Price = 349.99 WHERE ProductID = 4;
UPDATE Appliances SET PowerConsumption = 100.0 WHERE ProductID = 5;
USE OnlineStore;

ALTER TABLE Appliances MODIFY COLUMN Price DECIMAL(12,2);
ALTER TABLE Appliances MODIFY COLUMN StockQuantity INT;
ALTER TABLE Appliances MODIFY COLUMN PowerConsumption DECIMAL(8,2);
ALTER TABLE Appliances MODIFY COLUMN WarrantyPeriod VARCHAR(100);
ALTER TABLE Appliances ADD COLUMN EnergyRating VARCHAR(50);

CREATE TABLE Furniture (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Material VARCHAR(100),
    Color VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    Weight DECIMAL(6,2)
);

INSERT INTO Furniture VALUES
    (1, 'Sofa', 'Brand A', 'Leather', 'Brown', 'Description of sofa', 'Living Room Furniture', 799.99, 20, 150.0),
    (2, 'Dining Table', 'Brand B', 'Wood', 'Oak', 'Description of dining table', 'Dining Room Furniture', 499.99, 10, 80.5),
    (3, 'Bed', 'Brand C', 'Metal', 'Black', 'Description of bed', 'Bedroom Furniture', 899.99, 15, 200.0),
    (4, 'Wardrobe', 'Brand D', 'Particle Board', 'White', 'Description of wardrobe', 'Bedroom Furniture', 599.99, 25, 180.0),
    (5, 'Office Chair', 'Brand E', 'Plastic', 'Black', 'Description of office chair', 'Office Furniture', 129.99, 30, 25.0);

SET SQL_SAFE_UPDATES = 0;
UPDATE Furniture SET Price = 699.99 WHERE ProductID = 1;
UPDATE Furniture SET StockQuantity = 15 WHERE ProductID = 2;
UPDATE Furniture SET Color = 'Cherry' WHERE ProductID = 3;
UPDATE Furniture SET Price = 499.99 WHERE ProductID = 4;
UPDATE Furniture SET Weight = 30.0 WHERE ProductID = 5;

ALTER TABLE Furniture MODIFY COLUMN Price DECIMAL(12,2);
ALTER TABLE Furniture MODIFY COLUMN StockQuantity INT;
ALTER TABLE Furniture MODIFY COLUMN Weight DECIMAL(8,2);
ALTER TABLE Furniture MODIFY COLUMN Material VARCHAR(150);
ALTER TABLE Furniture ADD COLUMN Dimensions VARCHAR(100);
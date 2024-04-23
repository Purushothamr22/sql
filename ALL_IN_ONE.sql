CREATE DATABASE ALL_IN_ONE ;

USE ALL_IN_ONE;

CREATE TABLE Electronics (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Model VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price INT,
    StockQuantity INT,
    AverageRating INT,
    Discount INT
);

INSERT INTO Electronics VALUES(1, 'Smartphone', 'Brand A', 'Model X', 'Description of smartphone', 'Mobile Phones', 599.99, 100, 4.5, 0.1),
    (2, 'Laptop', 'Brand B', 'Model Y', 'Description of laptop', 'Laptops', 999.99, 50, 4.8, 0.05),
    (3, 'Smartwatch', 'Brand C', 'Model Z', 'Description of smartwatch', 'Wearable Technology', 199.99, 80, 4.3, 0.0),
    (4, 'Wireless Earbuds', 'Brand D', 'Model W', 'Description of wireless earbuds', 'Audio', 79.99, 120, 4.6, 0.15),
    (5, 'Tablet', 'Brand E', 'Model V', 'Description of tablet', 'Tablets', 299.99, 30, 4.2, 0.2),
    (6, 'Digital Camera', 'Brand F', 'Model U', 'Description of digital camera', 'Cameras', 449.99, 25, 4.7, 0.1),
    (7, 'Gaming Console', 'Brand G', 'Model T', 'Description of gaming console', 'Gaming', 399.99, 40, 4.9, 0.0),
    (8, 'Smart Speaker', 'Brand H', 'Model S', 'Description of smart speaker', 'Smart Home', 149.99, 60, 4.4, 0.05),
    (9, 'External Hard Drive', 'Brand I', 'Model R', 'Description of external hard drive', 'Storage', 129.99, 70, 4.3, 0.1),
    (10, 'Wireless Router', 'Brand J', 'Model Q', 'Description of wireless router', 'Networking', 89.99, 90, 4.6, 0.0);

SET SQL_SAFE_UPDATES = 0;
UPDATE Electronics SET Price = 549.99 WHERE ProductID = 1;
UPDATE Electronics SET Discount = 0.07 WHERE ProductID = 2;
UPDATE Electronics SET StockQuantity = 85 WHERE ProductID = 3;
UPDATE Electronics SET AverageRating = 4.7 WHERE ProductID = 4;
UPDATE Electronics SET Price = 249.99, Discount = 0.25 WHERE ProductID = 5;
UPDATE Electronics SET AverageRating = 4.8 WHERE ProductID = 6;
UPDATE Electronics SET Price = 379.99, StockQuantity = 35 WHERE ProductID = 7;
UPDATE Electronics SET Discount = 0.1 WHERE ProductID = 8;
UPDATE Electronics SET Price = 109.99, StockQuantity = 65 WHERE ProductID = 9;
ALTER TABLE Electronics ADD Email varchar(255);
ALTER TABLE Electronics RENAME COLUMN Price TO AMOUNT;
ALTER TABLE  Electronics DROP COLUMN Discount;
ALTER TABLE Electronics MODIFY AMOUNT DOUBLE; 
ALTER TABLE Electronics MODIFY Brand VARCHAR(150); 

CREATE TABLE Clothing (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Size VARCHAR(50),
    Color VARCHAR(50),
    Material VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price INT,
    StockQuantity INT
);

INSERT INTO Clothing VALUES(1, 'Men\'s T-Shirt', 'Brand A', 'M', 'Black', 'Cotton', 'Description of men\'s t-shirt', 'T-Shirts', 19.99, 50),
    (2, 'Women\'s Dress', 'Brand B', 'L', 'Red', 'Polyester', 'Description of women\'s dress', 'Dresses', 39.99, 30),
    (3, 'Men\'s Jeans', 'Brand C', '32W x 34L', 'Blue', 'Denim', 'Description of men\'s jeans', 'Jeans', 49.99, 40),
    (4, 'Women\'s Blouse', 'Brand D', 'S', 'White', 'Silk', 'Description of women\'s blouse', 'Blouses', 29.99, 60),
    (5, 'Men\'s Polo Shirt', 'Brand E', 'XL', 'Green', 'Cotton', 'Description of men\'s polo shirt', 'Polo Shirts', 24.99, 70),
    (6, 'Women\'s Skirt', 'Brand F', 'M', 'Pink', 'Cotton', 'Description of women\'s skirt', 'Skirts', 34.99, 45),
    (7, 'Men\'s Jacket', 'Brand G', 'L', 'Black', 'Leather', 'Description of men\'s jacket', 'Jackets', 79.99, 25),
    (8, 'Women\'s Sweater', 'Brand H', 'S', 'Gray', 'Wool', 'Description of women\'s sweater', 'Sweaters', 59.99, 55),
    (9, 'Men\'s Shorts', 'Brand I', 'M', 'Blue', 'Polyester', 'Description of men\'s shorts', 'Shorts', 29.99, 65),
    (10, 'Women\'s Leggings', 'Brand J', 'L', 'Black', 'Spandex', 'Description of women\'s leggings', 'Leggings', 19.99, 80);

UPDATE Clothing SET Price = 24.99 WHERE ProductID = 1;
UPDATE Clothing SET StockQuantity = 35 WHERE ProductID = 2;
UPDATE Clothing SET Description = 'New description for men\'s jeans' WHERE ProductID = 3;
UPDATE Clothing SET Price = 34.99,StockQuantity = 50 WHERE ProductID = 4;
UPDATE Clothing SET Brand = 'Brand F' WHERE ProductID = 5;
UPDATE Clothing SET Size = 'S',Color = 'Red' WHERE ProductID = 6;
UPDATE Clothing SET Price = 89.99 WHERE ProductID = 7;
UPDATE Clothing SET Description = 'Updated description for women\'s sweater' WHERE ProductID = 8;
UPDATE Clothing SET StockQuantity = 70 WHERE ProductID = 9;
UPDATE Clothing  SET Price = 24.99, Description = 'New description for women\'s leggings' WHERE ProductID = 10;
ALTER TABLE Clothing ADD COLUMN DISCOUNT INT NOT NULL;
ALTER TABLE Clothing RENAME COLUMN Description TO DETAIL;
ALTER TABLE  Clothing DROP COLUMN Size;
ALTER TABLE Clothing MODIFY DETAIL VARCHAR(50); 
ALTER TABLE Clothing MODIFY Color VARCHAR(200); 

CREATE TABLE Books (
    ProductID INT,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Publisher VARCHAR(100),
    PublicationDate DATE,
    Genre VARCHAR(100),
    Language VARCHAR(50),
    Format VARCHAR(50),
    Pages INT,
    Price INT
);

INSERT INTO Books VALUES(1, 'To Kill a Mockingbird', 'Harper Lee', 'HarperCollins Publishers', '1960-07-11', 'Fiction', 'English', 'Paperback', 336, 12.99),
    (2, '1984', 'George Orwell', 'Signet Classic', '1949-06-08', 'Fiction', 'English', 'Paperback', 328, 9.99),
    (3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '1925-04-10', 'Fiction', 'English', 'Hardcover', 180, 14.99),
    (4, 'Pride and Prejudice', 'Jane Austen', 'Penguin Classics', '1813-01-28', 'Fiction', 'English', 'Paperback', 279, 11.99),
    (5, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Scholastic', '1997-06-26', 'Fantasy', 'English', 'Hardcover', 320, 19.99),
    (6, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951-07-16', 'Fiction', 'English', 'Paperback', 288, 10.99),
    (7, 'The Hobbit', 'J.R.R. Tolkien', 'Houghton Mifflin Harcourt', '1937-09-21', 'Fantasy', 'English', 'Paperback', 322, 13.99),
    (8, 'To Kill a Mockingbird', 'Harper Lee', 'HarperCollins Publishers', '1960-07-11', 'Fiction', 'English', 'Paperback', 336, 12.99),
    (9, 'The Da Vinci Code', 'Dan Brown', 'Anchor', '2003-03-18', 'Mystery', 'English', 'Paperback', 597, 16.99),
    (10, 'Lord of the Flies', 'William Golding', 'Penguin Books', '1954-09-17', 'Fiction', 'English', 'Paperback', 224, 9.99);
UPDATE Books SET Publisher = 'Random House' WHERE ProductID = 5;
UPDATE Books SET Price = 14.99 WHERE Title = 'To Kill a Mockingbird';
UPDATE Books SET Language = 'Spanish' WHERE Publisher = 'Penguin Classics';
UPDATE Books SET Price = Price * 1.1 WHERE PublicationDate < '1950-01-01';
UPDATE Books SET Format = 'Hardcover' WHERE Genre = 'Fantasy';
UPDATE Books SET Author = 'J.R.R. Tolkien' WHERE Title = 'The Hobbit';
UPDATE Books SET PublicationDate = '1952-04-05' WHERE Author = 'J.D. Salinger';
UPDATE Books SET Genre = 'Science Fiction' WHERE Pages >= 300 AND Pages <= 400;
UPDATE Books SET Language = 'French' WHERE Price BETWEEN 10 AND 15;
UPDATE Books SET Price = Price * 1.2 WHERE Genre = 'Mystery';
ALTER TABLE Books ADD COLUMN BESTSELLER INT NOT NULL;
ALTER TABLE Books RENAME COLUMN Pages TO Sheet;
ALTER TABLE  Books DROP COLUMN PublicationDate;
ALTER TABLE Books MODIFY Sheet VARCHAR(50); 
ALTER TABLE Books MODIFY Genre VARCHAR(200); 


CREATE TABLE HomeKitchen (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Material VARCHAR(100),
    Dimensions VARCHAR(100),
    Color VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price INT,
    StockQuantity INT
);

INSERT INTO HomeKitchen VALUES(1, 'Kitchen Knife Set', 'XYZ Kitchenware', 'Stainless Steel', '12 x 2 x 1 inches', 'Silver', 'High-quality knife set with ergonomic handles.', 'Kitchenware', 49.99, 50),
    (2, 'Non-Stick Cooking Pan', 'ABC Cookware', 'Aluminum', '10-inch diameter', 'Black', 'Durable non-stick cooking pan suitable for various recipes.', 'Cookware', 29.99, 30),
    (3, 'Glass Food Storage Containers', 'FreshLock', 'Glass', '6.5 x 4.5 x 3 inches', 'Clear', 'Set of 5 airtight food storage containers with lids.', 'Kitchen Storage', 24.99, 100),
    (4, 'Stainless Steel Mixing Bowls', 'MixingMaster', 'Stainless Steel', '7.5 x 7.5 x 3.5 inches (large)', 'Silver', 'Set of 3 mixing bowls with non-slip bases.', 'Kitchenware', 19.99, 80),
    (5, 'Silicone Baking Mat', 'BakeItEasy', 'Silicone', '16.5 x 11.6 inches', 'Red', 'Reusable and non-stick silicone baking mat for easy baking.', 'Bakeware', 12.99, 150),
    (6, 'Electric Kettle', 'QuickBoil', 'Stainless Steel', '9 x 7 x 10 inches', 'Silver', 'Fast-boiling electric kettle with automatic shutoff feature.', 'Appliances', 34.99, 40),
    (7, 'Kitchen Towel Set', 'SoftTouch', 'Cotton', '16 x 26 inches', 'Assorted colors', 'Set of 6 absorbent kitchen towels.', 'Kitchen Linens', 14.99, 200),
    (8, 'Dish Rack', 'DryAway', 'Stainless Steel', '17.5 x 13 x 5 inches', 'Silver', 'Compact dish rack with utensil holder and drip tray.', 'Kitchen Organization', 27.99, 60),
    (9, 'Food Processor', 'ChopMaster', 'Plastic', '10 x 8 x 15 inches', 'White', 'Multi-functional food processor with various attachments.', 'Appliances', 89.99, 25),
    (10, 'Wine Glasses Set', 'VinoDelight', 'Glass', '9 x 3 x 3 inches', 'Clear', 'Set of 4 elegant wine glasses suitable for any occasion.', 'Drinkware', 19.99, 70);

UPDATE HomeKitchen SET Brand = 'KitchenPro' WHERE ProductID = 1;
UPDATE HomeKitchen SET Price = 39.99 WHERE ProductName = 'Non-Stick Cooking Pan';
UPDATE HomeKitchen SET Material = 'Bamboo' WHERE Category = 'Kitchenware';
UPDATE HomeKitchen SET StockQuantity = StockQuantity + 10 WHERE Color = 'Silver';
UPDATE HomeKitchen SET Description = 'Set of 3 durable mixing bowls with lids.' WHERE ProductID = 4;
UPDATE HomeKitchen SET Dimensions = '8 x 8 x 2 inches' WHERE Brand = 'BakeItEasy';
UPDATE HomeKitchen SET Category = 'Cutlery' WHERE Material = 'Stainless Steel';
UPDATE HomeKitchen SET Price = Price * 0.9 WHERE Category = 'Appliances';
UPDATE HomeKitchen SET Color = 'White' WHERE Price > 30 AND Price < 50;
UPDATE HomeKitchen SET StockQuantity = 20 WHERE ProductName = 'Glass Food Storage Containers';
ALTER TABLE HomeKitchen ADD COLUMN SHIPPINGWEIGHT INT UNIQUE;

CREATE TABLE SportsOutdoors (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Size VARCHAR(50),
    Color VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2)
);

INSERT INTO SportsOutdoors VALUES(1, 'Camping Tent', 'OutdoorMaster', '4 Person', 'Green', 'Spacious camping tent suitable for family outings.', 'Camping Equipment', 99.99, 20, 4.5),
    (2, 'Hiking Backpack', 'TrailBlazer', '30 Liters', 'Black', 'Lightweight and durable hiking backpack with multiple compartments.', 'Hiking Gear', 49.99, 50, 4.7),
    (3, 'Running Shoes', 'SpeedRunner', 'US 10', 'Blue', 'Comfortable running shoes with breathable mesh upper.', 'Running Gear', 79.99, 100, 4.8),
    (4, 'Fishing Rod', 'AnglerPro', '6 Feet', 'Red', 'High-quality fishing rod suitable for freshwater and saltwater fishing.', 'Fishing Equipment', 59.99, 30, 4.6),
    (5, 'Yoga Mat', 'ZenFitness', '72 x 24 inches', 'Purple', 'Non-slip yoga mat with cushioned surface for comfortable workouts.', 'Yoga Accessories', 29.99, 80, 4.9),
    (6, 'Cycling Helmet', 'RideSafe', 'Medium', 'Yellow', 'Safety-certified cycling helmet with adjustable straps.', 'Cycling Gear', 39.99, 60, 4.7),
    (7, 'Soccer Ball', 'GoalMaster', 'Size 5', 'White/Black', 'Official size and weight soccer ball suitable for matches and training.', 'Soccer Equipment', 19.99, 150, 4.5),
    (8, 'Golf Club Set', 'FairwayPro', 'Standard', 'Silver/Black', 'Complete set of golf clubs including driver, irons, and putter.', 'Golf Equipment', 299.99, 10, 4.8),
    (9, 'Swimming Goggles', 'AquaClear', 'One Size', 'Clear', 'Anti-fog swimming goggles with UV protection.', 'Swimming Gear', 14.99, 200, 4.6),
    (10, 'Camping Chair', 'CampComfort', 'One Size', 'Blue/Grey', 'Foldable camping chair with cup holder and carrying bag.', 'Camping Furniture', 24.99, 120, 4.7);

UPDATE SportsOutdoors SET Brand = 'OutdoorAdventures' WHERE ProductID = 1;
UPDATE SportsOutdoors SET Price = 54.99 WHERE ProductName = 'Hiking Backpack';
UPDATE SportsOutdoors SET Color = 'Black/Red' WHERE AverageRating > 4.7;
UPDATE SportsOutdoors SET StockQuantity = StockQuantity + 15 WHERE Size = 'Standard';
UPDATE SportsOutdoors SET Description = 'Professional-grade fishing rod suitable for various fishing techniques.' WHERE ProductID = 4;
UPDATE SportsOutdoors SET Category = 'Outdoor Recreation' WHERE Price > 50 AND Price < 100;
UPDATE SportsOutdoors SET Price = Price * 0.9 WHERE Color = 'Blue';
UPDATE SportsOutdoors SET Size = 'Large' WHERE Category = 'Cycling Gear';
UPDATE SportsOutdoors SET AverageRating = 4.9 WHERE ProductName = 'Running Shoes';
UPDATE SportsOutdoors SET StockQuantity = 25 WHERE ProductID = 7;
ALTER TABLE SportsOutdoors ADD COLUMN DiscountPercentage INT UNIQUE;

CREATE TABLE BeautyPersonalCare (
    ProductID INT UNIQUE,
    ProductName VARCHAR(255) NOT NULL,
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price INT,
    StockQuantity INT,
    AverageRating INT,
    Discount INT
);

INSERT INTO BeautyPersonalCare VALUES(1, 'Moisturizing Cream', 'GlowBeauty', 'Face Moisturizer', 'Hydrating facial cream with vitamin E for all skin types.', 'Skincare', 24.99, 50, 4.7, 0),
    (2, 'Anti-Aging Serum', 'YouthfulGlow', 'Serum', 'Anti-aging serum enriched with collagen and hyaluronic acid.', 'Anti-Aging', 39.99, 30, 4.8, 0),
    (3, 'Hair Shampoo', 'SilkyLocks', 'Shampoo', 'Nourishing shampoo for smooth and shiny hair.', 'Hair Care', 12.99, 100, 4.5, 0),
    (4, 'Body Lotion', 'SoftTouch', 'Body Lotion', 'Moisturizing body lotion with shea butter for soft and supple skin.', 'Body Care', 9.99, 80, 4.6, 0),
    (5, 'Lipstick', 'ColorPop', 'Lipstick', 'Long-lasting matte lipstick available in various shades.', 'Makeup', 14.99, 120, 4.7, 0),
    (6, 'Cleansing Wipes', 'FreshFace', 'Facial Wipes', 'Gentle cleansing wipes infused with cucumber extract.', 'Skincare', 7.99, 150, 4.5, 0),
    (7, 'Perfume', 'FragranceElegance', 'Eau de Parfum', 'Elegant fragrance with floral and woody notes.', 'Fragrance', 49.99, 40, 4.8, 0),
    (8, 'Eyeliner', 'DefineLine', 'Liquid Eyeliner', 'Waterproof liquid eyeliner for precise and long-lasting makeup.', 'Makeup', 9.99, 200, 4.6, 0),
    (9, 'Sunscreen Lotion', 'SunShield', 'Sunscreen', 'Broad-spectrum sunscreen with SPF 50 for sun protection.', 'Sun Care', 19.99, 60, 4.7, 0),
    (10, 'Nail Polish', 'NailPerfection', 'Nail Polish', 'Fast-drying nail polish available in vibrant colors.', 'Nail Care', 6.99, 180, 4.5, 0);

UPDATE BeautyPersonalCare SET Brand = 'GlowUpBeauty' WHERE ProductID = 1;
UPDATE BeautyPersonalCare SET Price = 29.99 WHERE ProductName = 'Anti-Aging Serum';
UPDATE BeautyPersonalCare SET StockQuantity = StockQuantity + 20 WHERE Category = 'Makeup';
UPDATE BeautyPersonalCare SET Description = 'Hydrating facial cream with vitamin E and SPF 30 for all-day sun protection.' WHERE ProductID = 1;
UPDATE BeautyPersonalCare SET Price = Price * 0.95 WHERE AverageRating > 4.6;
UPDATE BeautyPersonalCare SET StockQuantity = 70 WHERE ProductName = 'Perfume';
UPDATE BeautyPersonalCare SET Price = Price * 0.95 WHERE AverageRating > 4.6;
UPDATE BeautyPersonalCare SET Category = 'Skin Care' WHERE Brand = 'SunShield';
UPDATE BeautyPersonalCare SET Discount = 10 WHERE Price > 15 AND Price < 25;
ALTER TABLE BeautyPersonalCare ADD COLUMN ExpirationDate DATE NOT NULL;


CREATE TABLE Furniture (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Material VARCHAR(100),
    Dimensions VARCHAR(100),
    Color VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT
);

INSERT INTO Furniture VALUES(1, 'Sofa', 'ComfortLiving', 'Leather', '84"W x 36"D x 30"H', 'Brown', 'Modern leather sofa with reclining features.', 'Living Room Furniture', 899.99, 15),
    (2, 'Coffee Table', 'HomeElegance', 'Wood', '48"L x 24"W x 18"H', 'Espresso', 'Rectangular coffee table with storage shelf.', 'Living Room Furniture', 199.99, 25),
    (3, 'Bed Frame', 'DreamySleep', 'Metal', 'Queen Size', 'Black', 'Sturdy metal bed frame with headboard and footboard.', 'Bedroom Furniture', 349.99, 10),
    (4, 'Dining Table', 'GatherRound', 'Wood', '72"L x 36"W x 30"H', 'Oak', 'Rectangular dining table with farmhouse style.', 'Dining Room Furniture', 499.99, 8),
    (5, 'Bookshelf', 'BookWorm', 'Particle Board', '60"H x 36"W x 12"D', 'White', 'Tall bookshelf with multiple shelves for storage.', 'Home Office Furniture', 129.99, 20),
    (6, 'TV Stand', 'MediaMaven', 'Wood', '48"W x 20"D x 24"H', 'Walnut', 'Entertainment center with open shelves and cabinets.', 'Living Room Furniture', 299.99, 12),
    (7, 'Office Desk', 'WorkSmart', 'Laminate', '47"W x 23"D x 30"H', 'Gray', 'Compact desk suitable for home office or study area.', 'Home Office Furniture', 179.99, 18),
    (8, 'Armchair', 'CozyCorner', 'Fabric', '32"W x 34"D x 36"H', 'Beige', 'Comfortable armchair with padded cushions.', 'Living Room Furniture', 249.99, 10),
    (9, 'Kitchen Island', 'CuisineCrafter', 'Wood', '54"W x 30"D x 36"H', 'Black', 'Freestanding kitchen island with storage drawers and shelves.', 'Kitchen Furniture', 599.99, 6),
    (10, 'Bar Stool', 'HappyHour', 'Metal', 'Counter Height', 'Silver', 'Modern bar stool with swivel seat and adjustable height.', 'Kitchen Furniture', 79.99, 30);

CREATE TABLE ToolsHomeImprovement (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO ToolsHomeImprovement VALUES(1, 'Cordless Drill', 'PowerMaster', 'Drill', 'Powerful cordless drill with lithium-ion battery.', 'Power Tools', 99.99, 20, 4.5, 0.00),
    (2, 'Tool Set', 'ProCraft', 'Hand Tool Set', 'Comprehensive set of essential hand tools for home improvement projects.', 'Hand Tools', 149.99, 15, 4.7, 0.00),
    (3, 'Circular Saw', 'CutMaster', 'Saw', 'High-performance circular saw with laser guide for precision cutting.', 'Power Tools', 129.99, 10, 4.6, 0.00),
    (4, 'Paint Sprayer', 'SprayTech', 'Paint Sprayer', 'Professional-grade paint sprayer for efficient and even paint application.', 'Painting Supplies', 199.99, 8, 4.8, 0.00),
    (5, 'Hammer Drill', 'HammerForce', 'Hammer Drill', 'Versatile hammer drill with hammering and drilling modes.', 'Power Tools', 79.99, 12, 4.4, 0.00),
    (6, 'Screwdriver Set', 'ScrewMagnet', 'Screwdriver Set', 'Set of magnetic screwdrivers with various tip sizes for different screw types.', 'Hand Tools', 29.99, 25, 4.9, 0.00),
    (7, 'Angle Grinder', 'GrindMaster', 'Angle Grinder', 'Heavy-duty angle grinder for cutting and grinding metal, stone, and concrete.', 'Power Tools', 69.99, 18, 4.7, 0.00),
    (8, 'Toolbox', 'ToolGuard', 'Toolbox', 'Durable toolbox with multiple compartments for organizing and storing tools.', 'Tool Storage', 39.99, 30, 4.5, 0.00),
    (9, 'Electric Screwdriver', 'AutoDrive', 'Electric Screwdriver', 'Compact electric screwdriver with automatic torque adjustment for precise screwing.', 'Power Tools', 49.99, 15, 4.6, 0.00),
    (10, 'Measuring Tape', 'MeasureMate', 'Measuring Tape', 'High-quality measuring tape with easy-to-read markings for accurate measurements.', 'Measuring & Layout Tools', 9.99, 40, 4.8, 0.00);

CREATE TABLE HealthHousehold (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO HealthHousehold VALUES(1, 'Air Purifier', 'CleanAir', 'Air Purifier', 'HEPA filter air purifier for removing allergens and pollutants from the air.', 'Air Quality', 199.99, 15, 4.6, 0.00),
    (2, 'Water Filter Pitcher', 'PureH2O', 'Water Filter Pitcher', 'BPA-free water filter pitcher for clean and fresh-tasting water.', 'Water Filtration', 29.99, 20, 4.5, 0.00),
    (3, 'Electric Toothbrush', 'DentaClean', 'Electric Toothbrush', 'Rotating electric toothbrush for thorough cleaning and plaque removal.', 'Oral Care', 49.99, 25, 4.7, 0.00),
    (4, 'First Aid Kit', 'SafeGuard', 'First Aid Kit', 'Comprehensive first aid kit with essential supplies for emergencies and minor injuries.', 'First Aid', 39.99, 30, 4.8, 0.00),
    (5, 'Humidifier', 'HumidFlow', 'Humidifier', 'Ultrasonic cool mist humidifier for maintaining optimal humidity levels in the room.', 'Air Quality', 49.99, 15, 4.5, 0.00),
    (6, 'Digital Thermometer', 'TempGuard', 'Digital Thermometer', 'Fast and accurate digital thermometer for measuring body temperature.', 'Health Monitors', 19.99, 40, 4.6, 0.00),
    (7, 'Blood Pressure Monitor', 'HeartBeat', 'Blood Pressure Monitor', 'Automatic blood pressure monitor with cuff for convenient at-home monitoring.', 'Health Monitors', 29.99, 25, 4.7, 0.00),
    (8, 'Dish Soap', 'CleanWash', 'Dish Soap', 'Eco-friendly dish soap for effective cleaning of dishes and utensils.', 'Cleaning Supplies', 9.99, 50, 4.5, 0.00),
    (9, 'Laundry Detergent', 'FreshClean', 'Laundry Detergent', 'High-efficiency laundry detergent for powerful stain removal and fresh-smelling clothes.', 'Cleaning Supplies', 14.99, 40, 4.6, 0.00),
    (10, 'Hand Sanitizer', 'SafeHands', 'Hand Sanitizer', 'Alcohol-based hand sanitizer gel for killing germs and bacteria without water.', 'Personal Care', 5.99, 60, 4.8, 0.00);

CREATE TABLE Automotive (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Model VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO Automotive VALUES(1, 'Car Battery', 'PowerDrive', 'PD-500', '12-volt car battery with high cranking power and long-lasting performance.', 'Car Parts', 149.99, 20, 4.7, 0.00),
    (2, 'Engine Oil', 'MaxLube', 'Synthetic Blend', '5W-30 synthetic blend engine oil for optimal lubrication and engine protection.', 'Car Care', 29.99, 30, 4.6, 0.00),
    (3, 'Car Wash Soap', 'CleanRide', 'Foaming Wash', 'Foaming car wash soap for gentle and effective cleaning without stripping wax.', 'Car Care', 19.99, 40, 4.8, 0.00),
    (4, 'Tire Pressure Gauge', 'AirCheck', 'Analog', 'Analog tire pressure gauge with easy-to-read dial for accurate pressure measurement.', 'Tire Accessories', 9.99, 50, 4.5, 0.00),
    (5, 'LED Headlights', 'BrightDrive', 'BDL-2000', 'High-intensity LED headlights for improved visibility and safety during night driving.', 'Exterior Accessories', 99.99, 15, 4.9, 0.00),
    (6, 'Car Floor Mats', 'AllSeason', 'Heavy Duty', 'Heavy-duty rubber car floor mats for all-weather protection and easy cleaning.', 'Interior Accessories', 39.99, 25, 4.7, 0.00),
    (7, 'Car Seat Covers', 'ComfortDrive', 'Leatherette', 'Leatherette car seat covers for a stylish and comfortable interior.', 'Interior Accessories', 69.99, 20, 4.8, 0.00),
    (8, 'Windshield Wipers', 'ClearView', 'Premium Blades', 'Premium windshield wiper blades for streak-free and quiet operation.', 'Exterior Accessories', 24.99, 35, 4.6, 0.00),
    (9, 'Car Air Freshener', 'FreshScent', 'Vent Clip', 'Vent clip car air freshener with long-lasting fragrance for a pleasant driving experience.', 'Interior Accessories', 7.99, 60, 4.5, 0.00),
    (10, 'Car Wash Mitt', 'SoftTouch', 'Microfiber', 'Microfiber car wash mitt for gentle and scratch-free cleaning of car surfaces.', 'Car Care', 12.99, 45, 4.7, 0.00);

CREATE TABLE Baby (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    AgeRange VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO Baby (ProductID, ProductName, Brand, AgeRange, Description, Category, Price, StockQuantity, AverageRating, Discount)
VALUES
    (1, 'Baby Stroller', 'MommyCare', '0-3 years', 'Lightweight and compact stroller with adjustable canopy and five-point harness for safety.', 'Strollers', 129.99, 15, 4.8, 0.00),
    (2, 'Baby Diapers', 'HappyBums', 'Newborn', 'Soft and breathable diapers with wetness indicator for newborns up to 10 lbs.', 'Diapers', 39.99, 50, 4.7, 0.00),
    (3, 'Baby Bottle Set', 'TinyTots', '0-12 months', 'Set of BPA-free baby bottles with anti-colic design and silicone nipples for easy feeding.', 'Feeding Essentials', 24.99, 40, 4.6, 0.00),
    (4, 'Baby Bath Tub', 'SplashTime', '0-18 months', 'Spacious baby bath tub with built-in thermometer and non-slip design for safe bathing.', 'Bath & Potty', 34.99, 25, 4.7, 0.00),
    (5, 'Baby Play Gym', 'PlayfulBabies', '0-12 months', 'Interactive baby play gym with hanging toys and soft mat for sensory development.', 'Play Mats & Gyms', 59.99, 20, 4.6, 0.00),
    (6, 'Baby Bibs', 'MessFree', '0-24 months', 'Waterproof and stain-resistant baby bibs with adjustable snap closure for easy cleanup.', 'Feeding Essentials', 12.99, 60, 4.5, 0.00),
    (7, 'Baby High Chair', 'EatSmart', '6-36 months', 'Foldable baby high chair with removable tray and adjustable height for growing babies.', 'High Chairs & Boosters', 79.99, 15, 4.8, 0.00),
    (8, 'Baby Swaddle Blankets', 'SnugWrap', '0-3 months', 'Set of soft and breathable swaddle blankets for snugly wrapping newborns for better sleep.', 'Bedding & Nursery', 19.99, 35, 4.7, 0.00);

CREATE TABLE OfficeProducts (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO OfficeProducts VALUES(1, 'Desk Organizer', 'OfficeMaster', 'Multi-compartment desk organizer with drawers for storing office supplies like pens, paper clips, and sticky notes.', 'Desk Accessories', 19.99, 30, 4.7, 0.00),
    (2, 'Wireless Keyboard and Mouse Combo', 'TechZone', 'Sleek and ergonomic wireless keyboard and mouse combo with long battery life and plug-and-play setup.', 'Computer Accessories', 39.99, 50, 4.8, 0.00),
    (3, 'Document Scanner', 'ScanPro', 'High-speed document scanner with automatic document feeder and duplex scanning capability for efficient digitization of documents.', 'Scanners', 199.99, 15, 4.6, 0.00),
    (4, 'Laminating Machine', 'LaminateX', 'Compact laminating machine for preserving and protecting documents, photos, and IDs.', 'Laminators', 59.99, 20, 4.5, 0.00),
    (5, 'Whiteboard', 'WriteOn', 'Magnetic dry-erase whiteboard with aluminum frame and marker tray, ideal for presentations and brainstorming sessions.', 'Presentation Supplies', 49.99, 25, 4.7, 0.00),
    (6, 'Desk Lamp', 'Illuminate', 'Adjustable LED desk lamp with multiple brightness levels and USB charging port for convenient lighting.', 'Desk Lamps', 29.99, 40, 4.8, 0.00),
    (7, 'Printer Paper', 'PaperPlus', 'High-quality printer paper suitable for laser and inkjet printers, ideal for everyday printing tasks.', 'Paper & Printable Media', 9.99, 100, 4.6, 0.00),
    (8, 'Desk Chair', 'ErgoComfort', 'Ergonomic desk chair with lumbar support and adjustable height for comfortable seating during long work hours.', 'Office Furniture', 149.99, 10, 4.9, 0.00),
    (9, 'File Cabinet', 'FileMaster', 'Lockable file cabinet with multiple drawers for organizing and securing important documents and files.', 'File Cabinets', 129.99, 10, 4.7, 0.00),
    (10, 'Shredder', 'ShredZone', 'Cross-cut paper shredder with high-security level and auto-reverse function to prevent paper jams.', 'Shredders', 79.99, 20, 4.8, 0.00);

CREATE TABLE PetSupplies (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO PetSupplies VALUES(1, 'Dog Food - Chicken Flavor', 'Paws & Claws', 'Dry Dog Food', 'Premium chicken-flavored dry dog food formulated with essential nutrients for adult dogs.', 'Dog Food', 29.99, 50, 4.7, 0.00),
    (2, 'Cat Litter - Unscented', 'Purrfect Paws', 'Clumping Cat Litter', 'Unscented clumping cat litter made from natural clay for superior odor control and easy cleanup.', 'Cat Litter', 14.99, 100, 4.8, 0.00),
    (3, 'Pet Bed - Plush Orthopedic', 'Cozy Comfort', 'Dog Bed', 'Luxurious plush orthopedic pet bed with memory foam for maximum comfort and joint support.', 'Dog Beds', 39.99, 30, 4.6, 0.00),
    (4, 'Cat Toy - Interactive Feather Wand', 'Whisker Wonders', 'Interactive Toy', 'Interactive feather wand toy for cats to stimulate exercise and play, promoting physical and mental health.', 'Cat Toys', 9.99, 80, 4.9, 0.00),
    (5, 'Dog Collar - Adjustable Nylon', 'Ruff & Tuff', 'Dog Collar', 'Durable and adjustable nylon dog collar with quick-release buckle for secure and comfortable fit.', 'Dog Collars', 12.99, 60, 4.7, 0.00),
    (6, 'Pet Carrier - Soft-Sided', 'TravelTails', 'Pet Carrier', 'Soft-sided pet carrier with mesh panels for ventilation and padded shoulder strap for comfortable travel.', 'Pet Carriers', 34.99, 20, 4.8, 0.00),
    (7, 'Fish Tank - Glass Aquarium', 'Aquatic World', 'Fish Tank', 'Glass aquarium fish tank with LED lighting and filtration system, suitable for freshwater and saltwater fish.', 'Fish Tanks', 79.99, 10, 4.6, 0.00),
    (8, 'Bird Cage - Wrought Iron', 'Feathered Friends', 'Bird Cage', 'Wrought iron bird cage with removable tray and perch, ideal for small to medium-sized birds.', 'Bird Cages', 49.99, 15, 4.7, 0.00),
    (9, 'Reptile Heat Lamp - Ceramic', 'Reptile Haven', 'Heat Lamp', 'Ceramic heat lamp for reptiles to provide necessary warmth and regulate temperature in terrariums and vivariums.', 'Reptile Supplies', 19.99, 25, 4.8, 0.00),
    (10, 'Small Animal Harness - Adjustable', 'Furry Friends', 'Small Animal Harness', 'Adjustable harness for small animals like rabbits and ferrets, made from soft and durable materials for comfortable wear.', 'Small Animal Supplies', 8.99, 50, 4.7, 0.00);

CREATE TABLE MoviesTV (
    ProductID INT,
    Title VARCHAR(255),
    Director VARCHAR(100),
    Actors VARCHAR(255),
    Genre VARCHAR(100),
    Language VARCHAR(50),
    Format VARCHAR(50),
    ReleaseDate DATE,
    Runtime INT,
    Price DECIMAL(10,2)
);

INSERT INTO MoviesTV VALUES(1, 'The Shawshank Redemption', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton', 'Drama', 'English', 'DVD', '1994-09-23', 142, 12.99),
    (2, 'The Godfather', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 'Crime, Drama', 'English', 'Blu-ray', '1972-03-24', 175, 14.99),
    (3, 'The Dark Knight', 'Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'Action, Crime, Drama', 'English', 'Digital', '2008-07-18', 152, 9.99),
    (4, 'Pulp Fiction', 'Quentin Tarantino', 'John Travolta, Uma Thurman, Samuel L. Jackson', 'Crime, Drama', 'English', 'DVD', '1994-10-14', 154, 11.99),
    (5, 'Forrest Gump', 'Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise', 'Drama, Romance', 'English', 'Blu-ray', '1994-07-06', 142, 13.99),
    (6, 'The Matrix', 'The Wachowskis', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 'Action, Sci-Fi', 'English', 'Digital', '1999-03-31', 136, 10.99),
    (7, 'Schindler\'s List', 'Steven Spielberg', 'Liam Neeson, Ben Kingsley, Ralph Fiennes', 'Biography, Drama, History', 'English', 'DVD', '1993-12-15', 195, 15.99),
    (8, 'Inception', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page', 'Action, Adventure, Sci-Fi', 'English', 'Blu-ray', '2010-07-16', 148, 12.99),
    (9, 'Fight Club', 'David Fincher', 'Brad Pitt, Edward Norton, Helena Bonham Carter', 'Drama', 'English', 'DVD', '1999-10-15', 139, 11.99),
    (10, 'The Lord of the Rings: The Return of the King', 'Peter Jackson', 'Elijah Wood, Viggo Mortensen, Ian McKellen', 'Adventure, Drama, Fantasy', 'English', 'Blu-ray', '2003-12-17', 201, 14.99);


CREATE TABLE ElectronicsAccessories (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO ElectronicsAccessories VALUES(1, 'Wireless Mouse', 'Logitech', 'Advanced optical tracking technology', 'Computer Accessories', 19.99, 50, 4.5, 0.10),
    (2, 'USB-C to HDMI Adapter', 'Anker', 'Supports 4K resolution', 'Computer Accessories', 24.99, 30, 4.7, 0.15),
    (3, 'Portable Power Bank', 'RAVPower', '10000mAh capacity, fast charging', 'Portable Chargers', 29.99, 20, 4.6, 0.20),
    (4, 'Bluetooth Earbuds', 'Jabra', 'Water-resistant with noise-canceling', 'Audio Accessories', 79.99, 40, 4.3, 0.10),
    (5, 'Laptop Stand', 'Nulaxy', 'Adjustable height and angle', 'Computer Accessories', 34.99, 25, 4.8, 0.25),
    (6, 'Phone Mount for Car', 'Beam Electronics', 'Compatible with most smartphones', 'Car Accessories', 12.99, 60, 4.5, 0.10),
    (7, 'Wireless Charging Pad', 'Anker', 'Qi-certified with fast charging', 'Wireless Chargers', 29.99, 35, 4.6, 0.15),
    (8, 'Gaming Mouse Pad', 'Corsair', 'XL size with low friction surface', 'Gaming Accessories', 19.99, 50, 4.7, 0.10),
    (9, 'Smart Light Bulb', 'Philips Hue', 'Works with Alexa and Google Assistant', 'Smart Home Accessories', 29.99, 30, 4.5, 0.10),
    (10, 'USB Flash Drive', 'SanDisk', '128GB storage capacity', 'Computer Accessories', 24.99, 50, 4.6, 0.10);

CREATE TABLE MusicalInstruments (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO MusicalInstruments VALUES(1, 'Acoustic Guitar', 'Fender', 'Acoustic', 'Classic dreadnought design with solid spruce top', 'Guitars', 399.99, 15, 4.8, 0.05),
    (2, 'Electric Keyboard', 'Yamaha', 'Digital', '88-key weighted action with built-in speakers', 'Keyboards', 599.99, 10, 4.7, 0.10),
    (3, 'Drum Set', 'Ludwig', 'Acoustic', '5-piece drum set with cymbals and hardware', 'Drums & Percussion', 899.99, 8, 4.6, 0.05),
    (4, 'Violin', 'Stradivarius', 'Acoustic', 'Handcrafted violin with maple body and spruce top', 'String Instruments', 699.99, 12, 4.9, 0.05),
    (5, 'Digital Piano', 'Roland', 'Digital', '88-key weighted hammer action with Bluetooth connectivity', 'Pianos & Keyboards', 1299.99, 5, 4.8, 0.15),
    (6, 'Saxophone', 'Yamaha', 'Woodwind', 'Alto saxophone with gold lacquer finish', 'Wind & Woodwind Instruments', 1499.99, 7, 4.7, 0.10),
    (7, 'Electric Guitar', 'Gibson', 'Electric', 'Solid body electric guitar with dual humbuckers', 'Guitars', 1799.99, 6, 4.9, 0.05),
    (8, 'Trumpet', 'Bach', 'Brass', 'Professional Bb trumpet with silver-plated finish', 'Brass Instruments', 1299.99, 8, 4.8, 0.05),
    (9, 'Mandolin', 'Gretsch', 'Acoustic', 'A-style mandolin with spruce top and maple back', 'String Instruments', 499.99, 10, 4.6, 0.05),
    (10, 'Electronic Drum Kit', 'Roland', 'Electronic', 'Compact electronic drum kit with mesh heads', 'Electronic Drums', 799.99, 7, 4.7, 0.10);

CREATE TABLE HomeImprovement (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO HomeImprovement VALUES(1, 'Cordless Drill', 'DeWalt', 'Power Tools', 'Compact and lightweight cordless drill with lithium-ion battery', 'Tools', 99.99, 20, 4.7, 0.05),
    (2, 'Paint Sprayer', 'Graco', 'Sprayers', 'High-volume low-pressure paint sprayer for professional finishes', 'Painting Supplies', 249.99, 15, 4.8, 0.10),
    (3, 'Smart Thermostat', 'Nest', 'Thermostats', 'Programmable smart thermostat with Wi-Fi connectivity', 'Heating & Cooling', 199.99, 10, 4.6, 0.05),
    (4, 'LED Light Bulbs', 'Philips', 'Lighting', 'Energy-efficient LED light bulbs with warm white color', 'Lighting & Ceiling Fans', 12.99, 50, 4.9, 0.05),
    (5, 'Ceramic Tile', 'Daltile', 'Flooring', 'Porcelain ceramic tiles for floors and walls', 'Flooring & Tile', 4.99, 100, 4.7, 0.05),
    (6, 'Air Purifier', 'Honeywell', 'Air Purifiers', 'HEPA air purifier with allergen remover and Bluetooth control', 'Heating, Cooling & Air Quality', 179.99, 10, 4.8, 0.05),
    (7, 'Angle Grinder', 'Makita', 'Power Tools', 'Heavy-duty angle grinder with 7-inch grinding wheel', 'Tools', 129.99, 15, 4.6, 0.05),
    (8, 'Water Softener', 'Fleck', 'Water Softeners', 'Whole house water softener system with digital metered valve', 'Water Filtration & Softeners', 599.99, 5, 4.7, 0.05),
    (9, 'Ceiling Fan', 'Hunter', 'Ceiling Fans', '52-inch indoor ceiling fan with LED light kit', 'Lighting & Ceiling Fans', 149.99, 20, 4.9, 0.05),
    (10, 'Pressure Washer', 'Simpson', 'Pressure Washers', 'Gas-powered pressure washer with Honda engine and axial pump', 'Outdoor Power Equipment', 399.99, 8, 4.8, 0.05);


CREATE TABLE GroceryGourmetFood (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO GroceryGourmetFood (ProductID, ProductName, Brand, Description, Category, Price, StockQuantity, AverageRating, Discount)
VALUES
    (1, 'Organic Coffee Beans', 'Starbucks', 'Premium Arabica coffee beans roasted to perfection', 'Coffee & Tea', 15.99, 100, 4.8, 0.00),
    (2, 'Extra Virgin Olive Oil', 'Bertolli', 'Imported Italian olive oil, cold-pressed for superior flavor', 'Oils & Vinegars', 9.99, 150, 4.9, 0.00),
    (3, 'Artisanal Chocolate Bars', 'Lindt', 'Luxurious Swiss chocolate bars in assorted flavors', 'Candy & Chocolate', 3.99, 200, 4.7, 0.00),
    (4, 'Organic Whole Grain Bread', 'Dave\'s Killer Bread', 'Hearty bread made with whole grains and seeds', 'Breads & Bakery', 5.49, 150, 4.7, 0.00),
    (5, 'Premium Balsamic Vinegar', 'Colavita', 'Aged balsamic vinegar from Modena, Italy', 'Oils & Vinegars', 14.99, 90, 4.8, 0.00),
    (6, 'Organic Coconut Water', 'Vita Coco', 'Hydrating coconut water sourced from young coconuts', 'Water & Drink Mixes', 2.99, 200, 4.6, 0.00),
    (7, 'Natural Almond Butter', 'Justin\'s', 'Creamy almond butter made with only two ingredients: almonds and salt', 'Nut Butters', 7.99, 120, 4.9, 0.00);


CREATE TABLE ToysGames (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    AgeRange VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO ToysGames VALUES(1, 'LEGO Classic Creative Bricks', 'LEGO', '4-99 years', 'Build anything you can imagine with this classic set of LEGO bricks.', 'Building Toys', 29.99, 200, 4.7, 0.00),
    (2, 'Monopoly Classic Board Game', 'Hasbro', '8 years and up', 'The classic board game of real estate and wheeling and dealing.', 'Board Games', 19.99, 150, 4.8, 0.00),
    (3, 'Barbie Dreamhouse Dollhouse', 'Barbie', '3-7 years', 'A dreamhouse for Barbie and her friends, complete with furniture and accessories.', 'Dolls & Accessories', 179.99, 80, 4.6, 0.00),
    (4, 'Nerf N-Strike Elite Disruptor Blaster', 'Nerf', '8 years and up', 'Unleash rapid-fire action with this Nerf blaster.', 'Blaster Toys', 14.99, 100, 4.9, 0.00),
    (5, 'Crayola Inspiration Art Case', 'Crayola', '5-10 years', 'A portable art studio with crayons, markers, and colored pencils.', 'Arts & Crafts', 24.99, 120, 4.7, 0.00),
    (6, 'Hot Wheels 20 Car Gift Pack', 'Hot Wheels', '3-12 years', 'Twenty assorted Hot Wheels cars for high-speed adventures.', 'Die-Cast Vehicles', 21.99, 180, 4.8, 0.00),
    (7, 'Baby Alive Sweet Spoonfuls Baby Doll', 'Baby Alive', '3 years and up', 'Feed and change this adorable baby doll with her sweet spoonfuls.', 'Dolls & Accessories', 24.99, 90, 4.6, 0.00),
    (8, 'UNO Card Game', 'Mattel', '7 years and up', 'The classic card game of matching colors and numbers.', 'Card Games', 7.99, 250, 4.9, 0.00),
    (9, 'Fisher-Price Laugh & Learn Smart Stages Chair', 'Fisher-Price', '12 months - 3 years', 'A chair that sings songs, phrases, and teaches shapes and numbers.', 'Baby & Toddler Toys', 39.99, 100, 4.7, 0.00),
    (10, 'Melissa & Doug Wooden Building Blocks Set', 'Melissa & Doug', '3-8 years', 'A set of 100 wooden blocks for building towers, castles, and more.', 'Building Toys', 19.99, 150, 4.8, 0.00);

CREATE TABLE GardenOutdoor (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO GardenOutdoor VALUES(1, 'Garden Hose', 'XYZ Gardening', '50-foot heavy-duty garden hose for watering plants and cleaning.', 'Gardening Tools', 39.99, 100, 4.5, 0.00),
    (2, 'Outdoor Solar Lights', 'Sunshine Lighting', 'Set of 6 solar-powered LED lights for outdoor decoration and lighting.', 'Outdoor Lighting', 29.99, 150, 4.8, 0.00),
    (3, 'Patio Furniture Set', 'Outdoor Living', '5-piece patio furniture set including table, chairs, and umbrella.', 'Patio Furniture', 299.99, 50, 4.7, 0.00),
    (4, 'Grill Cover', 'GrillMaster', 'Weather-resistant cover for protecting your grill from the elements.', 'Grill Accessories', 24.99, 200, 4.6, 0.00),
    (5, 'Gardening Gloves', 'GreenThumb', 'Durable gloves with rubber grip for comfortable gardening.', 'Gardening Tools', 9.99, 300, 4.4, 0.00),
    (6, 'Outdoor Umbrella', 'ShadeMaster', 'Large outdoor umbrella for providing shade on sunny days.', 'Outdoor Furniture', 49.99, 120, 4.7, 0.00),
    (7, 'Garden Cart', 'YardMate', 'Heavy-duty garden cart for hauling soil, plants, and other materials.', 'Gardening Tools', 79.99, 80, 4.5, 0.00),
    (8, 'Bird Feeder', 'Feathered Friends', 'Attractive bird feeder for attracting birds to your garden.', 'Outdoor Decor', 14.99, 250, 4.8, 0.00),
    (9, 'Garden Trowel', 'DigMaster', 'Stainless steel garden trowel for planting and digging.', 'Gardening Tools', 7.99, 400, 4.6, 0.00),
    (10, 'Outdoor Rug', 'RugGuru', 'Decorative outdoor rug for adding style to your patio or deck.', 'Outdoor Decor', 39.99, 100, 4.7, 0.00);

CREATE TABLE IndustrialScientific (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO IndustrialScientific VALUES(1, 'Safety Glasses', 'SafetyTech', 'Protective eyewear for industrial and scientific use.', 'Safety Equipment', 19.99, 200, 4.5, 0.00),
    (2, 'Laboratory Scale', 'LabMaster', 'Precision scale for measuring chemicals and compounds in laboratories.', 'Laboratory Equipment', 299.99, 50, 4.8, 0.00),
    (3, 'Industrial Gloves', 'WorkGuard', 'Heavy-duty gloves for industrial work environments.', 'Safety Equipment', 14.99, 300, 4.7, 0.00),
    (4, 'Chemical Resistant Apron', 'ChemProtect', 'Durable apron for protection against chemical spills and splashes.', 'Safety Equipment', 29.99, 150, 4.6, 0.00),
    (5, 'Industrial Fan', 'AirMaster', 'High-powered fan for ventilation and cooling in industrial settings.', 'Ventilation Equipment', 199.99, 80, 4.5, 0.00),
    (6, 'Laboratory Microscope', 'MicroScope', 'Advanced microscope for scientific research and analysis in laboratories.', 'Laboratory Equipment', 999.99, 20, 4.9, 0.00),
    (7, 'Safety Helmet', 'HeadGuard', 'Protective helmet for use in construction and industrial environments.', 'Safety Equipment', 49.99, 100, 4.7, 0.00),
    (8, 'Chemical Spill Kit', 'SpillMaster', 'Emergency kit for containing and cleaning up chemical spills.', 'Safety Equipment', 79.99, 50, 4.6, 0.00),
    (9, 'Industrial Vacuum Cleaner', 'DustEater', 'Powerful vacuum cleaner for removing dust and debris in industrial settings.', 'Cleaning Equipment', 299.99, 30, 4.8, 0.00),
    (10, 'Laboratory Glassware Set', 'GlassLab', 'Essential glassware set for conducting experiments and analyses in laboratories.', 'Laboratory Equipment', 149.99, 100, 4.7, 0.00);

CREATE TABLE CellPhonesAccessories (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO CellPhonesAccessories VALUES(1, 'iPhone 13 Pro Max Case', 'Apple', 'Protective case for iPhone 13 Pro Max with shock-absorbent material.', 'Phone Accessories', 29.99, 200, 4.8, 0.00),
    (2, 'Samsung Galaxy Buds Pro', 'Samsung', 'Wireless earbuds with active noise cancellation and water resistance.', 'Headphones', 149.99, 150, 4.7, 0.00),
    (3, 'Anker PowerCore Portable Charger', 'Anker', 'Compact portable charger with fast-charging technology for smartphones.', 'Chargers', 39.99, 300, 4.6, 0.00),
    (4, 'PopSockets Phone Grip', 'PopSockets', 'Expandable phone grip and stand for better grip and hands-free use of smartphones.', 'Phone Accessories', 14.99, 500, 4.5, 0.00),
    (5, 'Samsung Galaxy Watch 4', 'Samsung', 'Smartwatch with fitness tracking, heart rate monitoring, and sleep analysis features.', 'Smartwatches', 249.99, 100, 4.8, 0.00),
    (6, 'iPhone Lightning Cable', 'Apple', 'Original Apple Lightning to USB cable for charging and syncing iPhones.', 'Cables', 19.99, 400, 4.7, 0.00),
    (7, 'Google Pixel Stand', 'Google', 'Wireless charging stand for Google Pixel smartphones with fast-charging support.', 'Chargers', 59.99, 200, 4.6, 0.00),
    (8, 'OtterBox Defender Series Case', 'OtterBox', 'Rugged case with multi-layer protection for various smartphone models.', 'Phone Accessories', 39.99, 300, 4.8, 0.00),
    (9, 'Apple AirPods Pro', 'Apple', 'Wireless earbuds with active noise cancellation and customizable fit.', 'Headphones', 199.99, 100, 4.9, 0.00),
    (10, 'Samsung 25W USB-C Fast Charger', 'Samsung', 'Fast charger with USB-C port for rapid charging of compatible devices.', 'Chargers', 29.99, 200, 4.7, 0.00);

CREATE TABLE VideoGames (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Platform VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO VideoGames VALUES(1, 'The Legend of Zelda: Breath of the Wild', 'Nintendo', 'Nintendo Switch', 'Open-world action-adventure game set in the fantasy world of Hyrule.', 'Nintendo Switch Games', 59.99, 150, 4.8, 0.00),
    (2, 'Red Dead Redemption 2', 'Rockstar Games', 'PlayStation 4', 'Action-adventure game set in the Wild West era, featuring a vast open world.', 'PS4 Games', 39.99, 200, 4.7, 0.00),
    (3, 'FIFA 22', 'EA Sports', 'Xbox Series X', 'Popular soccer simulation game featuring realistic gameplay and updated player rosters.', 'Xbox Series X Games', 59.99, 100, 4.6, 0.00),
    (4, 'The Last of Us Part II', 'Naughty Dog', 'PlayStation 5', 'Action-adventure game set in a post-apocalyptic world, focusing on narrative-driven gameplay.', 'PS5 Games', 69.99, 120, 4.9, 0.00),
    (5, 'Super Mario Odyssey', 'Nintendo', 'Nintendo Switch', '3D platformer game featuring Mario on a quest to rescue Princess Peach from Bowser.', 'Nintendo Switch Games', 49.99, 180, 4.8, 0.00),
    (6, 'Call of Duty: Warzone', 'Activision', 'PC', 'Free-to-play battle royale game set in the Call of Duty universe, featuring fast-paced action.', 'PC Games', 0.00, 500, 4.7, 0.00),
    (8, 'Minecraft', 'Mojang Studios', 'Nintendo Switch', 'Sandbox game where players can build and explore blocky worlds, crafting tools and structures.', 'Nintendo Switch Games', 29.99, 300, 4.9, 0.00),
    (9, 'Cyberpunk 2077', 'CD Projekt', 'PC', 'Open-world action-adventure game set in a dystopian future, featuring customizable characters and narrative-driven quests.', 'PC Games', 39.99, 200, 4.4, 0.00),
    (10, 'Marvel\'s Spider-Man: Miles Morales', 'Insomniac Games', 'PlayStation 5', 'Action-adventure game featuring Miles Morales as he takes on new challenges and adventures in New York City.', 'PS5 Games', 49.99, 180, 4.8, 0.00);

CREATE TABLE Software (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Platform VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO Software VALUES(1, 'Microsoft Office 365 Personal', 'Microsoft', 'Windows, macOS', 'Subscription-based productivity suite including Word, Excel, PowerPoint, Outlook, and more.', 'Productivity Software', 69.99, 100, 4.7, 0.00),
    (2, 'Adobe Creative Cloud', 'Adobe', 'Windows, macOS', 'Subscription-based software suite for graphic design, video editing, web development, and photography.', 'Creative Software', 52.99, 120, 4.8, 0.00),
    (3, 'Norton 360 Deluxe', 'Norton', 'Windows, macOS, Android, iOS', 'Comprehensive cybersecurity software offering antivirus protection, VPN, password manager, and more.', 'Security Software', 49.99, 150, 4.6, 0.00),
    (4, 'TurboTax Deluxe 2023', 'Intuit', 'Windows, macOS', 'Tax preparation software for filing federal and state taxes, including step-by-step guidance and error checking.', 'Tax Software', 59.99, 200, 4.5, 0.00),
    (5, 'Final Draft 12', 'Final Draft', 'Windows, macOS', 'Screenwriting software for writing and formatting scripts, used by professionals in the film and television industry.', 'Screenwriting Software', 249.99, 80, 4.9, 0.00),
    (6, 'QuickBooks Desktop Pro 2023', 'Intuit', 'Windows', 'Accounting software for small businesses, offering invoicing, expense tracking, and financial reporting features.', 'Accounting Software', 299.95, 100, 4.7, 0.00),
    (7, 'SketchUp Pro 2023', 'Trimble', 'Windows, macOS', '3D modeling software for architectural, interior design, landscape architecture, and civil engineering projects.', 'Design Software', 695.00, 50, 4.8, 0.00),
    (8, 'AutoCAD 2023', 'Autodesk', 'Windows, macOS', 'Computer-aided design (CAD) software used by architects, engineers, and construction professionals for 2D and 3D drafting.', 'CAD Software', 1,575.00, 30, 4.9, 0.00),
    (9, 'Pro Tools 2023', 'Avid', 'Windows, macOS', 'Digital audio workstation software used for recording, editing, mixing, and producing music and audio projects.', 'Audio Software', 599.00, 70, 4.6, 0.00),
    (10, 'VMware Workstation Pro', 'VMware', 'Windows, Linux', 'Virtualization software that allows users to run multiple operating systems on a single computer simultaneously.', 'Virtualization Software', 249.99, 90, 4.7, 0.00);

CREATE TABLE ArtsCrafts (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO ArtsCrafts VALUES(1, 'Acrylic Paint Set', 'Liquitex', 'Painting Supplies', 'High-quality acrylic paint set with a range of vibrant colors suitable for artists of all skill levels.', 'Painting', 29.99, 50, 4.8, 0.00),
    (2, 'Sketchbook', 'Canson', 'Drawing Supplies', 'Premium sketchbook with heavyweight paper suitable for sketching, drawing, and mixed media art.', 'Drawing', 14.99, 100, 4.7, 0.00),
    (3, 'Watercolor Brushes', 'Winsor & Newton', 'Painting Supplies', 'Set of professional watercolor brushes made from synthetic bristles for precise and smooth brushstrokes.', 'Painting', 19.99, 80, 4.9, 0.00),
    (4, 'Wood Burning Kit', 'Walnut Hollow', 'Woodcraft', 'Complete wood burning kit including a wood burning tool, assorted tips, and wood pieces for creating personalized crafts.', 'Woodworking', 39.99, 30, 4.6, 0.00),
    (5, 'Polymer Clay Set', 'Sculpey', 'Clay & Modeling', 'Assorted colors of polymer clay suitable for sculpting, jewelry making, and other creative projects.', 'Sculpting', 24.99, 60, 4.8, 0.00),
    (6, 'Calligraphy Pen Set', 'Pilot', 'Calligraphy Supplies', 'Set of calligraphy pens with various nib sizes for creating elegant lettering and decorative writing.', 'Calligraphy', 18.99, 40, 4.7, 0.00),
    (7, 'Knitting Yarn', 'Lion Brand Yarn', 'Knitting & Crochet', 'Soft and durable knitting yarn available in a variety of colors and weights for knitting and crocheting projects.', 'Knitting', 9.99, 120, 4.5, 0.00),
    (8, 'Crafting Glue', 'Aleene\'s', 'Adhesives', 'Strong and versatile crafting glue suitable for a wide range of materials including paper, fabric, and wood.', 'Adhesives', 7.99, 150, 4.6, 0.00),
    (9, 'Embroidery Kit', 'Dimensions', 'Embroidery', 'Complete embroidery kit including embroidery hoops, needles, floss, and patterns for creating intricate designs.', 'Embroidery', 22.99, 70, 4.9, 0.00),
    (10, 'Candle Making Kit', 'Nature\'s Blossom', 'Candle Making', 'All-in-one candle making kit with soy wax, fragrance oils, wicks, and containers for making scented candles at home.', 'Candle Making', 29.99, 50, 4.8, 0.00);


CREATE TABLE OfficeElectronics (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Type VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2),
    Discount DECIMAL(5,2)
);

INSERT INTO OfficeElectronics VALUES(1, 'Wireless Keyboard', 'Logitech', 'Keyboard', 'Ergonomic wireless keyboard with a sleek design and quiet keys for comfortable typing.', 'Peripherals', 49.99, 100, 4.7, 0.00),
    (2, 'Wireless Mouse', 'Microsoft', 'Mouse', 'Compact and responsive wireless mouse with customizable buttons and smooth tracking.', 'Peripherals', 29.99, 150, 4.5, 0.00),
    (3, 'All-in-One Printer', 'HP', 'Printer', 'Versatile all-in-one printer with printing, scanning, and copying capabilities, ideal for home and office use.', 'Printers', 149.99, 50, 4.8, 0.00),
    (4, 'Document Scanner', 'Epson', 'Scanner', 'High-speed document scanner with automatic feeder for quickly digitizing paper documents.', 'Scanners', 199.99, 30, 4.6, 0.00),
    (5, 'Laser Pointer', 'Targus', 'Presentation', 'Wireless laser pointer with intuitive controls for seamless presentations and meetings.', 'Presentation Tools', 19.99, 80, 4.4, 0.00),
    (6, 'USB Hub', 'Anker', 'Peripheral', 'Compact USB hub with multiple ports for connecting additional devices to your computer or laptop.', 'Accessories', 12.99, 120, 4.7, 0.00),
    (7, 'Webcam', 'Logitech', 'Webcam', 'HD webcam with built-in microphone for video conferencing and online meetings with clear audio and video quality.', 'Peripherals', 59.99, 70, 4.8, 0.00),
    (8, 'Desk Organizer', 'SimpleHouseware', 'Organization', 'Multi-functional desk organizer with compartments for storing pens, paper clips, and other office supplies.', 'Accessories', 14.99, 200, 4.5, 0.00),
    (9, 'Wireless Headset', 'Jabra', 'Headset', 'Wireless headset with noise-canceling microphone and comfortable ear cushions for clear communication during calls.', 'Audio Devices', 79.99, 90, 4.6, 0.00),
    (10, 'Monitor Stand', 'AmazonBasics', 'Accessory', 'Adjustable monitor stand with storage space underneath to keep your desk tidy and organized.', 'Accessories', 24.99, 150, 4.7, 0.00);

CREATE TABLE KitchenDining (
    ProductID INT,
    ProductName VARCHAR(255),
    Brand VARCHAR(100),
    Material VARCHAR(100),
    Color VARCHAR(50),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    StockQuantity INT,
    AverageRating DECIMAL(3,2)
);

INSERT INTO KitchenDining VALUES(1, 'Non-Stick Cookware Set', 'T-fal', 'Aluminum', 'Black', 'Set of non-stick cookware including frying pans, saucepans, and a Dutch oven for versatile cooking.', 'Cookware', 89.99, 50, 4.5),
    (2, 'Stainless Steel Cutlery Set', 'Cuisinart', 'Stainless Steel', 'Silver', 'High-quality stainless steel cutlery set with ergonomic handles and a knife block for safe storage.', 'Cutlery', 59.99, 100, 4.7),
    (3, 'Dinnerware Set', 'Corelle', 'Porcelain', 'White', 'Elegant dinnerware set including plates, bowls, and mugs, designed for everyday use and easy cleaning.', 'Dinnerware', 39.99, 80, 4.6),
    (4, 'Glass Drinkware Set', 'Libbey', 'Glass', 'Clear', 'Set of durable glass drinkware including tumblers and highball glasses, perfect for serving beverages at any occasion.', 'Drinkware', 29.99, 120, 4.8),
    (5, 'Silicone Baking Mat', 'AmazonBasics', 'Silicone', 'Red', 'Non-stick silicone baking mat for easy baking and roasting, suitable for use in the oven or microwave.', 'Bakeware', 12.99, 200, 4.4),
    (6, 'Electric Kettle', 'Hamilton Beach', 'Stainless Steel', 'Silver', 'Electric kettle with rapid-boil technology and automatic shutoff for safe and efficient water heating.', 'Appliances', 24.99, 150, 4.5),
    (7, 'Food Storage Containers', 'Rubbermaid', 'Plastic', 'Clear', 'Set of durable plastic food storage containers with secure lids, ideal for keeping food fresh and organized in the kitchen.', 'Storage', 19.99, 180, 4.6),
    (8, 'Kitchen Knife Set', 'J.A. Henckels', 'Stainless Steel', 'Black', 'High-quality stainless steel kitchen knife set including chef, utility, and paring knives, with a wooden storage block.', 'Cutlery', 79.99, 70, 4.7),
    (9, 'Ceramic Cookware Set', 'GreenLife', 'Ceramic', 'Turquoise', 'Set of ceramic cookware with non-stick coating, includes frying pans and saucepans with soft-grip handles for comfortable cooking.', 'Cookware', 69.99, 90, 4.5),
    (10, 'Electric Pressure Cooker', 'Instant Pot', 'Stainless Steel', 'Silver', 'Versatile electric pressure cooker with multiple cooking functions, including pressure cooking, slow cooking, and rice cooking.', 'Appliances', 129.99, 60, 4.8);

-- CREATE THE OLYMPICS DATABASE
CREATE DATABASE Olympics;
-- USE THE OLYMPICS DATABASE
USE Olympics;

-- CREATE ATHLETES TABLE
CREATE TABLE Athletes (
    Athlete_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Nationality VARCHAR(100),
    Gender VARCHAR(10),
    Date_of_Birth DATE,
    Height FLOAT,
    Weight FLOAT,
    Sport VARCHAR(100),
    Team VARCHAR(100),
    Medal_Won VARCHAR(20),
    Event_Participated VARCHAR(100),
    Country_Code VARCHAR(10),
    Olympic_Games_ID INT,
    Residence VARCHAR(255),
    Personal_Best VARCHAR(255)
);
INSERT INTO Athletes (Athlete_ID, Name, Nationality, Gender, Date_of_Birth, Height, Weight, Sport, Team, Medal_Won, Event_Participated, Country_Code, Olympic_Games_ID, Residence, Personal_Best) VALUES
(1, 'Michael Phelps', 'USA', 'Male', '1985-06-30', 1.93, 88.5, 'Swimming', 'USA', 'Gold', '100m Freestyle', 'USA', 1, 'Baltimore, Maryland, USA', '23 Olympic gold medals'),
(2, 'Usain Bolt', 'Jamaica', 'Male', '1986-08-21', 1.95, 94, 'Athletics', 'Jamaica', 'Gold', '100m', 'JAM', 2, 'Trelawny Parish, Jamaica', '9.58 seconds in 100m dash'),
(3, 'Simone Biles', 'USA', 'Female', '1997-03-14', 1.45, 47, 'Gymnastics', 'USA', 'Gold', 'Artistic Gymnastics - All-Around', 'USA', 3, 'Spring, Texas, USA', 'Most decorated American gymnast'),
(4, 'Serena Williams', 'USA', 'Female', '1981-09-26', 1.75, 70, 'Tennis', 'USA', 'Gold', 'Singles', 'USA', 4, 'Palm Beach Gardens, Florida, USA', '23 Grand Slam singles titles'),
(5, 'Cristiano Ronaldo', 'Portugal', 'Male', '1985-02-05', 1.87, 83, 'Football', 'Portugal', 'Gold', 'Football', 'POR', 5, 'Funchal, Madeira, Portugal', 'Most international goals scored'),
(6, 'Simone Manuel', 'USA', 'Female', '1996-08-02', 1.78, 68, 'Swimming', 'USA', 'Gold', '100m Freestyle', 'USA', 6, 'Sugar Land, Texas, USA', 'First African-American woman to win an individual Olympic gold medal in swimming');
-- CREATE EVENTS TABLE
CREATE TABLE Events (
    Event_ID INT PRIMARY KEY,
    Event_Name VARCHAR(255),
    Event_Description TEXT,
    Sport VARCHAR(100),
    Start_Date DATE,
    End_Date DATE,
    Venue VARCHAR(255),
    Country_Code VARCHAR(10),
    Competition_Format VARCHAR(100),
    Medal_Count INT,
    World_Record VARCHAR(255),
    Olympic_Record VARCHAR(255),
    Event_Type VARCHAR(50),
    Age_Group VARCHAR(50),
    Gender VARCHAR(10)
);

-- Insert sample data into the Events table
INSERT INTO Events (Event_ID, Event_Name, Event_Description, Sport, Start_Date, End_Date, Venue, Country_Code, Competition_Format, Medal_Count, World_Record, Olympic_Record, Event_Type, Age_Group, Gender) VALUES
(1, '2024 Summer Olympics Opening Ceremony', 'The grand opening ceremony of the 2024 Summer Olympics.', 'Opening Ceremony', '2024-07-20', '2024-07-20', 'Los Angeles Memorial Coliseum, Los Angeles, USA', 'USA', 'Ceremonial', NULL, NULL, NULL, 'Ceremony', 'All Ages', 'Mixed'),
(2, 'Athletics - 100m Final', 'The final race of the 100m sprint event in Athletics.', 'Athletics', '2024-08-02', '2024-08-02', 'Olympic Stadium, Los Angeles, USA', 'USA', 'Sprint', 3, '9.58 seconds by Usain Bolt', '9.58 seconds by Usain Bolt', 'Final', 'Adults', 'Mixed'),
(3, 'Swimming - 200m Freestyle Final', 'The final race of the 200m freestyle event in Swimming.', 'Swimming', '2024-07-30', '2024-07-30', 'Uytengsu Aquatics Center, Los Angeles, USA', 'USA', 'Freestyle', 3, '1:42.96 by Michael Phelps', '1:42.96 by Michael Phelps', 'Final', 'Adults', 'Mixed'),
(4, 'Gymnastics - Artistic Team All-Around', 'The team competition in artistic gymnastics.', 'Gymnastics', '2024-07-28', '2024-07-28', 'Pauley Pavilion, Los Angeles, USA', 'USA', 'Team Event', NULL, NULL, NULL, 'Competition', 'All Ages', 'Mixed'),
(5, 'Tennis - Men''s Singles Final', 'The final match of the men''s singles event in Tennis.', 'Tennis', '2024-08-04', '2024-08-04', 'Los Angeles Tennis Center, Los Angeles, USA', 'USA', 'Single Elimination', 2, NULL, NULL, 'Final', 'Adults', 'Male');

-- CREATE COUNTRIES TABLE
CREATE TABLE Countries (
    Country_Code VARCHAR(10) PRIMARY KEY,
    Country_Name VARCHAR(100),
    Continent VARCHAR(50),
    Population BIGINT,
    Capital VARCHAR(100),
    Language VARCHAR(100),
    Currency VARCHAR(50),
    National_Anthem VARCHAR(255),
    Flag_Image VARCHAR(255),
    National_Symbols VARCHAR(255),
    Head_of_State VARCHAR(100),
    GDP DECIMAL(15,2),
    HDI DECIMAL(5,3),
    Total_Medals INT,
    Gold_Medals INT
);

-- Insert sample data into the Countries table
INSERT INTO Countries (Country_Code, Country_Name, Continent, Population, Capital, Language, Currency, National_Anthem, Flag_Image, National_Symbols, Head_of_State, GDP, HDI, Total_Medals, Gold_Medals) VALUES
('USA', 'United States of America', 'North America', 331449281, 'Washington, D.C.', 'English', 'United States dollar', 'The Star-Spangled Banner', 'us_flag.jpg', 'Bald eagle, Uncle Sam', 'President Joe Biden', 22675200.00, 0.926, 113, 39),
('JAM', 'Jamaica', 'North America', 2961161, 'Kingston', 'English', 'Jamaican dollar', 'Jamaica, Land We Love', 'jamaica_flag.jpg', 'Doctor Bird, Lignum Vitae', 'Prime Minister Andrew Holness', 15360.00, 0.732, 7, 3),
('POR', 'Portugal', 'Europe', 10196709, 'Lisbon', 'Portuguese', 'Euro', 'A Portuguesa', 'portugal_flag.jpg', 'Rooster of Barcelos, Cork Oak', 'President Marcelo Rebelo de Sousa', 217653.18, 0.864, 27, 4),
('CHN', 'China', 'Asia', 1444216107, 'Beijing', 'Standard Chinese', 'Chinese yuan', 'March of the Volunteers', 'china_flag.jpg', 'Giant Panda, Red-crowned Crane', 'President Xi Jinping', 15342931.00, 0.761, 107, 38),
('IND', 'India', 'Asia', 1393409038, 'New Delhi', 'Hindi, English', 'Indian rupee', 'Jana Gana Mana', 'india_flag.jpg', 'Bengal Tiger, Indian Elephant', 'Prime Minister Narendra Modi', 2875147.00, 0.645, 28, 7);


-- CREATE MEDALS TABLE
CREATE TABLE Medals (
    Medal_ID INT PRIMARY KEY AUTO_INCREMENT,
    Athlete_ID INT,
    Event_ID INT,
    Medal_Type ENUM('Gold', 'Silver', 'Bronze'),
    Date_Awarded DATE,
    Country_Code VARCHAR(10),
    Competition_Rank INT,
    Medal_Count INT,
    Sport VARCHAR(100),
    Discipline VARCHAR(100),
    Venue VARCHAR(255),
    Olympic_Games_ID INT,
    Record_Type VARCHAR(50),
    Record_Value VARCHAR(100),
    Record_Holder VARCHAR(255),
    FOREIGN KEY (Athlete_ID) REFERENCES Athletes(Athlete_ID),
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID)
);
INSERT INTO Medals (Athlete_ID, Event_ID, Medal_Type, Date_Awarded, Country_Code, Competition_Rank, Medal_Count, Sport, Discipline, Venue, Olympic_Games_ID, Record_Type, Record_Value, Record_Holder)
VALUES
(1, 2, 'Gold', '2024-08-02', 'USA', 1, 1, 'Athletics', '100m', 'Olympic Stadium, Los Angeles, USA', 2, 'World Record', '9.58 seconds', 'Usain Bolt'),
(2, 3, 'Gold', '2024-07-30', 'JAM', 1, 1, 'Swimming', '200m Freestyle', 'Uytengsu Aquatics Center, Los Angeles, USA', 3, 'Olympic Record', '1:42.96', 'Michael Phelps'),
(3, 4, 'Silver', '2024-07-28', 'USA', 2, 1, 'Gymnastics', 'Artistic Team All-Around', 'Pauley Pavilion, Los Angeles, USA', 4, NULL, NULL, NULL),
(4, 5, 'Bronze', '2024-08-04', 'POR', 3, 1, 'Tennis', 'Men''s Singles', 'Los Angeles Tennis Center, Los Angeles, USA', 5, NULL, NULL, NULL);

-- CREATE COACHES TABLE
CREATE TABLE Coaches (
    Name VARCHAR(255),
    Nationality VARCHAR(100),
    Sport VARCHAR(100),
    Team VARCHAR(100),
    Gender VARCHAR(10),
    Date_of_Birth DATE,
    Country_Code VARCHAR(10),
    Olympic_Games_ID INT,
    Residence VARCHAR(255),
    Languages_Spoken VARCHAR(255),
    Coaching_Experience VARCHAR(255),
    Olympic_Medals INT,
    Contact_Details VARCHAR(255),
    Coaching_Specialization VARCHAR(255)
);
-- Insert sample data into the Coaches table
INSERT INTO Coaches (Name, Nationality, Sport, Team, Gender, Date_of_Birth, Country_Code, Olympic_Games_ID, Residence, Languages_Spoken, Coaching_Experience, Olympic_Medals, Contact_Details, Coaching_Specialization)
VALUES
('John Smith', 'USA', 'Athletics', 'Team USA', 'Male', '1970-05-15', 'USA', 2, 'Los Angeles, USA', 'English', '20 years', 0, 'johnsmith@example.com', 'Sprints'),
('Maria Garcia', 'ESP', 'Swimming', 'Team Spain', 'Female', '1985-09-20', 'ESP', 3, 'Madrid, Spain', 'Spanish, English', '15 years', 1, 'mariagarcia@example.com', 'Freestyle');


-- CREATE OFFICIALS TABLE
CREATE TABLE Officials (
    Official_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Nationality VARCHAR(100),
    Role VARCHAR(100),
    Event_ID INT,
    Venue VARCHAR(255),
    Country_Code VARCHAR(10),
    Olympic_Games_ID INT,
    Residence VARCHAR(255),
    Languages_Spoken VARCHAR(255),
    Previous_Olympics_Experience VARCHAR(255),
    Contact_Details VARCHAR(255),
    Officiating_Agency VARCHAR(255),
    Uniform_Details VARCHAR(255),
    Certification_Status VARCHAR(100),
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID)
);

-- Inserting values into the Officials table
INSERT INTO Officials (Official_ID, Name, Nationality, Role, Event_ID, Venue, Country_Code, Olympic_Games_ID, Residence, Languages_Spoken, Previous_Olympics_Experience, Contact_Details, Officiating_Agency, Uniform_Details, Certification_Status) 
VALUES 
(1, 'John Smith', 'USA', 'Referee', 2, 'Olympic Stadium, Los Angeles, USA', 'USA', 2024, 'Los Angeles, USA', 'English', 'Previous Olympic Experience: 2016 Rio Olympics', 'john.smith@example.com', 'International Olympic Committee', 'Black suit with white shirt and tie', 'Certified'),
(2, 'Maria Garcia', 'ESP', 'Judge', 3, 'Uytengsu Aquatics Center, Los Angeles, USA', 'ESP', 2024, 'Madrid, Spain', 'Spanish, English', 'Previous Olympic Experience: 2020 Tokyo Olympics', 'maria.garcia@example.com', 'International Swimming Federation', 'Official swimming attire', 'Certified');
-- CREATE VENUES TABLE
CREATE TABLE Venues (
    Venue_Name VARCHAR(255),
    Location VARCHAR(255),
    Capacity INT,
    Surface_Type VARCHAR(100),
    Construction_Year INT,
    Renovation_Year INT,
    Owner VARCHAR(255),
    Operator VARCHAR(255),
    Olympic_Games_ID INT,
    Events_Hosted VARCHAR(255),
    Seating_Chart VARCHAR(255),
    Facilities TEXT,
    Accessibility_Details TEXT
);
INSERT INTO Venues (Venue_Name, Location, Capacity, Surface_Type, Construction_Year, Renovation_Year, Owner, Operator, Olympic_Games_ID, Events_Hosted, Seating_Chart, Facilities, Accessibility_Details)
VALUES
('Olympic Stadium', 'Los Angeles, USA', 80000, 'Grass', 2020, NULL, 'City of Los Angeles', 'Los Angeles Sports Council', 2024, 'Opening Ceremony, Athletics', 'olympic_stadium_seating_chart.jpg', 'Multiple restrooms, food courts, parking', 'Wheelchair-accessible entrances and seating'),
('Uytengsu Aquatics Center', 'Los Angeles, USA', 5000, 'Water', 2010, NULL, 'University of Southern California', 'USC Department of Athletics', 2024, 'Swimming, Diving', 'aquatics_center_seating_chart.jpg', 'Olympic-size swimming pool, diving platforms', 'ADA-compliant ramps and elevators');

-- CREATE RECORDS TABLE
CREATE TABLE Records (
    Athlete_ID INT,
    Event_ID INT,
    Record_Type VARCHAR(100),
    Record_Value VARCHAR(255),
    Date_Set DATE,
    Venue VARCHAR(255),
    Country_Code VARCHAR(10),
    Olympic_Games_ID INT,
    Age_Group VARCHAR(50),
    Gender VARCHAR(10),
    Discipline VARCHAR(100),
    Record_Holder VARCHAR(255),
    Previous_Record_Value VARCHAR(255),
    FOREIGN KEY (Athlete_ID) REFERENCES Athletes(Athlete_ID),
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID)
);
-- Inserting values into the Records table
INSERT INTO Records (Athlete_ID, Event_ID, Record_Type, Record_Value, Date_Set, Venue, Country_Code, Olympic_Games_ID, Age_Group, Gender, Discipline, Record_Holder, Previous_Record_Value) 
VALUES 
(1, 2, 'World Record', '9.58 seconds', '2024-08-02', 'Olympic Stadium, Los Angeles, USA', 'USA', 2024, 'Adults', 'Male', '100m', 'Usain Bolt', '9.63 seconds'),
(2, 3, 'Olympic Record', '1:42.96', '2024-07-30', 'Uytengsu Aquatics Center, Los Angeles, USA', 'JAM', 2024, 'Adults', 'Male', '200m Freestyle', 'Michael Phelps', '1:43.30');

-- CREATE DRUG_TESTING TABLE
CREATE TABLE Drug_Testing (
    Athlete_ID INT,
    Event_ID INT,
    Sample_Date DATE,
    Sample_Location VARCHAR(255),
    Test_Result VARCHAR(100),
    Testing_Agency VARCHAR(255),
    Country_Code VARCHAR(10),
    Olympic_Games_ID INT,
    Test_Type VARCHAR(100),
    Medically_Exempt BOOLEAN,
    Banned_Substances TEXT,
    Test_Method VARCHAR(100),
    Testing_Frequency VARCHAR(100),
    FOREIGN KEY (Athlete_ID) REFERENCES Athletes(Athlete_ID),
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID)
);
-- Inserting values into the Drug_Testing table
INSERT INTO Drug_Testing (Athlete_ID, Event_ID, Sample_Date, Sample_Location, Test_Result, Testing_Agency, Country_Code, Olympic_Games_ID, Test_Type, Medically_Exempt, Banned_Substances, Test_Method, Testing_Frequency) 
VALUES 
(1, 2, '2024-08-02', 'Olympic Stadium, Los Angeles, USA', 'Negative', 'World Anti-Doping Agency', 'USA', 2024, 'Urine Test', false, NULL, 'Mass spectrometry', 'Random'),
(2, 3, '2024-07-30', 'Uytengsu Aquatics Center, Los Angeles, USA', 'Negative', 'International Swimming Federation', 'JAM', 2024, 'Blood Test', false, NULL, 'Enzyme-linked immunosorbent assay (ELISA)', 'Pre-competition'),
(3, 4, '2024-07-28', 'Pauley Pavilion, Los Angeles, USA', 'Not Applicable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- CREATE SPONSORS TABLE
CREATE TABLE Sponsors (
    Sponsor_Name VARCHAR(255),
    Industry VARCHAR(100),
    Sponsor_Type VARCHAR(100),
    Sponsorship_Level VARCHAR(100),
    Contract_Duration VARCHAR(100),
    Financial_Terms TEXT,
    Marketing_Events TEXT,
    Advertising_Campaigns TEXT,
    Olympic_Games_ID INT,
    Brand_Ambassadors TEXT,
    Sponsorship_Benefits TEXT,
    Sponsor_Contact_Details VARCHAR(255),
    Sponsor_Website VARCHAR(255),
    Social_Media_Handles VARCHAR(255)
);
-- Inserting values into the Sponsors table
INSERT INTO Sponsors (Sponsor_Name, Industry, Sponsor_Type, Sponsorship_Level, Contract_Duration, Financial_Terms, Marketing_Events, Advertising_Campaigns, Olympic_Games_ID, Brand_Ambassadors, Sponsorship_Benefits, Sponsor_Contact_Details, Sponsor_Website, Social_Media_Handles) 
VALUES 
('Nike', 'Sportswear', 'Official Apparel Sponsor', 'Platinum', '5 years', 'Confidential', 'Opening Ceremony, Athletics, Basketball', 'Just Do It Campaign', 2024, 'Michael Jordan, Serena Williams', 'Exclusive rights to use Olympic branding, Product placement in official Olympic events', 'contact@nike.com', 'https://www.nike.com', '@Nike'),
('Coca-Cola', 'Beverages', 'Official Beverage Sponsor', 'Gold', '4 years', 'Confidential', 'Opening Ceremony, Cycling, Swimming', 'Share a Coke Campaign', 2024, 'LeBron James, Simone Biles', 'Exclusive rights to sell beverages at Olympic venues, Brand visibility in official Olympic materials', 'contact@coca-cola.com', 'https://www.coca-cola.com', '@CocaCola'),
('Toyota', 'Automobile', 'Official Mobility Partner', 'Gold', '4 years', 'Confidential', 'Cycling, Gymnastics, Volleyball', 'Start Your Impossible Campaign', 2024, 'Michael Phelps, Naomi Osaka', 'Provide vehicles for Olympic transportation, Branding on official Olympic vehicles', 'contact@toyota.com', 'https://www.toyota.com', '@Toyota');

-- CREATE BROADCASTING TABLE
CREATE TABLE Broadcasting (
    Broadcast_Channel VARCHAR(255),
    Country_Code VARCHAR(10),
    Language VARCHAR(100),
    Broadcast_Rights VARCHAR(255),
    Coverage_Type VARCHAR(100),
    Broadcast_Schedule VARCHAR(255),
    Olympic_Games_ID INT,
    Commentary_Team VARCHAR(255),
    Special_Programs TEXT,
    Advertising_Slots TEXT,
    Viewership_Statistics TEXT,
    Digital_Platforms TEXT,
    Live_Streaming_Details VARCHAR(255),
    Broadcast_Partners TEXT
);
-- Inserting values into the Broadcasting table
INSERT INTO Broadcasting (Broadcast_Channel, Country_Code, Language, Broadcast_Rights, Coverage_Type, Broadcast_Schedule, Olympic_Games_ID, Commentary_Team, Special_Programs, Advertising_Slots, Viewership_Statistics, Digital_Platforms, Live_Streaming_Details, Broadcast_Partners) 
VALUES 
('NBC', 'USA', 'English', 'Exclusive rights in USA', 'Live Coverage', 'Daily from 8:00 AM to 11:00 PM', 2024, 'Bob Costas, Mike Tirico', 'Olympic Tonight Show', 'Primetime advertising slots', 'Estimated 100 million viewers', 'NBC Sports App, NBCOlympics.com', 'https://www.nbcolympics.com/live', 'IOC, USOC'),
('BBC', 'GBR', 'English', 'Exclusive rights in UK', 'Live Coverage', 'Daily from 9:00 AM to 12:00 AM', 2024, 'Clare Balding, Gary Lineker', 'Olympics Breakfast Show', 'Prime advertising slots', 'Estimated 80 million viewers', 'BBC iPlayer, BBC Sport website', 'https://www.bbc.co.uk/sport/live-guide', 'IOC, BOA'),
('CBC', 'CAN', 'English, French', 'Exclusive rights in Canada', 'Live Coverage', 'Daily from 8:00 AM to 11:00 PM', 2024, 'Scott Russell, Andi Petrillo', 'Olympic Morning Show', 'Special advertising packages', 'Estimated 30 million viewers', 'CBC Gem, CBC Sports website', 'https://www.cbc.ca/sports/olympics', 'IOC, COC');

-- CREATE TICKETS TABLE
CREATE TABLE Tickets (
    Event_ID INT,
    Ticket_Type VARCHAR(100),
    Price DECIMAL(10, 2),
    Availability VARCHAR(50),
    Purchase_Method VARCHAR(100),
    Seat_Number VARCHAR(100),
    Venue VARCHAR(255),
    Country_Code VARCHAR(10),
    Olympic_Games_ID INT,
    Ticket_Sales INT,
    Ticket_Policies TEXT,
    Refund_Process TEXT,
    Group_Discounts TEXT,
    VIP_Packages TEXT,
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID)
);
-- Inserting values into the Tickets table
INSERT INTO Tickets (Event_ID, Ticket_Type, Price, Availability, Purchase_Method, Seat_Number, Venue, Country_Code, Olympic_Games_ID, Ticket_Sales, Ticket_Policies, Refund_Process, Group_Discounts, VIP_Packages) 
VALUES 
(1, 'Standard', 100.00, 'Available', 'Online', 'A12', 'Olympic Stadium, Los Angeles, USA', 'USA', 2024, 5000, 'Non-refundable', 'No refunds provided', 'Group bookings of 10 or more receive 10% discount', 'VIP packages available for premium seating and exclusive access'),
(2, 'VIP', 500.00, 'Sold Out', 'In-person', 'VIP01', 'Uytengsu Aquatics Center, Los Angeles, USA', 'USA', 2024, 200, 'Non-refundable', 'No refunds provided', 'Group bookings of 10 or more receive 15% discount', 'Exclusive VIP packages with luxury seating and amenities'),
(3, 'Standard', 75.00, 'Available', 'Online', 'B24', 'Pauley Pavilion, Los Angeles, USA', 'USA', 2024, 8000, 'Refundable with 20% cancellation fee', 'Refunds processed within 7 business days', 'No group discounts available', 'N/A');


-- CREATE VOLUNTEERS TABLE
CREATE TABLE Volunteers (
    Name VARCHAR(255),
    Nationality VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Occupation VARCHAR(100),
    Skills TEXT,
    Availability VARCHAR(100),
    Volunteer_Role VARCHAR(255),
    Venue VARCHAR(255),
    Country_Code VARCHAR(10),
    Olympic_Games_ID INT,
    Volunteer_Hours INT,
    Volunteer_Training TEXT,
    Volunteer_Benefits TEXT
);
-- Inserting values into the Volunteers table
INSERT INTO Volunteers (Name, Nationality, Age, Gender, Occupation, Skills, Availability, Volunteer_Role, Venue, Country_Code, Olympic_Games_ID, Volunteer_Hours, Volunteer_Training, Volunteer_Benefits) 
VALUES 
('John Smith', 'USA', 30, 'Male', 'Teacher', 'Event coordination, Communication, Leadership', 'Weekends, evenings', 'Event Coordinator', 'Olympic Stadium, Los Angeles, USA', 'USA', 2024, 50, 'Training sessions on event management and communication', 'Access to Olympic events, Volunteer certificate'),
('Maria Garcia', 'ESP', 25, 'Female', 'Student', 'Customer service, Multilingual (English, Spanish)', 'Weekdays, weekends', 'Language Interpreter', 'Uytengsu Aquatics Center, Los Angeles, USA', 'USA', 2024, 30, 'Language interpretation workshops', 'Complimentary meals, Volunteer uniform'),
('Chen Wei', 'CHN', 28, 'Male', 'Engineer', 'Technical skills, Problem-solving', 'Weekends', 'Technical Support', 'Pauley Pavilion, Los Angeles, USA', 'USA', 2024, 40, 'Technical training on venue systems', 'Recognition ceremony, Exclusive volunteer events');

-- CREATE TRANSPORTATION TABLE
CREATE TABLE Transportation (
    Mode_of_Transport VARCHAR(100),
    Vehicle_Type VARCHAR(100),
    Capacity INT,
    Operator VARCHAR(255),
    Route VARCHAR(255),
    Schedule VARCHAR(255),
    Country_Code VARCHAR(10),
    Olympic_Games_ID INT,
    Transportation_Costs DECIMAL(10, 2),
    Accessibility TEXT,
    Transportation_Hubs TEXT,
    Parking_Facilities TEXT,
    Shuttle_Services TEXT,
    Emergency_Contacts TEXT
);
-- Inserting values into the Transportation table
INSERT INTO Transportation (Mode_of_Transport, Vehicle_Type, Capacity, Operator, Route, Schedule, Country_Code, Olympic_Games_ID, Transportation_Costs, Accessibility, Transportation_Hubs, Parking_Facilities, Shuttle_Services, Emergency_Contacts) 
VALUES 
('Bus', 'Shuttle Bus', 50, 'Olympic Transportation Services', 'From Olympic Village to Olympic Stadium', 'Every 15 minutes during peak hours', 'USA', 2024, 5.00, 'Wheelchair accessible, Ramps', 'Olympic Village, Olympic Stadium', 'Available near each venue', 'Available for athletes and spectators', 'Emergency contact numbers displayed on buses'),
('Train', 'High-speed Train', 300, 'National Railway Company', 'Between Olympic cities', 'Hourly', 'FRA', 2024, 20.00, 'Wheelchair accessible stations', 'Olympic City A, Olympic City B', 'Designated parking areas near stations', 'N/A', 'Customer service hotline available 24/7'),
('Taxi', 'Sedan', 4, 'Local Taxi Association', 'Within Olympic City', 'On-demand', 'JPN', 2024, 15.00, 'Accessible taxis available on request', 'Olympic City', 'Designated taxi stands', 'N/A', 'Local emergency services contact numbers');

-- CREATE SECURITY TABLE
CREATE TABLE Security (
    Security_Firm VARCHAR(255),
    Country_Code VARCHAR(10),
    Services_Provided TEXT,
    Security_Staff INT,
    Surveillance_System TEXT,
    Emergency_Response TEXT,
    Venue_Security_Plans TEXT,
    Security_Checkpoints TEXT,
    Olympic_Games_ID INT,
    Risk_Assessment TEXT,
    Security_Budget DECIMAL(15, 2),
    Incident_Reporting TEXT,
    Crisis_Management TEXT,
    Access_Control_Systems TEXT
);
-- Inserting values into the Security table
INSERT INTO Security (Security_Firm, Country_Code, Services_Provided, Security_Staff, Surveillance_System, Emergency_Response, Venue_Security_Plans, Security_Checkpoints, Olympic_Games_ID, Risk_Assessment, Security_Budget, Incident_Reporting, Crisis_Management, Access_Control_Systems) 
VALUES 
('SecureGuard', 'USA', 'Venue security, Access control, Emergency response', 500, 'CCTV cameras, Security patrols', '24/7 emergency hotline, On-site medical teams', 'Comprehensive security plans for each venue', 'Entry and exit points, Bag checks', 2024, 'Regular risk assessments conducted', 1000000.00, 'Online incident reporting system', 'Emergency response protocols in place', 'Biometric access systems, RFID cards'),
('SafeHands', 'GBR', 'Event security, Crowd management, Perimeter control', 300, 'Surveillance drones, Security personnel', 'Emergency evacuation procedures, First aid stations', 'Tailored security plans for each event', 'Metal detectors, X-ray scanners', 2024, 'Continuous risk monitoring', 750000.00, 'Mobile app for incident reporting', 'Crisis communication protocols established', 'Smart card readers, Visitor management systems'),
('IronShield', 'CHN', 'Security consulting, Threat assessment, Security training', 200, 'Surveillance cameras, Mobile patrols', 'Rapid response teams, Firefighting services', 'Comprehensive security strategies for Olympic sites', 'Perimeter fencing, Access control gates', 2024, 'Threat intelligence analysis', 500000.00, 'Incident logbooks maintained', 'Crisis management exercises conducted', 'Facial recognition systems, RFID access cards');


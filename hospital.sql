-- Command to create database.
CREATE DATABASE HospitalDB;

-- Command to use database.
USE HospitalDB;

-- Doctors table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Specialization VARCHAR(255),
    Phone VARCHAR(15),
    Email VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100),
    ZipCode VARCHAR(20)
);

-- Patients table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    Phone VARCHAR(15),
    Email VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Country VARCHAR(100)
);

-- Appointments table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    DoctorID INT,
    PatientID INT,
    AppointmentDateTime DATETIME,
    Reason VARCHAR(255),
    Status ENUM('Scheduled', 'Cancelled', 'Completed')
);

-- Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(255),
    HeadDoctorID INT,
    Description TEXT
);

-- Medicines table
CREATE TABLE Medicines (
    MedicineID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255),
    Manufacturer VARCHAR(255),
    Description TEXT,
    Price DECIMAL(10, 2)
);

-- MedicalRecords table
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    DateOfVisit DATE,
    Diagnosis TEXT,
    Prescription TEXT
);

-- LabTests table
CREATE TABLE LabTests (
    TestID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    TestName VARCHAR(255),
    TestDate DATE,
    Result TEXT
);

-- Rooms table
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY AUTO_INCREMENT,
    RoomNumber VARCHAR(20),
    DepartmentID INT,
    Status ENUM('Occupied', 'Available', 'Under Maintenance')
);

-- Surgeries table
CREATE TABLE Surgeries (
    SurgeryID INT PRIMARY KEY AUTO_INCREMENT,
    SurgeryName VARCHAR(255),
    DepartmentID INT,
    DoctorID INT,
    DateOfSurgery DATE,
    Description TEXT
);

-- Payments table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    Method VARCHAR(50)
);

-- Command to rename the table name.
ALTER TABLE Doctors RENAME TO DOCTOR;
ALTER TABLE Patients RENAME TO PATIENT;
ALTER TABLE Appointments RENAME TO APPOINTMENT;
ALTER TABLE Departments RENAME TO DEPARTMENT;
ALTER TABLE Medicines RENAME TO MEDICINE;
ALTER TABLE MedicalRecords RENAME TO MEDICALRECORD;
ALTER TABLE LabTests RENAME TO LABTEST;
ALTER TABLE Rooms RENAME TO ROOM;
ALTER TABLE Surgeries RENAME TO SURGERY;
ALTER TABLE Payments RENAME TO PAYMENT;

-- Command to drop 3rd column of the table.
ALTER TABLE DOCTOR DROP COLUMN Phone;
ALTER TABLE PATIENT DROP COLUMN Age;
ALTER TABLE APPOINTMENT DROP COLUMN Reason;

-- Command to change datatype of column.
ALTER TABLE DOCTOR MODIFY COLUMN Address VARCHAR(500);
ALTER TABLE PATIENT MODIFY COLUMN Gender VARCHAR(100);

-- Command to add new columns to table.
ALTER TABLE DOCTOR ADD COLUMN Salary DECIMAL(10, 2);
ALTER TABLE PATIENT ADD COLUMN Insurance VARCHAR(50);

-- Command to change name of the database.
-- RENAME DATABASE HospitalDB TO NewHospitalDB; -- This command is not supported in MySQL.

-- Show tables
SHOW TABLES;

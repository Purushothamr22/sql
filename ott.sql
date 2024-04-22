CREATE DATABASE OTT;
USE OTT;

CREATE TABLE OTT_PLATFORM (
    OTT_ID INT PRIMARY KEY,
    OTT_NAME VARCHAR(20),
    OTT_LANGUAGE VARCHAR(20),
    SUBSCRIPTION VARCHAR(20)
);

INSERT INTO OTT_PLATFORM VALUES (1, 'ZEE_CINEMAS', 'ENGLISH', 'SUBSCRIBED'); 
INSERT INTO OTT_PLATFORM VALUES (2, 'JIO_CINEMAS', 'KANNADA', 'SUBSCRIBED'); 
INSERT INTO OTT_PLATFORM VALUES (3, 'Z_CINEMAS', 'TELUGU', 'SUBSCRIBED'); 
INSERT INTO OTT_PLATFORM VALUES (4, 'HOTSTAR', 'TAMIL', 'SUBSCRIBED'); 
INSERT INTO OTT_PLATFORM VALUES (5, 'HOTSTAR_PLUS', 'HINDI', 'SUBSCRIBED'); 

SELECT * FROM OTT_PLATFORM;

CREATE TABLE USER_DETAILS (
    USER_ID INT PRIMARY KEY,
    USER_NAME VARCHAR(20),
    USER_EMAIL_ID VARCHAR(50),
    OTT_ID INT,
    FOREIGN KEY (OTT_ID) REFERENCES OTT_PLATFORM (OTT_ID) 
);

INSERT INTO USER_DETAILS VALUES (201, 'ANU', 'anu@gmail.com', 1); 
INSERT INTO USER_DETAILS VALUES (202, 'BHANU', 'bhanu@gmail.com', 2); 
INSERT INTO USER_DETAILS VALUES (203, 'SONU', 'sonu@gmail.com', 3); 
INSERT INTO USER_DETAILS VALUES (204, 'MONU', 'monu@gmail.com', 4); 
INSERT INTO USER_DETAILS VALUES (205, 'RON', 'ron@gmail.com', 5); 

SELECT * FROM USER_DETAILS;

CREATE TABLE FOUNDER_DETAILS (
    FOUNDER_ID INT PRIMARY KEY,
    FOUNDER_NAME VARCHAR(20),
    FOUNDER_EMAIL VARCHAR(50),
    OTT_ID INT,
    FOREIGN KEY (OTT_ID) REFERENCES OTT_PLATFORM (OTT_ID)
);

INSERT INTO FOUNDER_DETAILS VALUES (2001, 'MOHAN', 'mohan@gmail.com', 1); 
INSERT INTO FOUNDER_DETAILS VALUES (2020, 'ROHAN', 'rohan@gmail.com', 2); 
INSERT INTO FOUNDER_DETAILS VALUES (2030, 'SOHAN', 'sohan@gmail.com', 3); 
INSERT INTO FOUNDER_DETAILS VALUES (2040, 'PAVAN', 'pavan@gmail.com', 4); 
INSERT INTO FOUNDER_DETAILS VALUES (2050, 'DANNY', 'danny@gmail.com', 5); 

SELECT * FROM OTT_PLATFORM AS OTT, USER_DETAILS AS USER, FOUNDER_DETAILS AS FD WHERE OTT.OTT_ID = USER.OTT_ID AND OTT.OTT_ID = FD.OTT_ID;
SELECT *FROM OTT_PLATFORM AS OTT INNER JOIN USER_DETAILS AS USER ON OTT.OTT_ID = USER.OTT_ID;
SELECT * FROM OTT_PLATFORM AS OTT LEFT JOIN USER_DETAILS AS USER ON OTT.OTT_ID = USER.OTT_ID;
SELECT * FROM OTT_PLATFORM AS OTT RIGHT JOIN USER_DETAILS AS USER ON OTT.OTT_ID = USER.OTT_ID ;

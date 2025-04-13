--  CREATING THE DATABASE

CREATE DATABASE bookStore;

-- USING THE DATABASE

USE bookStore;

-- CREATING TABLE PUBLISHER

CREATE TABLE publisher(
publisherId INT PRIMARY KEY AUTO_INCREMENT,
contact VARCHAR(100),
publisherName VARCHAR(40)
);

-- CREATING TABLE BOOKLANGUAGE

CREATE TABLE bookLanguage(
languageId INT PRIMARY KEY AUTO_INCREMENT,
langaugeName VARCHAR(30)
);

-- CREATING TABLE COUNTRY
CREATE TABLE country(
countryId INT PRIMARY KEY AUTO_INCREMENT,
countryName VARCHAR(20),
continent VARCHAR(20)
);

-- CREATING TABLE ADDRESSSTATUS

CREATE TABLE addressStatus(
addressStatusId INT PRIMARY KEY AUTO_INCREMENT,
statsuDescription VARCHAR(20)
);

-- CREATING TABLE SHIPPINGMETHOD

CREATE TABLE shippingMethod(
methodId INT PRIMARY KEY AUTO_INCREMENT,
cost INT,
methodrName VARCHAR(20)
);

-- INSERTING INTO PUBLISHERS TABLE
INSERT INTO publisher (publisherName, contact) VALUES
('Nebula Books', 'info@nebulabooks.com'),
('Starlight Press', 'hello@starlightpress.com'),
('Quantum Quill Publications', 'contact@quantumquill.com');

INSERT INTO bookLanguage (languageName) VALUES
('English'),
('Spanish'),
('French'),
('German');

INSERT INTO country (countryName, continent) VALUES
('United States', 'North America'),
('United Kingdom', 'Europe'),
('Canada', 'North America'),
('Kenya', 'Africa');

INSERT INTO addressStatus (statsuDescription) VALUES
('Current'),
('Old');

INSERT INTO shippingMethod (methodName, cost) VALUES
('Stardust Standard', 4.99),
('Moonbeam Express', 9.99),
('Celestial Overnight', 19.99);
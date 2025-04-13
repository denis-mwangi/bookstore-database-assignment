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

-- INSERTING INTO BOOKLANGUAGE TABLE
INSERT INTO bookLanguage (languageName) VALUES
('English'),
('Spanish'),
('French'),
('German');

-- INSERTING INTO COUNTRY TABLE
INSERT INTO country (countryName, continent) VALUES
('United States', 'North America'),
('United Kingdom', 'Europe'),
('Canada', 'North America'),
('Kenya', 'Africa');

-- INSERYING INTO ADDRESSSTATUS
INSERT INTO addressStatus (statsuDescription) VALUES
('Current'),
('Old');

-- INSERTING INTO SHIPPING METHOD
INSERT INTO shippingMethod (methodName, cost) VALUES
('Stardust Standard', 4.99),
('Moonbeam Express', 9.99),
('Celestial Overnight', 19.99);

-- CREATING TABLE ADDRESS

CREATE TABLE address(
addressId INT PRIMARY KEY AUTO_INCREMENT,
street VARCHAR(100),
city VARCHAR(100),
postalCode VARCHAR(10),
countryId INT,
states VARCHAR(25),
FOREIGN KEY (countryId) REFERENCES country(countryId)
);

-- CREATING TABLE CUSTOMERADDRESS

CREATE TABLE customerAddress(
customerId INT,
addressId INT,
addressStatusId INT,
FOREIGN KEY (customerId) REFERENCES customer(customerId),
FOREIGN KEY (addressId) REFERENCES address(addressId),
FOREIGN KEY (addressStatusId) REFERENCES addressStatus(addressStatusId)
);

-- CREATING TABLE CUSTORDER

CREATE TABLE custOrder(
orderId INT PRIMARY KEY AUTO_INCREMENT,
orderDate DATETIME,
totalAmount INT,
customerId INT,
methodId INT,
orderStatusId INT,
FOREIGN KEY (customerId) REFERENCES customer(customerId),
FOREIGN KEY (methodId) REFERENCES shippingMethod(methodId),
FOREIGN KEY (orderStatusId) REFERENCES orderStatus(orderStatusId)
);

-- CREATING TABLE ORDERLINE
CREATE TABLE orderLine(
orderLineId INT PRIMARY KEY AUTO_INCREMENT,
bookId INT,
quantity INT,
lineTotal INT,
orderId INT,
FOREIGN KEY (bookId) REFERENCES book(bookId),
FOREIGN KEY (orderId) REFERENCES custOrder(orderId)
);

-- CREATING TABLE ORDERHISTORY
CREATE TABLE orderHistory(
historyId INT PRIMARY KEY AUTO_INCREMENT,
orderId INT,
orderStatusId INT,
statusDate DATETIME,
notes VARCHAR(100),
FOREIGN KEY (orderId) REFERENCES custOrder(orderId),
FOREIGN KEY (orderStatusId) REFERENCES orderStatus(orderStatusId)
);

-- INSERTED DATA INTO ADDRESS TABLE
INSERT INTO address (street, city, states, postalCode, countryId) VALUES
('12 Dreamer’s Lane', 'Springfield', 'IL', '62701', 1),      
('34 Serene Blvd', 'London', '', 'SW1A1AA', 2),            
('56 Odyssey Ave', 'Toronto', 'ON', 'M4B1B3', 3),           
('90 Twilight Terrace', 'Los Angeles', 'CA', '90001', 1),    
('101 Starlight Court', 'Edinburgh', '', 'EH1 1AB', 2),    
('202 Comet Circle', 'Vancouver', 'BC', 'V5K0A1', 3),        
('404 Meteor Dr', 'New York', 'NY', '10001', 1),               
('505 Eclipse St', 'Birmingham', '', 'B1 1AA', 2),        
('606 Savanna View', 'Nairobi', 'Nairobi County', '00100', 4),
('707 Rift Valley Rd', 'Eldoret', 'Uasin Gishu', '30100', 4);  

-- INSERTED DATA INTO CUSTOMERADDRESS
INSERT INTO customerAddress (customerId, addressId, addressStatusId) VALUES
(1, 1, 1),
(1, 5, 2),   
(2, 2, 1),
(2, 10, 2),  
(3, 3, 1),
(4, 4, 1),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 1),
(9, 1, 2),
(10, 2, 1);

-- INSERTED DATA INTO CUSTORDER
INSERT INTO custOrder (orderDate, totalAmount, customerId, methodId, orderStatusId) VALUES
('2025-04-01 10:30:00', 31.48, 1, 1, 1),  
('2025-04-02 15:45:00', 57.24, 2, 2, 2),  
('2025-04-03 12:00:00', 20.99, 3, 1, 3),  
('2025-04-04 09:15:00', 45.50, 4, 3, 1),
('2025-04-05 14:20:00', 68.75, 5, 2, 2),
('2025-04-06 11:00:00', 39.99, 6, 1, 1),
('2025-04-07 16:35:00', 52.10, 7, 3, 2),
('2025-04-08 13:45:00', 80.20, 8, 2, 3),
('2025-04-09 10:10:00', 27.50, 9, 1, 1),
('2025-04-10 17:55:00', 66.00, 10, 3, 4);

-- INSERTED DATA INTO ORDER LINE
INSERT INTO orderLine (orderId, bookId, quantity, lineTotal) VALUES
(1, 1, 1, 15.99),
(1, 2, 1, 15.49),
(2, 3, 2, 37.50),
(2, 5, 1, 19.74),
(3, 4, 1, 14.99),
(3, 6, 1, 16.50),
(4, 7, 2, 27.50),
(4, 8, 1, 19.25),
(5, 9, 2, 35.60),
(5, 10, 1, 11.95),
(6, 11, 1, 14.25),
(7, 12, 1, 18.00),
(8, 13, 1, 16.99),
(9, 14, 2, 43.00),
(10, 15, 1, 12.99),
(10, 16, 1, 19.75);

-- INSERTED DATA INTO ORDER HISTORY
INSERT INTO orderHistory (orderId, orderStatusId, statusDate, notes) VALUES
(1, 1, '2025-04-01 10:30:00', 'Order received; magic is in the air.'),
(1, 2, '2025-04-01 11:15:00', 'Payment verified and processing initiated.'),
(2, 2, '2025-04-02 15:45:00', 'Order confirmed; embarking on a swift journey.'),
(3, 3, '2025-04-03 12:00:00', 'Order delivered; destined for greatness.'),
(4, 1, '2025-04-04 09:15:00', 'Order received and queued for processing.'),
(4, 2, '2025-04-04 10:00:00', 'Payment processed; order in transit.'),
(5, 1, '2025-04-05 14:20:00', 'Order placed by customer.'),
(5, 2, '2025-04-05 15:00:00', 'Order packed and ready for shipping.'),
(6, 1, '2025-04-06 11:00:00', 'New order received.'),
(7, 2, '2025-04-07 16:35:00', 'Order confirmed; dispatched via premium service.'),
(8, 3, '2025-04-08 13:45:00', 'Order delivered with stellar service.'),
(9, 1, '2025-04-09 10:10:00', 'Order registered and awaiting payment.'),
(10, 4, '2025-04-10 17:55:00', 'Order canceled by customer request.'),
(10, 1, '2025-04-10 09:00:00', 'Initial order recorded.'),
(10, 2, '2025-04-10 10:30:00', 'Payment processed before cancellation.');
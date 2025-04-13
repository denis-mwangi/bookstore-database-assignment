-- ======== QUERIES FOR CREATING THE DATABASE ========

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

-- CREATING TABLE ORDERSTATUS

CREATE TABLE orderStatus(
orderStatusId INT PRIMARY KEY AUTO_INCREMENT,
orderDescription VARCHAR(20)
);

-- CREATING TABLE AUTHORS

CREATE TABLE authors(
authorId INT PRIMARY KEY AUTO_INCREMENT,
firstName VARCHAR(100),
secondName VARCHAR(100),
email VARCHAR(100),
contact VARCHAR(20),
country VARCHAR(20),
bio VARCHAR(200)
);

-- CREATING TABLE BOOK

CREATE TABLE book(
bookId INT PRIMARY KEY AUTO_INCREMENT,
languageId INT,
publicationYear YEAR,
isbnNumber VARCHAR(70),
bookTitle VARCHAR(100),
publisherId INT,
price INT,
stock INT,
FOREIGN KEY (languageId) REFERENCES bookLanguage(languageId),
FOREIGN KEY (publisherId) REFERENCES publisher(publisherId)
);

-- CREATING TABLE BOOKAUTHOR

CREATE TABLE booKAuthor(
bookId INT NOT NULL,
authorId INT NOT NULL,
FOREIGN KEY (bookId) REFERENCES book(bookId),
FOREIGN KEY (authorId) REFERENCES authors(authorId)
);

-- CREATING TABLE CUSTOMER

CREATE TABLE customer(
customerId INT PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR(30),
email VARCHAR(100),
contact VARCHAR(25)
);

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






-- ======== QUERIES FOR INSERTING DATA INTO THE TABLE ========

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

-- ADDING DATA TO ORDERSTATUS
INSERT INTO orderStatus (orderDescription) VALUES
('Awaiting Enchantment'),
('In Transit'),
('Delivered to Destiny'),
('Order Canceled');

-- ADDING DATA TO AUTHORS
INSERT INTO authors (firstName, secondName, email, contact, country, bio) 
VALUES
('Liam', 'Jackson', 'liam.jackson@usbooks.com', '+1-2025550143', 'United States', 'Liam is a contemporary fiction writer from New York, known for his compelling character development and sharp social commentary.'),
('Emily', 'Smith', 'emily.smith@usreaders.com', '+1-3055550234', 'United States', 'Emily is a bestselling author of young adult novels, celebrated for her storytelling prowess and deeply relatable characters.'),
('Olivia', 'Johnson', 'olivia.johnson@usnovels.com', '+1-6175550333', 'United States', 'Olivia’s literary works span various genres, from historical fiction to thriller, captivating readers worldwide.'),
('James', 'Williams', 'james.williams@uslit.com', '+1-2135550456', 'United States', 'James writes novels that explore themes of identity, race, and societal structure, often drawing on his experiences in California.'),
('Chloe', 'Brown', 'chloe.brown@uspublishing.com', '+1-4045550567', 'United States', 'Chloe is a renowned novelist in the romance genre, best known for her heartwarming tales set in small towns.'),
('Kwame', 'Mensah', 'kwame.mensah@ghanabooks.com', '+233-244567890', 'Ghana', 'Kwame is a poet and short story writer who explores themes of cultural identity and post-colonial struggles in his works.'),
('Ama', 'Osei', 'ama.osei@ghanareads.com', '+233-264567890', 'Ghana', 'Ama is a fiction writer whose books often depict the challenges faced by women in contemporary Ghanaian society.'),
('Kojo', 'Adom', 'kojo.adom@ghanalit.com', '+233-272345678', 'Ghana', 'Kojo is a literary critic and novelist, known for his sharp observations on politics and history in Ghana.'),
('Kofi', 'Boateng', 'kofi.boateng@ghanaebooks.com', '+233-243456789', 'Ghana', 'Kofi’s novels combine traditional African folklore with modern storytelling techniques, making him a favorite among global readers.'),
('Esi', 'Asamoah', 'esi.asamoah@ghanapublish.com', '+233-245678901', 'Ghana', 'Esi is a popular author of historical fiction, whose work often focuses on the rich cultural heritage of Ghana and its people.'),
('Musa', 'Kariuki', 'musa.kariuki@kenyabooks.com', '+254-722345678', 'Kenya', 'Musa writes deeply emotional novels that explore the complexities of family relationships in modern Kenya.'),
('Amina', 'Odinga', 'amina.odinga@kenyareads.com', '+254-733456789', 'Kenya', 'Amina is a journalist turned author, focusing on writing about social justice and the rights of women in East Africa.'),
('Isaac', 'Mwangi', 'isaac.mwangi@kenyalit.com', '+254-720123456', 'Kenya', 'Isaac writes fast-paced thrillers, blending suspense with elements of African folklore and mythology.'),
('Nia', 'Ochieng', 'nia.ochieng@kenyapublish.com', '+254-701234567', 'Kenya', 'Nia is a children’s book author whose stories center around the adventures of young children in rural Kenya.'),
('Jomo', 'Kenyatta', 'jomo.kenyatta@kenyabooks.com', '+254-710234567', 'Kenya', 'Jomo, a passionate historian and writer, focuses on the historical narratives and independence movements of Kenya.'),
('Thuli', 'Mlambo', 'thuli.mlambo@southafricabooks.com', '+27-719876543', 'South Africa', 'Thuli is an acclaimed South African writer whose works touch on the socio-political landscape and the legacy of apartheid.'),
('Jabulani', 'Ndlovu', 'jabulani.ndlovu@southafricabooks.co.za', '+27-711234567', 'South Africa', 'Jabulani is an emerging poet and novelist, focusing on themes of community, resilience, and the rural experience in South Africa.'),
('Zanele', 'Nkosi', 'zanele.nkosi@saauthors.co.za', '+27-783456789', 'South Africa', 'Zanele’s novels explore the complex dynamics of South African families post-apartheid and have received critical acclaim.'),
('Teboho', 'Mokgosi', 'teboho.mokgosi@saeditors.co.za', '+27-784567890', 'South Africa', 'Teboho is a fiction and non-fiction writer, known for his critical works on South Africa’s social and political transitions.'),
('Sibusiso', 'Zulu', 'sibusiso.zulu@booksfromsa.co.za', '+27-781234567', 'South Africa', 'Sibusiso’s writing sheds light on the challenges and joys of urban life in South Africa, particularly in Johannesburg.'),
('Oliver', 'Harrison', 'oliver.harrison@ukbooks.com', '+44-2075550123', 'United Kingdom', 'Oliver writes historical fiction and is passionate about portraying the untold stories of British history through compelling characters.'),
('Sophia', 'Davies', 'sophia.davies@uknovels.com', '+44-1615550234', 'United Kingdom', 'Sophia’s novels are filled with rich, emotional depth, and she often writes about love, loss, and personal growth in the context of modern Britain.');

-- ADDING DATA TO BOOK 
INSERT INTO book (bookTitle, isbnNumber, publicationYear, languageId, publisherId, price, stock) VALUES
('Moonlit Mirage', '9781234567890', 2001, 1, 7, 15.99, 120),
('Echoes of the Forgotten', '9780987654321', 1998, 1, 8, 12.49, 80),
('Celestial Voyage', '9781112131415', 2010, 1, 9, 18.75, 95),
('Chronicles of the Ember', '9781514131211', 2005, 1, 9, 14.99, 60),
('Whispers in the Wind', '9781617181920', 2015, 1, 8, 20.99, 150),
('Starlight Sonata', '9781718192021', 2003, 1, 7, 16.50, 110),
('Aurora Dreams', '9781819202122', 1995, 1, 8, 13.75, 90),
('Midnight Rhapsody', '9781920212223', 2008, 1, 9, 19.25, 75),
('Enchanted Echo', '9782021222324', 2012, 1, 7, 17.80, 130),
('Fables of the Forgotten', '9782122232425', 1999, 1, 8, 11.95, 85),
('Mystic Mornings', '9782223242526', 2006, 1, 7, 14.25, 105),
('Reverie & Ruin', '9782324252627', 2011, 1, 8, 18.00, 65),
('The Dragon’s Diary', '9782425262728', 2000, 1, 8, 16.99, 95),
('Celestial Citadel', '9782526272829', 2004, 1, 9, 21.50, 70),
('Serenade of Shadows', '9782627282930', 1997, 1, 8, 12.99, 140),
('Tales of Twilight', '9782728293031', 2013, 1, 9, 19.75, 80),
('Eclipse of Eternity', '9782829303132', 2009, 1, 9, 20.25, 100),
('Hymns of the Horizon', '9782930313233', 2007, 1, 8, 15.50, 115),
('Legends of Luminescence', '9783031323334', 1996, 1, 9, 13.50, 90),
('Ballad of the Breeze', '9783132333435', 2014, 1, 9, 17.99, 125);

-- ADDING DATA TO BOOKAUTHOR 
INSERT INTO bookAuthor (bookId, authorId) VALUES
(1, 1),
(1, 5),
(2, 2), 
(3, 3), 
(4, 4), 
(5, 1),  
(5, 4),
(6, 6), 
(7, 7), 
(8, 8), 
(9, 9),  
(10, 10),
(11, 11), 
(12, 12),  
(13, 13),  
(14, 14), 
(15, 15),   
(16, 16),  
(17, 17), 
(18, 18),  
(19, 19),   
(20, 20),  
(20, 2);   

-- ADDING DATA TO CUSTOMER 
INSERT INTO customer (customerName, email, contact) VALUES
('Luna-Evergreen', 'luna.evergreen@novastory.com', '555-0101'),
('Orion-Celeste', 'orion.celeste@novastory.com', '555-0202'),
('Nova-Stardust', 'nova.stardust@novastory.com', '555-0303'),
('Aurora-Skye', 'aurora.skye@novastory.com', '555-0404'),
('Sol-Phoenix', 'sol.phoenix@novastory.com', '555-0505'),
('Celestine-River', 'celestine.river@novastory.com', '555-0606'),
('Eos-Dawn', 'eos.dawn@novastory.com', '555-0707'),
('Atlas-Wilder', 'atlas.wilder@novastory.com', '555-0808'),
('Echo-Reverie', 'echo.reverie@novastory.com', '555-0909'),
('Zephyr-Winds', 'zephyr.winds@novastory.com', '555-1010');


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

-- ======== SETTING  USER ROLES =======
CREATE ROLE 'bookAdmin'; 
CREATE ROLE 'bookManager';
CREATE ROLE 'salesAgent';
CREATE ROLE 'dataAnaLys';

-- ======== GRANTING PRIVILEGES TO ROLES ========
GRANT ALL PRIVILEGES ON bookStore.* TO 'bookAdmin';

GRANT SELECT, INSERT, UPDATE, DELETE ON bookStore.* TO 'bookManager';

GRANT SELECT, INSERT, UPDATE ON bookStore.custOrder TO 'salesAgent';
GRANT SELECT, INSERT, UPDATE ON bookStore.orderLine TO 'salesAgent';
GRANT SELECT, INSERT, UPDATE ON bookStore.customer TO 'salesAgent';
GRANT SELECT, INSERT, UPDATE ON bookStore.customerAddress TO 'salesAgent';

GRANT SELECT ON bookStore.* TO 'dataAnalyst';

-- ======== CREATING THE SAMPLE USERS
CREATE USER 'adminUser'@'localhost' IDENTIFIED BY 'StrongPassword1!';
CREATE USER 'imma'@'%' IDENTIFIED BY 'pass123';
CREATE USER 'suzzy'@'%' IDENTIFIED BY 'pass12';
CREATE USER 'denoe'@'%' IDENTIFIED BY 'pass1';

GRANT 'bookAdmin' TO 'adminUser'@'localhost';
GRANT 'bookManager' TO 'imma'@'%';
GRANT 'salesAgent' TO 'suzzy'@'%';
GRANT 'dataAnalyst' TO 'denoe'@'%';
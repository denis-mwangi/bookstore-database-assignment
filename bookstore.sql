-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `addressId` int NOT NULL AUTO_INCREMENT,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL,
  `countryId` int DEFAULT NULL,
  `states` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `countryId` (`countryId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`countryId`) REFERENCES `country` (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'12 Dreamer’s Lane','Springfield','62701',1,'IL'),(2,'34 Serene Blvd','London','SW1A1AA',2,''),(3,'56 Odyssey Ave','Toronto','M4B1B3',3,'ON'),(4,'90 Twilight Terrace','Los Angeles','90001',1,'CA'),(5,'101 Starlight Court','Edinburgh','EH1 1AB',2,''),(6,'202 Comet Circle','Vancouver','V5K0A1',3,'BC'),(7,'404 Meteor Dr','New York','10001',1,'NY'),(8,'505 Eclipse St','Birmingham','B1 1AA',2,''),(9,'606 Savanna View','Nairobi','00100',4,'Nairobi County'),(10,'707 Rift Valley Rd','Eldoret','30100',4,'Uasin Gishu'),(11,'12 Dreamer’s Lane','Springfield','62701',1,'IL'),(12,'34 Serene Blvd','London','SW1A1AA',2,''),(13,'56 Odyssey Ave','Toronto','M4B1B3',3,'ON'),(14,'90 Twilight Terrace','Los Angeles','90001',1,'CA'),(15,'101 Starlight Court','Edinburgh','EH1 1AB',2,''),(16,'202 Comet Circle','Vancouver','V5K0A1',3,'BC'),(17,'404 Meteor Dr','New York','10001',1,'NY'),(18,'505 Eclipse St','Birmingham','B1 1AA',2,''),(19,'606 Savanna View','Nairobi','00100',4,'Nairobi County'),(20,'707 Rift Valley Rd','Eldoret','30100',4,'Uasin Gishu'),(21,'12 Dreamer’s Lane','Springfield','62701',1,'IL'),(22,'34 Serene Blvd','London','SW1A1AA',2,''),(23,'56 Odyssey Ave','Toronto','M4B1B3',3,'ON'),(24,'90 Twilight Terrace','Los Angeles','90001',1,'CA'),(25,'101 Starlight Court','Edinburgh','EH1 1AB',2,''),(26,'202 Comet Circle','Vancouver','V5K0A1',3,'BC'),(27,'404 Meteor Dr','New York','10001',1,'NY'),(28,'505 Eclipse St','Birmingham','B1 1AA',2,''),(29,'606 Savanna View','Nairobi','00100',4,'Nairobi County'),(30,'707 Rift Valley Rd','Eldoret','30100',4,'Uasin Gishu');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addressstatus`
--

DROP TABLE IF EXISTS `addressstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addressstatus` (
  `addressStatusId` int NOT NULL AUTO_INCREMENT,
  `statsuDescription` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`addressStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addressstatus`
--

LOCK TABLES `addressstatus` WRITE;
/*!40000 ALTER TABLE `addressstatus` DISABLE KEYS */;
INSERT INTO `addressstatus` VALUES (1,'Current'),(2,'Old'),(3,'Current'),(4,'Old');
/*!40000 ALTER TABLE `addressstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `authorId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) DEFAULT NULL,
  `secondName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `bio` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`authorId`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Liam','Jackson','liam.jackson@usbooks.com','+1-2025550143','United States','Liam is a contemporary fiction writer from New York, known for his compelling character development and sharp social commentary.'),(2,'Emily','Smith','emily.smith@usreaders.com','+1-3055550234','United States','Emily is a bestselling author of young adult novels, celebrated for her storytelling prowess and deeply relatable characters.'),(3,'Olivia','Johnson','olivia.johnson@usnovels.com','+1-6175550333','United States','Olivia’s literary works span various genres, from historical fiction to thriller, captivating readers worldwide.'),(4,'James','Williams','james.williams@uslit.com','+1-2135550456','United States','James writes novels that explore themes of identity, race, and societal structure, often drawing on his experiences in California.'),(5,'Chloe','Brown','chloe.brown@uspublishing.com','+1-4045550567','United States','Chloe is a renowned novelist in the romance genre, best known for her heartwarming tales set in small towns.'),(6,'Kwame','Mensah','kwame.mensah@ghanabooks.com','+233-244567890','Ghana','Kwame is a poet and short story writer who explores themes of cultural identity and post-colonial struggles in his works.'),(7,'Ama','Osei','ama.osei@ghanareads.com','+233-264567890','Ghana','Ama is a fiction writer whose books often depict the challenges faced by women in contemporary Ghanaian society.'),(8,'Kojo','Adom','kojo.adom@ghanalit.com','+233-272345678','Ghana','Kojo is a literary critic and novelist, known for his sharp observations on politics and history in Ghana.'),(9,'Kofi','Boateng','kofi.boateng@ghanaebooks.com','+233-243456789','Ghana','Kofi’s novels combine traditional African folklore with modern storytelling techniques, making him a favorite among global readers.'),(10,'Esi','Asamoah','esi.asamoah@ghanapublish.com','+233-245678901','Ghana','Esi is a popular author of historical fiction, whose work often focuses on the rich cultural heritage of Ghana and its people.'),(11,'Musa','Kariuki','musa.kariuki@kenyabooks.com','+254-722345678','Kenya','Musa writes deeply emotional novels that explore the complexities of family relationships in modern Kenya.'),(12,'Amina','Odinga','amina.odinga@kenyareads.com','+254-733456789','Kenya','Amina is a journalist turned author, focusing on writing about social justice and the rights of women in East Africa.'),(13,'Isaac','Mwangi','isaac.mwangi@kenyalit.com','+254-720123456','Kenya','Isaac writes fast-paced thrillers, blending suspense with elements of African folklore and mythology.'),(14,'Nia','Ochieng','nia.ochieng@kenyapublish.com','+254-701234567','Kenya','Nia is a children’s book author whose stories center around the adventures of young children in rural Kenya.'),(15,'Jomo','Kenyatta','jomo.kenyatta@kenyabooks.com','+254-710234567','Kenya','Jomo, a passionate historian and writer, focuses on the historical narratives and independence movements of Kenya.'),(16,'Thuli','Mlambo','thuli.mlambo@southafricabooks.com','+27-719876543','South Africa','Thuli is an acclaimed South African writer whose works touch on the socio-political landscape and the legacy of apartheid.'),(17,'Jabulani','Ndlovu','jabulani.ndlovu@southafricabooks.co.za','+27-711234567','South Africa','Jabulani is an emerging poet and novelist, focusing on themes of community, resilience, and the rural experience in South Africa.'),(18,'Zanele','Nkosi','zanele.nkosi@saauthors.co.za','+27-783456789','South Africa','Zanele’s novels explore the complex dynamics of South African families post-apartheid and have received critical acclaim.'),(19,'Teboho','Mokgosi','teboho.mokgosi@saeditors.co.za','+27-784567890','South Africa','Teboho is a fiction and non-fiction writer, known for his critical works on South Africa’s social and political transitions.'),(20,'Sibusiso','Zulu','sibusiso.zulu@booksfromsa.co.za','+27-781234567','South Africa','Sibusiso’s writing sheds light on the challenges and joys of urban life in South Africa, particularly in Johannesburg.'),(21,'Oliver','Harrison','oliver.harrison@ukbooks.com','+44-2075550123','United Kingdom','Oliver writes historical fiction and is passionate about portraying the untold stories of British history through compelling characters.'),(22,'Sophia','Davies','sophia.davies@uknovels.com','+44-1615550234','United Kingdom','Sophia’s novels are filled with rich, emotional depth, and she often writes about love, loss, and personal growth in the context of modern Britain.'),(23,'Liam','Jackson','liam.jackson@usbooks.com','+1-2025550143','United States','Liam is a contemporary fiction writer from New York, known for his compelling character development and sharp social commentary.'),(24,'Emily','Smith','emily.smith@usreaders.com','+1-3055550234','United States','Emily is a bestselling author of young adult novels, celebrated for her storytelling prowess and deeply relatable characters.'),(25,'Olivia','Johnson','olivia.johnson@usnovels.com','+1-6175550333','United States','Olivia’s literary works span various genres, from historical fiction to thriller, captivating readers worldwide.'),(26,'James','Williams','james.williams@uslit.com','+1-2135550456','United States','James writes novels that explore themes of identity, race, and societal structure, often drawing on his experiences in California.'),(27,'Chloe','Brown','chloe.brown@uspublishing.com','+1-4045550567','United States','Chloe is a renowned novelist in the romance genre, best known for her heartwarming tales set in small towns.'),(28,'Kwame','Mensah','kwame.mensah@ghanabooks.com','+233-244567890','Ghana','Kwame is a poet and short story writer who explores themes of cultural identity and post-colonial struggles in his works.'),(29,'Ama','Osei','ama.osei@ghanareads.com','+233-264567890','Ghana','Ama is a fiction writer whose books often depict the challenges faced by women in contemporary Ghanaian society.'),(30,'Kojo','Adom','kojo.adom@ghanalit.com','+233-272345678','Ghana','Kojo is a literary critic and novelist, known for his sharp observations on politics and history in Ghana.'),(31,'Kofi','Boateng','kofi.boateng@ghanaebooks.com','+233-243456789','Ghana','Kofi’s novels combine traditional African folklore with modern storytelling techniques, making him a favorite among global readers.'),(32,'Esi','Asamoah','esi.asamoah@ghanapublish.com','+233-245678901','Ghana','Esi is a popular author of historical fiction, whose work often focuses on the rich cultural heritage of Ghana and its people.'),(33,'Musa','Kariuki','musa.kariuki@kenyabooks.com','+254-722345678','Kenya','Musa writes deeply emotional novels that explore the complexities of family relationships in modern Kenya.'),(34,'Amina','Odinga','amina.odinga@kenyareads.com','+254-733456789','Kenya','Amina is a journalist turned author, focusing on writing about social justice and the rights of women in East Africa.'),(35,'Isaac','Mwangi','isaac.mwangi@kenyalit.com','+254-720123456','Kenya','Isaac writes fast-paced thrillers, blending suspense with elements of African folklore and mythology.'),(36,'Nia','Ochieng','nia.ochieng@kenyapublish.com','+254-701234567','Kenya','Nia is a children’s book author whose stories center around the adventures of young children in rural Kenya.'),(37,'Jomo','Kenyatta','jomo.kenyatta@kenyabooks.com','+254-710234567','Kenya','Jomo, a passionate historian and writer, focuses on the historical narratives and independence movements of Kenya.'),(38,'Thuli','Mlambo','thuli.mlambo@southafricabooks.com','+27-719876543','South Africa','Thuli is an acclaimed South African writer whose works touch on the socio-political landscape and the legacy of apartheid.'),(39,'Jabulani','Ndlovu','jabulani.ndlovu@southafricabooks.co.za','+27-711234567','South Africa','Jabulani is an emerging poet and novelist, focusing on themes of community, resilience, and the rural experience in South Africa.'),(40,'Zanele','Nkosi','zanele.nkosi@saauthors.co.za','+27-783456789','South Africa','Zanele’s novels explore the complex dynamics of South African families post-apartheid and have received critical acclaim.'),(41,'Teboho','Mokgosi','teboho.mokgosi@saeditors.co.za','+27-784567890','South Africa','Teboho is a fiction and non-fiction writer, known for his critical works on South Africa’s social and political transitions.'),(42,'Sibusiso','Zulu','sibusiso.zulu@booksfromsa.co.za','+27-781234567','South Africa','Sibusiso’s writing sheds light on the challenges and joys of urban life in South Africa, particularly in Johannesburg.'),(43,'Oliver','Harrison','oliver.harrison@ukbooks.com','+44-2075550123','United Kingdom','Oliver writes historical fiction and is passionate about portraying the untold stories of British history through compelling characters.'),(44,'Sophia','Davies','sophia.davies@uknovels.com','+44-1615550234','United Kingdom','Sophia’s novels are filled with rich, emotional depth, and she often writes about love, loss, and personal growth in the context of modern Britain.'),(45,'Liam','Jackson','liam.jackson@usbooks.com','+1-2025550143','United States','Liam is a contemporary fiction writer from New York, known for his compelling character development and sharp social commentary.'),(46,'Emily','Smith','emily.smith@usreaders.com','+1-3055550234','United States','Emily is a bestselling author of young adult novels, celebrated for her storytelling prowess and deeply relatable characters.'),(47,'Olivia','Johnson','olivia.johnson@usnovels.com','+1-6175550333','United States','Olivia’s literary works span various genres, from historical fiction to thriller, captivating readers worldwide.'),(48,'James','Williams','james.williams@uslit.com','+1-2135550456','United States','James writes novels that explore themes of identity, race, and societal structure, often drawing on his experiences in California.'),(49,'Chloe','Brown','chloe.brown@uspublishing.com','+1-4045550567','United States','Chloe is a renowned novelist in the romance genre, best known for her heartwarming tales set in small towns.'),(50,'Kwame','Mensah','kwame.mensah@ghanabooks.com','+233-244567890','Ghana','Kwame is a poet and short story writer who explores themes of cultural identity and post-colonial struggles in his works.'),(51,'Ama','Osei','ama.osei@ghanareads.com','+233-264567890','Ghana','Ama is a fiction writer whose books often depict the challenges faced by women in contemporary Ghanaian society.'),(52,'Kojo','Adom','kojo.adom@ghanalit.com','+233-272345678','Ghana','Kojo is a literary critic and novelist, known for his sharp observations on politics and history in Ghana.'),(53,'Kofi','Boateng','kofi.boateng@ghanaebooks.com','+233-243456789','Ghana','Kofi’s novels combine traditional African folklore with modern storytelling techniques, making him a favorite among global readers.'),(54,'Esi','Asamoah','esi.asamoah@ghanapublish.com','+233-245678901','Ghana','Esi is a popular author of historical fiction, whose work often focuses on the rich cultural heritage of Ghana and its people.'),(55,'Musa','Kariuki','musa.kariuki@kenyabooks.com','+254-722345678','Kenya','Musa writes deeply emotional novels that explore the complexities of family relationships in modern Kenya.'),(56,'Amina','Odinga','amina.odinga@kenyareads.com','+254-733456789','Kenya','Amina is a journalist turned author, focusing on writing about social justice and the rights of women in East Africa.'),(57,'Isaac','Mwangi','isaac.mwangi@kenyalit.com','+254-720123456','Kenya','Isaac writes fast-paced thrillers, blending suspense with elements of African folklore and mythology.'),(58,'Nia','Ochieng','nia.ochieng@kenyapublish.com','+254-701234567','Kenya','Nia is a children’s book author whose stories center around the adventures of young children in rural Kenya.'),(59,'Jomo','Kenyatta','jomo.kenyatta@kenyabooks.com','+254-710234567','Kenya','Jomo, a passionate historian and writer, focuses on the historical narratives and independence movements of Kenya.'),(60,'Thuli','Mlambo','thuli.mlambo@southafricabooks.com','+27-719876543','South Africa','Thuli is an acclaimed South African writer whose works touch on the socio-political landscape and the legacy of apartheid.'),(61,'Jabulani','Ndlovu','jabulani.ndlovu@southafricabooks.co.za','+27-711234567','South Africa','Jabulani is an emerging poet and novelist, focusing on themes of community, resilience, and the rural experience in South Africa.'),(62,'Zanele','Nkosi','zanele.nkosi@saauthors.co.za','+27-783456789','South Africa','Zanele’s novels explore the complex dynamics of South African families post-apartheid and have received critical acclaim.'),(63,'Teboho','Mokgosi','teboho.mokgosi@saeditors.co.za','+27-784567890','South Africa','Teboho is a fiction and non-fiction writer, known for his critical works on South Africa’s social and political transitions.'),(64,'Sibusiso','Zulu','sibusiso.zulu@booksfromsa.co.za','+27-781234567','South Africa','Sibusiso’s writing sheds light on the challenges and joys of urban life in South Africa, particularly in Johannesburg.'),(65,'Oliver','Harrison','oliver.harrison@ukbooks.com','+44-2075550123','United Kingdom','Oliver writes historical fiction and is passionate about portraying the untold stories of British history through compelling characters.'),(66,'Sophia','Davies','sophia.davies@uknovels.com','+44-1615550234','United Kingdom','Sophia’s novels are filled with rich, emotional depth, and she often writes about love, loss, and personal growth in the context of modern Britain.');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bookId` int NOT NULL AUTO_INCREMENT,
  `languageId` int DEFAULT NULL,
  `publicationYear` year DEFAULT NULL,
  `isbnNumber` varchar(70) DEFAULT NULL,
  `bookTitle` varchar(100) DEFAULT NULL,
  `publisherId` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`bookId`),
  KEY `languageId` (`languageId`),
  KEY `publisherId` (`publisherId`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`languageId`) REFERENCES `booklanguage` (`languageId`),
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`publisherId`) REFERENCES `publisher` (`publisherId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,1,2001,'9781234567890','Moonlit Mirage',7,16,120),(2,1,1998,'9780987654321','Echoes of the Forgotten',8,12,80),(3,1,2010,'9781112131415','Celestial Voyage',9,19,95),(4,1,2005,'9781514131211','Chronicles of the Ember',9,15,60),(5,1,2015,'9781617181920','Whispers in the Wind',8,21,150),(6,1,2003,'9781718192021','Starlight Sonata',7,17,110),(7,1,1995,'9781819202122','Aurora Dreams',8,14,90),(8,1,2008,'9781920212223','Midnight Rhapsody',9,19,75),(9,1,2012,'9782021222324','Enchanted Echo',7,18,130),(10,1,1999,'9782122232425','Fables of the Forgotten',8,12,85),(11,1,2006,'9782223242526','Mystic Mornings',7,14,105),(12,1,2011,'9782324252627','Reverie & Ruin',8,18,65),(13,1,2000,'9782425262728','The Dragon’s Diary',8,17,95),(14,1,2004,'9782526272829','Celestial Citadel',9,22,70),(15,1,1997,'9782627282930','Serenade of Shadows',8,13,140),(16,1,2013,'9782728293031','Tales of Twilight',9,20,80),(17,1,2009,'9782829303132','Eclipse of Eternity',9,20,100),(18,1,2007,'9782930313233','Hymns of the Horizon',8,16,115),(19,1,1996,'9783031323334','Legends of Luminescence',9,14,90),(20,1,2014,'9783132333435','Ballad of the Breeze',9,18,125),(21,1,2001,'9781234567890','Moonlit Mirage',7,16,120),(22,1,1998,'9780987654321','Echoes of the Forgotten',8,12,80),(23,1,2010,'9781112131415','Celestial Voyage',9,19,95),(24,1,2005,'9781514131211','Chronicles of the Ember',9,15,60),(25,1,2015,'9781617181920','Whispers in the Wind',8,21,150),(26,1,2003,'9781718192021','Starlight Sonata',7,17,110),(27,1,1995,'9781819202122','Aurora Dreams',8,14,90),(28,1,2008,'9781920212223','Midnight Rhapsody',9,19,75),(29,1,2012,'9782021222324','Enchanted Echo',7,18,130),(30,1,1999,'9782122232425','Fables of the Forgotten',8,12,85),(31,1,2006,'9782223242526','Mystic Mornings',7,14,105),(32,1,2011,'9782324252627','Reverie & Ruin',8,18,65),(33,1,2000,'9782425262728','The Dragon’s Diary',8,17,95),(34,1,2004,'9782526272829','Celestial Citadel',9,22,70),(35,1,1997,'9782627282930','Serenade of Shadows',8,13,140),(36,1,2013,'9782728293031','Tales of Twilight',9,20,80),(37,1,2009,'9782829303132','Eclipse of Eternity',9,20,100),(38,1,2007,'9782930313233','Hymns of the Horizon',8,16,115),(39,1,1996,'9783031323334','Legends of Luminescence',9,14,90),(40,1,2014,'9783132333435','Ballad of the Breeze',9,18,125);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookauthor`
--

DROP TABLE IF EXISTS `bookauthor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookauthor` (
  `bookId` int NOT NULL,
  `authorId` int NOT NULL,
  KEY `bookId` (`bookId`),
  KEY `authorId` (`authorId`),
  CONSTRAINT `bookauthor_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `book` (`bookId`),
  CONSTRAINT `bookauthor_ibfk_2` FOREIGN KEY (`authorId`) REFERENCES `authors` (`authorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookauthor`
--

LOCK TABLES `bookauthor` WRITE;
/*!40000 ALTER TABLE `bookauthor` DISABLE KEYS */;
INSERT INTO `bookauthor` VALUES (1,1),(1,5),(2,2),(3,3),(4,4),(5,1),(5,4),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(20,2);
/*!40000 ALTER TABLE `bookauthor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booklanguage`
--

DROP TABLE IF EXISTS `booklanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booklanguage` (
  `languageId` int NOT NULL AUTO_INCREMENT,
  `langaugeName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`languageId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booklanguage`
--

LOCK TABLES `booklanguage` WRITE;
/*!40000 ALTER TABLE `booklanguage` DISABLE KEYS */;
INSERT INTO `booklanguage` VALUES (1,'English'),(2,'Spanish'),(3,'French'),(4,'German'),(5,'English'),(6,'Spanish'),(7,'French'),(8,'German');
/*!40000 ALTER TABLE `booklanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `countryId` int NOT NULL AUTO_INCREMENT,
  `countryName` varchar(20) DEFAULT NULL,
  `continent` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`countryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'United States','North America'),(2,'United Kingdom','Europe'),(3,'Canada','North America'),(4,'Kenya','Africa'),(5,'United States','North America'),(6,'United Kingdom','Europe'),(7,'Canada','North America'),(8,'Kenya','Africa');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerId` int NOT NULL AUTO_INCREMENT,
  `customerName` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Luna-Evergreen','luna.evergreen@novastory.com','555-0101'),(2,'Orion-Celeste','orion.celeste@novastory.com','555-0202'),(3,'Nova-Stardust','nova.stardust@novastory.com','555-0303'),(4,'Aurora-Skye','aurora.skye@novastory.com','555-0404'),(5,'Sol-Phoenix','sol.phoenix@novastory.com','555-0505'),(6,'Celestine-River','celestine.river@novastory.com','555-0606'),(7,'Eos-Dawn','eos.dawn@novastory.com','555-0707'),(8,'Atlas-Wilder','atlas.wilder@novastory.com','555-0808'),(9,'Echo-Reverie','echo.reverie@novastory.com','555-0909'),(10,'Zephyr-Winds','zephyr.winds@novastory.com','555-1010');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customeraddress`
--

DROP TABLE IF EXISTS `customeraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customeraddress` (
  `customerId` int DEFAULT NULL,
  `addressId` int DEFAULT NULL,
  `addressStatusId` int DEFAULT NULL,
  KEY `customerId` (`customerId`),
  KEY `addressId` (`addressId`),
  KEY `addressStatusId` (`addressStatusId`),
  CONSTRAINT `customeraddress_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`),
  CONSTRAINT `customeraddress_ibfk_2` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressId`),
  CONSTRAINT `customeraddress_ibfk_3` FOREIGN KEY (`addressStatusId`) REFERENCES `addressstatus` (`addressStatusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraddress`
--

LOCK TABLES `customeraddress` WRITE;
/*!40000 ALTER TABLE `customeraddress` DISABLE KEYS */;
INSERT INTO `customeraddress` VALUES (1,1,1),(1,5,2),(2,2,1),(2,10,2),(3,3,1),(4,4,1),(5,6,1),(6,7,1),(7,8,1),(8,9,1),(9,1,2),(10,2,1),(1,1,1),(1,5,2),(2,2,1),(2,10,2),(3,3,1),(4,4,1),(5,6,1),(6,7,1),(7,8,1),(8,9,1),(9,1,2),(10,2,1);
/*!40000 ALTER TABLE `customeraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custorder`
--

DROP TABLE IF EXISTS `custorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custorder` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `orderDate` datetime DEFAULT NULL,
  `totalAmount` int DEFAULT NULL,
  `customerId` int DEFAULT NULL,
  `methodId` int DEFAULT NULL,
  `orderStatusId` int DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `customerId` (`customerId`),
  KEY `methodId` (`methodId`),
  KEY `orderStatusId` (`orderStatusId`),
  CONSTRAINT `custorder_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`customerId`),
  CONSTRAINT `custorder_ibfk_2` FOREIGN KEY (`methodId`) REFERENCES `shippingmethod` (`methodId`),
  CONSTRAINT `custorder_ibfk_3` FOREIGN KEY (`orderStatusId`) REFERENCES `orderstatus` (`orderStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custorder`
--

LOCK TABLES `custorder` WRITE;
/*!40000 ALTER TABLE `custorder` DISABLE KEYS */;
INSERT INTO `custorder` VALUES (1,'2025-04-01 10:30:00',31,1,1,1),(2,'2025-04-02 15:45:00',57,2,2,2),(3,'2025-04-03 12:00:00',21,3,1,3),(4,'2025-04-04 09:15:00',46,4,3,1),(5,'2025-04-05 14:20:00',69,5,2,2),(6,'2025-04-06 11:00:00',40,6,1,1),(7,'2025-04-07 16:35:00',52,7,3,2),(8,'2025-04-08 13:45:00',80,8,2,3),(9,'2025-04-09 10:10:00',28,9,1,1),(10,'2025-04-10 17:55:00',66,10,3,4),(11,'2025-04-01 10:30:00',31,1,1,1),(12,'2025-04-02 15:45:00',57,2,2,2),(13,'2025-04-03 12:00:00',21,3,1,3),(14,'2025-04-04 09:15:00',46,4,3,1),(15,'2025-04-05 14:20:00',69,5,2,2),(16,'2025-04-06 11:00:00',40,6,1,1),(17,'2025-04-07 16:35:00',52,7,3,2),(18,'2025-04-08 13:45:00',80,8,2,3),(19,'2025-04-09 10:10:00',28,9,1,1),(20,'2025-04-10 17:55:00',66,10,3,4);
/*!40000 ALTER TABLE `custorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderhistory`
--

DROP TABLE IF EXISTS `orderhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderhistory` (
  `historyId` int NOT NULL AUTO_INCREMENT,
  `orderId` int DEFAULT NULL,
  `orderStatusId` int DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`historyId`),
  KEY `orderId` (`orderId`),
  KEY `orderStatusId` (`orderStatusId`),
  CONSTRAINT `orderhistory_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `custorder` (`orderId`),
  CONSTRAINT `orderhistory_ibfk_2` FOREIGN KEY (`orderStatusId`) REFERENCES `orderstatus` (`orderStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderhistory`
--

LOCK TABLES `orderhistory` WRITE;
/*!40000 ALTER TABLE `orderhistory` DISABLE KEYS */;
INSERT INTO `orderhistory` VALUES (1,1,1,'2025-04-01 10:30:00','Order received; magic is in the air.'),(2,1,2,'2025-04-01 11:15:00','Payment verified and processing initiated.'),(3,2,2,'2025-04-02 15:45:00','Order confirmed; embarking on a swift journey.'),(4,3,3,'2025-04-03 12:00:00','Order delivered; destined for greatness.'),(5,4,1,'2025-04-04 09:15:00','Order received and queued for processing.'),(6,4,2,'2025-04-04 10:00:00','Payment processed; order in transit.'),(7,5,1,'2025-04-05 14:20:00','Order placed by customer.'),(8,5,2,'2025-04-05 15:00:00','Order packed and ready for shipping.'),(9,6,1,'2025-04-06 11:00:00','New order received.'),(10,7,2,'2025-04-07 16:35:00','Order confirmed; dispatched via premium service.'),(11,8,3,'2025-04-08 13:45:00','Order delivered with stellar service.'),(12,9,1,'2025-04-09 10:10:00','Order registered and awaiting payment.'),(13,10,4,'2025-04-10 17:55:00','Order canceled by customer request.'),(14,10,1,'2025-04-10 09:00:00','Initial order recorded.'),(15,10,2,'2025-04-10 10:30:00','Payment processed before cancellation.');
/*!40000 ALTER TABLE `orderhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderline` (
  `orderLineId` int NOT NULL AUTO_INCREMENT,
  `bookId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `lineTotal` int DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  PRIMARY KEY (`orderLineId`),
  KEY `bookId` (`bookId`),
  KEY `orderId` (`orderId`),
  CONSTRAINT `orderline_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `book` (`bookId`),
  CONSTRAINT `orderline_ibfk_2` FOREIGN KEY (`orderId`) REFERENCES `custorder` (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderline`
--

LOCK TABLES `orderline` WRITE;
/*!40000 ALTER TABLE `orderline` DISABLE KEYS */;
INSERT INTO `orderline` VALUES (17,1,1,16,1),(18,2,1,15,1),(19,3,2,38,2),(20,5,1,20,2),(21,4,1,15,3),(22,6,1,17,3),(23,7,2,28,4),(24,8,1,19,4),(25,9,2,36,5),(26,10,1,12,5),(27,11,1,14,6),(28,12,1,18,7),(29,13,1,17,8),(30,14,2,43,9),(31,15,1,13,10),(32,16,1,20,10);
/*!40000 ALTER TABLE `orderline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderstatus` (
  `orderStatusId` int NOT NULL AUTO_INCREMENT,
  `orderDescription` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
INSERT INTO `orderstatus` VALUES (1,'Awaiting Enchantment'),(2,'In Transit'),(3,'Delivered to Destiny'),(4,'Order Canceled'),(5,'Awaiting Enchantment'),(6,'In Transit'),(7,'Delivered to Destiny'),(8,'Order Canceled'),(9,'Awaiting Enchantment'),(10,'In Transit'),(11,'Delivered to Destiny'),(12,'Order Canceled'),(13,'Awaiting Enchantment'),(14,'In Transit'),(15,'Delivered to Destiny'),(16,'Order Canceled');
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `publisherId` int NOT NULL AUTO_INCREMENT,
  `contact` varchar(100) DEFAULT NULL,
  `publisherName` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`publisherId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'info@nebulabooks.com','Nebula Books'),(2,'hello@starlightpress.com','Starlight Press'),(3,'contact@quantumquill.com','Quantum Quill Publications'),(4,'info@nebulabooks.com','Nebula Books'),(5,'hello@starlightpress.com','Starlight Press'),(6,'contact@quantumquill.com','Quantum Quill Publications'),(7,'info@nebulabooks.com','Nebula Books'),(8,'hello@starlightpress.com','Starlight Press'),(9,'contact@quantumquill.com','Quantum Quill Publications');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippingmethod`
--

DROP TABLE IF EXISTS `shippingmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippingmethod` (
  `methodId` int NOT NULL AUTO_INCREMENT,
  `cost` int DEFAULT NULL,
  `methodrName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`methodId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippingmethod`
--

LOCK TABLES `shippingmethod` WRITE;
/*!40000 ALTER TABLE `shippingmethod` DISABLE KEYS */;
INSERT INTO `shippingmethod` VALUES (1,5,'Stardust Standard'),(2,10,'Moonbeam Express'),(3,20,'Celestial Overnight');
/*!40000 ALTER TABLE `shippingmethod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-13 22:53:19

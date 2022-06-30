-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: tenant
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bed` (
  `bed_id` int(11) NOT NULL AUTO_INCREMENT,
  `bed_number` varchar(55) DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `rent` varchar(55) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`bed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed`
--

LOCK TABLES `bed` WRITE;
/*!40000 ALTER TABLE `bed` DISABLE KEYS */;
/*!40000 ALTER TABLE `bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `code` char(3) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'Andorran Peseta','ADP',1519583748,1,1519583748,1),(2,'United Arab Emirates Dirham','AED',1519583748,1,1519583748,1),(3,'Afghanistan Afghani','AFA',1519583748,1,1519583748,1),(4,'Albanian Lek','ALL',1519583748,1,1519583748,1),(5,'Netherlands Antillian Guilder','ANG',1519583748,1,1519583748,1),(6,'Angolan Kwanza','AOK',1519583748,1,1519583748,1),(7,'Argentine Peso','ARS',1519583748,1,1519583748,1),(9,'Australian Dollar','AUD',1519583748,1,1519583748,1),(10,'Aruban Florin','AWG',1519583748,1,1519583748,1),(11,'Barbados Dollar','BBD',1519583748,1,1519583748,1),(12,'Bangladeshi Taka','BDT',1519583748,1,1519583748,1),(14,'Bulgarian Lev','BGN',1519583748,1,1519583748,1),(15,'Bahraini Dinar','BHD',1519583748,1,1519583748,1),(16,'Burundi Franc','BIF',1519583748,1,1519583748,1),(17,'Bermudian Dollar','BMD',1519583748,1,1519583748,1),(18,'Brunei Dollar','BND',1519583748,1,1519583748,1),(19,'Bolivian Boliviano','BOB',1519583748,1,1519583748,1),(20,'Brazilian Real','BRL',1519583748,1,1519583748,1),(21,'Bahamian Dollar','BSD',1519583748,1,1519583748,1),(22,'Bhutan Ngultrum','BTN',1519583748,1,1519583748,1),(23,'Burma Kyat','BUK',1519583748,1,1519583748,1),(24,'Botswanian Pula','BWP',1519583748,1,1519583748,1),(25,'Belize Dollar','BZD',1519583748,1,1519583748,1),(26,'Canadian Dollar','CAD',1519583748,1,1519583748,1),(27,'Swiss Franc','CHF',1519583748,1,1519583748,1),(28,'Chilean Unidades de Fomento','CLF',1519583748,1,1519583748,1),(29,'Chilean Peso','CLP',1519583748,1,1519583748,1),(30,'Yuan (Chinese) Renminbi','CNY',1519583748,1,1519583748,1),(31,'Colombian Peso','COP',1519583748,1,1519583748,1),(32,'Costa Rican Colon','CRC',1519583748,1,1519583748,1),(33,'Czech Republic Koruna','CZK',1519583748,1,1519583748,1),(34,'Cuban Peso','CUP',1519583748,1,1519583748,1),(35,'Cape Verde Escudo','CVE',1519583748,1,1519583748,1),(36,'Cyprus Pound','CYP',1519583748,1,1519583748,1),(40,'Danish Krone','DKK',1519583748,1,1519583748,1),(41,'Dominican Peso','DOP',1519583748,1,1519583748,1),(42,'Algerian Dinar','DZD',1519583748,1,1519583748,1),(43,'Ecuador Sucre','ECS',1519583748,1,1519583748,1),(44,'Egyptian Pound','EGP',1519583748,1,1519583748,1),(45,'Estonian Kroon (EEK)','EEK',1519583748,1,1519583748,1),(46,'Ethiopian Birr','ETB',1519583748,1,1519583748,1),(47,'Euro','EUR',1519583748,1,1519583748,1),(49,'Fiji Dollar','FJD',1519583748,1,1519583748,1),(50,'Falkland Islands Pound','FKP',1519583748,1,1519583748,1),(52,'British Pound','GBP',1519583748,1,1519583748,1),(53,'Ghanaian Cedi','GHC',1519583748,1,1519583748,1),(54,'Gibraltar Pound','GIP',1519583748,1,1519583748,1),(55,'Gambian Dalasi','GMD',1519583748,1,1519583748,1),(56,'Guinea Franc','GNF',1519583748,1,1519583748,1),(58,'Guatemalan Quetzal','GTQ',1519583748,1,1519583748,1),(59,'Guinea-Bissau Peso','GWP',1519583748,1,1519583748,1),(60,'Guyanan Dollar','GYD',1519583748,1,1519583748,1),(61,'Hong Kong Dollar','HKD',1519583748,1,1519583748,1),(62,'Honduran Lempira','HNL',1519583748,1,1519583748,1),(63,'Haitian Gourde','HTG',1519583748,1,1519583748,1),(64,'Hungarian Forint','HUF',1519583748,1,1519583748,1),(65,'Indonesian Rupiah','IDR',1519583748,1,1519583748,1),(66,'Irish Punt','IEP',1519583748,1,1519583748,1),(67,'Israeli Shekel','ILS',1519583748,1,1519583748,1),(68,'Indian Rupee','INR',1519583748,1,1519583748,1),(69,'Iraqi Dinar','IQD',1519583748,1,1519583748,1),(70,'Iranian Rial','IRR',1519583748,1,1519583748,1),(73,'Jamaican Dollar','JMD',1519583748,1,1519583748,1),(74,'Jordanian Dinar','JOD',1519583748,1,1519583748,1),(75,'Japanese Yen','JPY',1519583748,1,1519583748,1),(76,'Kenyan Schilling','KES',1519583748,1,1519583748,1),(77,'Kampuchean (Cambodian) Riel','KHR',1519583748,1,1519583748,1),(78,'Comoros Franc','KMF',1519583748,1,1519583748,1),(79,'North Korean Won','KPW',1519583748,1,1519583748,1),(80,'(South) Korean Won','KRW',1519583748,1,1519583748,1),(81,'Kuwaiti Dinar','KWD',1519583748,1,1519583748,1),(82,'Cayman Islands Dollar','KYD',1519583748,1,1519583748,1),(83,'Lao Kip','LAK',1519583748,1,1519583748,1),(84,'Lebanese Pound','LBP',1519583748,1,1519583748,1),(85,'Sri Lanka Rupee','LKR',1519583748,1,1519583748,1),(86,'Liberian Dollar','LRD',1519583748,1,1519583748,1),(87,'Lesotho Loti','LSL',1519583748,1,1519583748,1),(89,'Libyan Dinar','LYD',1519583748,1,1519583748,1),(90,'Moroccan Dirham','MAD',1519583748,1,1519583748,1),(91,'Malagasy Franc','MGF',1519583748,1,1519583748,1),(92,'Mongolian Tugrik','MNT',1519583748,1,1519583748,1),(93,'Macau Pataca','MOP',1519583748,1,1519583748,1),(94,'Mauritanian Ouguiya','MRO',1519583748,1,1519583748,1),(95,'Maltese Lira','MTL',1519583748,1,1519583748,1),(96,'Mauritius Rupee','MUR',1519583748,1,1519583748,1),(97,'Maldive Rufiyaa','MVR',1519583748,1,1519583748,1),(98,'Malawi Kwacha','MWK',1519583748,1,1519583748,1),(99,'Mexican Peso','MXP',1519583748,1,1519583748,1),(100,'Malaysian Ringgit','MYR',1519583748,1,1519583748,1),(101,'Mozambique Metical','MZM',1519583748,1,1519583748,1),(102,'Namibian Dollar','NAD',1519583748,1,1519583748,1),(103,'Nigerian Naira','NGN',1519583748,1,1519583748,1),(104,'Nicaraguan Cordoba','NIO',1519583748,1,1519583748,1),(105,'Norwegian Kroner','NOK',1519583748,1,1519583748,1),(106,'Nepalese Rupee','NPR',1519583748,1,1519583748,1),(107,'New Zealand Dollar','NZD',1519583748,1,1519583748,1),(108,'Omani Rial','OMR',1519583748,1,1519583748,1),(109,'Panamanian Balboa','PAB',1519583748,1,1519583748,1),(110,'Peruvian Nuevo Sol','PEN',1519583748,1,1519583748,1),(111,'Papua New Guinea Kina','PGK',1519583748,1,1519583748,1),(112,'Philippine Peso','PHP',1519583748,1,1519583748,1),(113,'Pakistan Rupee','PKR',1519583748,1,1519583748,1),(114,'Polish Zloty','PLN',1519583748,1,1519583748,1),(116,'Paraguay Guarani','PYG',1519583748,1,1519583748,1),(117,'Qatari Rial','QAR',1519583748,1,1519583748,1),(118,'Romanian Leu','RON',1519583748,1,1519583748,1),(119,'Rwanda Franc','RWF',1519583748,1,1519583748,1),(120,'Saudi Arabian Riyal','SAR',1519583748,1,1519583748,1),(121,'Solomon Islands Dollar','SBD',1519583748,1,1519583748,1),(122,'Seychelles Rupee','SCR',1519583748,1,1519583748,1),(123,'Sudanese Pound','SDP',1519583748,1,1519583748,1),(124,'Swedish Krona','SEK',1519583748,1,1519583748,1),(125,'Singapore Dollar','SGD',1519583748,1,1519583748,1),(126,'St. Helena Pound','SHP',1519583748,1,1519583748,1),(127,'Sierra Leone Leone','SLL',1519583748,1,1519583748,1),(128,'Somali Schilling','SOS',1519583748,1,1519583748,1),(129,'Suriname Guilder','SRG',1519583748,1,1519583748,1),(130,'Sao Tome and Principe Dobra','STD',1519583748,1,1519583748,1),(131,'Russian Ruble','RUB',1519583748,1,1519583748,1),(132,'El Salvador Colon','SVC',1519583748,1,1519583748,1),(133,'Syrian Potmd','SYP',1519583748,1,1519583748,1),(134,'Swaziland Lilangeni','SZL',1519583748,1,1519583748,1),(135,'Thai Baht','THB',1519583748,1,1519583748,1),(136,'Tunisian Dinar','TND',1519583748,1,1519583748,1),(137,'Tongan Paanga','TOP',1519583748,1,1519583748,1),(138,'East Timor Escudo','TPE',1519583748,1,1519583748,1),(139,'Turkish Lira','TRY',1519583748,1,1519583748,1),(140,'Trinidad and Tobago Dollar','TTD',1519583748,1,1519583748,1),(141,'Taiwan Dollar','TWD',1519583748,1,1519583748,1),(142,'Tanzanian Schilling','TZS',1519583748,1,1519583748,1),(143,'Uganda Shilling','UGX',1519583748,1,1519583748,1),(144,'US Dollar','USD',1519583748,1,1519583748,1),(145,'Uruguayan Peso','UYU',1519583748,1,1519583748,1),(146,'Venezualan Bolivar','VEF',1519583748,1,1519583748,1),(147,'Vietnamese Dong','VND',1519583748,1,1519583748,1),(148,'Vanuatu Vatu','VUV',1519583748,1,1519583748,1),(149,'Samoan Tala','WST',1519583748,1,1519583748,1),(150,'CommunautÃƒÂ© FinanciÃƒÂ¨re Africaine BEAC, Francs','XAF',1519583748,1,1519583748,1),(151,'Silver, Ounces','XAG',1519583748,1,1519583748,1),(152,'Gold, Ounces','XAU',1519583748,1,1519583748,1),(153,'East Caribbean Dollar','XCD',1519583748,1,1519583748,1),(154,'International Monetary Fund (IMF) Special Drawing Rights','XDR',1519583748,1,1519583748,1),(155,'CommunautÃƒÂ© FinanciÃƒÂ¨re Africaine BCEAO - Francs','XOF',1519583748,1,1519583748,1),(156,'Palladium Ounces','XPD',1519583748,1,1519583748,1),(157,'Comptoirs FranÃƒÂ§ais du Pacifique Francs','XPF',1519583748,1,1519583748,1),(158,'Platinum, Ounces','XPT',1519583748,1,1519583748,1),(159,'Democratic Yemeni Dinar','YDD',1519583748,1,1519583748,1),(160,'Yemeni Rial','YER',1519583748,1,1519583748,1),(161,'New Yugoslavia Dinar','YUD',1519583748,1,1519583748,1),(162,'South African Rand','ZAR',1519583748,1,1519583748,1),(163,'Zambian Kwacha','ZMK',1519583748,1,1519583748,1),(164,'Zaire Zaire','ZRZ',1519583748,1,1519583748,1),(165,'Zimbabwe Dollar','ZWD',1519583748,1,1519583748,1),(166,'Slovak Koruna','SKK',1519583748,1,1519583748,1),(167,'Armenian Dram','AMD',1519583748,1,1519583748,1);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expense` (
  `expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` varchar(55) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_type`
--

DROP TABLE IF EXISTS `id_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_type` (
  `id_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_type`
--

LOCK TABLES `id_type` WRITE;
/*!40000 ALTER TABLE `id_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `id_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(55) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `page_title` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'add_room',1520015400,1,1520015400,1,'Add New Room'),(2,'rooms',1520015400,1,1520015400,1,'View All Rooms'),(3,'add_bed',1520015400,1,1520015400,1,'Add New Bed'),(4,'beds',1520015400,1,1520015400,1,'View All Beds'),(5,'add_tenant',1520015400,1,1520015400,1,'Add New Tenant'),(6,'tenants',1520015400,1,1520015400,1,'View All Tenants'),(7,'add_utility_bill',1520015400,1,1520015400,1,'Add New Utility Bill'),(8,'utility_bills',1520015400,1,1520015400,1,'View All Utility Bills'),(9,'utility_bill_categories',1520015400,1,1520015400,1,'Utility Bill Categories'),(10,'add_expense',1520015400,1,1520015400,1,'Add New Expense'),(11,'expenses',1520015400,1,1520015400,1,'View All Expenses'),(12,'add_staff',1520015400,1,1520015400,1,'Add New Staff'),(13,'staff',1520015400,1,1520015400,1,'View All Staff'),(14,'add_staff_payroll',1520015400,1,1520015400,1,'Add New Staff Payroll'),(15,'staff_payroll',1520015400,1,1520015400,1,'View Staff Payroll'),(16,'generate_rent',1520015400,1,1520015400,1,'Generate Rent'),(17,'monthly_rent',1520015400,1,1520015400,1,'View Monthly Rent'),(18,'rents',1520015400,1,1520015400,1,'View All Rents'),(19,'account',1520015400,1,1520015400,1,'Account'),(20,'website_settings',1520015400,1,1520015400,1,'Website'),(21,'profession_settings',1520015400,1,1520015400,1,'Professions'),(22,'id_type_settings',1520015400,1,1520015400,1,'ID Types');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession`
--

DROP TABLE IF EXISTS `profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profession` (
  `profession_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession`
--

LOCK TABLES `profession` WRITE;
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
INSERT INTO `profession` VALUES (1,'Accountant',1484580450,1519202764,1,1),(2,'Actor',1484580461,1519202764,1,1),(3,'Air Steward',1484580483,1519202764,1,1),(4,'Animator',1484580488,1519202764,1,1),(5,'Architect',1484580494,1519202764,1,1),(6,'Artist',1484580498,1519202764,1,1),(7,'Author',1484580502,1519202764,1,1),(8,'Baker',1484580507,1519202764,1,1),(9,'Biologist',1484580511,1519202764,1,1),(10,'Builder',1484580515,1519202764,1,1),(11,'Butcher',1484580519,1519202764,1,1),(12,'Counselor',1484580523,1519202764,1,1),(13,'Chef',1484580527,1519202764,1,1),(14,'Director',1484580532,1519202764,1,1),(15,'Dentist',1484580537,1519202764,1,1),(16,'Designer',1484580547,1519202764,1,1),(17,'Doctor',1484580551,1519202764,1,1),(18,'Economist',1484580556,1519202764,1,1),(19,'Electrician',1484580560,1519202764,1,1),(20,'Engineer',1484580565,1519202764,1,1),(21,'Farmer',1484580576,1519202764,1,1),(22,'Film Director',1484580582,1519202764,1,1),(23,'Fisherman',1484580586,1519202764,1,1),(24,'Geologist',1484581447,1519202764,1,1),(25,'Head Teacher',1484581455,1519202764,1,1),(26,'Journalist',1484581461,1519202764,1,1),(27,'Judge',1484581466,1519202764,1,1),(28,'Lawyer',1484581470,1519202764,1,1),(29,'Lecturer',1484581474,1519202764,1,1),(30,'Magician',1484581479,1519202764,1,1),(31,'Manager',1484581483,1519202764,1,1),(32,'Musician',1484581488,1519202764,1,1),(33,'Nurse',1484581492,1519202764,1,1),(34,'Painter',1484581497,1519202764,1,1),(35,'Photographer',1484581501,1519202764,1,1),(36,'Pilot',1484581506,1519202764,1,1),(37,'Police Officer',1484581514,1519202764,1,1),(38,'Politician',1484581519,1519202764,1,1),(39,'Receptionist',1484581523,1519202764,1,1),(40,'Salesperson',1484581527,1519202764,1,1),(41,'Scientist',1484581532,1519202764,1,1),(42,'Secretary',1484581537,1519202764,1,1),(43,'Singer',1484581541,1519202764,1,1),(44,'Software Engineer',1484581549,1519202764,1,1),(45,'Soldier',1484581556,1519202764,1,1),(46,'Surgeon',1484581560,1519202764,1,1),(47,'Teacher',1484581565,1519202764,1,1),(48,'Translator',1484581570,1519202764,1,1),(49,'Waiter',1484581575,1519202764,1,1),(50,'Web Developer',1484581588,1519202764,1,1),(51,'Writer',1484581592,1519202764,1,1),(52,'Other',1484581601,1519202764,1,1);
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `room_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_number` varchar(55) DEFAULT NULL,
  `floor` varchar(55) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'system_name','Tenant',1519579495,1,1519759752,1),(2,'currency','BDT',1519579495,1,1519759752,1),(3,'timezone','Asia/Dhaka',1519579495,1,1519759752,1),(4,'favicon','favicon.png',1519579495,1,1520012663,1),(5,'logo','logo.png',1519579495,1,1520012492,1),(6,'tagline','Tenant Management System',1519579495,1,1519759752,1);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `role` varchar(55) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `mobile_number` varchar(55) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_salary`
--

DROP TABLE IF EXISTS `staff_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_salary` (
  `staff_salary_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` varchar(55) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`staff_salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_salary`
--

LOCK TABLES `staff_salary` WRITE;
/*!40000 ALTER TABLE `staff_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant` (
  `tenant_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `mobile_number` varchar(55) DEFAULT NULL,
  `id_number` varchar(55) DEFAULT NULL,
  `image_link` varchar(255) DEFAULT NULL,
  `profession_id` int(11) DEFAULT NULL,
  `emergency_person` varchar(55) DEFAULT NULL,
  `emergency_contact` varchar(55) DEFAULT NULL,
  `home_address` varchar(255) DEFAULT NULL,
  `bed_id` int(11) DEFAULT NULL,
  `extra_note` varchar(255) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `work_address` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `id_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_rent`
--

DROP TABLE IF EXISTS `tenant_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tenant_rent` (
  `tenant_rent_id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` varchar(55) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `advance` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`tenant_rent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_rent`
--

LOCK TABLES `tenant_rent` WRITE;
/*!40000 ALTER TABLE `tenant_rent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `permissions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','admin',1,1520836341,0,1,1,1520836341,1,'1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility_bill`
--

DROP TABLE IF EXISTS `utility_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utility_bill` (
  `utility_bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `utility_bill_category_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `month` varchar(55) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` varchar(55) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`utility_bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_bill`
--

LOCK TABLES `utility_bill` WRITE;
/*!40000 ALTER TABLE `utility_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `utility_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility_bill_category`
--

DROP TABLE IF EXISTS `utility_bill_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utility_bill_category` (
  `utility_bill_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`utility_bill_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility_bill_category`
--

LOCK TABLES `utility_bill_category` WRITE;
/*!40000 ALTER TABLE `utility_bill_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `utility_bill_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-21 15:33:18

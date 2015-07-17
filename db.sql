-- MySQL dump 10.13  Distrib 5.6.22, for osx10.8 (x86_64)
--
-- Host: localhost    Database: sales_rep
-- ------------------------------------------------------
-- Server version	5.6.22

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
-- Table structure for table `Communication`
--

DROP TABLE IF EXISTS `Communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Communication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(5) NOT NULL,
  `type` varchar(10) NOT NULL,
  `value` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `cid_fk_idx` (`customer_id`),
  CONSTRAINT `cid_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Communication`
--

LOCK TABLES `Communication` WRITE;
/*!40000 ALTER TABLE `Communication` DISABLE KEYS */;
INSERT INTO `Communication` VALUES (1,'Phone','Office','9876543210',15),(2,'Skype','Skype','amul.contact',15),(3,'Email','Office','sales@amul.com',15),(4,'Phone','Other','4567091239',15),(5,'Phone','Office','9835402138',16),(6,'Skype','Skype','biltmore.superstore',16),(7,'Email','Office','sales@biltmore.com',16),(8,'Phone','Other','8723091287',16),(9,'Phone','Office','8723091287',17),(10,'Skype','Skype','arrow.reach',17),(11,'Email','Office','sales@arrow.com',17),(12,'Phone','Other','3476505480',17),(13,'Phone','Office','8723091287',18),(14,'Skype','Skype','promotional.shop',18),(15,'Email','Office','sales@promotional.com',18),(16,'Phone','Personal','3476505480',18),(17,'Phone','Office','9349475947',19),(18,'Skype','Skype','smooth.mover',19),(19,'Email','Work','sales@smoothmover.com',19),(20,'Phone','Personal','9899001234',19),(21,'Phone','Office','8989897654',20),(22,'Skype','Skype','karioi.clinic',20),(23,'Email','Office','sales@karioi.com',20),(24,'Phone','Other','9078654321',20),(25,'Phone','Office','7674689930',21),(26,'Skype','Skype','property.net',21),(27,'Email','Office','sales@propertynet.com',21),(28,'Phone','Other','7458900503',21),(29,'Phone','Office','9876543210',22),(30,'Skype','Skype','amul.contact',22),(31,'Email','Office','sales@amul.com',22),(32,'Phone','Other','4567091239',22),(33,'Phone','Office','9835402138',23),(34,'Skype','Skype','biltmore.superstore',23),(35,'Email','Office','sales@biltmore.com',23),(36,'Phone','Other','8723091287',23),(37,'Phone','Office','8723091287',24),(38,'Skype','Skype','arrow.reach',24),(39,'Email','Office','sales@arrow.com',24),(40,'Phone','Other','3476505480',24),(41,'Phone','Office','8723091287',25),(42,'Skype','Skype','promotional.shop',25),(43,'Email','Office','sales@promotional.com',25),(44,'Phone','Personal','3476505480',25),(45,'Phone','Office','9349475947',26),(46,'Skype','Skype','smooth.mover',26),(47,'Email','Work','sales@smoothmover.com',26),(48,'Phone','Personal','9899001234',26),(49,'Phone','Office','8989897654',27),(50,'Skype','Skype','karioi.clinic',27),(51,'Email','Office','sales@karioi.com',27),(52,'Phone','Other','9078654321',27),(53,'Phone','Office','7674689930',28),(54,'Skype','Skype','property.net',28),(55,'Email','Office','sales@propertynet.com',28),(56,'Phone','Other','7458900503',28),(57,'Phone','Office','9876543210',29),(58,'Skype','Skype','amul.contact',29),(59,'Email','Office','sales@amul.com',29),(60,'Phone','Other','4567091239',29),(61,'Phone','Office','9835402138',30),(62,'Skype','Skype','biltmore.superstore',30),(63,'Email','Office','sales@biltmore.com',30),(64,'Phone','Other','8723091287',30),(65,'Phone','Office','8723091287',31),(66,'Skype','Skype','arrow.reach',31),(67,'Email','Office','sales@arrow.com',31),(68,'Phone','Other','3476505480',31),(69,'Phone','Office','8723091287',32),(70,'Skype','Skype','promotional.shop',32),(71,'Email','Office','sales@promotional.com',32),(72,'Phone','Personal','3476505480',32),(73,'Phone','Office','9349475947',33),(74,'Skype','Skype','smooth.mover',33),(75,'Email','Work','sales@smoothmover.com',33),(76,'Phone','Personal','9899001234',33),(77,'Phone','Office','8989897654',34),(78,'Skype','Skype','karioi.clinic',34),(79,'Email','Office','sales@karioi.com',34),(80,'Phone','Other','9078654321',34),(81,'Phone','Office','7674689930',35),(82,'Skype','Skype','property.net',35),(83,'Email','Office','sales@propertynet.com',35),(84,'Phone','Other','7458900503',35),(85,'Phone','Office','9876543210',36),(86,'Skype','Skype','amul.contact',36),(87,'Email','Office','sales@amul.com',36),(88,'Phone','Other','4567091239',36),(89,'Phone','Office','9835402138',37),(90,'Skype','Skype','biltmore.superstore',37),(91,'Email','Office','sales@biltmore.com',37),(92,'Phone','Other','8723091287',37),(93,'Phone','Office','8723091287',38),(94,'Skype','Skype','arrow.reach',38),(95,'Email','Office','sales@arrow.com',38),(96,'Phone','Other','3476505480',38),(97,'Phone','Office','8723091287',39),(98,'Skype','Skype','promotional.shop',39),(99,'Email','Office','sales@promotional.com',39),(100,'Phone','Personal','3476505480',39),(101,'Phone','Office','9349475947',40),(102,'Skype','Skype','smooth.mover',40),(103,'Email','Work','sales@smoothmover.com',40),(104,'Phone','Personal','9899001234',40),(105,'Phone','Office','8989897654',41),(106,'Skype','Skype','karioi.clinic',41),(107,'Email','Office','sales@karioi.com',41),(108,'Phone','Other','9078654321',41),(109,'Phone','Office','7674689930',42),(110,'Skype','Skype','property.net',42),(111,'Email','Office','sales@propertynet.com',42),(112,'Phone','Other','7458900503',42);
/*!40000 ALTER TABLE `Communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Visit`
--

DROP TABLE IF EXISTS `Visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `action` varchar(25) DEFAULT NULL,
  `notes` longtext,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `cid_fk_3_idx` (`customer_id`),
  CONSTRAINT `cid_fk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Visit`
--

LOCK TABLES `Visit` WRITE;
/*!40000 ALTER TABLE `Visit` DISABLE KEYS */;
INSERT INTO `Visit` VALUES (1,'2015-05-02','2:00 PM','offer','Testing',15),(2,'2015-06-06','3:30 PM','Lead','Testing session management',36),(7,'2015-05-05','09:00 AM','Oppourtunity','Auth Testing',37);
/*!40000 ALTER TABLE `Visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `street1` varchar(50) NOT NULL,
  `street2` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_customer_address_idx` (`customer_id`),
  CONSTRAINT `fk_customer_address` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Office','Suite 315',NULL,'North brunswick','New Jersey','US','07678',15),(2,'Office','#45',NULL,'El Paso','Texas','US','09845',16),(3,'Office','#324',NULL,'Las Vegas','Nevada','US','07679',17),(4,'Office','#567',NULL,'San Fransico','Bay Area','US','07699',18),(5,'Office','Suite 667',NULL,'Rochester','New York','US','07855',19),(6,'Office','#89',NULL,'San Diego','California','US','09989',20),(7,'Office','Suite 99',NULL,'Springfield','Massachusetts','US','05547',21),(8,'Office','Suite 315',NULL,'North brunswick','New Jersey','US','07678',22),(9,'Office','#45',NULL,'El Paso','Texas','US','09845',23),(10,'Office','#324',NULL,'Las Vegas','Nevada','US','07679',24),(11,'Office','#567',NULL,'San Fransico','Bay Area','US','07699',25),(12,'Office','Suite 667',NULL,'Rochester','New York','US','07855',26),(13,'Office','#89',NULL,'San Diego','California','US','09989',27),(14,'Office','Suite 99',NULL,'Springfield','Massachusetts','US','05547',28),(15,'Office','Suite 315',NULL,'North brunswick','New Jersey','US','07678',29),(16,'Office','#45',NULL,'El Paso','Texas','US','09845',30),(17,'Office','#324',NULL,'Las Vegas','Nevada','US','07679',31),(18,'Office','#567',NULL,'San Fransico','Bay Area','US','07699',32),(19,'Office','Suite 667',NULL,'Rochester','New York','US','07855',33),(20,'Office','#89',NULL,'San Diego','California','US','09989',34),(21,'Office','Suite 99',NULL,'Springfield','Massachusetts','US','05547',35),(22,'Office','Suite 315',NULL,'North brunswick','New Jersey','US','07678',36),(23,'Office','#45',NULL,'El Paso','Texas','US','09845',37),(24,'Office','#324',NULL,'Las Vegas','Nevada','US','07679',38),(25,'Office','#567',NULL,'San Fransico','Bay Area','US','07699',39),(26,'Office','Suite 667',NULL,'Rochester','New York','US','07855',40),(27,'Office','#89',NULL,'San Diego','California','US','09989',41),(28,'Office','Suite 99',NULL,'Springfield','Massachusetts','US','05547',42);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(120) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `notes` longtext,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `un_fk_idx` (`username`),
  CONSTRAINT `un_fk` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (15,'Amul','Sorting Machine','Cancelled','Testing web-service','harry.potter'),(16,'Biltmore Global Superstore','Color Swatch','InProgress',NULL,'harry.potter'),(17,'Arrow','Aimpoint 9000SC','OrderPlaced',NULL,'harry.potter'),(18,'Promotional Shop','Aimpoint CompC3','Support',NULL,'harry.potter'),(19,'The Smooth Mover','Barska 6-24x50','Rejected',NULL,'harry.potter'),(20,'Karioi Clinic','BSA 3-9x50','Cancelled',NULL,'harry.potter'),(21,'Property Net','Fullfield DAC','InProgress',NULL,'harry.potter'),(22,'Amul','Sorting Machine','InProgress',NULL,'james.potter'),(23,'Biltmore Global Superstore','Color Swatch','InProgress',NULL,'james.potter'),(24,'Arrow','Aimpoint 9000SC','OrderPlaced',NULL,'james.potter'),(25,'Promotional Shop','Aimpoint CompC3','Support',NULL,'james.potter'),(26,'The Smooth Mover','Barska 6-24x50','Rejected',NULL,'james.potter'),(27,'Karioi Clinic','BSA 3-9x50','New',NULL,'james.potter'),(28,'Property Net','Fullfield DAC','InProgress',NULL,'james.potter'),(29,'Amul','Sorting Machine','InProgress',NULL,'lilly.potter'),(30,'Biltmore Global Superstore','Color Swatch','New',NULL,'lilly.potter'),(31,'Arrow','Aimpoint 9000SC','New',NULL,'lilly.potter'),(32,'Promotional Shop','Aimpoint CompC3','Support',NULL,'lilly.potter'),(33,'The Smooth Mover','Barska 6-24x50','Rejected',NULL,'lilly.potter'),(34,'Karioi Clinic','BSA 3-9x50','New',NULL,'lilly.potter'),(35,'Property Net','Fullfield DAC','New',NULL,'lilly.potter'),(36,'Amul','Sorting Machine','InProgress','Final Test','john.doe'),(37,'Biltmore Global Superstore','Color Swatch','InProgress','Auth Testing','john.doe'),(38,'Arrow','Aimpoint 9000SC','OrderPlaced',NULL,'john.doe'),(39,'Promotional Shop','Aimpoint CompC3','Support',NULL,'john.doe'),(40,'The Smooth Mover','Barska 6-24x50','Rejected',NULL,'john.doe'),(41,'Karioi Clinic','BSA 3-9x50','New',NULL,'john.doe'),(42,'Property Net','Fullfield DAC','InProgress',NULL,'john.doe');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('harry.potter','X03MO1qnZdYdgyfeuILPmQ==','Harry','Potter'),('james.potter','X03MO1qnZdYdgyfeuILPmQ==','James','Potter'),('john.doe','X03MO1qnZdYdgyfeuILPmQ==','John','Doe'),('lilly.potter','X03MO1qnZdYdgyfeuILPmQ==','Lilly','Potter'),('ron.weasley','X03MO1qnZdYdgyfeuILPmQ==','Ron','Weasley');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-13 17:04:13

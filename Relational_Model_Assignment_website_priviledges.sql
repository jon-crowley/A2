-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: Relational_Model_Assignment
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `website_priviledges`
--

DROP TABLE IF EXISTS `website_priviledges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_priviledges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `priviledge` varchar(45) DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  `developer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `priviledge_enum_idx` (`priviledge`),
  KEY `website_priviledge_idx` (`website_id`),
  KEY `developer_priviledge_idx` (`developer_id`),
  CONSTRAINT `developer_priviledge` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`),
  CONSTRAINT `priviledge_enum` FOREIGN KEY (`priviledge`) REFERENCES `priviledges` (`priviledge`) ON UPDATE CASCADE,
  CONSTRAINT `website_priviledge` FOREIGN KEY (`website_id`) REFERENCES `websites` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_priviledges`
--

LOCK TABLES `website_priviledges` WRITE;
/*!40000 ALTER TABLE `website_priviledges` DISABLE KEYS */;
INSERT INTO `website_priviledges` VALUES (93,'create',123,12),(94,'update',123,12),(95,'delete',123,12),(96,'read',123,12),(97,'update',123,23),(98,'read',123,23),(99,'create',123,34),(100,'update',123,34),(101,'delete',123,34),(102,'read',123,34),(103,'create',234,23),(104,'update',234,23),(105,'delete',234,23),(106,'read',234,23),(107,'update',234,34),(108,'read',234,34),(109,'create',234,12),(110,'update',234,12),(111,'delete',234,12),(112,'read',234,12),(113,'create',345,34),(114,'update',345,34),(115,'delete',345,34),(116,'read',345,34),(117,'update',345,12),(118,'read',345,12),(119,'create',345,23),(120,'update',345,23),(121,'delete',345,23),(122,'read',345,23),(123,'create',456,12),(124,'update',456,12),(125,'delete',456,12),(126,'read',456,12),(127,'update',456,23),(128,'read',456,23),(129,'create',456,34),(130,'update',456,34),(131,'delete',456,34),(132,'read',456,34),(143,'create',678,34),(144,'update',678,34),(145,'delete',678,34),(146,'read',678,34),(147,'update',678,12),(148,'read',678,12),(149,'create',678,23),(150,'update',678,23),(151,'delete',678,23),(152,'read',678,23);
/*!40000 ALTER TABLE `website_priviledges` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 22:06:50

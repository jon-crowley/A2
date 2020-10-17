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
-- Table structure for table `page_roles`
--

DROP TABLE IF EXISTS `page_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_role` varchar(45) NOT NULL,
  `page_id` int NOT NULL,
  `developer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_role_enumeration_idx` (`page_role`),
  KEY `page_role_idx` (`page_id`),
  KEY `developer_role_idx` (`developer_id`),
  CONSTRAINT `developer_page_role` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`id`),
  CONSTRAINT `page_role` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `page_role_enumeration` FOREIGN KEY (`page_role`) REFERENCES `roles` (`role`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_roles`
--

LOCK TABLES `page_roles` WRITE;
/*!40000 ALTER TABLE `page_roles` DISABLE KEYS */;
INSERT INTO `page_roles` VALUES (49,'editor',234,34),(50,'reviewer',234,23),(51,'writer',234,12),(55,'editor',456,12),(56,'reviewer',456,34),(57,'writer',456,23);
/*!40000 ALTER TABLE `page_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 22:06:56

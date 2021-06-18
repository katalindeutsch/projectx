-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: infections
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `puzzle`
--

DROP TABLE IF EXISTS `puzzle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puzzle` (
  `id` bigint NOT NULL,
  `amount` bigint NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puzzle`
--

LOCK TABLES `puzzle` WRITE;
/*!40000 ALTER TABLE `puzzle` DISABLE KEYS */;
INSERT INTO `puzzle` VALUES (1,3312),(2,831),(3,4728),(4,424),(5,2691),(6,227),(7,1391),(8,4399),(9,4459),(10,4105),(11,163),(12,2834),(13,2040),(14,585),(15,4639),(16,4894),(17,1552),(18,3149),(19,3919),(20,3678),(21,4692),(22,305),(23,1389),(24,1355),(25,2748),(26,3391),(27,2708),(28,2925),(29,4647),(30,3088),(31,2069),(32,3143),(33,1934),(34,2017),(35,4450),(36,3964),(37,1794),(38,4261),(39,1972),(40,649),(41,875),(42,115),(43,349),(44,1363),(45,995),(46,2896),(47,1599),(48,2777),(49,2354),(50,554),(51,2123),(52,3379),(53,1295),(54,4039),(55,799),(56,991),(57,270),(58,3121),(59,4497),(60,2865),(61,4024),(62,2834),(63,866),(64,4350),(65,417),(66,2420),(67,2432),(68,1025),(69,2845),(70,4467),(71,2415),(72,457),(73,2480),(74,4086),(75,399),(76,1756),(77,323),(78,2849),(79,4473),(80,4009),(81,2911),(82,3933),(83,4986),(84,3044),(85,4931),(86,3137),(87,1879),(88,4624),(89,288),(90,1101),(91,2017),(92,4231),(93,2231),(94,2339),(95,1395),(96,964),(97,1097),(98,4302),(99,2593),(100,3989),(1,6),(2,8),(3,1),(4,1),(5,1),(6,10),(7,4),(8,6),(9,10),(10,3),(11,9),(12,7),(13,7),(14,1),(15,1),(16,4),(17,7),(18,5),(19,6),(20,6),(21,9),(22,7),(23,3),(24,10),(25,4),(26,6),(27,10),(28,6),(29,5),(30,6),(31,2),(32,1),(33,8),(34,1),(35,9),(36,4),(37,9),(38,3),(39,10),(40,3),(41,5),(42,1),(43,3),(44,6),(45,2),(46,2),(47,1),(48,2),(49,6),(50,7),(51,7),(52,4),(53,8),(54,2),(55,1),(56,10),(57,7),(58,3),(59,5),(60,4),(61,7),(62,3),(63,7),(64,3),(65,9),(66,6),(67,6),(68,4),(69,6),(70,7),(71,5),(72,1),(73,4),(74,9),(75,5),(76,9),(77,7),(78,2),(79,10),(80,3),(81,7),(82,5),(83,9),(84,7),(85,10),(86,4),(87,3),(88,1),(89,5),(90,4),(91,2),(92,5),(93,6),(94,4),(95,10),(96,7),(97,3),(98,10),(99,5),(100,4),(101,10),(102,1),(103,4),(104,2),(105,1),(106,2),(107,3),(108,6),(109,6),(110,8),(111,2),(112,10),(113,10),(114,3),(115,5),(116,10),(117,9),(118,9),(119,5),(120,8);
/*!40000 ALTER TABLE `puzzle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-18 16:02:47
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
-- Table structure for table `quest`
--

DROP TABLE IF EXISTS `quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quest` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `dtype` varchar(31) NOT NULL,
  `amount` int DEFAULT NULL,
  `rounds` int DEFAULT NULL,
  `challenge_id` bigint DEFAULT NULL,
  KEY `FKfdpmwk00q7j4r47gvb0ryeif4` (`challenge_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest`
--

LOCK TABLES `quest` WRITE;
/*!40000 ALTER TABLE `quest` DISABLE KEYS */;
INSERT INTO `quest` VALUES (1,'Keylex','',NULL,NULL,NULL),(2,'Prodder','',NULL,NULL,NULL),(3,'Lotlux','',NULL,NULL,NULL),(4,'Sub-Ex','',NULL,NULL,NULL),(5,'Holdlamis','',NULL,NULL,NULL),(6,'Zoolab','',NULL,NULL,NULL),(7,'Zaam-Dox','',NULL,NULL,NULL),(8,'Alpha','',NULL,NULL,NULL),(9,'Sonsing','',NULL,NULL,NULL),(10,'Voyatouch','',NULL,NULL,NULL),(11,'Home Ing','',NULL,NULL,NULL),(12,'Sonsing','',NULL,NULL,NULL),(13,'Treeflex','',NULL,NULL,NULL),(14,'Transcof','',NULL,NULL,NULL),(15,'Tin','',NULL,NULL,NULL),(16,'Quo Lux','',NULL,NULL,NULL),(17,'Tresom','',NULL,NULL,NULL),(18,'Span','',NULL,NULL,NULL),(19,'Aerified','',NULL,NULL,NULL),(20,'Stim','',NULL,NULL,NULL),(21,'Keylex','',NULL,NULL,NULL),(22,'Overhold','',NULL,NULL,NULL),(23,'Hatity','',NULL,NULL,NULL),(24,'Transcof','',NULL,NULL,NULL),(25,'Viva','',NULL,NULL,NULL),(26,'Biodex','',NULL,NULL,NULL),(27,'Vagram','',NULL,NULL,NULL),(28,'Sonair','',NULL,NULL,NULL),(29,'Lotstring','',NULL,NULL,NULL),(30,'Redhold','',NULL,NULL,NULL),(31,'Ronstring','',NULL,NULL,NULL),(32,'Kanlam','',NULL,NULL,NULL),(33,'Cookley','',NULL,NULL,NULL),(34,'Ronstring','',NULL,NULL,NULL),(35,'Voltsillam','',NULL,NULL,NULL),(36,'Flowdesk','',NULL,NULL,NULL),(37,'Wrapsafe','',NULL,NULL,NULL),(38,'Alphazap','',NULL,NULL,NULL),(39,'Y-find','',NULL,NULL,NULL),(40,'Daltfresh','',NULL,NULL,NULL),(41,'Fintone','',NULL,NULL,NULL),(42,'Voltsillam','',NULL,NULL,NULL),(43,'Biodex','',NULL,NULL,NULL),(44,'Toughjoyfax','',NULL,NULL,NULL),(45,'Job','',NULL,NULL,NULL),(46,'Voltsillam','',NULL,NULL,NULL),(47,'Zoolab','',NULL,NULL,NULL),(48,'Tampflex','',NULL,NULL,NULL),(49,'Zontrax','',NULL,NULL,NULL),(50,'Pannier','',NULL,NULL,NULL),(51,'Tampflex','',NULL,NULL,NULL),(52,'Job','',NULL,NULL,NULL),(53,'Bamity','',NULL,NULL,NULL),(54,'Prodder','',NULL,NULL,NULL),(55,'Zoolab','',NULL,NULL,NULL),(56,'Konklux','',NULL,NULL,NULL),(57,'Alpha','',NULL,NULL,NULL),(58,'Bamity','',NULL,NULL,NULL),(59,'Fintone','',NULL,NULL,NULL),(60,'Bytecard','',NULL,NULL,NULL),(61,'Viva','',NULL,NULL,NULL),(62,'Ronstring','',NULL,NULL,NULL),(63,'Temp','',NULL,NULL,NULL),(64,'Zamit','',NULL,NULL,NULL),(65,'Fix San','',NULL,NULL,NULL),(66,'Overhold','',NULL,NULL,NULL),(67,'Greenlam','',NULL,NULL,NULL),(68,'Sonair','',NULL,NULL,NULL),(69,'Sonsing','',NULL,NULL,NULL),(70,'Span','',NULL,NULL,NULL),(71,'Transcof','',NULL,NULL,NULL),(72,'Matsoft','',NULL,NULL,NULL),(73,'Wrapsafe','',NULL,NULL,NULL),(74,'Job','',NULL,NULL,NULL),(75,'Y-find','',NULL,NULL,NULL),(76,'Tin','',NULL,NULL,NULL),(77,'Kanlam','',NULL,NULL,NULL),(78,'Tresom','',NULL,NULL,NULL),(79,'Vagram','',NULL,NULL,NULL),(80,'Treeflex','',NULL,NULL,NULL),(81,'Duobam','',NULL,NULL,NULL),(82,'Job','',NULL,NULL,NULL),(83,'Fix San','',NULL,NULL,NULL),(84,'Trippledex','',NULL,NULL,NULL),(85,'Holdlamis','',NULL,NULL,NULL),(86,'Bigtax','',NULL,NULL,NULL),(87,'Treeflex','',NULL,NULL,NULL),(88,'Lotlux','',NULL,NULL,NULL),(89,'Cardify','',NULL,NULL,NULL),(90,'Bamity','',NULL,NULL,NULL),(91,'Sub-Ex','',NULL,NULL,NULL),(92,'Quo Lux','',NULL,NULL,NULL),(93,'Hatity','',NULL,NULL,NULL),(94,'Matsoft','',NULL,NULL,NULL),(95,'Fix San','',NULL,NULL,NULL),(96,'Asoka','',NULL,NULL,NULL),(97,'Subin','',NULL,NULL,NULL),(98,'Domainer','',NULL,NULL,NULL),(99,'Flexidy','',NULL,NULL,NULL),(100,'Home Ing','',NULL,NULL,NULL),(101,'Subin','',NULL,NULL,NULL),(102,'Ventosanzap','',NULL,NULL,NULL),(103,'Wrapsafe','',NULL,NULL,NULL),(104,'Vagram','',NULL,NULL,NULL),(105,'Zamit','',NULL,NULL,NULL),(106,'Otcom','',NULL,NULL,NULL),(107,'Bitwolf','',NULL,NULL,NULL),(108,'Zaam-Dox','',NULL,NULL,NULL),(109,'Job','',NULL,NULL,NULL),(110,'Ventosanzap','',NULL,NULL,NULL),(111,'Y-Solowarm','',NULL,NULL,NULL),(112,'Quo Lux','',NULL,NULL,NULL),(113,'Regrant','',NULL,NULL,NULL),(114,'Veribet','',NULL,NULL,NULL),(115,'Duobam','',NULL,NULL,NULL),(116,'Gembucket','',NULL,NULL,NULL),(117,'Temp','',NULL,NULL,NULL),(118,'Span','',NULL,NULL,NULL),(119,'Stim','',NULL,NULL,NULL),(120,'Prodder','',NULL,NULL,NULL);
/*!40000 ALTER TABLE `quest` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-18 16:02:48

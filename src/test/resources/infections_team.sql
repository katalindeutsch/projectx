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
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Afghanistan','bpengelley0'),(2,'Afghanistan','kchamberlaine1'),(3,'Afghanistan','pvanschafflaer2'),(4,'Afghanistan','dlerway3'),(5,'Afghanistan','wswanne4'),(6,'Afghanistan','afigura5'),(7,'Afghanistan','lnugent6'),(8,'Afghanistan','jwhyteman7'),(9,'Afghanistan','ceydel8'),(10,'Afghanistan','earundell9'),(11,'Afghanistan','esussexa'),(12,'Afghanistan','adymondb'),(13,'Afghanistan','gfeldererc'),(14,'Afghanistan','hespinolad'),(15,'Afghanistan','dpickine'),(16,'Afghanistan','clorrainf'),(17,'Afghanistan','mdreaking'),(18,'Afghanistan','waliboneh'),(19,'Afghanistan','boshevlani'),(20,'Afghanistan','rchassonj'),(21,'Ivory Coast','hthebeauk'),(22,'Indonesia','dbearnl'),(23,'Jordan','cwetwoodm'),(24,'Slovenia','bpolkn'),(25,'Indonesia','thabino'),(26,'Indonesia','amundenp'),(27,'Egypt','lpitherickq'),(28,'Morocco','eyatesr'),(29,'Indonesia','kjouberts'),(30,'United States','aflaunderst'),(31,'Czech Republic','rgarbaru'),(32,'France','bmessrutherv'),(33,'Poland','fceeleyw'),(34,'Poland','ktraversx'),(35,'Philippines','awithamsy'),(36,'Syria','rglasscoez'),(37,'Bulgaria','dbrehat10'),(38,'Portugal','fbeaushaw11'),(39,'Czech Republic','mbenham12'),(40,'Canada','vgovett13'),(41,'Reunion','lquarrell14'),(42,'China','dgarmon15'),(43,'Vietnam','smcnirlan16'),(44,'Brazil','mambrogi17'),(45,'Slovenia','jpostle18'),(46,'Philippines','cgoulder19'),(47,'Madagascar','ialf1a'),(48,'Thailand','wvaneschi1b'),(49,'Cuba','bhurl1c'),(50,'Philippines','ktackley1d'),(51,'Indonesia','fentwistle1e'),(52,'Libya','kmckoy1f'),(53,'Poland','xleatham1g'),(54,'Chile','byarnell1h'),(55,'China','dtynewell1i'),(56,'Macedonia','vnaulls1j'),(57,'China','hsmallsman1k'),(58,'Russia','cargente1l'),(59,'France','abrockhurst1m'),(60,'China','bbriatt1n'),(61,'Russia','aortiga1o'),(62,'Cameroon','dwalsom1p'),(63,'Russia','sshovel1q'),(64,'Dominican Republic','kchitty1r'),(65,'Burkina Faso','elucks1s'),(66,'Indonesia','kfenwick1t'),(67,'Belarus','idoud1u'),(68,'Russia','emacilurick1v'),(69,'Philippines','mcaukill1w'),(70,'Indonesia','gbarten1x'),(71,'Bolivia','mtoten1y'),(72,'Portugal','bwillatts1z'),(73,'Brazil','nhatfull20'),(74,'China','gheadington21'),(75,'China','ginett22'),(76,'Portugal','mderisley23'),(77,'Netherlands','sbugler24'),(78,'Netherlands','astears25'),(79,'Russia','vahrend26'),(80,'Ukraine','cgrinikhin27'),(81,'Brazil','bchisholme28'),(82,'Canada','bplott29'),(83,'Japan','wlomis2a'),(84,'Indonesia','ahuxton2b'),(85,'China','dfountain2c'),(86,'Indonesia','iquoit2d'),(87,'Guatemala','ltreadgall2e'),(88,'Slovenia','scorson2f'),(89,'Russia','tpattrick2g'),(90,'Brazil','kkiddye2h'),(91,'China','djanton2i'),(92,'Morocco','gmaypother2j'),(93,'Pakistan','dlampke2k'),(94,'Brazil','rfairholme2l'),(95,'Kyrgyzstan','bbachelar2m'),(96,'Malaysia','ahancorn2n'),(97,'Indonesia','jleabeater2o'),(98,'Russia','wpaver2p'),(99,'Indonesia','djacqueminot2q'),(100,'United States','cpersitt2r'),(101,'Indonesia','egoroni2s'),(102,'Sri Lanka','emenicomb2t'),(103,'Bulgaria','syegorev2u'),(104,'Czech Republic','cdick2v'),(105,'France','kruhben2w'),(106,'Azerbaijan','ehayland2x'),(107,'China','sdalmon2y'),(108,'North Korea','smarvel2z'),(109,'Tajikistan','zgrace30'),(110,'Guadeloupe','drieger31'),(111,'American Samoa','kfuidge32'),(112,'Latvia','gharriagn33'),(113,'Ecuador','znoe34'),(114,'Indonesia','iknappett35'),(115,'China','asrutton36'),(116,'Indonesia','bpersey37'),(117,'Iran','epink38'),(118,'China','cganter39'),(119,'Portugal','mcrannell3a'),(120,'Poland','cseabourne3b');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
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

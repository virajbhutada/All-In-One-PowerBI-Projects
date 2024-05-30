-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: universities
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `ranking_criteria`
--

DROP TABLE IF EXISTS `ranking_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_criteria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ranking_system_id` int DEFAULT NULL,
  `criteria_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rc_rs` (`ranking_system_id`),
  CONSTRAINT `fk_rc_rs` FOREIGN KEY (`ranking_system_id`) REFERENCES `ranking_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_criteria`
--

LOCK TABLES `ranking_criteria` WRITE;
/*!40000 ALTER TABLE `ranking_criteria` DISABLE KEYS */;
INSERT INTO `ranking_criteria` VALUES (1,1,'Teaching'),(2,1,'International'),(3,1,'Research'),(4,1,'Citations'),(5,1,'Income'),(6,1,'Total Times'),(7,2,'Alumni'),(8,2,'Award'),(9,2,'HiCi'),(10,2,'N and S'),(11,2,'Pub'),(12,2,'PCP'),(13,2,'Total Shanghai'),(14,3,'Quality of Education Rank'),(15,3,'Alumni Employment Rank'),(16,3,'Quality of Faculty Rank'),(17,3,'Publications Rank'),(18,3,'Influence Rank'),(19,3,'Citations Rank'),(20,3,'Patents Rank'),(21,3,'Total CWUR');
/*!40000 ALTER TABLE `ranking_criteria` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-16 14:07:43

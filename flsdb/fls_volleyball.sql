CREATE DATABASE  IF NOT EXISTS `fls` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fls`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: fls
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `volleyball`
--

DROP TABLE IF EXISTS `volleyball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volleyball` (
  `id` int NOT NULL AUTO_INCREMENT,
  `home_total` int NOT NULL DEFAULT '0',
  `away_total` int NOT NULL DEFAULT '0',
  `home_set1` int NOT NULL DEFAULT '0',
  `home_set2` int NOT NULL DEFAULT '0',
  `home_set3` int NOT NULL DEFAULT '0',
  `home_set4` int NOT NULL DEFAULT '0',
  `home_set5` int NOT NULL DEFAULT '0',
  `away_set1` int NOT NULL DEFAULT '0',
  `away_set2` int NOT NULL DEFAULT '0',
  `away_set3` int NOT NULL DEFAULT '0',
  `away_set4` int NOT NULL DEFAULT '0',
  `away_set5` int NOT NULL DEFAULT '0',
  `schedule_id` int NOT NULL,
  `completed` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `t_idx` (`schedule_id`),
  CONSTRAINT `vs` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volleyball`
--

LOCK TABLES `volleyball` WRITE;
/*!40000 ALTER TABLE `volleyball` DISABLE KEYS */;
INSERT INTO `volleyball` VALUES (1,2,1,0,0,0,0,0,0,0,0,0,0,10,1),(2,0,3,0,0,0,0,0,0,0,0,0,0,13,1),(3,3,2,0,0,0,0,0,0,0,0,0,0,21,1),(4,0,3,0,0,0,0,0,0,0,0,0,0,29,1),(5,0,3,0,0,0,0,0,0,0,0,0,0,39,1),(6,1,3,0,0,0,0,0,0,0,0,0,0,46,1),(7,3,1,0,0,0,0,0,0,0,0,0,0,61,1),(8,3,1,0,0,0,0,0,0,0,0,0,0,66,1),(9,0,3,0,0,0,0,0,0,0,0,0,0,73,1),(10,1,3,0,0,0,0,0,0,0,0,0,0,77,1),(11,3,0,0,0,0,0,0,0,0,0,0,0,81,1),(12,3,0,0,0,0,0,0,0,0,0,0,0,89,1),(13,3,1,0,0,0,0,0,0,0,0,0,0,96,1),(14,3,0,0,0,0,0,0,0,0,0,0,0,105,1),(15,0,3,0,0,0,0,0,0,0,0,0,0,109,1),(16,3,0,0,0,0,0,0,0,0,0,0,0,113,1),(17,0,3,0,0,0,0,0,0,0,0,0,0,117,1),(18,3,0,0,0,0,0,0,0,0,0,0,0,120,1),(19,0,0,0,0,0,0,0,0,0,0,0,0,123,0),(20,0,0,0,0,0,0,0,0,0,0,0,0,124,0),(21,0,2,0,0,0,0,0,0,0,0,0,0,12,1),(22,0,2,0,0,0,0,0,0,0,0,0,0,19,1),(23,0,2,0,0,0,0,0,0,0,0,0,0,27,1),(24,0,2,0,0,0,0,0,0,0,0,0,0,28,1),(25,0,2,0,0,0,0,0,0,0,0,0,0,37,1),(26,1,2,0,0,0,0,0,0,0,0,0,0,45,1),(27,0,0,0,0,0,0,0,0,0,0,0,0,52,0),(28,2,1,0,0,0,0,0,0,0,0,0,0,60,1),(29,1,2,0,0,0,0,0,0,0,0,0,0,65,1),(30,2,1,0,0,0,0,0,0,0,0,0,0,72,1),(31,2,1,0,0,0,0,0,0,0,0,0,0,75,1),(32,2,0,0,0,0,0,0,0,0,0,0,0,79,1),(33,2,0,0,0,0,0,0,0,0,0,0,0,80,1),(34,2,0,0,0,0,0,0,0,0,0,0,0,88,1),(35,0,0,0,0,0,0,0,0,0,0,0,0,95,0),(36,0,2,0,0,0,0,0,0,0,0,0,0,100,1),(37,2,0,0,0,0,0,0,0,0,0,0,0,103,1),(38,2,0,0,0,0,0,0,0,0,0,0,0,108,1),(39,2,0,0,0,0,0,0,0,0,0,0,0,112,1),(40,0,2,0,0,0,0,0,0,0,0,0,0,116,1),(41,2,0,0,0,0,0,0,0,0,0,0,0,119,1);
/*!40000 ALTER TABLE `volleyball` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-30 22:20:40

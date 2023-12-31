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
-- Table structure for table `field_hockey`
--

DROP TABLE IF EXISTS `field_hockey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `field_hockey` (
  `id` int NOT NULL AUTO_INCREMENT,
  `home_total` int NOT NULL DEFAULT '0',
  `away_total` int NOT NULL DEFAULT '0',
  `home_q1` int NOT NULL DEFAULT '0',
  `home_q2` int NOT NULL DEFAULT '0',
  `home_q3` int NOT NULL DEFAULT '0',
  `home_q4` int NOT NULL DEFAULT '0',
  `home_ot` int NOT NULL DEFAULT '0',
  `away_q1` int NOT NULL DEFAULT '0',
  `away_q2` int NOT NULL DEFAULT '0',
  `away_q3` int NOT NULL DEFAULT '0',
  `away_q4` int NOT NULL DEFAULT '0',
  `away_ot` int NOT NULL DEFAULT '0',
  `schedule_id` int NOT NULL,
  `completed` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `schedule_id_idx` (`schedule_id`),
  CONSTRAINT `sched_id` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_hockey`
--

LOCK TABLES `field_hockey` WRITE;
/*!40000 ALTER TABLE `field_hockey` DISABLE KEYS */;
INSERT INTO `field_hockey` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,20,0),(2,0,6,0,0,0,0,0,0,0,0,0,0,24,1),(3,1,0,0,0,0,0,0,0,0,0,0,0,30,1),(4,0,6,0,0,0,0,0,0,0,0,0,0,38,1),(5,0,9,0,0,0,0,0,0,0,0,0,0,47,1),(6,6,0,0,0,0,0,0,0,0,0,0,0,53,1),(7,0,0,0,0,0,0,0,0,0,0,0,0,57,0),(8,0,1,0,0,0,0,0,0,0,0,0,0,62,1),(9,4,0,0,0,0,0,0,0,0,0,0,0,74,1),(10,0,1,0,0,0,0,0,0,0,0,0,0,82,1),(11,2,1,0,0,0,0,0,0,0,0,0,0,86,1),(12,6,0,0,0,0,0,0,0,0,0,0,0,90,1),(13,7,0,0,0,0,0,0,0,0,0,0,0,97,1),(14,0,0,0,0,0,0,0,0,0,0,0,0,99,0),(15,0,4,0,0,0,0,0,0,0,0,0,0,104,1),(16,1,0,0,0,0,0,0,0,0,0,0,0,110,1),(17,0,0,0,0,0,0,0,0,0,0,0,0,23,1),(18,6,0,0,0,0,0,0,0,0,0,0,0,26,1),(19,0,2,0,0,0,0,0,0,0,0,0,0,36,1),(20,0,5,0,0,0,0,0,0,0,0,0,0,44,1),(21,6,0,0,0,0,0,0,0,0,0,0,0,51,1),(22,0,0,0,0,0,0,0,0,0,0,0,0,59,1),(23,1,0,0,0,0,0,0,0,0,0,0,0,71,1),(24,0,0,0,0,0,0,0,0,0,0,0,0,78,0),(25,6,0,0,0,0,0,0,0,0,0,0,0,87,1),(26,6,0,0,0,0,0,0,0,0,0,0,0,94,1),(27,0,0,0,0,0,0,0,0,0,0,0,0,102,0),(28,0,0,0,0,0,0,0,0,0,0,0,0,107,1);
/*!40000 ALTER TABLE `field_hockey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-30 22:20:42

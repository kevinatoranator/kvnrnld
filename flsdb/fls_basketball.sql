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
-- Table structure for table `basketball`
--

DROP TABLE IF EXISTS `basketball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basketball` (
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
  CONSTRAINT `schedule_id` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basketball`
--

LOCK TABLES `basketball` WRITE;
/*!40000 ALTER TABLE `basketball` DISABLE KEYS */;
INSERT INTO `basketball` VALUES (1,54,84,0,0,0,0,0,0,0,0,0,0,128,1),(2,36,41,0,0,0,0,0,0,0,0,0,0,134,1),(3,70,57,0,0,0,0,0,0,0,0,0,0,130,1),(4,64,54,0,0,0,0,0,0,0,0,0,0,136,1),(5,85,44,0,0,0,0,0,0,0,0,0,0,155,1),(6,67,43,0,0,0,0,0,0,0,0,0,0,160,1),(7,66,43,0,0,0,0,0,0,0,0,0,0,169,1),(8,59,52,0,0,0,0,0,0,0,0,0,0,173,1),(9,48,49,0,0,0,0,0,0,0,0,0,0,175,1),(10,0,0,0,0,0,0,0,0,0,0,0,0,183,0),(11,0,0,0,0,0,0,0,0,0,0,0,0,187,0),(12,0,0,0,0,0,0,0,0,0,0,0,0,200,0),(13,0,0,0,0,0,0,0,0,0,0,0,0,206,0),(14,0,0,0,0,0,0,0,0,0,0,0,0,212,0),(15,0,0,0,0,0,0,0,0,0,0,0,0,218,0),(16,0,0,0,0,0,0,0,0,0,0,0,0,224,0),(17,0,0,0,0,0,0,0,0,0,0,0,0,228,0),(18,0,0,0,0,0,0,0,0,0,0,0,0,235,0),(19,0,0,0,0,0,0,0,0,0,0,0,0,240,0),(20,0,0,0,0,0,0,0,0,0,0,0,0,249,0),(21,0,0,0,0,0,0,0,0,0,0,0,0,253,0),(22,0,0,0,0,0,0,0,0,0,0,0,0,259,0),(23,0,0,0,0,0,0,0,0,0,0,0,0,264,0),(24,0,0,0,0,0,0,0,0,0,0,0,0,181,0),(25,0,0,0,0,0,0,0,0,0,0,0,0,185,0),(26,0,0,0,0,0,0,0,0,0,0,0,0,198,0),(27,0,0,0,0,0,0,0,0,0,0,0,0,205,0),(30,0,0,0,0,0,0,0,0,0,0,0,0,209,0),(31,0,0,0,0,0,0,0,0,0,0,0,0,210,0),(32,0,0,0,0,0,0,0,0,0,0,0,0,214,0),(33,0,0,0,0,0,0,0,0,0,0,0,0,220,0),(34,0,0,0,0,0,0,0,0,0,0,0,0,226,0),(35,0,0,0,0,0,0,0,0,0,0,0,0,233,0),(36,0,0,0,0,0,0,0,0,0,0,0,0,238,0),(37,0,0,0,0,0,0,0,0,0,0,0,0,247,0),(38,0,0,0,0,0,0,0,0,0,0,0,0,251,0),(39,0,0,0,0,0,0,0,0,0,0,0,0,256,0),(40,0,0,0,0,0,0,0,0,0,0,0,0,257,0),(41,0,0,0,0,0,0,0,0,0,0,0,0,262,0),(42,0,0,0,0,0,0,0,0,0,0,0,0,267,0),(43,30,26,0,0,0,0,0,0,0,0,0,0,129,1),(44,10,45,0,0,0,0,0,0,0,0,0,0,135,1),(45,18,47,0,0,0,0,0,0,0,0,0,0,147,1),(46,17,39,0,0,0,0,0,0,0,0,0,0,150,1),(47,0,0,0,0,0,0,0,0,0,0,0,0,157,0),(48,0,0,0,0,0,0,0,0,0,0,0,0,166,0),(49,0,0,0,0,0,0,0,0,0,0,0,0,180,0),(50,0,0,0,0,0,0,0,0,0,0,0,0,184,0),(51,0,0,0,0,0,0,0,0,0,0,0,0,197,0),(52,0,0,0,0,0,0,0,0,0,0,0,0,207,0),(53,0,0,0,0,0,0,0,0,0,0,0,0,208,0),(54,0,0,0,0,0,0,0,0,0,0,0,0,213,0),(55,0,0,0,0,0,0,0,0,0,0,0,0,219,0),(56,0,0,0,0,0,0,0,0,0,0,0,0,225,0),(57,0,0,0,0,0,0,0,0,0,0,0,0,232,0),(58,0,0,0,0,0,0,0,0,0,0,0,0,237,0),(59,0,0,0,0,0,0,0,0,0,0,0,0,246,0),(60,0,0,0,0,0,0,0,0,0,0,0,0,250,0),(61,0,0,0,0,0,0,0,0,0,0,0,0,255,0),(62,0,0,0,0,0,0,0,0,0,0,0,0,261,0),(63,58,25,0,0,0,0,0,0,0,0,0,0,131,1),(64,26,71,0,0,0,0,0,0,0,0,0,0,137,1),(65,50,33,0,0,0,0,0,0,0,0,0,0,148,1),(66,47,33,0,0,0,0,0,0,0,0,0,0,154,1),(67,27,50,0,0,0,0,0,0,0,0,0,0,159,1),(68,71,47,0,0,0,0,0,0,0,0,0,0,168,1),(69,41,44,0,0,0,0,0,0,0,0,0,0,174,1),(70,0,0,0,0,0,0,0,0,0,0,0,0,178,0),(71,0,0,0,0,0,0,0,0,0,0,0,0,182,0),(72,0,0,0,0,0,0,0,0,0,0,0,0,186,0),(73,0,0,0,0,0,0,0,0,0,0,0,0,188,0),(74,0,0,0,0,0,0,0,0,0,0,0,0,189,0),(75,0,0,0,0,0,0,0,0,0,0,0,0,199,0),(76,0,0,0,0,0,0,0,0,0,0,0,0,211,0),(77,0,0,0,0,0,0,0,0,0,0,0,0,215,0),(78,0,0,0,0,0,0,0,0,0,0,0,0,223,0),(79,0,0,0,0,0,0,0,0,0,0,0,0,227,0),(80,0,0,0,0,0,0,0,0,0,0,0,0,233,0),(81,0,0,0,0,0,0,0,0,0,0,0,0,239,0),(82,0,0,0,0,0,0,0,0,0,0,0,0,248,0),(83,0,0,0,0,0,0,0,0,0,0,0,0,252,0),(84,0,0,0,0,0,0,0,0,0,0,0,0,258,0),(85,0,0,0,0,0,0,0,0,0,0,0,0,263,0),(86,0,0,0,0,0,0,0,0,0,0,0,0,268,0);
/*!40000 ALTER TABLE `basketball` ENABLE KEYS */;
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

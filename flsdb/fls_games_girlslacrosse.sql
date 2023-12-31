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
-- Table structure for table `games_girlslacrosse`
--

DROP TABLE IF EXISTS `games_girlslacrosse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_girlslacrosse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `half1ScoreHome` int NOT NULL,
  `half1ScoreAway` int NOT NULL,
  `half2ScoreHome` int NOT NULL,
  `half2ScoreAway` int NOT NULL,
  `otScoreHome` int NOT NULL,
  `otScoreAway` int NOT NULL,
  `totalScoreHome` int NOT NULL,
  `totalScoreAway` int NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `schedGame_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `games_girlslacrosse_schedGame_id_6a02d1b8_fk_schedule_` (`schedGame_id`),
  CONSTRAINT `games_girlslacrosse_schedGame_id_6a02d1b8_fk_schedule_` FOREIGN KEY (`schedGame_id`) REFERENCES `schedule_schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_girlslacrosse`
--

LOCK TABLES `games_girlslacrosse` WRITE;
/*!40000 ALTER TABLE `games_girlslacrosse` DISABLE KEYS */;
INSERT INTO `games_girlslacrosse` VALUES (4,0,0,0,0,0,0,1,18,1,3894),(14,0,0,0,0,0,0,19,2,1,3934),(24,0,0,0,0,0,0,20,3,1,4294),(34,0,0,0,0,0,0,8,10,1,4484),(44,0,0,0,0,0,0,7,8,1,4614),(54,0,0,0,0,0,0,11,3,1,4874),(64,0,0,0,0,0,0,7,2,1,4984),(74,0,0,0,0,0,0,5,14,1,5304),(84,0,0,0,0,0,0,4,18,1,5334),(94,0,0,0,0,0,0,9,12,1,5504),(104,0,0,0,0,0,0,1,14,1,5614),(114,0,0,0,0,0,0,2,19,1,5734),(124,0,0,0,0,0,0,0,16,1,5914),(134,0,0,0,0,0,0,0,0,0,3914),(144,0,0,0,0,0,0,0,0,0,5604),(154,0,0,0,0,0,0,0,0,0,4234),(164,0,0,0,0,0,0,0,0,0,5864),(174,0,0,0,0,0,0,0,0,0,4574),(184,0,0,0,0,0,0,0,0,0,5314);
/*!40000 ALTER TABLE `games_girlslacrosse` ENABLE KEYS */;
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

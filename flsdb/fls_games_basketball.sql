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
-- Table structure for table `games_basketball`
--

DROP TABLE IF EXISTS `games_basketball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_basketball` (
  `id` int NOT NULL AUTO_INCREMENT,
  `totalScoreHome` int NOT NULL,
  `totalScoreAway` int NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `quarter1ScoreHome` int NOT NULL,
  `quarter1ScoreAway` int NOT NULL,
  `quarter2ScoreHome` int NOT NULL,
  `quarter2ScoreAway` int NOT NULL,
  `quarter3ScoreHome` int NOT NULL,
  `quarter3ScoreAway` int NOT NULL,
  `quarter4ScoreHome` int NOT NULL,
  `quarter4ScoreAway` int NOT NULL,
  `otScoreHome` int NOT NULL,
  `otScoreAway` int NOT NULL,
  `schedGame_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `games_basketball_schedGame_id_f3444cc8_fk_schedule_schedule_id` (`schedGame_id`),
  CONSTRAINT `games_basketball_schedGame_id_f3444cc8_fk_schedule_schedule_id` FOREIGN KEY (`schedGame_id`) REFERENCES `schedule_schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_basketball`
--

LOCK TABLES `games_basketball` WRITE;
/*!40000 ALTER TABLE `games_basketball` DISABLE KEYS */;
/*!40000 ALTER TABLE `games_basketball` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-24  1:01:01

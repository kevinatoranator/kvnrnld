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
-- Table structure for table `games_soccer`
--

DROP TABLE IF EXISTS `games_soccer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_soccer` (
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
  KEY `games_soccer_schedGame_id_f695ffe6_fk_schedule_schedule_id` (`schedGame_id`),
  CONSTRAINT `games_soccer_schedGame_id_f695ffe6_fk_schedule_schedule_id` FOREIGN KEY (`schedGame_id`) REFERENCES `schedule_schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_soccer`
--

LOCK TABLES `games_soccer` WRITE;
/*!40000 ALTER TABLE `games_soccer` DISABLE KEYS */;
INSERT INTO `games_soccer` VALUES (4,1,2,2,2,0,0,3,4,1,5994),(24,0,0,0,0,0,0,4,2,1,5824),(34,0,0,0,0,0,0,3,5,1,5948),(44,0,0,0,1,0,0,0,1,1,5947),(54,1,2,1,0,0,1,2,3,1,5946),(64,0,0,0,0,0,0,5,2,1,5945),(74,0,0,0,0,0,0,1,1,1,5684),(84,0,0,0,0,0,0,1,2,1,5474),(94,0,0,0,0,0,0,3,1,1,5434),(104,0,0,0,0,0,0,5,0,1,5274),(114,0,0,0,0,0,0,0,1,1,5164),(124,0,0,0,0,0,0,6,0,1,4954),(134,0,0,0,0,0,0,0,1,1,4794),(144,0,0,0,0,0,0,3,0,1,4684),(154,0,0,0,0,0,0,1,2,1,4414),(164,0,0,0,0,0,0,2,1,1,4204),(174,0,0,0,0,0,0,0,4,1,4124),(184,0,0,0,0,0,0,2,0,1,4004),(194,0,0,0,0,0,0,0,8,1,3854),(204,0,0,0,0,0,0,8,0,1,3754),(214,0,0,0,0,0,0,0,5,1,3614),(224,0,0,0,0,0,0,3,0,1,3704),(234,0,0,0,0,0,0,0,3,1,3764),(244,0,0,0,0,0,0,7,1,1,3864),(254,0,0,0,0,0,0,1,6,1,4014),(264,0,0,0,0,0,0,2,0,1,4134),(274,0,0,0,0,0,0,0,0,1,4214),(284,0,0,0,0,0,0,5,0,1,4424),(294,0,0,0,0,0,0,1,3,1,4694),(304,0,0,0,0,0,0,5,0,1,4804),(314,0,0,0,0,0,0,1,5,1,4964),(324,0,0,0,0,0,0,8,0,1,5174),(334,0,0,0,0,0,0,2,1,1,5284),(344,0,0,0,0,0,0,2,0,1,5444),(354,0,0,0,0,0,0,0,2,1,5484),(364,0,0,0,0,0,0,7,0,1,5694),(374,0,0,0,0,0,0,0,6,1,5834),(384,0,0,0,0,0,0,2,9,1,3744),(394,0,0,0,0,0,0,2,2,1,3674),(404,0,0,0,0,0,0,7,0,1,3804),(414,0,0,0,0,0,0,0,3,1,3994),(424,0,0,0,0,0,0,4,3,1,4094),(434,0,0,0,0,0,0,0,1,1,4154),(444,0,0,0,0,0,0,0,2,1,4384),(454,0,0,0,0,0,0,0,5,1,4674),(464,0,0,0,0,0,0,2,4,1,4754),(474,0,0,0,0,0,0,1,1,1,4944),(484,0,0,0,0,0,0,6,0,1,5114),(494,0,0,0,0,0,0,0,0,1,5214),(504,0,0,0,0,0,0,0,1,1,5384),(514,0,0,0,0,0,0,2,0,1,5464),(524,0,0,0,0,0,0,2,0,1,5654),(534,0,0,0,0,0,0,4,1,1,5774),(544,0,0,0,0,0,0,0,0,0,3794),(554,0,0,0,0,0,0,0,0,0,5374),(564,0,0,0,0,0,0,0,0,0,5764),(574,0,0,0,0,0,0,0,0,0,4934),(584,0,0,0,0,0,0,0,0,0,3594),(594,0,0,0,0,0,0,0,0,0,4664),(604,0,0,0,0,0,0,0,0,0,3984),(614,0,0,0,0,0,0,0,0,0,4144),(624,0,0,0,0,0,0,0,0,0,5104),(634,0,0,0,0,0,0,0,0,0,4084),(644,0,0,0,0,0,0,0,0,0,3734),(654,0,0,0,0,0,0,0,0,0,4374),(664,0,0,0,0,0,0,0,0,0,4744),(674,0,0,0,0,0,0,0,0,0,5644),(684,0,0,0,0,0,0,0,0,0,5204);
/*!40000 ALTER TABLE `games_soccer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-30 22:20:41

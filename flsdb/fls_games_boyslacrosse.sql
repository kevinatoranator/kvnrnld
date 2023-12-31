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
-- Table structure for table `games_boyslacrosse`
--

DROP TABLE IF EXISTS `games_boyslacrosse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_boyslacrosse` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `totalScoreHome` int NOT NULL,
  `totalScoreAway` int NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `schedGame_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `games_boyslacrosse_schedGame_id_4a249309_fk_schedule_schedule_id` (`schedGame_id`),
  CONSTRAINT `games_boyslacrosse_schedGame_id_4a249309_fk_schedule_schedule_id` FOREIGN KEY (`schedGame_id`) REFERENCES `schedule_schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_boyslacrosse`
--

LOCK TABLES `games_boyslacrosse` WRITE;
/*!40000 ALTER TABLE `games_boyslacrosse` DISABLE KEYS */;
INSERT INTO `games_boyslacrosse` VALUES (4,0,0,0,0,0,0,0,0,0,0,8,16,1,3724),(14,0,0,0,0,0,0,0,0,0,0,12,2,1,3904),(24,0,0,0,0,0,0,0,0,0,0,4,9,1,3924),(34,0,0,0,0,0,0,0,0,0,0,5,15,1,4304),(44,0,0,0,0,0,0,0,0,0,0,8,12,1,4494),(54,0,0,0,0,0,0,0,0,0,0,14,4,1,4624),(64,0,0,0,0,0,0,0,0,0,0,4,9,1,4884),(74,0,0,0,0,0,0,0,0,0,0,17,0,1,4924),(84,0,0,0,0,0,0,0,0,0,0,18,3,1,5344),(94,0,0,0,0,0,0,0,0,0,0,3,9,1,5554),(104,0,0,0,0,0,0,0,0,0,0,20,0,1,5744),(114,0,0,0,0,0,0,0,0,0,0,11,5,1,5884),(124,0,0,0,0,0,0,0,0,0,0,11,1,1,3884),(134,0,0,0,0,0,0,0,0,0,0,0,1,1,4244),(144,0,0,0,0,0,0,0,0,0,0,8,7,1,4474),(154,0,0,0,0,0,0,0,0,0,0,8,4,1,4584),(164,0,0,0,0,0,0,0,0,0,0,2,3,1,4844),(174,0,0,0,0,0,0,0,0,0,0,10,4,1,4914),(184,0,0,0,0,0,0,0,0,0,0,8,7,1,4974),(194,0,0,0,0,0,0,0,0,0,0,16,12,1,5154),(204,0,0,0,0,0,0,0,0,0,0,7,9,1,5754),(214,0,0,0,0,0,0,0,0,0,0,0,0,0,5184),(224,0,0,0,0,0,0,0,0,0,0,0,0,0,5294),(234,0,0,0,0,0,0,0,0,0,0,0,0,0,5324);
/*!40000 ALTER TABLE `games_boyslacrosse` ENABLE KEYS */;
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

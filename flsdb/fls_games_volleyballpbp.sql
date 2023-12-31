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
-- Table structure for table `games_volleyballpbp`
--

DROP TABLE IF EXISTS `games_volleyballpbp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_volleyballpbp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(500) NOT NULL,
  `set` int NOT NULL,
  `game_id` int NOT NULL,
  `set_score` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `games_volleyballpbp_game_id_d40737b3_fk_games_volleyball_id` (`game_id`),
  CONSTRAINT `games_volleyballpbp_game_id_d40737b3_fk_games_volleyball_id` FOREIGN KEY (`game_id`) REFERENCES `games_volleyball` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_volleyballpbp`
--

LOCK TABLES `games_volleyballpbp` WRITE;
/*!40000 ALTER TABLE `games_volleyballpbp` DISABLE KEYS */;
INSERT INTO `games_volleyballpbp` VALUES (4,'WAHSKill by ',1,2754,'1-0'),(14,'WAHSService ace by ',1,2754,'2-0'),(24,'WAHSAttack error by ',1,2754,'2-1'),(34,'WAHSService error by ',1,2754,'2-2'),(44,'WAHSBlock by ',1,2754,'0-0'),(54,'WAHSBlock out of bounds by ',1,2754,'2-3'),(64,'WAHSBlock error by ',1,2754,'2-4'),(74,'GHSKill by ',1,2744,'0-1');
/*!40000 ALTER TABLE `games_volleyballpbp` ENABLE KEYS */;
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

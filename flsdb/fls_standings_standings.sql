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
-- Table structure for table `standings_standings`
--

DROP TABLE IF EXISTS `standings_standings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `standings_standings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `wins` int NOT NULL,
  `losses` int NOT NULL,
  `ties` int NOT NULL,
  `district` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `season` varchar(50) NOT NULL,
  `school_id` int NOT NULL,
  `sport_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `standings_standings_school_id_dbed12f6_fk_roster_schools_id` (`school_id`),
  KEY `standings_standings_sport_id_e74e0087_fk_roster_teams_id` (`sport_id`),
  CONSTRAINT `standings_standings_school_id_dbed12f6_fk_roster_schools_id` FOREIGN KEY (`school_id`) REFERENCES `roster_schools` (`id`),
  CONSTRAINT `standings_standings_sport_id_e74e0087_fk_roster_teams_id` FOREIGN KEY (`sport_id`) REFERENCES `roster_teams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `standings_standings`
--

LOCK TABLES `standings_standings` WRITE;
/*!40000 ALTER TABLE `standings_standings` DISABLE KEYS */;
INSERT INTO `standings_standings` VALUES (1,2,7,0,'Jefferson','B','3','2022',1,13),(2,1,8,0,'Jefferson','C','4','2022',10,13),(3,7,3,0,'Jefferson','B','3','2022',8,13),(4,6,3,0,'Jefferson','C','4','2022',7,13),(5,6,2,1,'Jefferson','C','4','2022',3,13),(6,0,9,0,'Jefferson','B','3','2022',2,13),(7,11,0,0,'Jefferson','D','5','2022',24,13),(8,2,7,0,'Battlefield','B','3','2022',35,13),(9,4,3,0,'Battlefield','B','3','2022',6,13),(10,10,0,0,'Battlefield','B','3','2022',65,13),(11,0,0,0,'Northern Neck','B','3','2022',41,13),(12,0,4,0,'Northern Neck','B','3','2022',38,13),(13,10,2,0,'Northwestern','B','3','2022',78,13),(14,5,4,0,'Colonial','B','3','2022',55,13),(15,12,8,1,'Jefferson','C','3','2021',1,8),(16,18,3,0,'Blue Ridge','D','3','2021',25,8),(17,11,5,0,'Seminole','C','3','2021',28,8),(18,5,9,2,'Seminole','C','3','2021',27,8),(19,9,4,2,'Jefferson','C','3','2021',2,8),(20,12,3,0,'Shenandoah','C','3','2021',26,8),(21,11,2,3,'Jefferson','D','4','2021',3,8),(22,8,6,1,'Jefferson','D','4','2021',7,8),(23,8,7,2,'Jefferson','C','3','2021',8,8),(24,1,15,0,'Jefferson','B','3','2021',9,8),(25,3,13,0,'Jefferson','D','4','2021',10,8),(26,18,1,1,'Jefferson','D','5','2021',24,8),(27,1,15,0,'Valley','C','3','2021',5,8),(28,11,5,1,'Shenandoah','C','3','2021',20,8),(29,13,5,0,'Northwestern','B','3','2021',13,8),(30,10,1,0,'Jefferson','C','3','2022',1,17),(31,3,7,0,'Jefferson','D','4','2022',10,17),(32,6,5,0,'Jefferson','B','3','2022',9,17),(33,5,5,0,'Jefferson','C','3','2022',8,17),(34,0,10,0,'Jefferson','D','4','2022',7,17),(35,7,1,0,'Jefferson','D','4','2022',3,17),(36,2,9,0,'Jefferson','C','3','2022',2,17),(37,6,1,0,'Jefferson','D','5','2022',24,17),(38,6,5,0,'Seminole','C','3','2022',27,17),(39,7,2,0,'Seminole','C','3','2022',28,17),(40,11,0,0,'Seminole','C','3','2022',21,17),(41,2,10,0,'Seminole','C','3','2022',59,17),(42,10,3,0,'Seminole','C','3','2022',107,17),(43,7,3,0,'Valley','C','3','2022',51,17),(44,13,0,0,'Valley','C','3','2022',22,17),(45,5,7,0,'Valley','C','3','2022',5,17),(46,3,6,0,'Valley','C','3','2022',26,17),(47,3,3,0,'Valley','C','3','2022',57,17),(48,11,0,0,'Shenandoah','C','3','2022',67,17),(49,6,4,0,'Shenandoah','C','3','2022',20,17),(50,0,10,0,'Shenandoah','C','3','2022',23,17),(51,0,5,44,'Jefferson','C','3','2022',1,15),(52,6,0,132,'Jefferson','D','4','2022',10,15),(53,1,4,54,'Jefferson','B','3','2022',9,15),(54,0,5,42,'Jefferson','C','3','2022',8,15),(55,4,1,100,'Jefferson','D','4','2022',7,15),(56,3,2,86,'Jefferson','D','4','2022',3,15),(57,0,5,46,'Jefferson','C','3','2022',2,15),(58,4,1,108,'Jefferson','D','5','2022',24,15),(59,0,5,40,'Seminole','C','3','2022',27,15),(60,5,0,100,'Seminole','C','3','2022',28,15),(61,3,2,76,'Seminole','C','3','2022',21,15),(62,4,1,94,'Seminole','C','3','2022',59,15),(63,4,1,92,'Seminole','C','3','2022',107,15),(64,3,2,78,'Valley','C','3','2022',51,15),(65,4,1,88,'Valley','C','3','2022',22,15),(66,1,4,52,'Valley','C','3','2022',5,15),(67,0,4,32,'Valley','C','3','2022',26,15),(68,2,3,66,'Valley','C','3','2022',57,15),(69,3,2,76,'Shenandoah','C','3','2022',67,15),(70,4,1,90,'Shenandoah','C','3','2022',20,15),(71,5,0,100,'Shenandoah','C','3','2022',23,15),(72,1,3,52,'Battlefield','B','4','2022',14,15);
/*!40000 ALTER TABLE `standings_standings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-24  1:01:00

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
-- Table structure for table `roster_teams`
--

DROP TABLE IF EXISTS `roster_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roster_teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formattedName` varchar(50) NOT NULL,
  `urlName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roster_teams`
--

LOCK TABLES `roster_teams` WRITE;
/*!40000 ALTER TABLE `roster_teams` DISABLE KEYS */;
INSERT INTO `roster_teams` VALUES (1,'Boys JV Lacrosse','jvblax'),(2,'Boys JV Soccer','jvbsoccer'),(3,'Boys Varsity Lacrosse','blax'),(4,'Boys Varsity Soccer','bsoccer'),(5,'Girls JV Lacrosse','jvglax'),(6,'Girls JV Soccer','jvgsoccer'),(7,'Girls Varsity Lacrosse','glax'),(8,'Girls Varsity Soccer','gsoccer'),(9,'JV Baseball','jvbaseball'),(10,'JV Softball','jvsoftball'),(11,'Varsity Baseball','baseball'),(12,'Varsity Softball','softball'),(13,'Varsity Field Hockey','fhockey'),(14,'JV Field Hockey','jvfhockey'),(15,'Varsity Football','football'),(16,'JV Football','jvfootball'),(17,'Girls Varsity Volleyball','vball'),(18,'Girls JV Volleyball','jvvball'),(19,'Girls Varsity Basketball','gbball'),(20,'Girls JV Basketball','jvgbball'),(21,'Boys Varsity Basketball','bbball'),(22,'Boys JV Basketball','jvbbball'),(23,'Boys Varsity Golf','bgolf'),(24,'Girls Varsity Golf','ggolf'),(25,'Girls Varsity Cross Country','gxc'),(26,'Boys Varsity Cross Country','bxc'),(27,'Girls Varsity Outdoor Track','gtrack'),(28,'Boys Varsity Outdoor Track','btrack'),(29,'Girls Varsity Indoor Track','gindoor'),(30,'Boys Varsity Indoor Track','bindoor'),(31,'Girls Varsity Tennis','gtennis'),(32,'Boys Varsity Tennis','btennis'),(33,'Varsity Wrestling','wrestling'),(34,'Varsity Scholastic Bowl','bowl'),(35,'Girls Varsity Swim & Dive','gswim'),(36,'Boys Varsity Swim & Dive','bswim');
/*!40000 ALTER TABLE `roster_teams` ENABLE KEYS */;
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

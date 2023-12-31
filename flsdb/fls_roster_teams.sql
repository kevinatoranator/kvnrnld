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
  `season` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roster_teams`
--

LOCK TABLES `roster_teams` WRITE;
/*!40000 ALTER TABLE `roster_teams` DISABLE KEYS */;
INSERT INTO `roster_teams` VALUES (1,'Boys JV Lacrosse','jvblax','Spring'),(2,'Boys JV Soccer','jvbsoccer','Spring'),(3,'Boys Varsity Lacrosse','blax','Spring'),(4,'Boys Varsity Soccer','bsoccer','Spring'),(5,'Girls JV Lacrosse','jvglax','Spring'),(6,'Girls JV Soccer','jvgsoccer','Spring'),(7,'Girls Varsity Lacrosse','glax','Spring'),(8,'Girls Varsity Soccer','gsoccer','Spring'),(9,'JV Baseball','jvbaseball','Spring'),(10,'JV Softball','jvsoftball','Spring'),(11,'Varsity Baseball','baseball','Spring'),(12,'Varsity Softball','softball','Spring'),(13,'Varsity Field Hockey','fhockey','Fall'),(14,'JV Field Hockey','jvfhockey','Fall'),(15,'Varsity Football','football','Fall'),(16,'JV Football','jvfootball','Fall'),(17,'Girls Varsity Volleyball','vball','Fall'),(18,'Girls JV Volleyball','jvvball','Fall'),(19,'Girls Varsity Basketball','gbball','Winter'),(20,'Girls JV Basketball','jvgbball','Winter'),(21,'Boys Varsity Basketball','bbball','Winter'),(22,'Boys JV Basketball','jvbbball','Winter'),(23,'Boys Varsity Golf','bgolf','Fall'),(24,'Girls Varsity Golf','ggolf','Fall'),(25,'Girls Varsity Cross Country','gxc','Fall'),(26,'Boys Varsity Cross Country','bxc','Fall'),(27,'Girls Varsity Outdoor Track','gtrack','Spring'),(28,'Boys Varsity Outdoor Track','btrack','Spring'),(29,'Girls Varsity Indoor Track','gindoor','Winter'),(30,'Boys Varsity Indoor Track','bindoor','Winter'),(31,'Girls Varsity Tennis','gtennis','Spring'),(32,'Boys Varsity Tennis','btennis','Spring'),(33,'Varsity Wrestling','wrestling','Winter'),(34,'Varsity Scholastic Bowl','bowl','Other'),(35,'Girls Varsity Swim & Dive','gswim','Winter'),(36,'Boys Varsity Swim & Dive','bswim','Winter'),(37,'Varsity Golf','golf','Fall');
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

-- Dump completed on 2023-12-30 22:20:39

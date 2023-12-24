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
-- Table structure for table `games_football`
--

DROP TABLE IF EXISTS `games_football`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_football` (
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
  KEY `games_football_schedGame_id_5527386d_fk_schedule_schedule_id` (`schedGame_id`),
  CONSTRAINT `games_football_schedGame_id_5527386d_fk_schedule_schedule_id` FOREIGN KEY (`schedGame_id`) REFERENCES `schedule_schedule` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3085 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_football`
--

LOCK TABLES `games_football` WRITE;
/*!40000 ALTER TABLE `games_football` DISABLE KEYS */;
INSERT INTO `games_football` VALUES (4,0,0,0,0,0,0,6,14,0,0,6,14,1,84),(24,0,0,0,0,0,0,0,0,0,0,0,0,0,27855),(34,0,20,0,13,0,6,0,8,0,0,0,47,1,6124),(44,0,0,0,0,0,0,0,0,0,0,0,0,0,7884),(54,0,0,0,0,0,0,0,0,0,0,0,0,0,8534),(64,0,0,0,0,0,0,0,0,0,0,0,0,0,9354),(74,0,0,0,0,0,0,0,0,0,0,0,0,0,11044),(84,0,0,0,0,0,0,0,0,0,0,0,0,0,12744),(94,0,0,0,0,0,0,0,0,0,0,0,0,0,13474),(104,0,0,0,0,0,0,0,0,0,0,0,0,0,13974),(114,0,0,0,0,0,0,0,0,0,0,0,0,0,27134),(124,0,0,0,0,0,0,17,28,0,0,17,28,1,144),(134,0,0,0,0,0,0,0,0,0,0,0,0,0,6104),(144,0,0,0,0,0,0,0,0,0,0,0,0,0,7034),(154,0,0,0,0,0,0,0,0,0,0,0,0,0,10124),(164,0,0,0,0,0,0,0,0,0,0,0,0,0,11814),(174,0,0,0,0,0,0,0,0,0,0,0,0,0,14504),(184,0,0,0,0,0,0,0,0,0,0,0,0,0,15334),(194,0,0,0,0,0,0,0,0,0,0,0,0,0,16144),(204,0,0,0,0,0,0,0,0,0,0,0,0,0,16564),(214,0,0,0,0,0,0,0,0,0,0,0,0,0,19164),(224,0,0,0,0,0,0,0,0,0,0,0,0,0,20254),(234,0,0,0,0,0,0,0,0,0,0,0,0,0,21184),(244,0,0,0,0,0,0,0,0,0,0,0,0,0,22384),(254,0,0,0,0,0,0,0,0,0,0,0,0,0,24264),(264,0,0,0,0,0,0,0,0,0,0,0,0,0,25034),(274,0,0,0,0,0,0,0,0,0,0,0,0,0,25844),(284,61,14,0,0,0,0,0,0,0,0,61,14,1,334),(294,28,39,0,0,0,0,0,0,0,0,28,39,1,6234),(304,38,0,0,0,0,0,0,0,0,0,38,0,1,7254),(314,22,31,0,0,0,0,0,0,0,0,22,31,1,8724),(324,36,6,0,0,0,0,0,0,0,0,36,6,1,9584),(334,14,50,0,0,0,0,0,0,0,0,14,50,1,11984),(344,28,7,0,0,0,0,0,0,0,0,28,7,1,12934),(354,14,34,0,0,0,0,0,0,0,0,14,34,1,13594),(364,13,42,0,0,0,0,0,0,0,0,13,42,1,14104),(374,27,14,0,0,0,0,0,0,0,0,27,14,1,14694),(384,0,28,0,0,0,0,0,0,0,0,0,28,1,15494),(394,0,28,0,0,0,0,0,0,0,0,0,28,1,16284),(404,30,21,0,0,0,0,0,0,0,0,30,21,1,17124),(414,2,35,0,0,0,0,0,0,0,0,2,35,1,17884),(424,19,20,0,0,0,0,0,0,0,0,19,20,1,21364),(434,0,0,0,0,0,0,0,0,0,0,0,0,0,24414),(444,14,35,0,0,0,0,0,0,0,0,14,35,1,25214),(454,21,35,0,0,0,0,0,0,0,0,21,35,1,27314),(464,0,0,0,0,0,0,6,42,0,0,6,42,1,7084),(474,0,0,0,0,0,0,21,7,0,0,21,7,1,7904),(484,0,0,0,0,0,0,61,6,0,0,61,6,1,8544),(494,0,0,0,0,0,0,14,35,0,0,14,35,1,9364),(504,0,0,0,0,0,0,14,35,0,0,14,35,1,10174),(514,0,0,0,0,0,0,27,35,0,0,27,35,1,11054),(524,0,0,0,0,0,0,28,32,0,0,28,32,1,11854),(534,0,0,0,0,0,0,42,6,0,0,42,6,1,12754),(544,0,0,0,0,0,0,0,40,0,0,0,40,1,13494),(554,0,0,0,0,0,0,8,17,0,0,8,17,1,16174),(564,0,0,0,0,0,0,30,16,0,0,30,16,1,16574),(574,0,0,0,0,0,0,0,49,0,0,0,49,1,19194),(584,0,0,0,0,0,0,14,13,0,0,14,13,1,20274),(594,0,0,0,0,6,0,35,14,0,0,41,14,1,21204),(604,0,0,0,0,0,0,35,14,0,0,35,14,1,22394),(614,0,0,0,0,0,0,21,2,0,0,21,2,1,23424),(624,0,0,0,0,0,0,35,0,0,0,35,0,1,25064),(634,0,0,0,0,0,0,0,41,0,0,0,41,1,25874),(644,0,0,0,0,0,0,14,28,0,0,14,28,1,27154),(654,0,0,0,0,0,0,0,0,0,0,0,0,0,214),(664,0,0,0,0,0,0,0,0,0,0,0,0,0,19274),(674,21,48,0,0,0,0,0,0,0,0,21,48,1,234),(684,0,0,0,0,0,0,0,0,0,0,0,0,0,7934),(694,0,0,0,0,0,0,0,0,0,0,0,0,0,12824),(704,0,0,0,0,0,0,0,0,0,0,0,0,0,14034),(714,0,0,0,0,0,0,61,0,0,0,61,0,1,20354),(724,0,0,0,0,0,0,16,46,0,0,16,46,1,23524),(734,0,0,0,0,0,0,13,58,0,0,13,58,1,25134),(744,0,0,0,0,0,0,0,0,0,0,0,0,0,27204),(754,0,0,0,0,0,0,0,0,0,0,0,0,0,6144),(764,0,0,0,0,0,0,0,0,0,0,0,0,0,7164),(774,0,0,0,0,0,0,0,0,0,0,0,0,0,8634),(784,0,0,0,0,0,0,0,0,0,0,0,0,0,9434),(794,0,0,0,0,0,0,0,0,0,0,0,0,0,10234),(804,0,0,0,0,0,0,0,0,0,0,0,0,0,10724),(814,0,0,0,0,0,0,0,0,0,0,0,0,0,11104),(824,0,0,0,0,0,0,0,0,0,0,0,0,0,11924),(834,0,0,0,0,0,0,0,0,0,0,0,0,0,13534),(844,0,0,0,0,0,0,0,0,0,0,0,0,0,14604),(854,0,0,0,0,0,0,0,0,0,0,0,0,0,15414),(864,0,0,0,0,0,0,0,0,0,0,0,0,0,16214),(874,0,0,0,0,0,0,0,0,0,0,0,0,0,16674),(884,0,0,0,0,0,0,0,0,0,0,0,0,0,17814),(894,0,0,0,0,0,0,0,0,0,0,0,0,0,18784),(904,0,0,0,0,0,0,0,0,0,0,0,0,0,20334),(914,0,0,0,0,0,0,0,0,0,0,0,0,0,21264),(924,0,0,0,0,0,0,0,0,0,0,0,0,0,22464),(934,0,0,0,0,0,0,0,0,0,0,0,0,0,25124),(944,17,33,0,0,0,0,0,0,0,0,17,33,1,6154),(954,31,21,0,0,0,0,0,0,0,0,31,21,1,7184),(964,7,19,0,0,0,0,0,0,0,0,7,19,1,7944),(974,15,45,0,0,0,0,0,0,0,0,15,45,1,8664),(984,7,41,0,0,0,0,0,0,0,0,7,41,1,9484),(994,54,27,0,0,0,0,0,0,0,0,54,27,1,10264),(1004,14,29,0,0,0,0,0,0,0,0,14,29,1,10734),(1014,35,6,0,0,0,0,0,0,0,0,35,6,1,11124),(1024,49,7,0,0,0,0,0,0,0,0,49,7,1,11934),(1034,24,14,0,0,0,0,0,0,0,0,24,14,1,12834),(1044,14,35,0,0,0,0,0,0,0,0,14,35,1,13554),(1054,27,20,0,0,0,0,0,0,0,0,27,20,1,14054),(1064,6,27,0,0,0,0,0,0,0,0,6,27,1,14634),(1074,34,7,0,0,0,0,0,0,0,0,34,7,1,16244),(1084,7,40,0,0,0,0,0,0,0,0,7,40,1,17834),(1094,14,35,0,0,0,0,0,0,0,0,14,35,1,18794),(1104,70,0,0,0,0,0,0,0,0,0,70,0,1,27224),(1114,42,6,0,0,0,0,0,0,0,0,42,6,1,15434),(1124,0,0,0,0,0,0,0,0,0,0,0,0,0,304),(1134,0,0,0,0,0,0,0,0,0,0,0,0,0,15444),(1144,0,0,0,0,0,0,0,0,0,0,0,0,0,7224),(1154,0,0,0,0,0,0,0,0,0,0,0,0,0,8714),(1164,0,0,0,0,0,0,0,0,0,0,0,0,0,9564),(1174,0,0,0,0,0,0,0,0,0,0,0,0,0,14664),(1184,0,0,0,0,0,0,0,0,0,0,0,0,0,16714),(1194,0,0,0,0,0,0,0,0,0,0,0,0,0,17104),(1204,0,0,0,0,0,0,0,0,0,0,0,0,0,17854),(1214,0,0,0,0,0,0,0,0,0,0,0,0,0,21344),(1224,0,0,0,0,0,0,0,0,0,0,0,0,0,25164),(1234,0,0,0,0,0,0,0,0,0,0,0,0,0,6214),(1244,0,0,0,0,0,0,0,0,0,0,0,0,0,11964),(1254,0,0,0,0,0,0,0,0,0,0,0,0,0,12914),(1264,0,0,0,0,0,0,0,0,0,0,0,0,0,13584),(1274,0,0,0,0,0,0,0,0,0,0,0,0,0,14094),(1284,0,0,0,0,0,0,0,0,0,0,0,0,0,16274),(1294,0,0,0,0,0,0,0,0,0,0,0,0,0,23584),(1304,0,0,0,0,0,0,0,0,0,0,0,0,0,394),(1314,0,14,0,34,0,14,0,0,0,0,0,62,1,434),(1324,0,0,0,0,0,0,0,0,0,0,0,0,0,574),(1334,21,0,0,0,0,0,0,0,0,0,21,0,1,624),(1344,0,0,0,0,0,0,0,0,0,0,0,0,0,22634),(1354,0,0,0,0,0,0,0,0,0,0,0,0,0,7324),(1364,0,0,0,0,0,0,0,0,0,0,0,0,0,10344),(1374,0,0,0,0,0,0,0,0,0,0,0,0,0,10804),(1384,0,0,0,0,0,0,0,0,0,0,0,0,0,14744),(1394,0,0,0,0,0,0,0,0,0,0,0,0,0,15564),(1404,0,0,0,0,0,0,0,0,0,0,0,0,0,16314),(1414,0,0,0,0,0,0,0,0,0,0,0,0,0,17954),(1424,0,0,0,0,0,0,0,0,0,0,0,0,0,19474),(1434,0,0,0,0,0,0,0,0,0,0,0,0,0,20534),(1444,0,0,0,0,0,0,0,0,0,0,0,0,0,21484),(1454,0,0,0,0,0,0,0,0,0,0,0,0,0,24474),(1464,0,0,0,0,0,0,0,0,0,0,0,0,0,26044),(1474,0,0,0,0,0,0,0,0,0,0,0,0,0,8044),(1484,0,0,0,0,0,0,0,0,0,0,0,0,0,25254),(1494,0,0,0,0,0,0,0,0,0,0,0,0,0,27374),(1504,0,56,0,0,0,0,0,0,0,0,0,56,1,6354),(1514,7,28,0,0,0,0,0,0,0,0,7,28,1,7374),(1524,14,26,0,0,0,0,0,0,0,0,14,26,1,8054),(1534,43,21,0,0,0,0,0,0,0,0,43,21,1,10354),(1544,21,28,0,0,0,0,0,0,0,0,21,28,1,10814),(1554,27,49,0,0,0,0,0,0,0,0,27,49,1,11274),(1564,0,12,0,0,0,0,0,0,0,0,0,12,1,12084),(1574,49,8,0,0,0,0,0,0,0,0,49,8,1,13044),(1584,56,6,0,0,0,0,0,0,0,0,56,6,1,13644),(1594,19,7,0,0,0,0,0,0,0,0,19,7,1,14754),(1604,21,38,0,0,0,0,0,0,0,0,21,38,1,17984),(1614,41,44,0,0,0,0,0,0,0,0,41,44,1,19524),(1624,6,10,0,0,0,0,0,0,0,0,6,10,1,20574),(1634,13,40,0,0,0,0,0,0,0,0,13,40,1,21534),(1644,62,0,0,0,0,0,0,0,0,0,62,0,1,22694),(1654,0,0,0,0,0,0,0,0,0,0,0,0,0,23684),(1664,0,0,0,0,0,0,0,0,0,0,0,0,0,24494),(1674,13,48,0,0,0,0,0,0,0,0,13,48,1,25294),(1684,23,7,0,0,0,0,0,0,0,0,23,7,1,26074),(1694,35,3,0,0,0,0,0,0,0,0,35,3,1,27394),(1704,0,0,0,0,0,0,0,0,0,0,0,0,0,11294),(1714,0,0,0,0,0,0,0,0,0,0,0,0,0,12094),(1724,0,0,0,0,0,0,0,0,0,0,0,0,0,13054),(1734,0,0,0,0,0,0,0,0,0,0,0,0,0,13654),(1744,0,0,0,0,0,0,0,0,0,0,0,0,0,7434),(1754,0,0,0,0,0,0,0,0,0,0,0,0,0,8104),(1764,0,0,0,0,0,0,0,0,0,0,0,0,0,15614),(1774,0,0,0,0,0,0,0,0,0,0,0,0,0,16364),(1784,0,0,0,0,0,0,0,0,0,0,0,0,0,16824),(1794,0,0,0,0,0,0,0,0,0,0,0,0,0,17234),(1804,0,0,0,0,0,0,0,0,0,0,0,0,0,18024),(1814,0,0,0,0,0,0,0,0,0,0,0,0,0,19614),(1824,0,0,0,0,0,0,0,0,0,0,0,0,0,20664),(1834,0,0,0,0,0,0,0,0,0,0,0,0,0,22754),(1844,0,0,0,0,0,0,0,0,0,0,0,0,0,23764),(1854,0,0,0,0,0,0,0,0,0,0,0,0,0,24554),(1864,0,0,0,0,0,0,0,0,0,0,0,0,0,25344),(1874,0,0,0,0,0,0,0,0,0,0,0,0,0,26104),(1884,0,0,0,0,0,0,0,0,0,0,0,0,0,23784),(1894,0,0,0,0,0,0,0,0,0,0,0,0,0,24574),(1904,0,0,0,0,0,0,0,0,0,0,0,0,0,25364),(1914,0,0,0,0,0,0,0,0,0,0,0,0,0,674),(1924,0,0,0,0,0,0,0,0,0,0,0,0,0,724),(1934,0,0,0,0,0,0,0,0,0,0,0,0,0,11514),(1944,0,0,0,0,0,0,0,0,0,0,0,0,0,13274),(1954,0,0,0,0,0,0,0,0,0,0,0,0,0,13754),(1964,0,0,0,0,0,0,0,0,0,0,0,0,0,744),(1974,0,0,0,0,0,0,0,0,0,0,0,0,0,844),(1984,63,14,0,0,0,0,0,0,0,0,63,14,1,7444),(1994,7,3,0,0,0,0,0,0,0,0,7,3,1,8134),(2004,7,47,0,0,0,0,0,0,0,0,7,47,1,11374),(2014,22,34,0,0,0,0,0,0,0,0,22,34,1,12174),(2024,63,6,0,0,0,0,0,0,0,0,63,6,1,13124),(2034,0,48,0,0,0,0,0,0,0,0,0,48,1,15644),(2044,21,42,0,0,0,0,0,0,0,0,21,42,1,16374),(2054,7,38,0,0,0,0,0,0,0,0,7,38,1,16834),(2064,29,26,0,0,0,0,0,0,0,0,29,26,1,17264),(2074,10,48,0,0,0,0,0,0,0,0,10,48,1,18034),(2084,31,19,0,0,0,0,0,0,0,0,31,19,1,19664),(2094,6,14,0,0,0,0,0,0,0,0,6,14,1,20684),(2104,63,7,0,0,0,0,0,0,0,0,63,7,1,22804),(2114,55,2,0,0,0,0,0,0,0,0,55,2,1,25394),(2124,0,0,0,0,0,0,0,0,0,0,0,0,0,26134),(2134,28,27,0,0,0,0,0,0,0,0,28,27,1,27464),(2144,0,0,0,0,0,0,0,0,0,0,0,0,0,11384),(2154,0,0,0,0,0,0,0,0,0,0,0,0,0,12194),(2164,0,0,0,0,0,0,0,0,0,0,0,0,0,13154),(2174,0,0,0,0,0,0,0,0,0,0,0,0,0,11454),(2184,0,0,0,0,0,0,0,0,0,0,0,0,0,12274),(2194,0,0,0,0,0,0,0,0,0,0,0,0,0,6504),(2204,0,0,0,0,0,0,0,0,0,0,0,0,0,8924),(2214,0,0,0,0,0,0,0,0,0,0,0,0,0,10864),(2224,0,0,0,0,0,0,0,0,0,0,0,0,0,14884),(2234,0,0,0,0,0,0,0,0,0,0,0,0,0,15694),(2244,0,0,0,0,0,0,0,0,0,0,0,0,0,18114),(2254,0,0,0,0,0,0,0,0,0,0,0,0,0,19734),(2264,0,0,0,0,0,0,0,0,0,0,0,0,0,20734),(2274,0,0,0,0,0,0,0,0,0,0,0,0,0,21704),(2284,0,0,0,0,0,0,0,0,0,0,0,0,0,22854),(2294,0,0,0,0,0,0,0,0,0,0,0,0,0,23854),(2304,0,0,0,0,0,0,0,0,0,0,0,0,0,25464),(2314,55,14,0,0,0,0,0,0,0,0,55,14,1,6554),(2324,49,14,0,0,0,0,0,0,0,0,49,14,1,8954),(2334,35,14,0,0,0,0,0,0,0,0,35,14,1,10874),(2344,12,20,0,0,0,0,0,0,0,0,12,20,1,14914),(2354,0,7,0,0,0,0,0,0,0,0,0,7,1,15724),(2364,0,0,0,0,0,0,0,0,0,0,0,0,0,19784),(2374,54,23,0,0,0,0,0,0,0,0,54,23,1,20774),(2384,0,0,0,0,0,0,0,0,0,0,0,0,0,21794),(2394,65,13,0,0,0,0,0,0,0,0,65,13,1,22904),(2404,54,8,0,0,0,0,0,0,0,0,54,8,1,25504),(2414,0,0,0,0,0,0,0,0,0,0,0,0,0,894),(2424,0,0,0,0,0,0,0,0,0,0,0,0,0,944),(2434,0,0,0,0,0,0,0,0,0,0,0,0,0,27814),(2444,0,0,0,0,0,0,0,0,0,0,0,0,0,974),(2454,0,0,0,0,0,0,0,0,0,0,0,0,0,984),(2464,0,0,0,0,0,0,0,0,0,0,0,0,0,1174),(2474,0,0,0,0,0,0,0,0,0,0,0,0,0,1324),(2484,0,0,0,0,0,0,0,0,0,0,0,0,0,1954),(2494,0,0,0,0,0,0,0,0,0,0,0,0,0,10564),(2504,0,0,0,0,0,0,0,0,0,0,0,0,0,11714),(2514,0,0,0,0,0,0,0,0,0,0,0,0,0,12544),(2524,0,0,0,0,0,0,0,0,0,0,0,0,0,13854),(2534,0,0,0,0,0,0,0,0,0,0,0,0,0,14474),(2544,0,0,0,0,0,0,0,0,0,0,0,0,0,28364),(2554,0,0,0,0,0,0,0,0,0,0,0,0,0,1064),(2564,0,0,0,0,0,0,0,0,0,0,0,0,0,1254),(2574,0,0,0,0,0,0,0,0,0,0,0,0,0,6654),(2584,0,0,0,0,0,0,0,0,0,0,0,0,0,7664),(2594,0,0,0,0,0,0,0,0,0,0,0,0,0,9014),(2604,0,0,0,0,0,0,0,0,0,0,0,0,0,11504),(2614,0,0,0,0,0,0,0,0,0,0,0,0,0,13244),(2624,0,0,0,0,0,0,0,0,0,0,0,0,0,13744),(2634,0,0,0,0,0,0,0,0,0,0,0,0,0,14994),(2644,0,0,0,0,0,0,0,0,0,0,0,0,0,16444),(2654,0,0,0,0,0,0,0,0,0,0,0,0,0,17404),(2664,0,0,0,0,0,0,0,0,0,0,0,0,0,18194),(2674,0,0,0,0,0,0,0,0,0,0,0,0,0,19904),(2684,0,0,0,0,0,0,0,0,0,0,0,0,0,20874),(2694,0,0,0,0,0,0,0,0,0,0,0,0,0,23014),(2704,0,0,0,0,0,0,0,0,0,0,0,0,0,23954),(2714,0,0,0,0,0,0,0,0,0,0,0,0,0,24734),(2724,0,0,0,0,0,0,0,0,0,0,0,0,0,25624),(2734,0,0,0,0,0,0,0,0,0,0,0,0,0,26244),(2744,0,0,0,0,0,0,0,0,0,0,0,0,0,27584),(2754,0,0,0,0,0,0,0,0,0,0,0,0,0,1284),(2764,0,0,0,0,0,0,0,0,0,0,0,0,0,994),(2774,0,0,0,0,0,0,0,0,0,0,0,0,0,1464),(2784,0,0,0,0,0,0,0,0,0,0,0,0,0,1804),(2794,0,0,0,0,0,0,0,0,0,0,0,0,0,1144),(2804,0,0,0,0,0,0,0,0,0,0,0,0,0,794),(2814,0,0,0,0,0,0,0,0,0,0,0,0,0,12484),(2824,0,0,0,0,0,0,0,0,0,0,0,0,0,13374),(2834,0,0,0,0,0,0,0,0,0,0,0,0,0,13814),(2844,0,0,0,0,0,0,0,0,0,0,0,0,0,14454),(2854,0,0,0,0,0,0,0,0,0,0,0,0,0,7814),(2864,0,0,0,0,0,0,0,0,0,0,0,0,0,8414),(2874,0,0,0,0,0,0,0,0,0,0,0,0,0,10574),(2884,0,0,0,0,0,0,0,0,0,0,0,0,0,11724),(2894,0,0,0,0,0,0,0,0,0,0,0,0,0,12574),(2904,0,0,0,0,0,0,0,0,0,0,0,0,0,13424),(2914,0,0,0,0,0,0,0,0,0,0,0,0,0,13864),(2924,0,0,0,0,0,0,0,0,0,0,0,0,0,15274),(2934,0,0,0,0,0,0,0,0,0,0,0,0,0,16024),(2944,0,0,0,0,0,0,0,0,0,0,0,0,0,17004),(2954,0,0,0,0,0,0,0,0,0,0,0,0,0,17704),(2964,0,0,0,0,0,0,0,0,0,0,0,0,0,18414),(2974,0,0,0,0,0,0,0,0,0,0,0,0,0,20184),(2984,0,0,0,0,0,0,0,0,0,0,0,0,0,23284),(2994,0,0,0,0,0,0,0,0,0,0,0,0,0,24184),(3004,0,0,0,0,0,0,0,0,0,0,0,0,0,25824),(3014,0,0,0,0,0,0,0,0,0,0,0,0,0,27844),(3024,0,0,0,0,0,0,0,0,0,0,0,0,0,1944),(3034,0,0,0,0,0,0,0,0,0,0,0,0,0,1424),(3044,0,0,0,0,0,0,0,0,0,0,0,0,0,26414),(3054,0,0,0,0,0,0,0,0,0,0,0,0,0,1534),(3064,0,0,0,0,0,0,0,0,0,0,0,0,0,1154),(3074,0,0,0,0,0,0,0,0,0,0,0,0,0,28374),(3084,0,0,0,0,0,0,0,0,0,0,0,0,0,28794);
/*!40000 ALTER TABLE `games_football` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-24  1:00:59
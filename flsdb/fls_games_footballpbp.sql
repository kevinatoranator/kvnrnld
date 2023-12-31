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
-- Table structure for table `games_footballpbp`
--

DROP TABLE IF EXISTS `games_footballpbp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_footballpbp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(500) NOT NULL,
  `quarter` varchar(10) NOT NULL,
  `time` varchar(5) NOT NULL,
  `game_id` int NOT NULL,
  `down` int NOT NULL,
  `ytg` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `games_footballpbp_game_id_44722016_fk_games_football_id` (`game_id`),
  CONSTRAINT `games_footballpbp_game_id_44722016_fk_games_football_id` FOREIGN KEY (`game_id`) REFERENCES `games_football` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=845 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_footballpbp`
--

LOCK TABLES `games_footballpbp` WRITE;
/*!40000 ALTER TABLE `games_footballpbp` DISABLE KEYS */;
INSERT INTO `games_footballpbp` VALUES (14,'Own 35: Pass to Isaac Lewis for 3 yards (FCHS)','1','11:35',1314,1,10),(24,'Own 35: Pass to Jacob Morris for 1 yards (FCHS)','1','11:10',1314,2,7),(34,'Own 42: Rush by Richard Price for 4 yards (FCHS)','1','10:46',1314,3,6),(44,'Own 42: Punt by Camdyn Via for 30 yards (FCHS)','1','9:38',1314,4,11),(54,'Own 37: Rush by LCHS for 9 yards','1','9:30',1314,1,10),(64,'Own 46: Rush by LCHS for 30 yards','1','9:22',1314,2,1),(74,'Own 46: Pass InterferenceLCHS for 30 yards','1','8:34',1314,1,10),(84,'Own 46: Rush by LCHS for 25 yards','1','8:34',1314,2,25),(94,'Own 1: Interception by Jon Jones for 0 yards (FCHS)','1','7:41',1314,1,10),(104,'Own 1: Rush by Jacob Morris for 3 yards (FCHS)','1','7:41',1314,1,10),(114,'Own 4: Rush by Richard Price for 0 yards (FCHS)','1','7:41',1314,2,7),(124,'Own 4: Pass incompleteRichard Price for 0 yards (FCHS)','1','7:41',1314,3,7),(134,'Own 4: Punt by Camdyn Via for 15 yards (FCHS)','1','7:41',1314,4,7),(144,'OPP 27: Touchdown by LCHS for 15 yards','1','6:01',1314,1,10),(154,'Extra point by LCHS (LCHS)','1','6:01',1314,1,10),(164,'Own 18: Rush by Marcus Dickerson for 0 yards (FCHS)','1','5:22',1314,1,10),(174,'Own 18: Personal FoulMarcus Dickerson for 0 yards (FCHS)','1','5:22',1314,1,10),(184,'Own 8: Fumble recovered by LCHS for 0 yards','1','5:22',1314,2,20),(194,'OPP 8: Touchdown by LCHS for 0 yards','1','5:22',1314,1,10),(204,'Extra point by LCHS (LCHS)','1','5:22',1314,1,10),(214,'Own 16: Rush by Marcus Dickerson for 4 yards (FCHS)','1','5:10',1314,1,10),(224,'Own 20: Rush by Marcus Dickerson for 2 yards (FCHS)','1','5:10',1314,1,6),(234,'Own 22: Pass incompleteRichard Price for 2 yards (FCHS)','1','5:10',1314,3,4),(244,'Own 22: Punt by Camdyn Via for 21 yards (FCHS)','1','5:10',1314,4,4),(254,'OPP 46: HoldingLCHS for 10 yards','1','3:10',1314,1,10),(264,'Own 44: Interception by LCHS for 20 yards','1','3:10',1314,2,20),(274,'Own 46: Rush by Jacob Morris for 4 yards (FCHS)','1','2:19',1314,1,10),(284,'Own 50: Rush by Jacob Morris for 4 yards (FCHS)','1','2:19',1314,2,6),(294,'OPP 46: Rush by Jacob Morris for 2 yards (FCHS)','1','2:19',1314,2,1),(304,'OPP 46: Personal FoulLCHS for 30 yards','1','2:19',1314,2,1),(314,'OPP 6: False Start Jacob Morris for -5 yards (FCHS)','1','2:19',1314,1,6),(324,'OPP 11: Rush by Jacob Morris for 0 yards (FCHS)','1','2:19',1314,1,11),(334,'OPP 11: Rush by Marcus Dickerson for 0 yards (FCHS)','1','2:19',1314,2,11),(344,'OPP 11: False Start Marcus Dickerson for -5 yards (FCHS)','1','0:00',1314,3,11),(354,'OPP 11: Sack by LCHS for -10 yards','1','0:00',1314,3,11),(374,'Own 26: Rush by LCHS for 77 yards','2','11:55',1314,1,10),(384,'OPP 2: Touchdown by LCHS for 2 yards','2','11:55',1314,1,10),(394,'Extra point by LCHS (LCHS)','2','11:55',1314,1,10),(404,'Own 39: Rush by Isaac Lewis for 59 yards (FCHS)','2','11:16',1314,1,10),(414,'OPP 7: Rush by Jacob Morris for 0 yards (FCHS)','2','11:16',1314,1,7),(424,'OPP 7: Sack by LCHS for -5 yards','2','11:16',1314,2,7),(434,'OPP 12: Rush by Izzy Johnson for 8 yards (FCHS)','2','11:16',1314,3,12),(444,'OPP 4: Rush by Marcus Dickerson for 0 yards (FCHS)','2','11:16',1314,4,4),(454,'Own 4: Rush by LCHS for 5 yards','2','8:17',1314,1,10),(464,'Own 12: Rush by LCHS for 2 yards','2','8:17',1314,2,5),(474,'Own 14: Touchdown by LCHS for 86 yards','2','8:17',1314,2,3),(484,'Own 16: Rush by Isaac Lewis for 1 yards (FCHS)','2','6:58',1314,1,10),(494,'Own 17: Rush by Jacob Morris for 2 yards (FCHS)','2','6:58',1314,2,9),(504,'Own 19: Rush by Isaac Lewis for -5 yards (FCHS)','2','6:58',1314,3,7),(514,'Own 14: Touchdown by LCHS for 40 yards','2','6:58',1314,4,12),(524,'Extra point by LCHS (LCHS)','2','6:58',1314,4,12),(534,'Own 41: Touchdown by LCHS for 41 yards','2','4:04',1314,1,10),(544,'Extra point by LCHS (LCHS)','2','4:04',1314,1,10),(554,'Own 30: Rush by Isaac Lewis for 5 yards (FCHS)','2','3:41',1314,1,10),(564,'Own 35: Rush by Richard Price for -2 yards (FCHS)','2','3:41',1314,2,5),(574,'Own 33: Rush by Richard Price for -2 yards (FCHS)','2','3:41',1314,3,7),(584,'Own 33: Personal FoulRichard Price for -2 yards (FCHS)','2','3:41',1314,3,7),(594,'Own 4: Fumble recovered by LCHS for -2 yards','2','3:41',1314,4,7),(604,'OPP 4: Rush by LCHS for 3 yards','2','1:23',1314,1,4),(614,'OPP 1: Touchdown by LCHS for 1 yards','2','1:23',1314,1,1),(624,'Extra point by LCHS (LCHS)','2','1:23',1314,1,1),(634,'Own 35: Personal FoulLCHS for 1 yards','2','1:09',1314,1,10),(644,'OPP 48: Rush by Richard Price for 14 yards (FCHS)','2','1:09',1314,1,10),(654,'OPP 25: Rush by Richard Price for 0 yards (FCHS)','2','1:09',1314,1,10),(664,'OPP 25: Pass InterferenceLCHS for 0 yards','2','1:09',1314,2,10),(674,'OPP 12: Rush by Richard Price for 7 yards (FCHS)','2','1:09',1314,1,10),(684,'Own 50: Rush by LCHS for 8 yards','3','11:55',1314,1,10),(694,'OPP 42: Rush by LCHS for 4 yards','3','10:55',1314,2,2),(704,'OPP 38: Rush by LCHS for 2 yards','3','10:11',1314,1,10),(714,'OPP 21: Rush by LCHS for 22 yards','3','10:11',1314,1,10),(724,'OPP 12: Rush by LCHS for 9 yards','3','10:11',1314,1,12),(734,'OPP 3: Touchdown by LCHS for 3 yards','3','10:11',1314,2,3),(744,'Extra point by LCHS (LCHS)','3','10:11',1314,2,3),(754,'Own 41: Rush by Jacob Morris for -1 yards (FCHS)','3','7:11',1314,1,10),(764,'Own 40: Fumble recovered by LCHS for -1 yards','3','6:11',1314,1,11),(774,'OPP 41: Rush by LCHS for 23 yards','3','6:11',1314,1,10),(784,'OPP 18: Rush by LCHS for -5 yards','3','4:11',1314,1,10),(794,'OPP 23: Rush by LCHS for 21 yards','3','4:11',1314,2,15),(804,'OPP 2: Rush by LCHS for 0 yards','3','4:11',1314,1,2),(814,'OPP 2: Touchdown by LCHS for 2 yards','3','2:11',1314,2,2),(824,'Extra point by LCHS (LCHS)','3','2:11',1314,2,2),(834,'Own 36: Rush by Isaac Lewis for -5 yards (FCHS)','3','1:11',1314,1,10),(844,'Own 31: Rush by Isaac Lewis for 0 yards (FCHS)','3','0:26',1314,1,15);
/*!40000 ALTER TABLE `games_footballpbp` ENABLE KEYS */;
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

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
-- Table structure for table `games_soccerpbp`
--

DROP TABLE IF EXISTS `games_soccerpbp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games_soccerpbp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(500) NOT NULL,
  `half` varchar(10) NOT NULL,
  `time` varchar(5) NOT NULL,
  `game_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `games_soccerpbp_game_id_1150e933_fk_games_soccer_id` (`game_id`),
  CONSTRAINT `games_soccerpbp_game_id_1150e933_fk_games_soccer_id` FOREIGN KEY (`game_id`) REFERENCES `games_soccer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=925 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_soccerpbp`
--

LOCK TABLES `games_soccerpbp` WRITE;
/*!40000 ALTER TABLE `games_soccerpbp` DISABLE KEYS */;
INSERT INTO `games_soccerpbp` VALUES (1,'Corner Kick by LBHS','1','1:00',4),(2,'Goal kick by Piper LaRochelle(FCHS)','1','7:20',4),(3,'Goal kick by LBHS','1','5:05',4),(34,'Free Kick: LBHS','1','8:17',4),(44,'Corner Kick by LBHS','1','9:10',4),(54,'Free Kick: Anna Amato(FCHS)','1','11:35',4),(64,'Free Kick: LBHS','1','12:10',4),(74,'Shot on goal by Maggie McWilliams(FCHS)','1','14:16',4),(84,'Shot on goal by Maggie McWilliams(FCHS)','1','15:40',4),(94,'Goal kick by Piper LaRochelle(FCHS)','1','20:55',4),(104,'Free Kick: Piper LaRochelle(FCHS)','1','23:36',4),(114,'Shot on goal by Evelyn DeMers(FCHS)','1','24:25',4),(124,'Free Kick: LBHS','1','25:20',4),(134,'Goal scored by LBHS','1','28:11',4),(144,'Goal scored by Maggie McWilliams(FCHS)','1','29:00',4),(154,'Free Kick: Piper LaRochelle(FCHS)','1','29:50',4),(164,'Free Kick: Cristina Valladares(FCHS)','1','30:28',4),(174,'Goal kick by LBHS','1','30:58',4),(184,'Goal kick by Piper LaRochelle(FCHS)','1','32:00',4),(194,'Goal kick by Piper LaRochelle(FCHS)','1','33:12',4),(204,'Free Kick: LBHS','1','36:38',4),(214,'Goal scored by LBHS','1','37:52',4),(224,'Goal kick by LBHS','1','38:15',4),(234,'Shot on goal by LBHS','1','39:55',4),(244,'Goal kick by LBHS','2','41:10',4),(254,'Goal scored by Cristina Valladares(FCHS)','2','42:29',4),(264,'Corner Kick by Evelyn DeMers(FCHS)','2','44:45',4),(274,'Corner Kick by Evelyn DeMers(FCHS)','2','48:42',4),(284,'Goal kick by LBHS','2','49:17',4),(294,'Free Kick: LBHS','2','51:08',4),(304,'Corner Kick by Evelyn DeMers(FCHS)','2','53:29',4),(314,'Free Kick: Piper LaRochelle(FCHS)','2','54:17',4),(324,'Free Kick: Piper LaRochelle(FCHS)','2','54:40',4),(344,'Goal scored by LBHS','2','55:07',4),(354,'Goal kick by LBHS','2','56:50',4),(364,'Free Kick: Piper LaRochelle(FCHS)','2','58:31',4),(374,'Corner Kick by Evelyn DeMers(FCHS)','2','60:25',4),(384,'Goal saved by LBHS','2','61:21',4),(394,'Shot on goal by LBHS','2','64:05',4),(404,'Corner Kick by Evelyn DeMers(FCHS)','2','65:05',4),(414,'Goal scored by Abigail Ford(FCHS)','2','65:10',4),(424,'Goal kick by Piper LaRochelle(FCHS)','2','67:25',4),(434,'Goal scored by LBHS','2','68:25',4),(444,'Free Kick: LBHS','2','71:40',4),(454,'Free Kick: Cristina Valladares(FCHS)','2','73:45',4),(464,'Goal kick by LBHS','2','74:20',4),(474,'Free Kick: Cristina Valladares(FCHS)','2','76:06',4),(484,'Shot on goal by LBHS','2','77:38',4),(494,'Free Kick: Cristina Valladares(FCHS)','2','78:00',4),(514,'Goal kick by LBHS','2','78:40',4),(524,'Goal kick by Shelby Crawford(FCHS)','1','2:20',44),(534,'Goal kick by Piper LaRochelle(FCHS)','1','7:47',44),(544,'Shot on goal by CHS','1','10:45',44),(554,'Goal kick by CHS','1','13:55',44),(564,'Goal kick by CHS','1','15:46',44),(574,'Corner Kick by CHS','1','20:05',44),(584,'Shot on goal by CHS','1','17:32',44),(594,'Goal kick by Piper LaRochelle(FCHS)','1','21:20',44),(604,'Corner Kick by Evelyn DeMers(FCHS)','1','25:40',44),(614,'Shot on goal by CHS','1','26:47',44),(624,'Corner Kick by CHS','1','27:30',44),(634,'Goal kick by Piper LaRochelle(FCHS)','1','28:40',44),(644,'Goal kick by Piper LaRochelle(FCHS)','1','31:20',44),(654,'Goal kick by CHS','1','33:40',44),(664,'Free Kick: Piper LaRochelle(FCHS)','1','36:35',44),(674,'Goal kick by Piper LaRochelle(FCHS)','1','37:30',44),(684,'Goal kick by CHS','1','37:59',44),(694,'Corner Kick by CHS','1','39:25',44),(704,'Corner Kick by CHS','2','41:00',44),(714,'Free Kick: CHS','2','44:40',44),(724,'Corner Kick by CHS','2','45:40',44),(734,'Goal kick by Piper LaRochelle(FCHS)','2','46:45',44),(744,'Corner Kick by CHS','2','48:05',44),(754,'Goal kick by Piper LaRochelle(FCHS)','2','50:05',44),(764,'Shot on goal by Evelyn DeMers(FCHS)','2','51:20',44),(784,'Goal kick by CHS','2','67:10',44),(794,'Free Kick: CHS','2','68:50',44),(804,'Goal kick by Piper LaRochelle(FCHS)','2','69:55',44),(814,'Yellow Card: CHS','2','71:02',44),(824,'Goal kick by CHS','2','73:10',44),(834,'Corner Kick by Evelyn DeMers(FCHS)','2','74:25',44),(844,'Shot on goal by Maggie McWilliams(FCHS)','2','75:30',44),(854,'Goal kick by CHS','2','76:00',44),(864,'Goal kick by CHS','2','77:10',44),(884,'Goal scored by Evelyn DeMers(FCHS)','2','77:33',44),(894,'Goal kick by Piper LaRochelle(FCHS)','2','78:00',44),(904,'Goal kick by CHS','2','78:45',44),(914,'Corner Kick by CHS','2','79:15',44),(924,'Goal kick by CHS','2','79:30',44);
/*!40000 ALTER TABLE `games_soccerpbp` ENABLE KEYS */;
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

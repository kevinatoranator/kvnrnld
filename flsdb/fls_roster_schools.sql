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
-- Table structure for table `roster_schools`
--

DROP TABLE IF EXISTS `roster_schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roster_schools` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formal_name` varchar(50) NOT NULL,
  `short_name` varchar(4) NOT NULL,
  `district` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roster_schools`
--

LOCK TABLES `roster_schools` WRITE;
/*!40000 ALTER TABLE `roster_schools` DISABLE KEYS */;
INSERT INTO `roster_schools` VALUES (1,'Fluvanna County','FCHS','Jefferson','C','3'),(2,'Charlottesville','CHS','Jefferson','D','4'),(3,'Western Albemarle','WAHS','Jefferson','C','3'),(4,'Harrisonburg','HHS','Valley','D','5'),(5,'Broadway','BHS','','C','3'),(6,'Culpeper County','CCHS','Battlefield','B','3'),(7,'Orange County','OCHS','Jefferson','D','4'),(8,'Monticello','MHS','Jefferson','C','3'),(9,'Goochland','GHS','Jefferson','B','3'),(10,'Louisa County','LCHS','Jefferson','C','5'),(11,'Glen Allen','GAHS','Colonial','A','6'),(12,'Chancellor','CHHS','','B','4'),(13,'William Monroe','WMHS','Valley','B','3'),(14,'Spotsylvania','SHS','Battlefield','B','4'),(15,'Highland Springs','HSPR','Capital','A','6'),(16,'Patrick Henry (Ashland)','PHHS','Capital','B','4'),(17,'Hermitage','HERM','','B','5'),(18,'Covenant','TCS','','',''),(19,'Jefferson Forest','JFHS','Seminole','D','4'),(20,'Wilson Memorial','WILM','','C','3'),(21,'Rustburg','RHS','','C','3'),(22,'Spotswood','SWHS','Valley','C','3'),(23,'Staunton','STHS','','C','3'),(24,'Albemarle','AHS','Jefferson','D','5'),(25,'Lord Botetourt','LBHS','','D','3'),(26,'Waynesboro','WBHS','Shenandoah','C','3'),(27,'Liberty (Bedford)','LHS','','C','3'),(28,'Liberty Christian Academy','LCA','Seminole','C','3'),(29,'Multiple Schools..','MULT','N/A','N/A','N/A'),(34,'TBA','TBA','N/A','N/A','N/A'),(35,'Caroline','CARO','','B','4'),(36,'George Wythe (Richmond)','GWHS','Dominion','B','4'),(37,'Mathews','MATH','Tidewater','A','1'),(38,'Northumberland','NHS','','A','1'),(39,'Courtland','CLHS','Battlefield','B','4'),(40,'Eastern View','EVHS','Battlefield','B','4'),(41,'Lancaster','LANC','Northern Neck','A','1'),(42,'Bruton','BRUT','Bay Rivers','A','2'),(43,'Madison County','MCHS','','B','2'),(44,'William Fleming','WFLM','Blue Ridge','C','5'),(45,'Riverbend','RBHS','Commonwealth','D','5'),(46,'Patrick Henry (Roanoke)','PHEN','','D','5'),(47,'E.C. Glass','ECG','Seminole','D','4'),(48,'St. Anne\'s Belfield','STAB','','',''),(49,'New Kent','NKHS','Bay Rivers','A','3'),(50,'Warren County','WCHS','','B','3'),(51,'Turner Ashby','TAHS','','C','3'),(52,'Armstrong','ARMS','Capital','B','3'),(53,'Cave Spring','CSHS','River Ridge','D','3'),(54,'Massaponax','MASS','Commonwealth','D','5'),(55,'Maggie L. Walker Governor\'s','MLW','','B','3'),(56,'Collegiate','COLL','','',''),(57,'Rockbridge County','RCHS','Valley','C','3'),(58,'Deep Run','DRHS','','C','5'),(59,'Heritage (Lynchburg)','HERI','','C','3'),(60,'Brooke Point','BPHS','Commonwealth','B','6'),(61,'Powhatan','POW','Dominion','B','4'),(62,'Gloucester','GLOU','Peninsula','A','4'),(63,'King William','KWHS','','A','2'),(64,'Huguenot','HGNT','Dominion','B','4'),(65,'James Monroe','JMHS','Battlefield','B','3'),(67,'Fort Defiance','FDHS','Shenandoah','B','2'),(68,'Appomattox County','ACHS','Dogwood','C','2'),(69,'Mountain View - Quicksburg','MVQB','Shenandoah','B','2'),(70,'Brentsville District','BREN','','B','3'),(72,'Central (Woodstock)','CENT','2','B','2'),(73,'Manassas Park','MPHS','Northwestern','B','3'),(74,'West Point','WPHS','Tidewater','A','1'),(75,'King George','KGHS','Battlefield','B','4'),(76,'Middlesex','MSHS','','A','1'),(77,'Liberty (Bealeton)','LIBB','','C','4'),(78,'Meridian','MERI','Northwestern','B','3'),(79,'Rappahannock County','RAPC','Bull Run','B','1'),(80,'Essex','ESSX','Northern Neck','A','1'),(81,'Washington-Liberty','WALI','Liberty','D','6'),(82,'Justice','JHS','National','C','6'),(83,'Millbrook','MBHS','Northwestern','D','4'),(84,'East Rockingham','ERCK','Valley','C','3'),(85,'Staunton River','SRHS','','D','3'),(86,'Wakefield','WFHS','Liberty','D','6'),(87,'Mechanicsville','MECH','Capital','B','4'),(88,'Christiansburg','CHRS','','D','3'),(89,'J.R. Tucker','JRTK','Colonial','B','5'),(90,'Stafford','STFD','Commonwealth','B','6'),(91,'Falls Church','FLCH','','C','6'),(92,'Stuarts Draft','SDHS','Shenandoah','B','2'),(93,'Magna Vista','MVHS','Piedmont','D','3'),(94,'Annandale','ANDL','2','C','6'),(95,'Blacksburg','BLBG','River Ridge','D','4'),(96,'William Byrd','WBRD','','D','3'),(97,'Skyline','SKYL','','B','3'),(98,'Dominion','DOMN','Dulles','C','4'),(99,'Eastern Mennonite','EMEN','','',''),(100,'Roanoke Catholic','RCTH','','',''),(101,'Colonial Beach','COLB','Northern Neck','A','1'),(102,'C. D. Hylton','CDHL','Cardinal','B','6'),(103,'Mills E. Godwin','MEG','Colonial','C','5'),(104,'Auburn','AUB','Mountain Empire','C','1'),(105,'Strasburg','STRS','Bull Run','B','2'),(106,'John Handley','JHND','Northwestern','C','4'),(107,'Brookville','BRVL','Seminole','C','3'),(108,'Bassett','BSST','','D','3'),(109,'Rappahannock','RAPP','Northern Neck','A','1'),(110,'Kettle Run','KRUN','','C','4'),(111,'Amherst County','AMCO','Seminole','D','4'),(112,'Fauquier','FAUQ','Northwestern','B','3'),(113,'Flint Hill','FLNT','','',''),(114,'Heritage (Leesburg)','HERL','Dulles','C','4'),(115,'James River (Buchanan)','JRVR','Three Rivers','C','2'),(116,'Franklin County','FRNK','Blue Ridge','C','5'),(117,'Altavista','ALTA','Dogwood','B','1'),(118,'Oakton','OAK','Concorde','D','6'),(119,'Lightridge','LRDG','Potomac','D','5'),(120,'Luray','LRAY','Bull Run','B','2'),(121,'Douglas S. Freeman','DSF','Colonial','C','5'),(122,'Charles City County','CCCO','Tidewater','A','1'),(123,'Riverheads','RVRH','Shenandoah','B','1'),(124,'Mountain View','MTNV','Commonwealth','D','5'),(125,'East Hardy','EHRD','','',''),(126,'Buffalo Gap','BUFG','','B','1'),(127,'Hanover','HNVR','','B','4'),(128,'Northampton','NHMP','Eastern Shore','A','1'),(129,'Hayfield','HYFD','National','C','6'),(130,'Independence','INDP','Potomac','D','5'),(131,'Langley','LGLY','','D','6'),(132,'Thomas Jefferson Science and Tech','TJST','','A','5'),(133,'Fork Union Military Academy','FUMA','','',''),(134,'Woodside','WDSD','Peninsula','B','5'),(135,'Northside','NSDE','','D','3'),(136,'Princeton Senior','PRNC','','',''),(137,'Riverside','RSDE','Potomac','D','5'),(138,'Alleghany County','ALGY','Three Rivers','C','3'),(139,'Alexandria City','ALEX','1','C','6'),(140,'Washington & Lee','WLEE','','',''),(141,'Granby','GRBY','Eastern','B','5'),(142,'Broad Run','BDRN','Dulles','C','4'),(143,'Fredericksburg Christian','FBCH','','',''),(144,'Sidwell Friends','SDWL','','',''),(145,'Clarke County','CLRK','','B','2'),(146,'Henrico','HNRC','Capital','B','4'),(147,'Potomac','PTMC','Cardinal','B','6'),(148,'Lafayette','LFYT','','A','3'),(149,'Atlee','ATLE','Capital','B','4'),(150,'John Marshall','JMRS','Colonial','A','2'),(151,'Nelson County','NCHS','','C','2'),(152,'Woodberry Forest','WBRY','','',''),(153,'Buckingham County','BUCK','James River','B','2'),(154,'Steward','STEW','','',''),(155,'Manchester','MNCR','','A','6'),(156,'Tunstall','TNSL','Piedmont','D','3'),(157,'Loudoun County','LOUD','','C','4'),(158,'Amelia County','AMLI','','A','2'),(159,'North Stafford','NSTA','','D','5'),(160,'St. Catherine\'s','STCA','','',''),(161,'Salem','SALM','River Ridge','D','4'),(162,'William Campbell','WCMP','Dogwood','B','1'),(163,'George Washington','GWSH','Piedmont','D','4'),(164,'Halifax County','HALI','Piedmont','D','4'),(165,'Dinwiddie','DNWD','Central','B','4'),(166,'Randolph-Henry','RHEN','','A','2'),(167,'Martinsville','MRTN','','C','2'),(168,'Mecklenburg County','MECK','Piedmont','D','4'),(169,'Dan River','DNRV','Dogwood','C','2'),(170,'Blue Ridge Christian','BLRC','','',''),(171,'Covington','CVGN','','C','1'),(172,'Page County','PAGE','Bull Run','B','2'),(173,'Glenvar','GLVR','','C','2'),(174,'Gainesville','GAIN','Cedar Run','B','6'),(175,'Fredericksburg Victory','FVIC','','',''),(176,'Jamestown','JMST','Bay Rivers','A','4'),(177,'Westmoreland','WEST','Northern Neck','A','1'),(178,'Forest Park','FRPK','Cardinal','B','6'),(179,'Poquoson','PQSN','Bay Rivers','A','2'),(180,'King and Queen Central','KGQN','Tidewater','A','1'),(181,'Sussex Central','SSXC','Three Rivers','A','1'),(182,'Portsmouth Christian','PRTC','','',''),(183,'Warhill','WRHL','Bay Rivers','A','4'),(184,'Hampton Roads Academy','HPRA','','',''),(185,'John R. Lewis','JRLW','','C','6'),(186,'George Marshall','GMRS','National','D','6'),(187,'Sherando','SHER','Northwestern','D','4'),(188,'Nottoway','NOTT','','A','2'),(189,'Colonial Heights','CHGT','Central','A','3'),(190,'Dobyns Bennett','DBEN','','',''),(191,'Tuscarora','TUSC','','C','4'),(192,'Briar Woods','BRWD','','D','5'),(193,'Tandem Friends','TNDM','','',''),(999,'Test Team','TEST','N/A','N/A','N/A');
/*!40000 ALTER TABLE `roster_schools` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-30 22:20:42

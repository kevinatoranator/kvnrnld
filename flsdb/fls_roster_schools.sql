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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roster_schools`
--

LOCK TABLES `roster_schools` WRITE;
/*!40000 ALTER TABLE `roster_schools` DISABLE KEYS */;
INSERT INTO `roster_schools` VALUES (1,'Fluvanna County','FCHS'),(2,'Charlottesville','CHS'),(3,'Western Albemarle','WAHS'),(4,'Harrisonburg','HHS'),(5,'Broadway','BHS'),(6,'Culpeper County','CCHS'),(7,'Orange County','OCHS'),(8,'Monticello','MHS'),(9,'Goochland','GHS'),(10,'Louisa County','LCHS'),(11,'Glen Allen','GAHS'),(12,'Chancellor','CHHS'),(13,'William Monroe','WMHS'),(14,'Spotsylvania','SHS'),(15,'Highland Springs','HSPR'),(16,'Patrick Henry (Ashland)','PHHS'),(17,'Hermitage','HERM'),(18,'Covenant','TCS'),(19,'Jefferson Forest','JFHS'),(20,'Wilson Memorial','WILM'),(21,'Rustburg','RHS'),(22,'Spotswood','SWHS'),(23,'Staunton','STHS'),(24,'Albemarle','AHS'),(25,'Lord Botetourt','LBHS'),(26,'Waynesboro','WBHS'),(27,'Liberty (Bedford)','LHS'),(28,'Liberty Christian Academy','LCA'),(29,'Multiple Schools..','MULT'),(34,'TBA','TBA'),(35,'Caroline','CARO'),(36,'George Wythe (Richmond)','GWHS'),(37,'Mathews','MATH'),(38,'Northumberland','NHS'),(39,'Courtland','CLHS'),(40,'Eastern View','EVHS'),(41,'Lancaster','LANC'),(42,'Bruton','BRUT'),(43,'Madison County','MCHS'),(44,'William Fleming','WFLM'),(45,'Riverbend','RBHS'),(46,'Patrick Henry (Roanoke)','PHEN'),(47,'E.C. Glass','ECG'),(48,'St. Anne\'s Belfield','STAB'),(49,'New Kent','NKHS'),(50,'Warren County','WCHS'),(51,'Turner Ashby','TAHS'),(52,'Armstrong','ARMS'),(53,'Cave Spring','CSHS'),(54,'Massaponax','MASS'),(55,'Maggie L. Walker Governor\'s','MLW'),(56,'Collegiate','COLL'),(57,'Rockbridge County','RCHS'),(58,'Deep Run','DRHS'),(59,'Heritage (Lynchburg)','HERI'),(60,'Brooke Point','BPHS'),(61,'Powhatan','POW'),(62,'Gloucester','GLOU'),(63,'King William','KWHS'),(64,'Huguenot','HGNT'),(65,'James Monroe','JMHS'),(67,'Fort Defiance','FDHS'),(68,'Appomattox County','ACHS'),(69,'Mountain View - Quicksburg','MVQB'),(70,'Brentsville','BREN'),(71,'District','DSTR'),(72,'Central (Woodstock)','CENT'),(73,'Manassas Park','MPHS'),(74,'West Point','WPHS'),(75,'King George','KGHS'),(76,'Middlesex','MSHS'),(77,'Liberty (Bealeton)','LIBB'),(78,'Meridian','MERI'),(79,'Rappahannock County','RAPC'),(80,'Essex','ESSX'),(81,'Washington-Liberty','WALI'),(82,'Justice','JHS'),(83,'Millbrook','MBHS'),(84,'East Rockingham','ERCK'),(85,'Staunton River','SRHS'),(86,'Wakefield','WFHS'),(87,'Mechanicsville','MECH'),(88,'Christiansburg','CHRS'),(89,'J.R. Tucker','JRTK'),(90,'Stafford','STFD'),(91,'Falls Church','FLCH'),(92,'Stuarts Draft','SDHS'),(93,'Magna Vista','MVHS'),(94,'Annandale','ANDL'),(95,'Blacksburg','BLBG'),(96,'William Byrd','WBRD'),(97,'Skyline','SKYL'),(98,'Dominion','DOMN'),(99,'Eastern Mennonite','EMEN'),(100,'Roanoke Catholic','RCTH'),(101,'Colonial Beach','COLB'),(102,'C. D. Hylton','CDHL'),(103,'Mills E. Godwin','MEG'),(104,'Auburn','AUB'),(105,'Strasburg','STRS'),(106,'John Handley','JHND'),(107,'Brookville','BRVL'),(108,'Bassett','BSST'),(109,'Rappahannock','RAPP'),(110,'Kettle Run','KRUN'),(111,'Amherst County','AMCO'),(112,'Fauquier','FAUQ'),(113,'Flint Hill','FLNT'),(114,'Heritage (Leesburg)','HERL'),(115,'James River (Buchanan)','JRVR'),(116,'Franklin County','FRNK'),(117,'Altavista','ALTA'),(118,'Oakton','OAK'),(119,'Lightridge','LRDG'),(120,'Luray','LRAY'),(121,'Douglas S. Freeman','DSF'),(122,'Charles City County','CCCO'),(123,'Riverheads','RVRH'),(124,'Mountain View','MTNV'),(125,'East Hardy','EHRD'),(126,'Buffalo Gap','BUFG'),(127,'Hanover','HNVR'),(128,'Northampton','NHMP'),(129,'Hayfield','HYFD'),(130,'Independence','INDP'),(131,'Langley','LGLY'),(132,'Thomas Jefferson Science and Tech','TJST'),(133,'Fork Union Military Academy','FUMA'),(134,'Woodside','WDSD'),(135,'Northside','NSDE'),(136,'Princeton Senior','PRNC'),(137,'Riverside','RSDE'),(138,'Alleghany County','ALGY'),(139,'Alexandria City','ALEX'),(140,'Washington & Lee','WLEE'),(141,'Granby','GRBY'),(142,'Broad Run','BDRN'),(143,'Fredericksburg Christian','FBCH'),(144,'Sidwell Friends','SDWL'),(145,'Clarke County','CLRK'),(146,'Henrico','HNRC'),(147,'Potomac','PTMC'),(148,'Lafayette','LFYT'),(149,'Atlee','ATLE'),(150,'John Marshall','JMRS'),(151,'Nelson County','NCHS'),(152,'Woodberry Forest','WBRY'),(153,'Buckingham County','BUCK'),(154,'Steward','STEW'),(155,'Manchester','MNCR'),(156,'Tunstall','TNSL'),(157,'Loudoun County','LOUD'),(158,'Amelia County','AMLI'),(159,'North Stafford','NSTA'),(160,'St. Catherine\'s','STCA'),(161,'Salem','SALM'),(162,'William Campbell','WCMP'),(163,'George Washington','GWSH'),(164,'Halifax County','HALI'),(165,'Dinwiddie','DNWD'),(166,'Randolph-Henry','RHEN'),(167,'Martinsville','MRTN'),(168,'Mecklenburg County','MECK'),(169,'Dan River','DNRV'),(170,'Blue Ridge Christian','BLRC'),(171,'Covington','CVGN'),(172,'Page County','PAGE'),(173,'Glenvar','GLVR'),(174,'Gainesville','GAIN'),(175,'Fredericksburg Victory','FVIC'),(176,'Jamestown','JMST'),(177,'Westmoreland','WEST'),(178,'Forest Park','FRPK'),(179,'Poquoson','PQSN'),(180,'King and Queen Central','KGQN'),(181,'Sussex Central','SSXC'),(182,'Portsmouth Christian','PRTC'),(183,'Warhill','WRHL'),(184,'Hampton Roads Academy','HPRA'),(185,'John R. Lewis','JRLW'),(186,'George Marshall','GMRS'),(187,'Sherando','SHER'),(188,'Nottoway','NOTT'),(189,'Colonial Heights','CHGT'),(190,'Dobyns Bennett','DBEN'),(191,'Tuscarora','TUSC'),(192,'Briar Woods','BRWD'),(193,'Tandem Friends','TNDM'),(999,'Test Team','TEST');
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

-- Dump completed on 2023-12-24  1:01:00

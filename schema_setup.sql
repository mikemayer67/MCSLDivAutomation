-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: divm_2019
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `age_codes`
--

DROP TABLE IF EXISTS `age_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `age_codes` (
  `code` varchar(4) NOT NULL,
  `text` varchar(15) NOT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_codes`
--

LOCK TABLES `age_codes` WRITE;
/*!40000 ALTER TABLE `age_codes` DISABLE KEYS */;
INSERT INTO `age_codes` VALUES ('0910','9-10',2),('1112','11-12',3),('1314','13-14',5),('1518','15-18',7),('UN08','8 & Under',1),('UN12','12 & Under',4),('UN14','14 & Under',6),('UN18','18 & Under',9),('UNOV','Open',8);
/*!40000 ALTER TABLE `age_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `age_groups`
--

DROP TABLE IF EXISTS `age_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `age_groups` (
  `age` int(11) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`age`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `age_groups`
--

LOCK TABLES `age_groups` WRITE;
/*!40000 ALTER TABLE `age_groups` DISABLE KEYS */;
INSERT INTO `age_groups` VALUES (3,'UN08'),(4,'UN08'),(5,'UN08'),(6,'UN08'),(7,'UN08'),(8,'UN08'),(9,'0910'),(10,'0910'),(11,'1112'),(12,'1112'),(13,'1314'),(14,'1314'),(15,'1518'),(16,'1518'),(17,'1518'),(18,'1518');
/*!40000 ALTER TABLE `age_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `all_relay_results`
--

DROP TABLE IF EXISTS `all_relay_results`;
/*!50001 DROP VIEW IF EXISTS `all_relay_results`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_relay_results` AS SELECT 
 1 AS `event`,
 1 AS `team`,
 1 AS `time`,
 1 AS `week`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `all_star_times`
--

DROP TABLE IF EXISTS `all_star_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_star_times` (
  `event` int(11) NOT NULL,
  `time` float NOT NULL,
  PRIMARY KEY (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_star_times`
--

LOCK TABLES `all_star_times` WRITE;
/*!40000 ALTER TABLE `all_star_times` DISABLE KEYS */;
INSERT INTO `all_star_times` VALUES (1,80),(2,81),(5,18.85),(6,19.2),(7,35.8),(8,36.35),(9,28.4),(10,31),(11,31.4),(12,32.7),(13,58),(14,64.6),(15,72.6),(16,77.6),(17,24),(18,24.45),(19,20.1),(20,20.4),(21,68),(22,75),(23,38.1),(24,39),(25,34.3),(26,36.3),(27,67),(28,74),(29,26),(30,26.6),(31,22.25),(32,22.25),(33,43.3),(34,43.4),(35,38.2),(36,41.2),(37,76.25),(38,85),(39,23.2),(40,23.4),(41,18.7),(42,18.6),(43,36.3),(44,37.2),(45,32),(46,34.1),(47,29.2),(48,33);
/*!40000 ALTER TABLE `all_star_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `all_swimmers_with_results`
--

DROP TABLE IF EXISTS `all_swimmers_with_results`;
/*!50001 DROP VIEW IF EXISTS `all_swimmers_with_results`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_swimmers_with_results` AS SELECT 
 1 AS `swimmer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_swimmers_without_results`
--

DROP TABLE IF EXISTS `all_swimmers_without_results`;
/*!50001 DROP VIEW IF EXISTS `all_swimmers_without_results`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_swimmers_without_results` AS SELECT 
 1 AS `USSID`,
 1 AS `team`,
 1 AS `name`,
 1 AS `birthdate`,
 1 AS `age`,
 1 AS `gender`,
 1 AS `USSNUM`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `carnival_dual_relay_equiv`
--

DROP TABLE IF EXISTS `carnival_dual_relay_equiv`;
/*!50001 DROP VIEW IF EXISTS `carnival_dual_relay_equiv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `carnival_dual_relay_equiv` AS SELECT 
 1 AS `dual_event`,
 1 AS `carnival_event`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `carnival_relay_results`
--

DROP TABLE IF EXISTS `carnival_relay_results`;
/*!50001 DROP VIEW IF EXISTS `carnival_relay_results`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `carnival_relay_results` AS SELECT 
 1 AS `event`,
 1 AS `team`,
 1 AS `time`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `div_eligible`
--

DROP TABLE IF EXISTS `div_eligible`;
/*!50001 DROP VIEW IF EXISTS `div_eligible`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `div_eligible` AS SELECT 
 1 AS `swimmer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `div_relay_seed_times`
--

DROP TABLE IF EXISTS `div_relay_seed_times`;
/*!50001 DROP VIEW IF EXISTS `div_relay_seed_times`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `div_relay_seed_times` AS SELECT 
 1 AS `event`,
 1 AS `team`,
 1 AS `seed_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `div_schedule`
--

DROP TABLE IF EXISTS `div_schedule`;
/*!50001 DROP VIEW IF EXISTS `div_schedule`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `div_schedule` AS SELECT 
 1 AS `carnival`,
 1 AS `divisionals`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `div_seed_times`
--

DROP TABLE IF EXISTS `div_seed_times`;
/*!50001 DROP VIEW IF EXISTS `div_seed_times`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `div_seed_times` AS SELECT 
 1 AS `team`,
 1 AS `name`,
 1 AS `gender`,
 1 AS `age`,
 1 AS `distance`,
 1 AS `stroke_code`,
 1 AS `stroke`,
 1 AS `seed_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `divisionals`
--

DROP TABLE IF EXISTS `divisionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisionals` (
  `team` varchar(6) NOT NULL,
  `start` varchar(8) NOT NULL,
  `end` varchar(8) NOT NULL,
  `score` float NOT NULL,
  `points` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisionals`
--

LOCK TABLES `divisionals` WRITE;
/*!40000 ALTER TABLE `divisionals` DISABLE KEYS */;
/*!40000 ALTER TABLE `divisionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dual_relay_results`
--

DROP TABLE IF EXISTS `dual_relay_results`;
/*!50001 DROP VIEW IF EXISTS `dual_relay_results`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dual_relay_results` AS SELECT 
 1 AS `event`,
 1 AS `team`,
 1 AS `time`,
 1 AS `week`,
 1 AS `relay_team`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `dual_relays`
--

DROP TABLE IF EXISTS `dual_relays`;
/*!50001 DROP VIEW IF EXISTS `dual_relays`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dual_relays` AS SELECT 
 1 AS `number`,
 1 AS `gender`,
 1 AS `distance`,
 1 AS `stroke`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dual_schedule`
--

DROP TABLE IF EXISTS `dual_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dual_schedule` (
  `meet` int(11) NOT NULL,
  `week` int(11) NOT NULL,
  `home` int(11) NOT NULL,
  `away` int(11) NOT NULL,
  PRIMARY KEY (`meet`),
  UNIQUE KEY `meet_UNIQUE` (`meet`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dual_schedule`
--

LOCK TABLES `dual_schedule` WRITE;
/*!40000 ALTER TABLE `dual_schedule` DISABLE KEYS */;
INSERT INTO `dual_schedule` VALUES (1,1,1,5),(2,1,2,4),(3,1,6,3),(4,2,3,1),(5,2,4,6),(6,2,5,2),(7,3,1,4),(8,3,2,6),(9,3,3,5),(10,4,2,3),(11,4,4,5),(12,4,6,1),(13,5,1,2),(14,5,3,4),(15,5,5,6);
/*!40000 ALTER TABLE `dual_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `event_seed_times`
--

DROP TABLE IF EXISTS `event_seed_times`;
/*!50001 DROP VIEW IF EXISTS `event_seed_times`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `event_seed_times` AS SELECT 
 1 AS `swimmer`,
 1 AS `event`,
 1 AS `seed_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `meet_type` enum('dual','relays','divisionals') NOT NULL,
  `number` int(11) NOT NULL,
  `relay` enum('Y','N') NOT NULL,
  `gender` char(1) NOT NULL,
  `distance` int(11) NOT NULL,
  `stroke` int(11) NOT NULL,
  `age` varchar(4) NOT NULL,
  PRIMARY KEY (`meet_type`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES ('dual',1,'N','M',100,5,'UN12'),('dual',2,'N','F',100,5,'UN12'),('dual',3,'Y','M',200,7,'UNOV'),('dual',4,'Y','F',200,7,'UNOV'),('dual',5,'N','M',25,1,'UN08'),('dual',6,'N','F',25,1,'UN08'),('dual',7,'N','M',50,1,'0910'),('dual',8,'N','F',50,1,'0910'),('dual',9,'N','M',50,1,'1314'),('dual',10,'N','F',50,1,'1314'),('dual',11,'N','M',50,1,'1112'),('dual',12,'N','F',50,1,'1112'),('dual',13,'N','M',100,1,'1518'),('dual',14,'N','F',100,1,'1518'),('dual',15,'N','M',100,5,'1314'),('dual',16,'N','F',100,5,'1314'),('dual',17,'N','M',25,2,'UN08'),('dual',18,'N','F',25,2,'UN08'),('dual',19,'N','M',25,2,'0910'),('dual',20,'N','F',25,2,'0910'),('dual',21,'N','M',100,2,'1518'),('dual',22,'N','F',100,2,'1518'),('dual',23,'N','M',50,2,'1112'),('dual',24,'N','F',50,2,'1112'),('dual',25,'N','M',50,2,'1314'),('dual',26,'N','F',50,2,'1314'),('dual',27,'N','M',100,5,'1518'),('dual',28,'N','F',100,5,'1518'),('dual',29,'N','M',25,3,'UN08'),('dual',30,'N','F',25,3,'UN08'),('dual',31,'N','M',25,3,'0910'),('dual',32,'N','F',25,3,'0910'),('dual',33,'N','M',50,3,'1112'),('dual',34,'N','F',50,3,'1112'),('dual',35,'N','M',50,3,'1314'),('dual',36,'N','F',50,3,'1314'),('dual',37,'N','M',100,3,'1518'),('dual',38,'N','F',100,3,'1518'),('dual',39,'N','M',25,4,'UN08'),('dual',40,'N','F',25,4,'UN08'),('dual',41,'N','M',25,4,'0910'),('dual',42,'N','F',25,4,'0910'),('dual',43,'N','M',50,4,'1112'),('dual',44,'N','F',50,4,'1112'),('dual',45,'N','M',50,4,'1314'),('dual',46,'N','F',50,4,'1314'),('dual',47,'N','M',50,4,'1518'),('dual',48,'N','F',50,4,'1518'),('dual',49,'Y','M',175,6,'UN14'),('dual',50,'Y','F',175,6,'UN14'),('relays',1,'Y','M',175,6,'UN14'),('relays',2,'Y','F',175,6,'UN14'),('relays',3,'Y','X',200,6,'1518'),('relays',4,'Y','X',200,6,'1314'),('relays',5,'Y','X',100,6,'UN08'),('relays',6,'Y','X',200,6,'0910'),('relays',7,'Y','X',200,6,'1112'),('relays',8,'Y','M',200,7,'UNOV'),('relays',9,'Y','F',200,7,'UNOV'),('relays',10,'Y','M',100,7,'UN14'),('relays',11,'Y','F',100,7,'UN14'),('relays',12,'Y','M',100,7,'UN08'),('relays',13,'Y','F',100,7,'UN08'),('relays',14,'Y','M',100,7,'0910'),('relays',15,'Y','F',100,7,'0910'),('relays',16,'Y','X',200,7,'1518'),('relays',17,'Y','M',200,7,'1112'),('relays',18,'Y','F',200,7,'1112'),('relays',19,'Y','M',200,7,'1314'),('relays',20,'Y','F',200,7,'1314'),('relays',21,'Y','M',250,6,'UN18'),('relays',22,'Y','F',250,6,'UN18');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generated_ussids`
--

DROP TABLE IF EXISTS `generated_ussids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generated_ussids` (
  `USSID` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `team` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(28) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`USSID`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `individual_results`
--

DROP TABLE IF EXISTS `individual_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual_results` (
  `meet` int(11) NOT NULL,
  `swimmer` varchar(12) NOT NULL,
  `event` int(11) NOT NULL,
  `heat` int(11) NOT NULL,
  `lane` int(11) NOT NULL,
  `seed` float DEFAULT NULL,
  `DQ` enum('Y','N') NOT NULL,
  `time` float DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `points` float DEFAULT NULL,
  PRIMARY KEY (`meet`,`swimmer`,`event`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `meets`
--

DROP TABLE IF EXISTS `meets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meets` (
  `meet` int(11) NOT NULL,
  `team` varchar(6) NOT NULL,
  `start` varchar(8) NOT NULL,
  `end` varchar(8) NOT NULL,
  `opponent` varchar(6) NOT NULL,
  `score` float NOT NULL,
  `points` float NOT NULL,
  PRIMARY KEY (`meet`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rc_coaches`
--

DROP TABLE IF EXISTS `rc_coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rc_coaches` (
  `team` varchar(6) NOT NULL,
  `place1` int(11) NOT NULL,
  `place2` int(11) NOT NULL,
  `place3` int(11) NOT NULL,
  `place4` int(11) NOT NULL,
  PRIMARY KEY (`team`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relay_carnival`
--

DROP TABLE IF EXISTS `relay_carnival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relay_carnival` (
  `team` varchar(6) NOT NULL,
  `start` varchar(8) NOT NULL,
  `end` varchar(8) NOT NULL,
  `score` float NOT NULL,
  `points` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `relay_results`
--

DROP TABLE IF EXISTS `relay_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relay_results` (
  `meet` int(11) NOT NULL,
  `team` varchar(6) NOT NULL,
  `event` int(11) NOT NULL,
  `relay_team` char(1) NOT NULL,
  `swimmer1` varchar(12) DEFAULT NULL,
  `swimmer2` varchar(12) DEFAULT NULL,
  `swimmer3` varchar(12) DEFAULT NULL,
  `swimmer4` varchar(12) DEFAULT NULL,
  `heat` int(11) NOT NULL,
  `lane` int(11) NOT NULL,
  `total_age` int(11) DEFAULT NULL,
  `seed` float DEFAULT NULL,
  `DQ` enum('Y','N') NOT NULL,
  `time` float DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `points` float DEFAULT NULL,
  PRIMARY KEY (`meet`,`team`,`event`,`relay_team`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sdif_codes`
--

DROP TABLE IF EXISTS `sdif_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sdif_codes` (
  `block` int(11) NOT NULL,
  `code` varchar(4) NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`block`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdif_codes`
--

LOCK TABLES `sdif_codes` WRITE;
/*!40000 ALTER TABLE `sdif_codes` DISABLE KEYS */;
INSERT INTO `sdif_codes` VALUES (1,'1','USS'),(1,'2','Masters'),(1,'3','NCAA'),(1,'4','NCAA Div I'),(1,'5','NCAA Div II'),(1,'6','NCAA Div III'),(1,'7','YMCA'),(1,'8','FINA'),(1,'9','High School'),(2,'AD','Adirondack'),(2,'AK','Alaska'),(2,'AM','Allegheny Mountain'),(2,'AR','Arkansas'),(2,'AZ','Arizona'),(2,'BD','Border'),(2,'CA','Southern California'),(2,'CC','Central California'),(2,'CO','Colorado'),(2,'CT','Connecticut'),(2,'FG','Florida Gold Coast'),(2,'FL','Florida'),(2,'GA','Georgia'),(2,'GU','Gulf'),(2,'HI','Hawaii'),(2,'IA','Iowa'),(2,'IE','Inland Empire'),(2,'IL','Illinois'),(2,'IN','Indiana'),(2,'KY','Kentucky'),(2,'LA','Louisiana'),(2,'LE','Lake Erie'),(2,'MA','Middle Atlantic'),(2,'MD','Maryland'),(2,'ME','Maine'),(2,'MI','Michigan'),(2,'MN','Minnesota'),(2,'MR','Metropolitan'),(2,'MS','Mississippi'),(2,'MT','Montana'),(2,'MV','Missouri Valley'),(2,'MW','Midwestern'),(2,'NC','North Carolina'),(2,'ND','North Dakota'),(2,'NE','New England'),(2,'NI','Niagara'),(2,'NJ','New Jersey'),(2,'NM','New Mexico'),(2,'NT','North Texas'),(2,'OH','Ohio'),(2,'OK','Oklahoma'),(2,'OR','Oregon'),(2,'OZ','Ozark'),(2,'PC','Pacific'),(2,'PN','Pacific Northwest'),(2,'PV','Potomac Valley'),(2,'SC','South Carolina'),(2,'SD','South Dakota'),(2,'SE','Southeastern'),(2,'SI','San Diego Imperial'),(2,'SN','Sierra Nevada'),(2,'SR','Snake River'),(2,'ST','South Texas'),(2,'UT','Utah'),(2,'VA','Virginia'),(2,'WI','Wisconsin'),(2,'WT','West Texas'),(2,'WV','West Virginia'),(2,'WY','Wyoming'),(3,'01','Meet Registrations'),(3,'02','Meet Results'),(3,'03','OVC'),(3,'04','National Age Group Record'),(3,'05','LSC Age Group Record'),(3,'06','LSC Motivational List'),(3,'07','National Records and Rankings'),(3,'08','Team Selection'),(3,'09','LSC Best Times'),(3,'10','USS Registration'),(3,'16','Top 16'),(3,'20','Vendor-defined code'),(4,'AHO','Antilles Netherlands (Dutch West Indies)'),(4,'ALB','Albania'),(4,'ALG','Algeria'),(4,'AND','Andorra'),(4,'ANG','Angola'),(4,'ANT','Antigua'),(4,'ARG','Argentina'),(4,'ARM','Armenia'),(4,'ARU','Aruba'),(4,'ASA','American Samoa'),(4,'AUS','Australia'),(4,'AUT','Austria'),(4,'AZE','Azerbaijan'),(4,'BAH','Bahamas'),(4,'BAN','Bangladesh'),(4,'BAR','Barbados'),(4,'BEL','Belgium'),(4,'BEN','Benin'),(4,'BER','Bermuda'),(4,'BHU','Bhutan'),(4,'BIZ','Belize'),(4,'BLS','Belarus'),(4,'BOL','Bolivia'),(4,'BOT','Botswana'),(4,'BRA','Brazil'),(4,'BRN','Bahrain'),(4,'BRU','Brunei'),(4,'BUL','Bulgaria'),(4,'BUR','Burkina Faso'),(4,'CAF','Central African Republic'),(4,'CAN','Canada'),(4,'CAY','Cayman Islands'),(4,'CGO','People\'s Rep. of Congo'),(4,'CHA','Chad'),(4,'CHI','Chile'),(4,'CHN','People\'s Rep. of China'),(4,'CIV','Ivory Coast'),(4,'CMR','Cameroon'),(4,'COK','Cook Islands'),(4,'COL','Columbia'),(4,'CRC','Costa Rica'),(4,'CRO','Croatia'),(4,'CUB','Cuba'),(4,'CYP','Cyprus'),(4,'DEN','Denmark'),(4,'DJI','Djibouti'),(4,'DOM','Dominican Republic'),(4,'ECU','Ecuador'),(4,'EGY','Arab Republic of Egypt'),(4,'ESA','El Salvador'),(4,'ESP','Spain'),(4,'EST','Estonia'),(4,'ETH','Ethiopia'),(4,'FIJ','Fiji'),(4,'FIN','Finland'),(4,'FRA','France'),(4,'GAB','Gabon'),(4,'GAM','Gambia'),(4,'GBR','Great Britain'),(4,'GEO','Georgia'),(4,'GEQ','Equatorial Guinea'),(4,'GER','Germany'),(4,'GHA','Ghana'),(4,'GRE','Greece'),(4,'GRN','Grenada'),(4,'GUA','Guatemala'),(4,'GUI','Guinea'),(4,'GUM','Guam'),(4,'GUY','Guyana'),(4,'HAI','Haiti'),(4,'HKG','Hong Kong'),(4,'HON','Honduras'),(4,'HUN','Hungary'),(4,'INA','Indonesia'),(4,'IND','India'),(4,'IRI','Islamic Rep. of Iran'),(4,'IRL','Ireland'),(4,'IRQ','Iraq'),(4,'ISL','Iceland'),(4,'ISR','Israel'),(4,'ISV','Virgin Islands'),(4,'ITA','Italy'),(4,'IVB','British Virgin Islands'),(4,'JAM','Jamaica'),(4,'JOR','Jordan'),(4,'JPN','Japan'),(4,'KEN','Kenya'),(4,'KGZ','Kyrghyzstan'),(4,'KOR','Korea (South)'),(4,'KSA','Saudi Arabia'),(4,'KUW','Kuwait'),(4,'KZK','Kazakhstan'),(4,'LAO','Laos'),(4,'LAT','Latvia'),(4,'LBA','Libya'),(4,'LBR','Liberia'),(4,'LES','Lesotho'),(4,'LIB','Lebanon'),(4,'LIE','Liechtenstein'),(4,'LIT','Lithuania'),(4,'LUX','Luxembourg'),(4,'MAD','Madagascar'),(4,'MAR','Morocco'),(4,'MAS','Malaysia'),(4,'MAW','Malawi'),(4,'MDV','Maldives'),(4,'MEX','Mexico'),(4,'MGL','Mongolia'),(4,'MLD','Moldova'),(4,'MLI','Mali'),(4,'MLT','Malta'),(4,'MON','Monaco'),(4,'MOZ','Mozambique'),(4,'MRI','Mauritius'),(4,'MTN','Mauritania'),(4,'MYA','Union of Myanmar'),(4,'NAM','Namibia'),(4,'NCA','Nicaragua'),(4,'NED','The Netherlands'),(4,'NEP','Nepal'),(4,'NGR','Nigeria'),(4,'NIG','Niger'),(4,'NOR','Norway'),(4,'NZL','New Zealand'),(4,'OMA','Oman'),(4,'PAK','Pakistan'),(4,'PAN','Panama'),(4,'PAR','Paraguay'),(4,'PER','Peru'),(4,'PHI','Philippines'),(4,'PNG','Papau-New Guinea'),(4,'POL','Poland'),(4,'POR','Portugal'),(4,'PRK','Democratic People\'s Rep. of Korea'),(4,'PUR','Puerto Rico'),(4,'QAT','Qatar'),(4,'ROM','Romania'),(4,'RSA','South Africa'),(4,'RUS','Russia'),(4,'RWA','Rwanda'),(4,'SAM','Western Samoa'),(4,'SEN','Senegal'),(4,'SEY','Seychelles'),(4,'SIN','Singapore'),(4,'SLE','Sierra Leone'),(4,'SLO','Slovenia'),(4,'SMR','San Marino'),(4,'SOL','Solomon Islands'),(4,'SOM','Somalia'),(4,'SRI','Sri Lanka'),(4,'SUD','Sudan'),(4,'SUI','Switzerland'),(4,'SUR','Surinam'),(4,'SWE','Sweden'),(4,'SWZ','Swaziland'),(4,'SYR','Syria'),(4,'TAN','Tanzania'),(4,'TCH','Czechoslovakia'),(4,'TGA','Tonga'),(4,'THA','Thailand'),(4,'TJK','Tadjikistan'),(4,'TOG','Togo'),(4,'TPE','Chinese Taipei'),(4,'TRI','Trinidad & Tobago'),(4,'TUN','Tunisia'),(4,'TUR','Turkey'),(4,'UAE','United Arab Emirates'),(4,'UGA','Uganda'),(4,'UKR','Ukraine'),(4,'URU','Uruguay'),(4,'USA','United States of America'),(4,'VAN','Vanuatu'),(4,'VEN','Venezuela'),(4,'VIE','Vietnam'),(4,'VIN','St. Vincent and the Grenadines'),(4,'YEM','Yemen'),(4,'YUG','Yugoslavia'),(4,'ZAI','Zaire'),(4,'ZAM','Zambia'),(4,'ZIM','Zimbabwe'),(5,'0','Time Trials'),(5,'1','Invitational'),(5,'2','Regional'),(5,'3','LSC Championship'),(5,'4','Zone'),(5,'5','Zone Championship'),(5,'6','National Championship'),(5,'7','Juniors'),(5,'8','Seniors'),(5,'9','Dual'),(5,'A','International'),(5,'B','Open'),(5,'C','League'),(7,'1','Region 1'),(7,'2','Region 2'),(7,'3','Region 3'),(7,'4','Region 4'),(7,'5','Region 5'),(7,'6','Region 6'),(7,'7','Region 7'),(7,'8','Region 8'),(7,'9','Region 9'),(7,'A','Region 10'),(7,'B','Region 11'),(7,'C','Region 12'),(7,'D','Region 13'),(7,'E','Region 14'),(9,'2AL','Dual: USA and other country'),(9,'FGN','Foreign'),(10,'F','Girls'),(10,'M','Boys'),(11,'F','Girls'),(11,'M','Boys'),(11,'X','Mixed'),(12,'1','Freestyle'),(12,'2','Backstroke'),(12,'3','Breaststroke'),(12,'4','Butterfly'),(12,'5','Individual Medley'),(12,'6','Freestyle Relay'),(12,'7','Medley Relay'),(13,'1','Short Course Meters'),(13,'2','Short Course Yards'),(13,'3','Long Course Meters'),(13,'L','Long Course Meters'),(13,'S','Short Course Meters'),(13,'X','Disqualified'),(13,'Y','Short Course Yards'),(14,'1','Novice times'),(14,'2','B standard times'),(14,'3','A standard times'),(14,'4','AA standard times'),(14,'5','AAA standard times'),(14,'6','AAAA standard times'),(14,'J','Junior standard times'),(14,'O','no upper limit (right character only)'),(14,'P','BB standard times'),(14,'S','Senior standard times'),(14,'U','no lower limit (left character only)'),(15,'C','Cumulative splits supplied'),(15,'I','Interval splits supplied'),(16,'A','Swimmer is attached to team'),(16,'U','Swimmer is swimming unattached'),(17,'C','Central Zone'),(17,'E','Eastern Zone'),(17,'S','Southern Zone'),(17,'W','Western Zone'),(18,'BLUE','Blue'),(18,'BRNZ','Bronze'),(18,'GOLD','Gold'),(18,'RED','Red (note that fourth character is a space)'),(18,'SILV','Silver'),(18,'WHIT','White'),(19,'F','Finals'),(19,'P','Prelims'),(19,'S','Swim-offs'),(20,'DNF','Did Not Finish'),(20,'DQ','Disqualified'),(20,'NS','No Swim (or No Show)'),(20,'NT','No Time'),(20,'SCR','Scratch'),(21,'C','Change'),(21,'D','Delete'),(21,'N','New'),(21,'R','Renew'),(22,'1','Season 1'),(22,'2','Season 2'),(22,'N','Year-round'),(24,'0','Not on team for this swim'),(24,'1','First leg'),(24,'2','Second leg'),(24,'3','Third leg'),(24,'4','Fourth leg'),(24,'A','Alternate'),(26,'Q','African American'),(26,'R','Asian or Pacific Islander'),(26,'S','Caucasian'),(26,'T','Hispanic'),(26,'U','Native American'),(26,'V','Other'),(26,'W','Decline');
/*!40000 ALTER TABLE `sdif_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `seed_rank`
--

DROP TABLE IF EXISTS `seed_rank`;
/*!50001 DROP VIEW IF EXISTS `seed_rank`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `seed_rank` AS SELECT 
 1 AS `rank`,
 1 AS `team`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stroke_codes`
--

DROP TABLE IF EXISTS `stroke_codes`;
/*!50001 DROP VIEW IF EXISTS `stroke_codes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `stroke_codes` AS SELECT 
 1 AS `code`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `stroke_seed_times`
--

DROP TABLE IF EXISTS `stroke_seed_times`;
/*!50001 DROP VIEW IF EXISTS `stroke_seed_times`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `stroke_seed_times` AS SELECT 
 1 AS `swimmer`,
 1 AS `stroke`,
 1 AS `distance`,
 1 AS `seed_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `swimmers`
--

DROP TABLE IF EXISTS `swimmers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `swimmers` (
  `USSID` varchar(12) NOT NULL,
  `team` varchar(6) NOT NULL,
  `name` varchar(28) NOT NULL,
  `birthdate` varchar(8) NOT NULL,
  `age` varchar(2) NOT NULL,
  `gender` char(1) NOT NULL,
  `USSNUM` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`USSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `code` varchar(6) NOT NULL,
  `rank` int(11) NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `addr1` varchar(22) DEFAULT NULL,
  `addr2` varchar(22) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


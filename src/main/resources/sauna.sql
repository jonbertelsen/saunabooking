-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: sauna
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Current Database: `sauna`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sauna` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `sauna`;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `event_id` int NOT NULL,
  `confirmation` tinyint NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_id`),
  KEY `fk_booking_customer1_idx` (`customer_id`),
  KEY `fk_booking_event1_idx` (`event_id`),
  CONSTRAINT `fk_booking_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `fk_booking_event1` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,1,1,0,1,'2022-03-31 00:22:35'),(2,1,2,0,2,'2022-03-31 10:47:33');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'22755844','Jon Bertelsen','2022-03-31 00:21:31');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `duration` int NOT NULL DEFAULT '60',
  `price` int NOT NULL DEFAULT '165',
  `limit` int NOT NULL DEFAULT '10',
  `time` datetime NOT NULL,
  `location_id` int NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `fk_event_location_idx` (`location_id`),
  CONSTRAINT `fk_event_location` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Saunafestival #1',60,165,10,'2022-05-05 12:00:00',1),(2,'Saunafestival #2',60,165,10,'2022-05-05 13:00:00',1),(3,'Saunafestival #3',60,165,10,'2022-05-05 14:00:00',1),(4,'Saunafestival #4',60,165,10,'2022-05-06 10:00:00',1),(5,'Saunafestival #5',60,165,10,'2022-05-06 11:00:00',1),(6,'Saunafestival #6',60,165,10,'2022-05-06 12:00:00',1),(7,'Hasle gus #1',60,165,10,'2022-04-06 18:00:00',2),(8,'Hasle gus #2',60,165,10,'2022-04-06 19:00:00',2),(9,'Sandvig gus galore #1',60,200,10,'2022-04-17 16:00:00',3),(10,'Sandvig gus galore #2',60,200,10,'2022-04-17 17:30:00',3);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `event_count_view`
--

DROP TABLE IF EXISTS `event_count_view`;
/*!50001 DROP VIEW IF EXISTS `event_count_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `event_count_view` AS SELECT 
 1 AS `event_id`,
 1 AS `event_name`,
 1 AS `duration`,
 1 AS `price`,
 1 AS `limit`,
 1 AS `time`,
 1 AS `location_id`,
 1 AS `location_name`,
 1 AS `address`,
 1 AS `zip`,
 1 AS `city`,
 1 AS `gmap_link`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `event_view`
--

DROP TABLE IF EXISTS `event_view`;
/*!50001 DROP VIEW IF EXISTS `event_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `event_view` AS SELECT 
 1 AS `event_id`,
 1 AS `event_name`,
 1 AS `duration`,
 1 AS `price`,
 1 AS `limit`,
 1 AS `time`,
 1 AS `location_id`,
 1 AS `address`,
 1 AS `zip`,
 1 AS `city`,
 1 AS `location_name`,
 1 AS `gmap_link`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `zip` int NOT NULL,
  `city` varchar(45) NOT NULL,
  `gmap_link` varchar(255) NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Hammergus','Shelterplads Hammersø',3770,'Allinge','https://goo.gl/maps/5h883VbCvZ3Kw9Ua8'),(2,'Haslegus','Havnen 25 b',3790,'Hasle','https://goo.gl/maps/hdeWq3G2uyX3qG757'),(3,'Sandvig-gus','Strandpromenaden 20',3770,'Allinge','https://goo.gl/maps/iUthiWtcfVFQvPj96');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','1234','admin'),('user','1234','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `sauna_test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sauna_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `sauna_test`;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `sauna`
--

USE `sauna`;

--
-- Final view structure for view `event_count_view`
--

/*!50001 DROP VIEW IF EXISTS `event_count_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `event_count_view` AS select `eventjoin`.`event_id` AS `event_id`,`eventjoin`.`event_name` AS `event_name`,`eventjoin`.`duration` AS `duration`,`eventjoin`.`price` AS `price`,`eventjoin`.`limit` AS `limit`,`eventjoin`.`time` AS `time`,`eventjoin`.`location_id` AS `location_id`,`eventjoin`.`location_name` AS `location_name`,`eventjoin`.`address` AS `address`,`eventjoin`.`zip` AS `zip`,`eventjoin`.`city` AS `city`,`eventjoin`.`gmap_link` AS `gmap_link`,ifnull(`eventjoin`.`count`,0) AS `count` from (select `event_view`.`event_id` AS `event_id`,`event_view`.`event_name` AS `event_name`,`event_view`.`duration` AS `duration`,`event_view`.`price` AS `price`,`event_view`.`limit` AS `limit`,`event_view`.`time` AS `time`,`event_view`.`location_id` AS `location_id`,`event_view`.`address` AS `address`,`event_view`.`zip` AS `zip`,`event_view`.`city` AS `city`,`event_view`.`location_name` AS `location_name`,`event_view`.`gmap_link` AS `gmap_link`,`e`.`count` AS `count` from (`event_view` left join (select `booking`.`event_id` AS `event_id`,sum(`booking`.`quantity`) AS `count` from `booking` group by `booking`.`event_id`) `e` on((`event_view`.`event_id` = `e`.`event_id`)))) `eventjoin` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `event_view`
--

/*!50001 DROP VIEW IF EXISTS `event_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `event_view` AS select `e`.`event_id` AS `event_id`,`e`.`name` AS `event_name`,`e`.`duration` AS `duration`,`e`.`price` AS `price`,`e`.`limit` AS `limit`,`e`.`time` AS `time`,`l`.`location_id` AS `location_id`,`l`.`address` AS `address`,`l`.`zip` AS `zip`,`l`.`city` AS `city`,`l`.`name` AS `location_name`,`l`.`gmap_link` AS `gmap_link` from (`event` `e` join `location` `l` on((`e`.`location_id` = `l`.`location_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Current Database: `sauna_test`
--

USE `sauna_test`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-01 18:47:43

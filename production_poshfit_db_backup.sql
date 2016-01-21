-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: PoshfitDb
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `activityLog`
--

DROP TABLE IF EXISTS `activityLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activityLog` (
  `activity_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `date` varchar(40) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `points` float(10,2) DEFAULT NULL,
  KEY `activity_id` (`activity_id`),
  KEY `team_id` (`team_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `activityLog_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activityMetadata` (`id`),
  CONSTRAINT `activityLog_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teamMetadata` (`id`),
  CONSTRAINT `activityLog_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `userInfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activityLog`
--

LOCK TABLES `activityLog` WRITE;
/*!40000 ALTER TABLE `activityLog` DISABLE KEYS */;
INSERT INTO `activityLog` VALUES (34,24,'2016-1-3',1,1,0.80),(27,60,'2016-1-3',1,1,4.00),(34,10,'2016-1-2',1,1,0.33),(27,10,'2016-1-2',1,1,0.67),(34,24,'2016-1-3',1,2,1.00),(27,60,'2016-1-3',1,2,1.00),(34,10,'2016-1-2',1,2,1.00),(27,10,'2016-1-2',1,2,1.00),(1,0,'2016-1-10',1,1,1.00),(5,0,'2016-1-10',1,1,5.00),(10,10,'2016-1-10',1,1,0.50),(6,0,'2016-1-12',7,28,1.00),(8,0,'2016-1-12',7,28,2.00),(2,0,'2016-1-12',7,28,1.00),(4,0,'2016-1-12',7,28,1.00),(1,0,'2016-1-12',12,52,1.00),(12,40,'2016-1-12',12,52,1.33),(7,0,'2016-1-12',4,14,2.00),(8,0,'2016-1-12',4,14,2.00),(3,0,'2016-1-12',4,14,1.00),(4,0,'2016-1-12',4,14,1.00),(8,0,'2016-1-12',3,6,2.00),(1,0,'2016-1-12',3,6,1.00),(3,0,'2016-1-12',3,6,1.00),(4,0,'2016-1-12',3,6,1.00),(2,0,'2016-1-12',3,6,1.00),(9,0,'2016-1-12',10,41,2.00),(2,0,'2016-1-12',10,41,1.00),(4,0,'2016-1-12',10,41,1.00),(5,0,'2016-1-12',10,41,5.00),(8,0,'2016-1-12',10,41,2.00),(4,0,'2016-1-12',8,30,1.00),(8,0,'2016-1-12',8,30,2.00),(1,0,'2016-1-12',8,30,1.00),(3,0,'2016-1-12',8,30,1.00),(8,0,'2016-1-12',4,13,2.00),(9,0,'2016-1-12',4,13,2.00),(2,0,'2016-1-12',4,13,1.00),(1,0,'2016-1-12',4,13,1.00),(4,0,'2016-1-12',4,13,1.00),(7,0,'2016-1-12',4,13,2.00),(7,0,'2016-1-12',12,52,2.00),(8,0,'2016-1-12',12,52,2.00),(8,0,'2016-1-12',4,11,2.00),(2,0,'2016-1-12',4,11,1.00),(4,0,'2016-1-12',4,11,1.00),(18,60,'2016-1-12',3,6,1.00),(10,30,'2016-1-12',7,27,1.50),(9,0,'2016-1-12',7,27,2.00),(8,0,'2016-1-12',7,27,2.00),(2,0,'2016-1-12',7,27,1.00),(4,0,'2016-1-12',7,27,1.00),(7,0,'2016-1-12',4,12,2.00),(8,0,'2016-1-12',4,12,2.00),(2,0,'2016-1-12',4,12,1.00),(4,0,'2016-1-12',4,12,1.00),(2,0,'2016-1-12',3,8,1.00),(1,0,'2016-1-12',3,8,1.00),(4,0,'2016-1-12',3,8,1.00),(7,0,'2016-1-12',3,8,2.00),(8,0,'2016-1-12',3,8,2.00),(9,0,'2016-1-12',3,8,2.00),(1,0,'2016-1-12',4,14,1.00),(18,35,'2016-1-12',4,14,0.58),(22,15,'2016-1-12',4,14,0.25),(7,0,'2016-1-12',7,27,2.00),(2,0,'2016-1-12',3,7,1.00),(1,0,'2016-1-12',3,7,1.00),(4,0,'2016-1-12',3,7,1.00),(18,30,'2016-1-12',3,7,0.50),(22,90,'2016-1-12',3,7,1.50),(5,0,'2016-1-12',3,7,5.00),(6,0,'2016-1-12',3,7,1.00),(5,0,'2016-1-12',4,14,5.00),(1,0,'2016-1-12',4,12,1.00),(8,0,'2016-1-12',12,49,2.00),(9,0,'2016-1-12',12,49,2.00),(3,0,'2016-1-12',12,49,1.00),(8,0,'2016-1-12',3,9,2.00),(2,0,'2016-1-12',3,9,1.00),(1,0,'2016-1-12',3,9,1.00),(4,0,'2016-1-12',3,9,1.00),(2,0,'2016-1-12',8,29,1.00),(3,0,'2016-1-12',8,29,1.00),(4,0,'2016-1-12',8,29,1.00),(18,30,'2016-1-12',8,29,0.50),(27,10,'2016-1-12',8,29,0.67),(5,0,'2016-1-12',8,29,5.00),(8,0,'2016-1-12',8,29,2.00),(4,0,'2016-1-12',4,10,1.00),(7,0,'2016-1-12',4,10,2.00),(8,0,'2016-1-12',4,10,2.00),(1,0,'2016-1-12',4,10,1.00),(3,0,'2016-1-12',4,10,1.00),(8,0,'2016-1-13',8,29,2.00),(2,0,'2016-1-13',8,29,1.00),(3,0,'2016-1-13',8,29,1.00),(4,0,'2016-1-13',8,29,1.00),(20,45,'2016-1-12',4,14,2.25),(4,0,'2016-1-12',8,33,1.00),(18,30,'2016-1-12',8,33,0.50),(29,60,'2016-1-12',8,33,3.00),(6,0,'2016-1-12',8,33,1.00),(8,0,'2016-1-12',8,33,2.00),(2,0,'2016-1-12',8,33,1.00),(29,60,'2016-1-13',8,33,3.00),(6,0,'2016-1-13',8,33,1.00),(8,0,'2016-1-13',8,33,2.00),(2,0,'2016-1-13',8,33,1.00),(4,0,'2016-1-13',8,33,1.00),(5,0,'2016-1-12',8,33,5.00),(4,0,'2016-1-12',11,43,1.00),(8,0,'2016-1-12',11,43,2.00),(2,0,'2016-1-12',11,43,1.00),(3,0,'2016-1-12',11,43,1.00),(7,0,'2016-1-12',8,30,2.00),(5,0,'2016-1-12',8,30,5.00),(8,0,'2016-1-12',11,46,2.00),(3,0,'2016-1-12',11,46,1.00),(4,0,'2016-1-12',11,46,1.00),(1,0,'2016-1-12',12,48,1.00),(4,0,'2016-1-12',12,48,1.00),(31,30,'2016-1-12',12,48,1.00),(8,0,'2016-1-12',12,48,2.00),(9,0,'2016-1-12',12,48,2.00),(1,0,'2016-1-12',11,43,1.00),(27,15,'2016-1-12',11,43,1.00),(31,10,'2016-1-12',11,46,0.33),(5,0,'2016-1-12',6,24,5.00),(6,0,'2016-1-12',6,24,1.00),(7,0,'2016-1-12',6,24,2.00),(8,0,'2016-1-12',6,24,2.00),(2,0,'2016-1-12',6,24,1.00),(3,0,'2016-1-12',6,24,1.00),(4,0,'2016-1-12',6,24,1.00),(1,0,'2016-1-12',11,46,1.00),(7,0,'2016-1-12',11,43,2.00),(1,0,'2016-1-12',4,11,1.00),(3,0,'2016-1-12',4,11,1.00),(8,0,'2016-1-13',11,44,2.00),(2,0,'2016-1-13',11,44,1.00),(1,0,'2016-1-13',11,44,1.00),(3,0,'2016-1-13',11,44,1.00),(4,0,'2016-1-13',11,44,1.00),(7,0,'2016-1-13',11,44,2.00),(1,0,'2016-1-12',11,44,1.00),(3,0,'2016-1-12',11,44,1.00),(4,0,'2016-1-12',11,44,1.00),(8,0,'2016-1-12',11,44,2.00),(2,0,'2016-1-12',11,44,1.00),(5,0,'2016-1-13',8,32,5.00),(6,0,'2016-1-13',8,32,1.00),(7,0,'2016-1-13',8,32,2.00),(8,0,'2016-1-13',8,32,2.00),(9,0,'2016-1-13',8,32,2.00),(2,0,'2016-1-13',8,32,1.00),(1,0,'2016-1-13',8,32,1.00),(3,0,'2016-1-13',8,32,1.00),(4,0,'2016-1-13',8,32,1.00),(13,20,'2016-1-13',8,32,1.00),(15,30,'2016-1-13',8,32,1.00),(17,15,'2016-1-13',8,32,0.75),(22,120,'2016-1-13',8,32,2.00),(27,40,'2016-1-13',8,32,2.67),(28,30,'2016-1-13',8,32,0.50),(31,60,'2016-1-13',8,32,2.00),(33,120,'2016-1-13',8,32,4.00),(5,0,'2016-1-12',7,28,5.00),(1,0,'2016-1-12',7,28,1.00),(18,58,'2016-1-12',7,28,0.97),(22,30,'2016-1-12',7,28,0.50),(6,0,'2016-1-12',3,5,1.00),(8,0,'2016-1-12',3,5,2.00),(2,0,'2016-1-12',3,5,1.00),(1,0,'2016-1-12',3,5,1.00),(4,0,'2016-1-12',3,5,1.00),(18,30,'2016-1-12',3,5,0.50),(25,20,'2016-1-12',3,5,1.33),(5,0,'2016-1-12',4,10,5.00),(2,0,'2016-1-12',4,10,1.00),(22,45,'2016-1-12',4,10,0.75),(5,0,'2016-1-12',14,57,5.00),(8,0,'2016-1-12',14,57,2.00),(1,0,'2016-1-12',14,57,1.00),(4,0,'2016-1-12',14,57,1.00),(18,30,'2016-1-12',14,57,0.50),(8,0,'2016-1-12',5,15,2.00),(1,0,'2016-1-12',5,15,1.00),(4,0,'2016-1-12',5,15,1.00),(3,0,'2016-1-12',3,9,1.00),(6,0,'2016-1-12',5,19,1.00),(8,0,'2016-1-12',5,19,2.00),(2,0,'2016-1-12',5,19,1.00),(1,0,'2016-1-12',5,19,1.00),(4,0,'2016-1-12',5,19,1.00),(28,15,'2016-1-12',5,19,0.25),(46,30,'2016-1-12',5,19,1.00),(14,13,'2016-1-12',5,15,0.87),(5,0,'2016-1-12',7,26,5.00),(8,0,'2016-1-12',7,26,2.00),(2,0,'2016-1-12',7,26,1.00),(1,0,'2016-1-12',7,26,1.00),(3,0,'2016-1-12',7,26,1.00),(4,0,'2016-1-12',7,26,1.00),(20,3,'2016-1-12',7,26,0.15),(28,1,'2016-1-12',7,26,0.02),(3,0,'2016-1-12',3,8,1.00),(22,60,'2016-1-12',3,9,1.00),(2,0,'2016-1-13',11,47,1.00),(1,0,'2016-1-13',11,47,1.00),(3,0,'2016-1-13',11,47,1.00),(4,0,'2016-1-13',11,47,1.00),(5,0,'2016-1-13',11,47,5.00),(6,0,'2016-1-13',11,47,1.00),(8,0,'2016-1-13',11,47,2.00),(5,0,'2016-1-12',9,36,5.00),(6,0,'2016-1-12',9,36,1.00),(7,0,'2016-1-12',9,36,2.00),(8,0,'2016-1-12',9,36,2.00),(9,0,'2016-1-12',9,36,2.00),(2,0,'2016-1-12',9,36,1.00),(1,0,'2016-1-12',9,36,1.00),(3,0,'2016-1-12',9,36,1.00),(4,0,'2016-1-12',9,36,1.00),(18,60,'2016-1-12',9,36,1.00),(22,30,'2016-1-12',9,36,0.50),(25,30,'2016-1-12',9,36,2.00),(28,30,'2016-1-12',9,36,0.50),(18,30,'2016-1-13',11,47,0.50),(2,0,'2016-1-13',9,36,1.00),(3,0,'2016-1-13',9,36,1.00),(4,0,'2016-1-13',9,36,1.00),(18,60,'2016-1-13',9,36,1.00),(25,30,'2016-1-13',9,36,2.00),(6,0,'2016-1-13',9,36,1.00),(7,0,'2016-1-13',9,36,2.00),(8,0,'2016-1-13',9,36,2.00),(1,0,'2016-1-12',11,47,1.00),(3,0,'2016-1-12',11,47,1.00),(4,0,'2016-1-12',11,47,1.00),(13,30,'2016-1-12',11,47,1.50),(18,30,'2016-1-12',11,47,0.50),(5,0,'2016-1-12',11,47,5.00),(7,0,'2016-1-12',11,47,2.00),(8,0,'2016-1-12',11,47,2.00),(2,0,'2016-1-12',11,47,1.00),(13,30,'2016-1-13',11,47,1.50),(5,0,'2016-1-13',9,34,5.00),(6,0,'2016-1-13',9,34,1.00),(7,0,'2016-1-13',9,34,2.00),(8,0,'2016-1-13',9,34,2.00),(9,0,'2016-1-13',9,34,2.00),(2,0,'2016-1-13',9,34,1.00),(1,0,'2016-1-13',9,34,1.00),(4,0,'2016-1-13',9,34,1.00),(13,20,'2016-1-13',9,34,1.00),(25,60,'2016-1-13',9,34,4.00),(27,30,'2016-1-13',9,34,2.00),(28,20,'2016-1-13',9,34,0.33),(29,60,'2016-1-13',9,34,3.00),(31,30,'2016-1-13',9,34,1.00),(32,45,'2016-1-13',9,34,1.50),(5,0,'2016-1-12',9,34,5.00),(6,0,'2016-1-12',9,34,1.00),(7,0,'2016-1-12',9,34,2.00),(8,0,'2016-1-12',9,34,2.00),(9,0,'2016-1-12',9,34,2.00),(2,0,'2016-1-12',9,34,1.00),(1,0,'2016-1-12',9,34,1.00),(4,0,'2016-1-12',9,34,1.00),(13,20,'2016-1-12',9,34,1.00),(17,30,'2016-1-12',9,34,1.50),(25,45,'2016-1-12',9,34,3.00),(28,30,'2016-1-12',9,34,0.50),(29,60,'2016-1-12',9,34,3.00),(31,30,'2016-1-12',9,34,1.00),(32,60,'2016-1-12',9,34,2.00),(28,10,'2016-1-13',9,35,0.17),(7,0,'2016-1-13',9,35,2.00),(8,0,'2016-1-13',9,35,2.00),(2,0,'2016-1-13',9,35,1.00),(3,0,'2016-1-13',9,35,1.00),(4,0,'2016-1-13',9,35,1.00),(22,60,'2016-1-13',9,35,1.00),(27,15,'2016-1-13',9,35,1.00),(3,0,'2016-1-12',9,35,1.00),(4,0,'2016-1-12',9,35,1.00),(15,20,'2016-1-12',9,35,0.67),(18,30,'2016-1-12',9,35,0.50),(22,60,'2016-1-12',9,35,1.00),(27,15,'2016-1-12',9,35,1.00),(28,15,'2016-1-12',9,35,0.25),(7,0,'2016-1-12',9,35,2.00),(8,0,'2016-1-12',9,35,2.00),(2,0,'2016-1-12',9,35,1.00),(4,0,'2016-1-12',10,39,1.00),(14,60,'2016-1-12',10,39,4.00),(18,20,'2016-1-12',10,39,0.33),(5,0,'2016-1-12',10,39,5.00),(6,0,'2016-1-12',10,39,1.00),(7,0,'2016-1-12',10,39,2.00),(8,0,'2016-1-12',10,39,2.00),(9,0,'2016-1-12',10,39,2.00),(2,0,'2016-1-12',10,39,1.00),(22,30,'2016-1-12',8,30,0.50),(18,30,'2016-1-12',8,30,0.50),(1,0,'2016-1-13',8,30,1.00),(3,0,'2016-1-13',8,30,1.00),(4,0,'2016-1-13',8,30,1.00),(25,20,'2016-1-13',8,30,1.33),(28,20,'2016-1-13',8,30,0.33),(2,0,'2016-1-12',13,56,1.00),(1,0,'2016-1-12',13,56,1.00),(3,0,'2016-1-12',13,56,1.00),(4,0,'2016-1-12',13,56,1.00),(38,30,'2016-1-12',13,56,2.00),(5,0,'2016-1-12',13,56,5.00),(6,0,'2016-1-12',13,56,1.00),(7,0,'2016-1-12',13,56,2.00),(8,0,'2016-1-12',13,56,2.00),(9,0,'2016-1-12',13,56,2.00),(7,0,'2016-1-12',5,16,2.00),(8,0,'2016-1-12',5,16,2.00),(2,0,'2016-1-12',5,16,1.00),(1,0,'2016-1-12',5,16,1.00),(34,30,'2016-1-12',5,16,1.00),(18,60,'2016-1-12',5,16,1.00),(5,0,'2016-1-12',14,59,5.00),(8,0,'2016-1-12',14,59,2.00),(2,0,'2016-1-12',14,59,1.00),(1,0,'2016-1-12',14,59,1.00),(3,0,'2016-1-12',14,59,1.00),(4,0,'2016-1-12',14,59,1.00),(18,30,'2016-1-12',14,59,0.50),(32,30,'2016-1-12',14,58,1.00),(5,0,'2016-1-12',14,58,5.00),(6,0,'2016-1-12',14,58,1.00),(7,0,'2016-1-12',14,58,2.00),(8,0,'2016-1-12',14,58,2.00),(2,0,'2016-1-12',14,58,1.00),(25,25,'2016-1-12',14,58,1.67),(31,10,'2016-1-12',14,58,0.33),(2,0,'2016-1-13',15,61,1.00),(4,0,'2016-1-13',15,61,1.00),(7,0,'2016-1-12',15,60,2.00),(8,0,'2016-1-12',15,60,2.00),(9,0,'2016-1-12',15,60,2.00),(2,0,'2016-1-12',15,60,1.00),(3,0,'2016-1-12',15,60,1.00),(4,0,'2016-1-12',15,60,1.00),(31,30,'2016-1-12',15,60,1.00),(2,0,'2016-1-13',3,9,1.00),(1,0,'2016-1-13',3,9,1.00),(4,0,'2016-1-13',3,9,1.00),(5,0,'2016-1-12',3,6,5.00),(8,0,'2016-1-13',3,6,2.00),(2,0,'2016-1-13',3,6,1.00),(1,0,'2016-1-13',3,6,1.00),(3,0,'2016-1-13',3,6,1.00),(4,0,'2016-1-13',3,6,1.00),(18,60,'2016-1-13',3,6,1.00),(7,0,'2016-1-12',3,5,2.00),(3,0,'2016-1-12',3,5,1.00),(7,0,'2016-1-13',3,8,2.00),(8,0,'2016-1-13',3,8,2.00),(9,0,'2016-1-13',3,8,2.00),(2,0,'2016-1-13',3,8,1.00),(1,0,'2016-1-13',3,8,1.00),(3,0,'2016-1-13',3,8,1.00),(4,0,'2016-1-13',3,8,1.00),(7,0,'2016-1-12',3,9,2.00),(6,0,'2016-1-12',4,13,1.00),(3,0,'2016-1-12',4,13,1.00),(32,30,'2016-1-12',13,53,1.00),(5,0,'2016-1-12',13,53,5.00),(6,0,'2016-1-12',13,53,1.00),(8,0,'2016-1-12',13,53,2.00),(9,0,'2016-1-12',13,53,2.00),(2,0,'2016-1-12',13,53,1.00),(1,0,'2016-1-12',13,53,1.00),(4,0,'2016-1-12',13,53,1.00),(8,0,'2016-1-12',10,42,2.00),(2,0,'2016-1-12',10,42,1.00),(1,0,'2016-1-12',10,42,1.00),(12,5,'2016-1-12',10,42,0.17),(18,10,'2016-1-12',10,42,0.17),(28,5,'2016-1-12',10,42,0.08),(7,0,'2016-1-12',13,53,2.00),(4,0,'2016-1-13',13,54,1.00),(14,60,'2016-1-13',13,54,4.00),(33,60,'2016-1-13',13,54,2.00),(5,0,'2016-1-13',13,54,5.00),(6,0,'2016-1-13',13,54,1.00),(7,0,'2016-1-13',13,54,2.00),(9,0,'2016-1-13',13,54,2.00),(1,0,'2016-1-13',13,54,1.00),(3,0,'2016-1-13',13,54,1.00),(8,0,'2016-1-12',15,61,2.00),(2,0,'2016-1-12',15,61,1.00),(1,0,'2016-1-12',15,61,1.00),(3,0,'2016-1-12',15,61,1.00),(4,0,'2016-1-12',15,61,1.00),(8,0,'2016-1-12',15,63,2.00),(2,0,'2016-1-12',15,63,1.00),(3,0,'2016-1-12',15,63,1.00),(4,0,'2016-1-12',15,63,1.00),(7,0,'2016-1-12',15,63,2.00),(22,60,'2016-1-12',15,63,1.00),(6,0,'2016-1-13',15,63,1.00),(2,0,'2016-1-12',4,14,1.00),(5,0,'2016-1-12',7,25,5.00),(1,0,'2016-1-12',7,25,1.00),(17,60,'2016-1-12',7,25,3.00),(14,60,'2016-1-12',7,25,4.00),(5,0,'2016-1-13',7,25,5.00),(2,0,'2016-1-13',7,25,1.00),(1,0,'2016-1-13',7,25,1.00),(14,60,'2016-1-13',7,25,4.00),(8,0,'2016-1-13',7,27,2.00),(4,0,'2016-1-13',7,27,1.00),(2,0,'2016-1-13',7,27,1.00),(8,0,'2016-1-13',7,28,2.00),(6,0,'2016-1-13',7,28,1.00),(5,0,'2016-1-12',7,27,5.00),(1,0,'2016-1-12',15,65,1.00),(3,0,'2016-1-12',15,65,1.00),(4,0,'2016-1-12',15,65,1.00),(13,20,'2016-1-12',15,65,1.00),(23,60,'2016-1-12',15,65,2.00),(5,0,'2016-1-12',15,65,5.00),(7,0,'2016-1-12',15,65,2.00),(8,0,'2016-1-12',15,65,2.00),(9,0,'2016-1-12',15,65,2.00),(2,0,'2016-1-12',15,65,1.00),(2,0,'2016-1-12',12,52,1.00),(4,0,'2016-1-12',12,52,1.00),(7,0,'2016-1-13',12,50,2.00),(1,0,'2016-1-13',12,50,1.00),(3,0,'2016-1-13',12,50,1.00),(4,0,'2016-1-13',12,50,1.00),(17,30,'2016-1-13',12,50,1.50),(3,0,'2016-1-13',12,49,1.00),(2,0,'2016-1-13',12,49,1.00),(8,0,'2016-1-13',12,49,2.00),(32,20,'2016-1-13',12,52,0.67),(12,20,'2016-1-13',12,52,0.67),(2,0,'2016-1-13',7,66,1.00),(1,0,'2016-1-13',7,66,1.00),(4,0,'2016-1-13',7,66,1.00),(25,45,'2016-1-13',7,66,3.00),(5,0,'2016-1-12',7,66,5.00),(7,0,'2016-1-12',7,66,2.00),(8,0,'2016-1-12',7,66,2.00),(2,0,'2016-1-12',7,66,1.00),(1,0,'2016-1-12',7,66,1.00),(4,0,'2016-1-12',7,66,1.00),(3,0,'2016-1-12',7,28,1.00),(5,0,'2016-1-12',13,67,5.00),(7,0,'2016-1-12',13,67,2.00),(8,0,'2016-1-12',13,67,2.00),(2,0,'2016-1-12',13,67,1.00),(3,0,'2016-1-12',13,67,1.00),(5,0,'2016-1-12',6,21,5.00),(7,0,'2016-1-12',6,21,2.00),(8,0,'2016-1-12',6,21,2.00),(1,0,'2016-1-12',6,21,1.00),(4,0,'2016-1-12',6,21,1.00),(32,15,'2016-1-12',6,21,0.50),(8,0,'2016-1-13',8,30,2.00),(5,0,'2016-1-12',12,51,5.00),(6,0,'2016-1-12',12,51,1.00),(8,0,'2016-1-12',12,51,2.00),(2,0,'2016-1-12',12,51,1.00),(4,0,'2016-1-12',12,51,1.00),(8,0,'2016-1-13',12,51,2.00),(2,0,'2016-1-13',12,51,1.00),(4,0,'2016-1-13',12,51,1.00),(7,0,'2016-1-12',10,40,2.00),(8,0,'2016-1-12',10,40,2.00),(2,0,'2016-1-12',10,40,1.00),(3,0,'2016-1-12',10,40,1.00),(4,0,'2016-1-12',10,40,1.00),(25,30,'2016-1-12',10,40,2.00),(32,30,'2016-1-12',10,40,1.00),(28,10,'2016-1-12',10,40,0.17),(5,0,'2016-1-12',15,60,5.00),(6,0,'2016-1-13',3,9,1.00),(8,0,'2016-1-13',5,15,2.00),(7,0,'2016-1-13',5,15,2.00),(5,0,'2016-1-13',5,15,5.00),(6,0,'2016-1-13',4,11,1.00),(7,0,'2016-1-13',4,11,2.00),(8,0,'2016-1-13',4,11,2.00),(2,0,'2016-1-13',4,11,1.00),(1,0,'2016-1-13',4,11,1.00),(3,0,'2016-1-13',4,11,1.00),(4,0,'2016-1-13',4,11,1.00),(7,0,'2016-1-13',4,14,2.00),(8,0,'2016-1-13',4,14,2.00),(9,0,'2016-1-13',4,14,2.00),(3,0,'2016-1-13',4,14,1.00),(4,0,'2016-1-13',4,14,1.00),(7,0,'2016-1-12',6,22,2.00),(8,0,'2016-1-12',6,22,2.00),(1,0,'2016-1-12',6,22,1.00),(3,0,'2016-1-12',6,22,1.00),(4,0,'2016-1-12',6,22,1.00),(17,25,'2016-1-12',6,22,1.25),(22,15,'2016-1-12',6,22,0.25),(7,0,'2016-1-13',6,22,2.00),(8,0,'2016-1-13',6,22,2.00),(2,0,'2016-1-13',6,22,1.00),(1,0,'2016-1-13',6,22,1.00),(3,0,'2016-1-13',6,22,1.00),(4,0,'2016-1-13',6,22,1.00),(17,32,'2016-1-13',6,22,1.60),(5,0,'2016-1-13',4,14,5.00),(5,0,'2016-1-13',4,10,5.00),(7,0,'2016-1-13',4,10,2.00),(8,0,'2016-1-13',4,10,2.00),(2,0,'2016-1-13',4,10,1.00),(1,0,'2016-1-13',4,10,1.00),(3,0,'2016-1-13',4,10,1.00),(4,0,'2016-1-13',4,10,1.00),(22,120,'2016-1-12',4,13,2.00),(18,30,'2016-1-13',4,13,0.50),(7,0,'2016-1-13',4,13,2.00),(8,0,'2016-1-13',4,13,2.00),(9,0,'2016-1-13',4,13,2.00),(2,0,'2016-1-13',4,13,1.00),(1,0,'2016-1-13',4,13,1.00),(3,0,'2016-1-13',4,13,1.00),(4,0,'2016-1-13',4,13,1.00),(18,25,'2016-1-12',4,13,0.42),(5,0,'2016-1-12',3,5,5.00),(5,0,'2016-1-12',3,8,5.00),(5,0,'2016-1-13',3,6,5.00),(6,0,'2016-1-13',3,6,1.00),(7,0,'2016-1-13',3,6,2.00),(9,0,'2016-1-13',3,6,2.00),(7,0,'2016-1-13',3,9,2.00),(8,0,'2016-1-13',3,9,2.00),(3,0,'2016-1-13',3,9,1.00),(6,0,'2016-1-13',3,8,1.00),(18,30,'2016-1-13',15,61,0.50),(5,0,'2016-1-12',10,42,5.00),(6,0,'2016-1-12',10,42,1.00),(7,0,'2016-1-12',13,55,2.00),(8,0,'2016-1-12',13,55,2.00),(2,0,'2016-1-12',13,55,1.00),(4,0,'2016-1-12',13,55,1.00),(18,30,'2016-1-12',13,55,0.50),(6,0,'2016-1-13',12,48,1.00),(7,0,'2016-1-13',12,48,2.00),(8,0,'2016-1-13',12,48,2.00),(9,0,'2016-1-13',12,48,2.00),(4,0,'2016-1-13',12,48,1.00),(2,0,'2016-1-13',10,39,1.00),(1,0,'2016-1-13',10,39,1.00),(4,0,'2016-1-13',10,39,1.00),(31,30,'2016-1-13',10,39,1.00),(32,30,'2016-1-13',10,39,1.00),(5,0,'2016-1-13',10,39,5.00),(6,0,'2016-1-13',10,39,1.00),(7,0,'2016-1-13',10,39,2.00),(8,0,'2016-1-13',10,39,2.00),(9,0,'2016-1-13',10,39,2.00),(7,0,'2016-1-12',14,59,2.00),(4,0,'2016-1-13',14,59,1.00),(5,0,'2016-1-13',14,59,5.00),(7,0,'2016-1-13',14,59,2.00),(8,0,'2016-1-13',14,59,2.00),(9,0,'2016-1-13',14,59,2.00),(2,0,'2016-1-13',14,59,1.00),(1,0,'2016-1-13',14,59,1.00),(3,0,'2016-1-13',14,59,1.00);
/*!40000 ALTER TABLE `activityLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activityMetadata`
--

DROP TABLE IF EXISTS `activityMetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activityMetadata` (
  `id` int(11) NOT NULL,
  `Category` varchar(40) NOT NULL,
  `Activity` varchar(80) NOT NULL,
  `Points` int(11) NOT NULL,
  `Duration` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activityMetadata`
--

LOCK TABLES `activityMetadata` WRITE;
/*!40000 ALTER TABLE `activityMetadata` DISABLE KEYS */;
INSERT INTO `activityMetadata` VALUES (1,'Well-Being','Floss Teeth',1,0),(2,'Well-Being','7 or More Hours of Sleep',1,0),(3,'Well-Being','Less than 30 Mins of TV',1,0),(4,'Well-Being','No Smoking ',1,0),(5,'Consumption','5 servings Fruits & Vegetables (At Least 4 Veggie)',5,0),(6,'Consumption','Apple',1,0),(7,'Consumption','No fried foods',2,0),(8,'Consumption','No Soda',2,0),(9,'Consumption','No sugar',2,0),(10,'Physical Activity','Aerobics',3,60),(11,'Physical Activity','Basketball',3,60),(12,'Physical Activity','Calisthenics ',2,60),(13,'Physical Activity','Commuter Biking ',3,60),(14,'Physical Activity','Crossfit, P90X, Kettlebell, Boot Camp',4,60),(15,'Physical Activity','Gardening',1,30),(16,'Physical Activity','Golfing',1,60),(17,'Physical Activity','Jogging ',3,60),(18,'Physical Activity','Leisure Walking ',1,60),(19,'Physical Activity','Paddleboard ',2,60),(20,'Physical Activity','Power Yoga ',3,60),(21,'Physical Activity','Racquetball / Squash ',3,60),(22,'Physical Activity','Reading ',1,60),(23,'Physical Activity','Rockclimbing',2,60),(24,'Physical Activity','Rowing ',4,60),(25,'Physical Activity','Running (>6.5 MPH) ',4,60),(26,'Physical Activity','Soccer ',4,60),(27,'Physical Activity','Stairclimbing / Elliptical ',4,60),(28,'Physical Activity','Stretching ',1,60),(29,'Physical Activity','Tennis ',3,60),(30,'Physical Activity','Tour Biking',4,60),(31,'Physical Activity','Walking Fast (>3.5 MPH) ',2,60),(32,'Physical Activity','Weight Training',2,60),(33,'Physical Activity','Yoga / Pilates ',2,60),(34,'Physical Activity','Dancing ',2,60),(35,'Physical Activity','Ultimate Frisbee ',3,60),(36,'Physical Activity','Volleyball ',2,60),(37,'Physical Activity','Zumba',3,60),(38,'Physical Activity','Swimming ',4,60),(39,'Physical Activity','Baseball/Softball ',2,60),(40,'Physical Activity','Circus/Trampoline/Acrobatics',2,60),(41,'Physical Activity','Skating ',3,60),(42,'Physical Activity','Snowshoeing ',3,60),(43,'Physical Activity','Football/Rugby ',3,60),(44,'Physical Activity','Surfing ',2,60),(45,'Physical Activity','Martial Arts ',2,60),(46,'Physical Activity','Wii/Kinect ',2,60),(47,'Physical Activity','Snowboarding/Skiing',3,60),(48,'Physical Activity','Cricket',2,60),(49,'Physical Activity','Badminton',3,60);
/*!40000 ALTER TABLE `activityMetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboardMessage`
--

DROP TABLE IF EXISTS `dashboardMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboardMessage` (
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboardMessage`
--

LOCK TABLES `dashboardMessage` WRITE;
/*!40000 ALTER TABLE `dashboardMessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboardMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teamMetadata`
--

DROP TABLE IF EXISTS `teamMetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamMetadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamMetadata`
--

LOCK TABLES `teamMetadata` WRITE;
/*!40000 ALTER TABLE `teamMetadata` DISABLE KEYS */;
INSERT INTO `teamMetadata` VALUES (1,'test_team1'),(2,'test_team2'),(3,'Wolfpack'),(4,'We ARE the Champions'),(5,'2 Fast 2 Furious'),(6,'We R Poshfit'),(7,'Ermahgerd Werk'),(8,'Mission Slimpossible'),(9,'The Odd Father'),(10,'KALE\'in IT'),(11,'Victorious Secret'),(12,'Life\'s a beach!'),(13,'House of Carbs'),(14,'Triple Threat'),(15,'I AM GROOT');
/*!40000 ALTER TABLE `teamMetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userInfo`
--

DROP TABLE IF EXISTS `userInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userInfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `resetFlag` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `userInfo_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teamMetadata` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userInfo`
--

LOCK TABLES `userInfo` WRITE;
/*!40000 ALTER TABLE `userInfo` DISABLE KEYS */;
INSERT INTO `userInfo` VALUES (1,'test1@poshmark.com','jolly',1,0),(2,'test12@poshmark.com','password',1,1),(3,'test2@poshmark.com','password',2,1),(4,'test22@poshmark.com','password',2,1),(5,'amandap@poshmark.com','adeline1',3,0),(6,'freesia@poshmark.com','rafello27',3,0),(7,'lorraine@poshmark.com','velocity',3,0),(8,'natasha@poshmark.com','Poshmark1',3,0),(9,'leah@poshmark.com','all4jc',3,0),(10,'angela@poshmark.com','poshmark81',4,0),(11,'marisa@poshmark.com','Eb8An6Am3',4,0),(12,'courtney@poshmark.com','poNomnom03',4,0),(13,'wincy@poshmark.com','firewater',4,0),(14,'rebekah@poshmark.com','becky',4,0),(15,'karen@poshmark.com','ichigotux43',5,0),(16,'tasha@poshmark.com','sbikes94010',5,0),(17,'marium@poshmark.com','786at786',5,0),(18,'barbara@poshmark.com','Monkey24',5,0),(19,'eunice@poshmark.com','H3miK1m098',5,0),(20,'barkha@poshmark.com','!poshmark1',6,0),(21,'max@poshmark.com','Morris25',6,0),(22,'lian@poshmark.com','Spring2016',6,0),(23,'shirin@poshmark.com','password',6,1),(24,'gaurav@poshmark.com','qwerty',6,0),(25,'janet@poshmark.com','21417054',7,0),(26,'tresha@poshmark.com','S5uJUne5!',7,0),(27,'melanie@poshmark.com','melanie17',7,0),(28,'sarah@poshmark.com','Mangocat22',7,0),(29,'andrego@poshmark.com','F3i1n0a7l',8,0),(30,'kalpak@poshmark.com','welc0me1pf',8,0),(31,'thejaswi@poshmark.com','password',8,1),(32,'priya@poshmark.com','Yogavahini@08',8,0),(33,'ketan@poshmark.com','198522',8,0),(34,'kamal@poshmark.com','qwerty123',9,0),(35,'divya@poshmark.com','fitnesshigh',9,0),(36,'mukesh@poshmark.com','Mosaic1234',9,0),(37,'padma@poshmark.com','password',9,1),(38,'lauren@poshmark.com','password',10,1),(39,'amanda@poshmark.com','cheese2929',10,0),(40,'shazia@poshmark.com','Sfijaz1993',10,0),(41,'joanna@poshmark.com','joanna',10,0),(42,'adiel@poshmark.com','Music881',10,0),(43,'mithin@poshmark.com','alghelp3.0',11,0),(44,'venkatesh@poshmark.com','poshmark123',11,0),(45,'shrikanth@poshmark.com','poshmark',11,0),(46,'bhushan@poshmark.com','PoshmarkInc1.0',11,0),(47,'abhay@poshmark.com','a1b2c3d4e5',11,0),(48,'nikhil@poshmark.com','jettacar',12,0),(49,'anoop@poshmark.com','poshmark123',12,0),(50,'chaule@poshmark.com','chaup0sh',12,0),(51,'preethi@poshmark.com','poshfit',12,0),(52,'chetan@poshmark.com','passwd',12,0),(53,'zeng@poshmark.com','zwang1111',13,0),(54,'jenny@poshmark.com','Radiohead67',13,0),(55,'sathya@poshmark.com','G0shp0sh3141',13,0),(56,'yvonne@poshmark.com','renzuyoushi',13,0),(57,'megans@poshmark.com','Batman15',14,0),(58,'melinda@poshmark.com','Hemmick6',14,0),(59,'mai@poshmark.com','maiposhfit',14,0),(60,'nelly@poshmark.com','nelofar1987',15,0),(61,'caroline@poshmark.com','Apple123',15,0),(62,'michelle@Poshmark.com','password',15,1),(63,'jewelyn@poshmark.com','posh1350',15,0),(65,'esther@poshmark.com','password',15,0),(66,'laurenw@poshmark.com','patrinos',7,0),(67,'pooja@poshmark.com','password',13,1);
/*!40000 ALTER TABLE `userInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-13 19:03:21
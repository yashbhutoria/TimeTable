CREATE DATABASE  IF NOT EXISTS `tt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tt`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tt
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `3csb3`
--

DROP TABLE IF EXISTS `3csb3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `3csb3` (
  `slot` int(11) NOT NULL,
  `mon` varchar(10) DEFAULT NULL,
  `tue` varchar(10) DEFAULT NULL,
  `wed` varchar(10) DEFAULT NULL,
  `thu` varchar(10) DEFAULT NULL,
  `fri` varchar(10) DEFAULT NULL,
  `sat` varchar(10) DEFAULT NULL,
  `sun` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`slot`),
  CONSTRAINT `slot` FOREIGN KEY (`slot`) REFERENCES `timeslot` (`slotid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `3csb3`
--

LOCK TABLES `3csb3` WRITE;
/*!40000 ALTER TABLE `3csb3` DISABLE KEYS */;
INSERT INTO `3csb3` VALUES (0,'BRUNSPFXX','BRUNSPFXX','BRUNSPFXX','BRUNSPFXX','BRUNSPFXX','BRUNSPFXX','NNUNSPFXX'),(1,'10AF13XMC','03CF04XPR','05CF04XMC','07AF01CGS','09AF08AAJ','HSCF04XDL','NNUNSPFXX'),(2,'10AF13XMC','01CF04XNA','02CF04XAJ','07AF01CGS','09AF08AAJ','IBIBLABLB','NNUNSPFXX'),(3,'02AF15XAJ','05CF04XPR','04CF04XMC','07AF01CGS','09AF08AAJ','IBIBLABLB','NNUNSPFXX'),(4,'06CF04XMG','OLWL01XXX','01CF04XNA','05CF04XMC','CCCF05XMK','08AF07ATN','NNUNSPFXX'),(5,'03CF04XPR','04CF04XTN','06CF04XMG','03CF04XPR','02CF04XAJ','08AF07ATN','NNUNSPFXX'),(6,'FCUNSPFXX','02CF04XAJ','FCUNSPFXX','06CF04XMG','04CF04XTN','03AF14XPR','NNUNSPFXX'),(7,'FCUNSPFXX','NNUNSPFXX','FCUNSPFXX','NNUNSPFXX','01CF04XNA','NNUNSPFXX','NNUNSPFXX'),(8,'NNUNSPFXX','NNUNSPFXX','NNUNSPFXX','NNUNSPFXX','NNUNSPFXX','NNUNSPFXX','NNUNSPFXX');
/*!40000 ALTER TABLE `3csb3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `codefac` varchar(10) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  PRIMARY KEY (`codefac`),
  UNIQUE KEY `codefac_UNIQUE` (`codefac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to map faculty codes to names.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES ('AJ','Ankita Jiyani'),('DL','Lily Sharma'),('GS','Gitanjali Sharma'),('LB','Lal Babu Purbey'),('MC','Mukesh Chand'),('MG','Manoj Gupta'),('MK','Manish Kumar Sharma'),('NA','Nawaid Anjum'),('PR','Prachi Sharma'),('TN','Sita Gupta'),('XX','---');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `subcode` varchar(10) NOT NULL,
  `subname` varchar(200) NOT NULL,
  PRIMARY KEY (`subcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Subject Codes mapped to Subject Names';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('01','Computer Networks'),('02','Design and Analysis of Algorithms'),('03','Theory of Computation'),('04','Computer Graphics'),('05','Embedded System Design'),('06','Artificial Intelligence'),('07','Java Lab'),('08','Computer Graphics Lab'),('09','DAA Lab'),('10','Embedded Lab'),('BR','Lunch Break'),('CC','Campus Connect'),('FC','FACE'),('HS','Humanaties'),('IB','IBM Lab'),('NN','No Class'),('OL','Online Exam');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeslot`
--

DROP TABLE IF EXISTS `timeslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeslot` (
  `slotid` int(11) NOT NULL,
  `from` time NOT NULL,
  `till` time NOT NULL,
  PRIMARY KEY (`slotid`),
  UNIQUE KEY `from_UNIQUE` (`from`),
  UNIQUE KEY `till_UNIQUE` (`till`),
  UNIQUE KEY `slotid_UNIQUE` (`slotid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeslot`
--

LOCK TABLES `timeslot` WRITE;
/*!40000 ALTER TABLE `timeslot` DISABLE KEYS */;
INSERT INTO `timeslot` VALUES (0,'11:30:00','12:09:00'),(1,'08:30:00','09:29:00'),(2,'09:30:00','10:29:00'),(3,'10:30:00','11:29:00'),(4,'12:10:00','13:09:00'),(5,'13:10:00','14:09:00'),(6,'14:10:00','14:59:00'),(7,'15:00:00','16:00:00'),(8,'16:01:00','23:59:00');
/*!40000 ALTER TABLE `timeslot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-22 20:55:21

CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ocean_it
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `career_informations`
--

DROP TABLE IF EXISTS `career_informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `career_informations` (
  `cnum` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `affiliation` varchar(45) DEFAULT NULL,
  `major` varchar(45) DEFAULT NULL,
  `degree` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cnum`),
  FOREIGN KEY (`mid`) REFERENCES members (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `career_informations`
--

LOCK TABLES `career_informations` WRITE;
INSERT INTO `career_informations` VALUES (1,1,'한국해양대','해운및해상보험','경영학박사');
INSERT INTO `career_informations` VALUES (2,1,'중앙대','물류정보','경영학석사');
INSERT INTO `career_informations` VALUES (3,1,'명지대','중어중문학과','학사');

INSERT INTO `career_informations` VALUES (4,2,'North Carolina State Univ.','전기, 컴퓨터공학','공학박사');
INSERT INTO `career_informations` VALUES (5,2,'Fairlgh Dickinson Univ.','전자공학','공학석사');
INSERT INTO `career_informations` VALUES (6,2,' 숭실대','전자공학과','학사');

INSERT INTO `career_informations` VALUES (7,3,'중앙대','정보통신','박사');

INSERT INTO `career_informations` VALUES (8,4,'한국과학기술원','전기및전자공학','박사');

INSERT INTO `career_informations` VALUES (9,5,'호서대','정보통신공학','박사');

INSERT INTO `career_informations` VALUES (10,6,'호서대','정보통신공학','호서대 박사');

INSERT INTO `career_informations` VALUES (11,7,'호서대','정보통신공학','석사');

INSERT INTO `career_informations` VALUES (12,8,'호서대','정보통신공학','석사');

INSERT INTO `career_informations` VALUES (13,9,'S.V. University','Computer Applications','Bachelor of Computer Applications');
INSERT INTO `career_informations` VALUES (14,9,'VIT University','Computer Science and Engineering','Master of Technology');
INSERT INTO `career_informations` VALUES (15,9,'Kookmin University','Business IT','Doctor of Philosophy');

INSERT INTO `career_informations` VALUES (16,10,'호서대','정보통신공학','학사');
INSERT INTO `career_informations` VALUES (17,10,'호서대','정보통신공학','석사');
INSERT INTO `career_informations` VALUES (18,10,'호서대','정보통신공학','박사');

UNLOCK TABLES;

-- Dump completed on 2019-06-01 20:47:18

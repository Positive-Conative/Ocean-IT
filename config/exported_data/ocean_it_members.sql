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
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `members` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name_ko` varchar(45) DEFAULT NULL,
  `name_en` varchar(45) DEFAULT NULL,
  `affiliation` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `interphone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `profile_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */; 
INSERT INTO `members` VALUES (1,'고학림','HakLim Ko','정보통신공학부','교수','041-540-5691','hlko@hoseo.edu','고학림.png');
INSERT INTO `members` VALUES (2,'임태호','Tae-Ho Im','정보통신공학부','조교수','041-540-9642','taehoim@hoseo.edu','임태호.jpg');
INSERT INTO `members` VALUES (3,'조용호','Yong-Ho Cho','정보통신공학부','조교수','041-540-9565','ykcho@hoseo.edu','조용호.jpg');
INSERT INTO `members` VALUES (4,'김계원','Gye-Won Kim','정보통신공학부 ','조교수','041-540-9565','kwkim@hoseo.edu','김계원.jpg');
INSERT INTO `members` VALUES (5,'박래호','RaeHo Park','해양IT융합기술연구소','연구위원','- 041-540-5945','- kamrosoo4900@daum.net','박래호.png');
INSERT INTO `members` VALUES (6,'김민상','Min-Sang Kim','해양IT융합기술연구소','연구교수','041-540-9565','minsang@hoseo.edu','김민상.jpg');
INSERT INTO `members` VALUES (7,'차민혁','Min-Hyeok Cha','해양IT융합기술연구소','연구원','041-540-9565','dwmh86@hoseo.edu','차민혁.jpg');
INSERT INTO `members` VALUES (8,'난디만달람모함','Mohan Krishna Varma Nandimandalam','해양IT융합기술연구소','연구원','041-540-9565','drmohankvn@hoseo.edu','난디만달람모함.jpg');
INSERT INTO `members` VALUES (9,'이효찬','Hyo-Chan Lee','해양IT융합기술연구소','연구원','041-540-9565','lhc_104@naver.com','이효찬.jpg');
INSERT INTO `members` VALUES (10,'김세연','Se-Yeon Kim','해양IT융합기술연구소','연구원','041-540-9565','seyeon92@hoseo.edu','김세연.jpg');







/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-01 20:47:18

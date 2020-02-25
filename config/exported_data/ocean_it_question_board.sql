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
-- Table structure for table `question_board`
--

DROP TABLE IF EXISTS `question_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question_board` (
  `qid` int(11) NOT NULL auto_increment,
  `writer` varchar(15) DEFAULT NULL,
  `title` varchar(15) DEFAULT NULL,
  `contents` varchar(555) DEFAULT NULL,
  `date` varchar(40) NOT NULL,
  `hits` int(11) DEFAULT NULL,
  `coments`  varchar(555) DEFAULT NULL,
  `coments_date` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_fields`
--

LOCK TABLES `question_board` WRITE;
/*!40000 ALTER TABLE `question_board` DISABLE KEYS */;
INSERT INTO `question_board` VALUES 
('1','작성자 1','제목1','Node.js는 확장성 있는 네트워크 애플리케이션(특히 서버 사이드) 개발에 사용되는 소프트웨어 플랫폼이다. ','2019-07-28',10,'노드의 특성을 알아봅시다.',NULL),
('2','Test','제목2 인데요','내용2',now(),11, NULL,NULL),
('3','Jack sung','제목3','내용3',now(),12, NULL,NULL),
('4','작성자 4','제목4','내용4',now(),14, NULL,NULL),
('5','작성자 5','제목5','내용5',now(),15, NULL,NULL),
('6','작성자 6','제목6','내용6',now(),16, NULL,NULL);
/*!40000 ALTER TABLE `question_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-01 20:47:19

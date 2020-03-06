CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
 SET NAMES utf8 ;

DROP TABLE IF EXISTS `nations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nations` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `nation_ko` varchar(45) DEFAULT NULL,
  `nation_en` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `nations` DISABLE KEYS */;
INSERT INTO `nations` VALUES (1,'대한민국','Republic of Korea'),(2,'미국','United States of America');
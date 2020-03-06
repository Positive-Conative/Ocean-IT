CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
 SET NAMES utf8 ;

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `institution` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `institution_ko` varchar(45) DEFAULT NULL,
  `institution_en` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
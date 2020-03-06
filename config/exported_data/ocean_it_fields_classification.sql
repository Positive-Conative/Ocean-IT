CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
 SET NAMES utf8 ;

DROP TABLE IF EXISTS `fields_classification`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fields_classification` (
  `fcid` int(11) NOT NULL AUTO_INCREMENT,
  `classification_ko` varchar(45) DEFAULT NULL,
  `classification_en` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fcid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40000 ALTER TABLE `fields_classification` DISABLE KEYS */;
INSERT INTO `fields_classification` VALUES (1,'위탁','Consignment'),(2,'협동','Cooperation'),(3,'용역','Service Contract'),(4,'공동','Association'),(5,'주관','supervision');
/*!40000 ALTER TABLE `fields_classification` ENABLE KEYS */;


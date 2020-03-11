CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
SET NAMES utf8 ;
DROP TABLE IF EXISTS `research_fields_link`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `research_fields_link` (
  `prikey` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prikey`),
  FOREIGN KEY (`rid`) REFERENCES research_fields (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `research_fields_link` VALUES (1,1,'네이버로 이동','https://www.naver.com/');
INSERT INTO `research_fields_link` VALUES (2,1,'다음으로 이동','https://www.google.com/');
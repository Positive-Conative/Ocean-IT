CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
SET NAMES utf8 ;
DROP TABLE IF EXISTS `gallery`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `gallery` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `title_ko` varchar(100) NOT NULL,
  `title_en` varchar(100) NOT NULL,
  `image_src` varchar(100) NOT NULL, /*이미지 고정 : 가로 960px, 세로 480px*/
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `gallery` VALUES (1,'제목이 들어갑니다','a 들어갑니다','pic00.jpg');
INSERT INTO `gallery` VALUES (2,'제목이 들어갑니다','a 들어갑니다','pic01.jpg/pic02.jpg/pic00.jpg');
INSERT INTO `gallery` VALUES (3,'제목이 들어갑니다','a 들어갑니다','pic02.jpg/pic04.jpg');
INSERT INTO `gallery` VALUES (4,'제목이 들어갑니다','a 들어갑니다','pic03.jpg/pic06.jpg/pic02.jpg');
USE `ocean_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
DROP TABLE IF EXISTS `members`;
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
INSERT INTO `members` VALUES (1,'고학림','HakLim Ko','정보통신공학부','참여교수','041-540-5691','hlko@hoseo.edu','고학림.png');
INSERT INTO `members` VALUES (2,'임태호','Tae-Ho Im','정보통신공학부','참여교수','041-540-9642','taehoim@hoseo.edu','임태호.jpg');
INSERT INTO `members` VALUES (3,'조용호','Yong-Ho Cho','정보통신공학부','참여교수','041-540-9565','ykcho@hoseo.edu','조용호.jpg');
INSERT INTO `members` VALUES (4,'김계원','Gye-Won Kim','정보통신공학부 ','참여교수','041-540-9565','kwkim@hoseo.edu','김계원.jpg');
INSERT INTO `members` VALUES (5,'박래호','RaeHo Park','해양IT융합기술연구소','전임교수 및 전임연구원','- 041-540-5945','- kamrosoo4900@daum.net','noimg.jpg');
INSERT INTO `members` VALUES (6,'김민상','Min-Sang Kim','해양IT융합기술연구소','전임교수 및 전임연구원','041-540-9565','minsang@hoseo.edu','김민상.jpg');
INSERT INTO `members` VALUES (7,'차민혁','Min-Hyeok Cha','해양IT융합기술연구소','전임교수 및 전임연구원','041-540-9565','dwmh86@hoseo.edu','차민혁.jpg');
INSERT INTO `members` VALUES (8,'난디만달람모함','Mohan Krishna Varma Nandimandalam','해양IT융합기술연구소','전임교수 및 전임연구원','041-540-9565','drmohankvn@hoseo.edu','난디만달람모함.jpg');
INSERT INTO `members` VALUES (9,'이효찬','Hyo-Chan Lee','해양IT융합기술연구소','전임교수 및 전임연구원','041-540-9565','lhc_104@naver.com','이효찬.jpg');
INSERT INTO `members` VALUES (10,'김세연','Se-Yeon Kim','해양IT융합기술연구소','전임교수 및 전임연구원','041-540-9565','seyeon92@hoseo.edu','김세연.jpg');
INSERT INTO `members` VALUES (11,'정해지','2','해양IT융합기술연구소','석사과정','041-540-9565','ㄷㄷu','정해지.jpg');
INSERT INTO `members` VALUES (12,'고만재','3','해양IT융합기술연구소','박사과정','041-540-9565','ㄱ','고만재.jpg');



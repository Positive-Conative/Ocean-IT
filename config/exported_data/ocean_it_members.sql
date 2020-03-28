USE `ocean_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name_ko` varchar(200) DEFAULT NULL,
  `name_en` varchar(200) DEFAULT NULL,
  `affiliation` varchar(200) DEFAULT NULL,
  
  `position` varchar(200) DEFAULT NULL,
  `interphone` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profile_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `members` VALUES (1,'고학림','Hak-Lim Ko','정보통신공학부','참여교수','041-540-5691','hlko@hoseo.edu','고학림.png');
INSERT INTO `members` VALUES (2,'임태호','Tae-Ho Im','정보통신공학부','참여교수','041-540-9642','taehoim@hoseo.edu','임태호.jpg');
INSERT INTO `members` VALUES (3,'조용호','Yong-Ho Cho','정보통신공학부','참여교수','041-540-9565','ykcho@hoseo.edu','조용호.jpg');
INSERT INTO `members` VALUES (4,'김계원','Gye-Won Kim','정보통신공학부 ','참여교수','041-540-9565','kwkim@hoseo.edu','김계원.jpg');
INSERT INTO `members` VALUES (5,'박래호','RaeHo Park','해양IT융합기술연구소','전임연구교수 및 전임연구원','- 041-540-5945','- kamrosoo4900@daum.net','noimg.jpg');
INSERT INTO `members` VALUES (6,'김민상','Min-Sang Kim','해양IT융합기술연구소','전임연구교수 및 전임연구원','041-540-9565','minsang@hoseo.edu','김민상.jpg');
INSERT INTO `members` VALUES (7,'차민혁','Min-Hyeok Cha','해양IT융합기술연구소','전임연구교수 및 전임연구원','041-540-9565','dwmh86@hoseo.edu','차민혁.jpg');
INSERT INTO `members` VALUES (8,'난디만달람모함','Mohan Krishna Varma Nandimandalam','해양IT융합기술연구소','전임연구교수 및 전임연구원','041-540-9565','drmohankvn@hoseo.edu','난디만달람모함.jpg');
INSERT INTO `members` VALUES (9,'이효찬','Hyo-Chan Lee','해양IT융합기술연구소','전임연구교수 및 전임연구원','041-540-9565','lhc_104@naver.com','이효찬.jpg');
INSERT INTO `members` VALUES (10,'칸 티 투 투이','CAN THI THU THUY','해양IT융합기술연구소','연구원','041-540-5965','kangchiwa@gmail.com','칸티투투이.jpg');
INSERT INTO `members` VALUES (11,'김세연','Se-Yeon Kim','해양IT융합기술연구소','전임연구교수 및 전임연구원','041-540-9565','seyeon92@hoseo.edu','김세연.jpg');



INSERT INTO `members` VALUES (12,'김준호','Joonho Kim','정보통신공학','박사과정','-','katsurablue@naver.com','김준호.jpg'); 
INSERT INTO `members` VALUES (13,'정태건','Tae Geon Jeong','정보통신공학','박사과정','-','a40402@naver.com','정태건.jpg'); 
INSERT INTO `members` VALUES (14,'채광영','Chae Gwang-young','정보통신공학','박사과정','-','rhkddud0822@naver.com','채광영.jpg'); 
INSERT INTO `members` VALUES (15,'뤄징신','Luo Jingxin','정보통신공학','박사과정','-','binglin0716@163.com','뤄징신.jpg'); 
INSERT INTO `members` VALUES (16,'류평','Liu Pyeong','정보통신공학','박사과정','-','kunliupeng@163.com','류평.jpg'); 
INSERT INTO `members` VALUES (17,'쑨화쿠이','Shunhuakui','정보통신공학','박사과정','-','sunhuakui@163.com','쑨화쿠이.jpg'); 
INSERT INTO `members` VALUES (18,'펑쥔잉','Pengjun Ying','정보통신공학','박사과정','-','zwpfjy@163.com','펑쥔잉.jpg'); 


INSERT INTO `members` VALUES (19,'고만재','Ko Man-jae','정보통신공학','석사과정','-','akswoakstp2@naver.com','고만재.jpg');
INSERT INTO `members` VALUES (20,'손세우','Son Sewoo','정보통신공학','석사과정','-','tpdn333@gmail.com','손세우.jpg'); 
INSERT INTO `members` VALUES (21,'송현학','Song Hyunhak','정보통신공학','석사과정','-','rainy_930@naver.com','송현학.jpg'); 
INSERT INTO `members` VALUES (22,'유양','Yooyang','정보통신공학','석사과정','-','ly960401@naver.com','유양.jpg'); 
INSERT INTO `members` VALUES (23,'유호동','Yoo Ho Dong','정보통신공학','석사과정','-','liuhaodong1314@naver.com','유호동.jpg'); 
INSERT INTO `members` VALUES (24,'이성주','Sungjoo Lee','정보통신공학','석사과정','-','sjlee3416@naver.com','이성주.jpg'); 
INSERT INTO `members` VALUES (25,'전호석','Jeon Ho-Seok','정보통신공학','석사과정','-','wjsghtjr33@naver.com','전호석.jpg'); 
INSERT INTO `members` VALUES (26,'조천치','Jocheonchi','정보통신공학','석사과정','-','zhaotianchi123@naver.com','조천치.jpg'); 


INSERT INTO `members` VALUES (27,'김도훈','Do-hoon Kim','해양융합기술공학','석사과정','-','ehgns320@naver.com','김도훈.jpg');
INSERT INTO `members` VALUES (28,'정해지','Jeong Hae Ji','해양융합기술공학','석사과정','-','liuhaodong1314@naver.com','정해지.jpg'); 
INSERT INTO `members` VALUES (29,'왕비','Wang Bee','해양융합기술공학','석사과정','-','wf765969609@gmail.com','왕비.jpg'); 
INSERT INTO `members` VALUES (30,'장요','Jang yo','해양융합기술공학','석사과정','-','zhang5163365@gmail.com','장요.jpg'); 
INSERT INTO `members` VALUES (31,'전원','Jun Won ','해양융합기술공학','석사과정','-','ty241666@naver.com','전원.jpg'); 
INSERT INTO `members` VALUES (32,'필웅후','Phil Woong-Hoo','해양융합기술공학','석사과정','-','bixionghou960410@naver.com','필웅후.jpg'); 


















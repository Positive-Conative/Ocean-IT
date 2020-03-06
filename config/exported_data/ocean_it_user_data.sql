CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
 SET NAMES utf8 ;

DROP TABLE IF EXISTS `user_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_data` (
  `uid` varchar(15) NOT NULL,
  `upw` varchar(15) DEFAULT NULL,
  `uname` varchar(15) DEFAULT NULL,
  `uadr` varchar(55) DEFAULT NULL,
  `unum` varchar(20) DEFAULT NULL,
  `uemail` varchar(20) DEFAULT NULL,
  `ucpt` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `user_data` VALUES ('admin','hoseo','관리자','충남 아산시 배방읍 호서대학교',0411234567,'adminhoseo@hoseo.edu',1),('test1','test','테스터','경기도 평택시 세교동 보성아파트',01012345678,'kyj970513@naver.com',NULL),('asdf','asdf','테스터','경기도 평택시 세교동 보성아파트',01012345678,'kyj970513@naver.com',1);

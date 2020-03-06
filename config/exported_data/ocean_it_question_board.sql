CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
 SET NAMES utf8 ;

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
/*!40000 ALTER TABLE `question_board` DISABLE KEYS */;
INSERT INTO `question_board` VALUES 
('1','작성자 1','제목1','Node.js는 확장성 있는 네트워크 애플리케이션(특히 서버 사이드) 개발에 사용되는 소프트웨어 플랫폼이다. ','2019-07-28',10,'노드의 특성을 알아봅시다.',NULL),
('2','Test','제목2 인데요','내용2',now(),11, NULL,NULL),
('3','Jack sung','제목3','내용3',now(),12, NULL,NULL),
('4','작성자 4','제목4','내용4',now(),14, NULL,NULL),
('5','작성자 5','제목5','내용5',now(),15, NULL,NULL),
('6','작성자 6','제목6','내용6',now(),16, NULL,NULL);

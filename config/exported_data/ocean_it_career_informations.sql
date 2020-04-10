CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
 SET NAMES utf8 ;
DROP TABLE IF EXISTS `career_informations`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `career_informations` (
  `cnum` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(100) NOT NULL,
  `affiliation` varchar(100) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cnum`),
  FOREIGN KEY (`mid`) REFERENCES members (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `career_informations` VALUES (4,1,'North Carolina State Univ.','전기, 컴퓨터공학','공학박사');
INSERT INTO `career_informations` VALUES (5,1,'Fairlegh Dickinson Univ.','전자공학','공학석사');
INSERT INTO `career_informations` VALUES (6,1,' 숭실대','전자공학과','공학사');

INSERT INTO `career_informations` VALUES (7,2,'중앙대','정보통신공학과','공학박사');
INSERT INTO `career_informations` VALUES (8,2,'중앙대','디지털통신정공','공학석사');
INSERT INTO `career_informations` VALUES (9,2,'중앙대','전자전기공학정공','공학사');


INSERT INTO `career_informations` VALUES (10,3,'한국과학기술원','전기및전자공학','공박사');
INSERT INTO `career_informations` VALUES (11,3,'한국과학기술원','전기및전자공학','공학석사');
INSERT INTO `career_informations` VALUES (12,3,'한국과학기술원','전기및전자공학','공학박사');


INSERT INTO `career_informations` VALUES (13,4,'호서대','배열신호처리','박사');
INSERT INTO `career_informations` VALUES (14,4,'호서대','배열신호처리','공학석사');
INSERT INTO `career_informations` VALUES (15,4,'호서대','정보통신공학과','공학사');


INSERT INTO `career_informations` VALUES (16,5,'아주대학교','정보통신학','석사');
INSERT INTO `career_informations` VALUES (17,5,'동국대학교','외교국방국','석사');
INSERT INTO `career_informations` VALUES (18,5,'육군사관학교','전사학과','학사');


INSERT INTO `career_informations` VALUES (19,6,'호서대','정보통신공학','박사');
INSERT INTO `career_informations` VALUES (20,6,'호서대','정보통신공학','석사');
INSERT INTO `career_informations` VALUES (21,6,'호서대','정보통신공학','학사');


INSERT INTO `career_informations` VALUES (22,7,'호서대','정보통신공학','석사');
INSERT INTO `career_informations` VALUES (23,7,'호서대','정보통신공학','학사');


INSERT INTO `career_informations` VALUES (24,8,'Kookmin University','Business IT','박사');
INSERT INTO `career_informations` VALUES (25,8,'VIT University','Computer Science and Engineering','석사');
INSERT INTO `career_informations` VALUES (26,8,'S.V.University','Business IT','학사');


INSERT INTO `career_informations` VALUES (27,9,'호서대','정보통신공학','박사');
INSERT INTO `career_informations` VALUES (28,9,'호서대','정보통신공학','석사');
INSERT INTO `career_informations` VALUES (29,9,'호서대','정보통신공학','학사');



INSERT INTO `career_informations` VALUES (30,10,'VNU-UNIVERSITY of Education ','Teacher Education in Physics  ','학사');
INSERT INTO `career_informations` VALUES (31,10, 'VNU-UNIVERSITY of Science   ','Theoretical Physics and Mathematical Physics','석사');
INSERT INTO `career_informations` VALUES (32,10,'이화여대 ','Condensed Matter Physics 	','박사');
INSERT INTO `career_informations` VALUES (33,10,'호서대','Display Engineering','박사');


INSERT INTO `career_informations` VALUES (34,11,'호서대','정보통신공학','학사');


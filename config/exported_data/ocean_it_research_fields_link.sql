CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
SET NAMES utf8 ;
DROP TABLE IF EXISTS `research_fields_link`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `research_fields_link` (
  `prikey` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`prikey`),
  FOREIGN KEY (`rid`) REFERENCES research_fields (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `research_fields_link` VALUES (1,1,'<실해역 시험 영상>','https://youtu.be/evIU1vIvOWo/');
INSERT INTO `research_fields_link` VALUES (2,1,'◈ 관련 보도자료. 1.바다속에서도 데이터 송수신..지진.해일 감지','https://youtu.be/oS2UQ_jV8hI');
INSERT INTO `research_fields_link` VALUES (3,1,'◈ 관련 보도자료. 2.세계 첫 바닷속 통신 기지국 공개…재난ㆍ국방 관리 / 연합뉴스TV (YonhapnewsTV)','https://youtu.be/A6hcrSBouFg');
INSERT INTO `research_fields_link` VALUES (4,1,'◈ 관련 보도자료. 3.바닷속에서 문자·사진 전송…수중 통신망 기술 개발 박차','https://youtu.be/mBmhdWwnk4A');
INSERT INTO `research_fields_link` VALUES (5,1,'◈ 관련 보도자료. 4.바닷속에서도 문자·사진 전송...수중 통신망 등장 / YTN',' https://youtu.be/nTjMun-IBDY');
INSERT INTO `research_fields_link` VALUES (6,1,'◈ 관련 보도자료. 5. 물 속에서도 접속 중입니다…수중통신 현실화','https://youtu.be/QYrKMTXE4GI');
INSERT INTO `research_fields_link` VALUES (7,1,' ◈ 관련 보도자료.6. 서울경제TV 바다 속 빅데이터 한 눈에… 수중통신망 등장','https://youtu.be/oxmvWLnjUOg');



INSERT INTO `research_fields_link` VALUES (8,1,'<뉴스>/ 1.SK Telecom and Hoseo University Develop Base Station-Based Underwater Telecommunication Network ','http://english.etnews.com/20170601200001');
INSERT INTO `research_fields_link` VALUES (9,1,'<뉴스>/ 2.SKT plans world first underwater IoT network ','http://www.koreaherald.com/view.php?ud=20170531000612');
INSERT INTO `research_fields_link` VALUES (10,1,'<뉴스>/ 3. World First ‘Underwater Communication Base Station’ Revealed ','https://en.yna.co.kr/view/MYH20170601013400345');
INSERT INTO `research_fields_link` VALUES (11,1,'<뉴스>/ 4. SK Tel Succeeds in Texting Messages, Sending Pictures Underwater First in the World ','http://www.businesskorea.co.kr/news/articleView.html?idxno=18257');
INSERT INTO `research_fields_link` VALUES (12,1,'<뉴스>/ 5. 세계 최초 기지국 기반 수중통신기술 개발 눈앞에 ','http://www.hdhy.co.kr/news/articleView.html?idxno=7085');
INSERT INTO `research_fields_link` VALUES (13,1,'<뉴스>/ 6. SKT·호서대, 해양 데이터 낚는 수중통신 기술 공개 ','http://www.bloter.net/archives/281154');








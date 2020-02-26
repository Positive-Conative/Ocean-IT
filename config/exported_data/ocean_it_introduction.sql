CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
SET NAMES utf8 ;

DROP TABLE IF EXISTS `introduction`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `introduction` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) NOT NULL,
  `contents_ko` varchar(100),
  `contents_en` varchar(100),
  `etc_ko` varchar(30),
  `etc_en` varchar(30),
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `introduction` WRITE;
INSERT INTO `introduction` VALUES (1,'2019.10','2019년 초연결·고신뢰 산업지능 기술 세미나 ','내용영어','세미나 개최','etc영어');
INSERT INTO `introduction` VALUES (2,'2019.7','중국, HanClouds MOU 체결','내용영어','MOU','etc영어');
INSERT INTO `introduction` VALUES (3,'2019.7','인도네시아, 반둥공과대학교 MOU 체결','내용영어','MOU','etc영어');
INSERT INTO `introduction` VALUES (4,'2019.7','인도네시아, BPPT 쓰나미 경보 시스템 연구소장과 공동 연구 방안 논의 및 향후 협력을 위한 MOD 체결 ','내용영어','MOU','etc영어');
INSERT INTO `introduction` VALUES (5,'2018.12','충남도 표창패 수여','내용영어','표창','etc영어');
INSERT INTO `introduction` VALUES (6,'2018.10','제82차 국제전기기술위원회 총회(2018 IEC 부산총회) 전시 참여','내용영어','국제표준화 총회 수중통신 기술 ','etc영어');
INSERT INTO `introduction` VALUES (7,'2018.3','"분산형 수중관측 제어망의 활용 및 협력방안"워크샵(한국해양과학기술원 동해연구소)','내용영어','워크샵 개최','etc영어');
INSERT INTO `introduction` VALUES (8,'2018.1','제주 해양관련 기관 세미나(수산 양식 환경 모니터링 협력방안 등(KIOST 제주국제해양과학연구 지원센터，(주)해천마)','내용영어','세미나 개최','etc영어');
INSERT INTO `introduction` VALUES (9,'2017.12','제1회 해양수산 전문가대회(서울，COEX 3층 Hall E)','내용영어','포럼 후원','etc영어');
INSERT INTO `introduction` VALUES (10,'2017.9','전문가 초청 포럼(국가 에너지 정책 방향)','내용영어','포럼 주최','etc영어');
INSERT INTO `introduction` VALUES (11,'2017.8','(주) 캠비코리아 MOU 체결','내용영어','MOU','etc영어');
INSERT INTO `introduction` VALUES (12,'2017.4','2017 한국해양과학기술협의회 공동학술대회 특별세미나(부산)','내용영어','학술대회 후원','etc영어');
INSERT INTO `introduction` VALUES (13,'2017.2','충남도 MOU 체결','내용영어','MOU','etc영어');
INSERT INTO `introduction` VALUES (14,'2016.11','"해양IT융합기술의 현황 및 전망" 워크샵(전남대학교 여수캠퍼스)','내용영어','포럼 발표','etc영어');
INSERT INTO `introduction` VALUES (15,'2016.4','협력 업체들과 MOU (SK텔레콤, (주)산엔지어링 외 6업체)','내용영어','MOU','etc영어');
INSERT INTO `introduction` VALUES (16,'2016.3','제3회 해양과학기술정책 포럼(해양수산분야 IoT기술 적용 방안)','내용영어','포럼 주최','etc영어');
INSERT INTO `introduction` VALUES (17,'2015.6','제2회 해양과학기술정책 포럼(수산양식과 IoT 기술)','내용영어','포럼 주최','etc영어');
INSERT INTO `introduction` VALUES (18,'2015.05','대형 국책과제(분산형 수중관측제어망 개발) 사업 선정','내용영어','국책연구개발 사업','etc영어');
INSERT INTO `introduction` VALUES (19,'2014.12','제1회 해양과학기술정책포럼(해양보전 및 복원과 ICT 기술)','내용영어','포럼 주최','etc영어');
INSERT INTO `introduction` VALUES (20,'2014.10','해양수산부 ‘분산형 수중관측제어망 개발’ 기획연구 주관 기관 선정','내용영어','국책연구개발 사업','etc영어');
INSERT INTO `introduction` VALUES (21,'2014.1','호서대학교 교책연구소로 승인','내용영어','교책연구소 승인','etc영어');
INSERT INTO `introduction` VALUES (22,'2008.9','해양IT융합기술연구소 설립','내용영어','연구소설립','etc영어');

UNLOCK TABLES;
CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
SET NAMES utf8 ;

UNLOCK TABLES;
DROP TABLE IF EXISTS `introduction`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `introduction` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(25) NOT NULL,
  `contents_ko` varchar(250),
  `contents_en` varchar(250),
  `etc_ko` varchar(100),
  `etc_en` varchar(100),
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `introduction` VALUES (1,'2019.11','2019 잠수함 과학기술 발전 세미나“수중데이터 통신과 분산형 수중관측 제어망 개발 현황” 특별 강연 ','2019 submarine science and technology seminar Special Lecture on Underwater Data Communication and Distributed Underwater Observation Control Network Development','특별강연','Special Lecture');
INSERT INTO `introduction` VALUES (2,'2019.10','2019년 초연결·고신뢰 산업지능 기술 세미나 ','Hyperconnected, Highly Reliable Industrial Intelligence Technology Seminar in 2019','세미나 개최','Seminar held');
INSERT INTO `introduction` VALUES (3,'2019.8','UN 쓰나미 모니터링 관련 전문가 회의에서 ‘분산형 수중 관측 제어망’의 쓰나미 조기 경보망 활용방안 발표','UN Tsunami Monitoring Experts Announce the Use of Tsunami Early Warning Networks','발표','Presentation');
INSERT INTO `introduction` VALUES (4,'2019.7','중국, HanClouds MOU 체결','Signed MOU with HanClouds in China','MOU','MOU');
INSERT INTO `introduction` VALUES (5,'2019.7','인도네시아, 반둥공과대학교 MOU 체결','Signed MOU with Bandung University of Technology','MOU','MOU');
INSERT INTO `introduction` VALUES (6,'2019.7','인도네시아, BPPT 쓰나미 경보 시스템 연구소장과 공동 연구 방안 논의 및 향후 협력을 위한 MOD 체결 ','Indonesia discusses joint research plan with BPPT Tsunami Alarm System Research Center and concludes MOU for future cooperation','MOU','MOU');
INSERT INTO `introduction` VALUES (7,'2019.5','IEC/ISO JTC1/SC41 국제 표준 제안 “Base-station based underwater wireless acoustic network – overview and requirements, IEC/ISO JTC1/SC41 국제 표준 제안 “Base-station based underwater wireless acoustic network – overview and requirements',' ','국제표준 제안','International standard proposal');
INSERT INTO `introduction` VALUES (8,'2018.12','충남도 표창패 수여','Awarded a citation from Chungnam-do','표창','Official approval');
INSERT INTO `introduction` VALUES (9,'2018.10','제82차 국제전기기술위원회 총회(2018 IEC 부산총회) 전시 참여','Participated in the 82nd general meeting of the International Electrotechnical Commission (2018 IEC Busan General Assembly)','국제표준화 총회 수중통신 기술 ','International Standardization Assembly Underwater Communication Technology Exhibition');
INSERT INTO `introduction` VALUES (10,'2018.3','"분산형 수중관측 제어망의 활용 및 협력방안"워크샵(한국해양과학기술원 동해연구소)','Use and Cooperation of Distributed Underwater Observation Control Network Workshop (Korea Maritime Institute of Science and Technology)','워크샵 개최','Workshop Held');
INSERT INTO `introduction` VALUES (11,'2018.1','제주 해양관련 기관 세미나(수산 양식 환경 모니터링 협력방안 등(KIOST 제주국제해양과학연구 지원센터，(주)해천마)','Jeju marine related organization seminar (KoSung Aquaculture Environmental Monitoring Cooperation Plan, etc. (KIOST Jeju International Marine Science Research Support Center, Haecheon-Ma)','세미나 개최','Seminar held');
INSERT INTO `introduction` VALUES (12,'2017.12','제1회 해양수산 전문가대회(서울，COEX 3층 Hall E)','The 1st Marine Fisheries Professional Conference (COEX 3F Hall E)','포럼 후원','Forum Sponsor');
INSERT INTO `introduction` VALUES (13,'2017.9','전문가 초청 포럼(국가 에너지 정책 방향)','Expert Invitation Forum (National Energy Policy Direction)','포럼 주최','Forum Hosted');
INSERT INTO `introduction` VALUES (14,'2017.8','(주) 캠비코리아 MOU 체결','Signed MOU with Camby Korea','MOU','MOU');
INSERT INTO `introduction` VALUES (15,'2017.4','‘4차 산업혁명 시대, 수중통신 기술의 현재와 미래’세미나 개최(서울, SKT 타워)','Held the seminar The Present and Future of Underwater Communication Technology in the Era of the Fourth Industrial Revolution (Seoul, SKT Tower)','세미나 개최','Seminar held');
INSERT INTO `introduction` VALUES (16,'2017.4','2017 한국해양과학기술협의회 공동학술대회 특별세미나(부산)','Special seminar at Korea Maritime Science and Technology Council (Busan)','학술대회 후원','Conference sponsorship');
INSERT INTO `introduction` VALUES (17,'2017.2','충남도 MOU 체결','Signed MOU with Chungnam-do','MOU','MOU');
INSERT INTO `introduction` VALUES (18,'2016.11','"해양IT융합기술의 현황 및 전망" 워크샵(전남대학교 여수캠퍼스)','Status and Prospect of Marine IT Convergence Technology Workshop (Chonnam National University Yeosu Campus)','포럼 발표','Forum presentation');
INSERT INTO `introduction` VALUES (19,'2016.4','협력 업체들과 MOU (SK텔레콤, (주)산엔지어링 외 6업체)','Partners and MOU (SK Telecom, San Engineering Co., Ltd. and 6 other companies)','MOU','MOU');
INSERT INTO `introduction` VALUES (20,'2016.3','제3회 해양과학기술정책 포럼(해양수산분야 IoT기술 적용 방안)','3rd Marine Science and Technology Policy Forum (Application of IoT Technology for Marine Fisheries)','포럼 주최','Forum Hosted');
INSERT INTO `introduction` VALUES (21,'2015.6','제2회 해양과학기술정책 포럼(수산양식과 IoT 기술)','2nd Marine Science and Technology Policy Forum (Aquaculture and IoT Technology)','포럼 주최','Forum Hosted');
INSERT INTO `introduction` VALUES (22,'2015.05','대형 국책과제(분산형 수중관측제어망 개발) 사업 선정','Selected as a large national project (development of distributed underwater observation control network)','국책연구개발 사업','National R & D Project');
INSERT INTO `introduction` VALUES (23,'2014.12','제1회 해양과학기술정책포럼(해양보전 및 복원과 ICT 기술)','1st Marine Science and Technology Policy Forum (Marine Conservation and Restoration and ICT Technology)','포럼 주최','Forum Hosted');
INSERT INTO `introduction` VALUES (24,'2014.10','해양수산부 ‘분산형 수중관측제어망 개발’ 기획연구 주관 기관 선정','Ministry of Oceans and Fisheries Selected as an agency for planning and research','국책연구개발 사업','Forum Hosted');
INSERT INTO `introduction` VALUES (25,'2014.1','호서대학교 교책연구소로 승인','Selected as a planning and research institute by Ministry of Maritime Affairs & Fisheries, Development of Distributed Underwater Observation Control Network','교책연구소 승인','National R & D Project');
INSERT INTO `introduction` VALUES (26,'2008.9','해양IT융합기술연구소 설립','Approved as Hoseo University Research Institute','연구소설립','Approved Research Institute');

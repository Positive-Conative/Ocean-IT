CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
SET NAMES utf8 ;

DROP TABLE IF EXISTS `academic_activities`;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `academic_activities` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `classification_ko` varchar(20) NOT NULL,
  `classification_en` varchar(20) NOT NULL,
  `name_ko` varchar(100),
  `name_en` varchar(100),
  `place_ko` varchar(100),
  `place_en` varchar(100),
  `date` varchar(100),
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `academic_activities` VALUES (1,'포럼','영어분류','제3회 해양과학기술정책 포럼(해양수산분야 IoT기술 적용 방안)','영어이름','호서대학교 국제회의실','영어장소','2016.03.24');
INSERT INTO `academic_activities` VALUES (2,'포럼','영어분류','제2회 해양과학기술정책 포럼(수산양식과 IoT 기술)','영어이름','호서대학교 국제회의실','영어장소','2015.06.04');
INSERT INTO `academic_activities` VALUES (3,'포럼','영어분류','제1회 해양과학기술정책포럼(해양보전 및 복원과 ICT 기술)','영어이름','호서대학교 국제회의실','영어장소','2014.12.10');
INSERT INTO `academic_activities` VALUES (4,'세미나','영어분류','제82차 국제전기기술위원회 총회(2018 IEC 부산총회)','영어이름','부산, BEXCO','영어장소','2019.10.18. ~ 2019.10.27');
INSERT INTO `academic_activities` VALUES (5,'세미나','영어분류','제1회 해양수산 전문가대회','영어이름','서울， COEX 3층 Hall E','영어장소','2017.12.15.');
INSERT INTO `academic_activities` VALUES (6,'세미나','영어분류','전문가 초청 세미나(국가에너지 인력양성사업 아카이브 현황)','영어이름','호서대 제1공학관 209호','영어장소','2017.11.24.');
INSERT INTO `academic_activities` VALUES (7,'세미나','영어분류','전문가 초청 포럼(국가 에너지 정책 방향)','영어이름','호서대학교 제1공학관 209호','영어장소','2017.09.13');
INSERT INTO `academic_activities` VALUES (8,'세미나','영어분류','2017 한국해양과학기술협의회 공동학술대회 특별세미나','영어이름','부산， BEXCO','영어장소','2017.04.19');
INSERT INTO `academic_activities` VALUES (9,'워크샵','영어분류','"분산형 수중관측 제어망의 활용 및 협력방안"워크샵','영어이름','한국해양과학기술원 동해연구소','영어장소','2018.03.30.~ 2018.03.31');
INSERT INTO `academic_activities` VALUES (10,'워크샵','영어분류','제주 해양관련 기관 워크샵(수산 양식 환경 모니터링 협력방안 등)','영어이름','KIOST 제주국제해양과학연구 지원센터， (주)해천마','영어장소','2018.01.09. ~ 2018.01.11');
INSERT INTO `academic_activities` VALUES (11,'워크샵','영어분류','"해양IT융합기술의 현황 및 전망" 워크샵','영어이름','전남대학교 여수캠퍼스','영어장소','2016.11.18');

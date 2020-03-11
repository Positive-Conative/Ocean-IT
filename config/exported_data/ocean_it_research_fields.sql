USE `ocean_it`;
SET NAMES utf8 ;
DROP TABLE IF EXISTS `research_fields`;
SET character_set_client = utf8mb4 ;

CREATE TABLE `research_fields` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `research_name_ko` varchar(45) DEFAULT NULL, /*한글과제명*/
  `research_name_en` varchar(45) DEFAULT NULL, /*영문과제명*/
  `business_name_ko` varchar(45) DEFAULT NULL,  /*사업명(한글)*/
  `business_name_en` varchar(45) DEFAULT NULL,  /*사업명(영문)*/
  `department_name_ko` varchar(45) DEFAULT NULL,  /*부처(한글)*/
  `department_name_en` varchar(45) DEFAULT NULL,  /*부처(영문)*/
  `subjectivity_organization_ko` varchar(45) DEFAULT NULL,  /*주관기관(한글)*/
  `subjectivity_organization_en` varchar(45) DEFAULT NULL,  /*주관기관(영문)*/
  `support_organization_ko` varchar(45) DEFAULT NULL,  /*지원기관(한글)*/
  `support_organization_en` varchar(45) DEFAULT NULL,  /*지원기관(영문)*/
  `participation_organization_ko` varchar(45) DEFAULT NULL,  /*참여기관(한글)*/
  `participation_organization_en` varchar(45) DEFAULT NULL,  /*참여기관(영문)*/
  `research_purpose_ko` varchar(1000) DEFAULT NULL,  /*연구목표(한글)*/
  `research_purpose_en` varchar(1000) DEFAULT NULL,  /*연구목표(영문)*/
  `research_contents_ko` varchar(1000) DEFAULT NULL,  /*연구내용(한글)*/
  `research_contents_en` varchar(1000) DEFAULT NULL,  /*연구내용(영문)*/
  `research_expected_ko` varchar(1000) DEFAULT NULL,  /*기대성과(한글)*/
  `research_expected_en` varchar(1000) DEFAULT NULL,  /*기대성과(영문)*/
  `date_start` varchar(45) DEFAULT NULL,  /*시작날짜*/
  `date_end` varchar(45) DEFAULT NULL,  /*종료날짜*/
  `research_charge_ko` varchar(45) DEFAULT NULL,  /*연구책임자(한글)*/
  `research_charge_en` varchar(45) DEFAULT NULL,  /*연구책임자(영문)*/
  `research_charge_belong_ko` varchar(45) DEFAULT NULL,  /*소속(한글)*/
  `research_charge_belong_en` varchar(45) DEFAULT NULL,  /*소속(영문)*/
  `field_picture` varchar(1500),  /*사진갯수, 설명글갯수, 소제목, 설명글, 사진1.확장자 ...사진에 절대 /가 들어가면 안됨 */
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `research_fields` VALUES 
(1,'한글과제명','영문과제명','한글사업명','영문사업명','한글부처','영어부처'
  ,'한글주관기관','영문주관기관','한글지원기관','영문지원기관','한글참여기관','영문참여기관'
  ,'한글연구목표','영문연구목표','한글연구내용','영문연구내용','한글기대성과','영문기대성과'
  ,'2020-03-01','2020-03-06','연구책임자(한글)','연구책임자(영문)','한글소속','영문소속'
  , "1/0/메인이미지/분산형 수중관측 제어망 개발1.jpg 
  /*1/2/수중 통신 알고리즘 개발/기지국 기반 수중 저전력 통신 알고리즘 개발/수중 채널 환경에 따라 적응적으로 변화하는 링크 적응용 수중 통신 알고리즘 개발/분산형 수중관측 제어망 개발2.jpg
  /*2/0/수중 통신 모뎀 보드 설계 및 제작(좌:수중센서노드, \n 우:수중통신모뎀)/분산형 수중관측 제어망 개발3.jpg/분산형 수중관측 제어망 개발4.jpg");
  
INSERT INTO `research_fields` VALUES 
(2,'한글과제명','영문과제명','한글사업명','영문사업명','한글부처','영어부처'
  ,'한글주관기관','영문주관기관','한글지원기관','영문지원기관','한글참여기관','영문참여기관'
  ,'한글연구목표','영문연구목표','한글연구내용','영문연구내용','한글기대성과','영문기대성과'
  ,'2020-03-01','2021-03-06','연구책임자(한글)','연구책임자(영문)','한글소속','영문소속'
  , "1/0/메인이미지/분산형 수중관측 제어망 개발1.jpg 
  /*1/2/수중 통신 알고리즘 개발/기지국 기반 수중 저전력 통신 알고리즘 개발/수중 채널 환경에 따라 적응적으로 변화하는 링크 적응용 수중 통신 알고리즘 개발/분산형 수중관측 제어망 개발2.jpg
  /*2/0/수중 통신 모뎀 보드 설계 및 제작(좌:수중센서노드, \n 우:수중통신모뎀)/분산형 수중관측 제어망 개발3.jpg/분산형 수중관측 제어망 개발4.jpg");
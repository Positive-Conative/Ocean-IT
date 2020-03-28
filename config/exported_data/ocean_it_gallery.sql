CREATE DATABASE  IF NOT EXISTS `ocean_it` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ocean_it`;
SET NAMES utf8 ;
DROP TABLE IF EXISTS `gallery`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `gallery` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `title_ko` varchar(300) NOT NULL,
  `title_en` varchar(300) NOT NULL,
  `image_src` varchar(300) NOT NULL, /*이미지 고정 : 가로 960px, 세로 480px*/
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `gallery` VALUES (1,'2019.11.잠수함 과학기술 발전 세미나','2019.11.Submarine Science and Technology Development Seminar','메인사진1.jpg');
INSERT INTO `gallery` VALUES (2,'2019.10. 초연결·고신뢰 산업지능 기술 세미나','2019.10.Connected and highly reliable industrial intelligence technology seminar in early','메인사진2.jpg/2.jpg/3.jpg/4.jpg/5.jpg');
INSERT INTO `gallery` VALUES (3,'2018.10. 제82차 국제전기기술위원회 총회 2018 IEC 부산총회','2018.10. 82nd International Electrotechnical Commission General Assembly 2018 IEC Busan General Assembly','메인사진3.jpg/6.jpg/7.jpg/8.jpg/9.jpg/10.jpg/11.jpg/12.jpg/13.jpg/14.jpg/15.jpg');
INSERT INTO `gallery` VALUES (4,'2018.3 2018년도 해양IT융합기술연구소 워크샵','2018.3. 2018 Marine IT Convergence Technology Research Institute Workshop','메인사진4.jpg/16.jpg/17.jpg/18.jpg/19.jpg/20.jpg');
INSERT INTO `gallery` VALUES (5,'2018.1 2018년도 호서대학교 해양IT융합기술연구소 워크샵','2018.1 2018Hoseo University Marine IT Convergence Technology Research Institute Workshop','메인사진5.jpg/21.jpg/22.jpg/23.jpg/24.jpg/25.jpg');
INSERT INTO `gallery` VALUES (6,'2017.12. 제1회 해양수산 전문가대회','2017.12. The 1st Marine Fisheries Expert Conference','메인사진6.jpg/26.jpg/27.jpg');
INSERT INTO `gallery` VALUES (7,'2017.11. 에너지기술평가원 이성주 실장 초청 세미나','2017.11. Invited Seminar by Director Seong-Ju Lee, Korea Energy Technology Institute','메인사진7.jpg/28.jpg/29.jpg');
INSERT INTO `gallery` VALUES (8,'2017.4. ‘4차 산업혁명 시대, 수중통신 기술의 현재와 미래’세미나 개최','2017.4. Seminar held on “The 4th Industrial Revolution, Present and Future of Underwater Communication Technology”','메인사진8.jpg/30.jpg/31.jpg/32.jpg/33.jpg/34.jpg');
INSERT INTO `gallery` VALUES (9,'2017.2. 충청남도-호서대학교 업무협약식',' 2017.2. Chungcheongnam-do-Hoseo University Business Agreement','메인사진9.jpg/35.jpg/36.jpg');
INSERT INTO `gallery` VALUES (10,'2016.3. 제3회 해양과학기술정책 포럼',' 2016.3. The 3rd Marine Science and Technology Policy Forum','메인사진10.jpg/37.jpg/38.jpg/39.jpg/40.jpg/41.jpg');
INSERT INTO `gallery` VALUES (11,'2015.6. 제2회 해양과학기술정책 포럼',' 2015.6. The 2nd Marine Science and Technology Policy Forum','메인사진11.jpg/42.jpg');
INSERT INTO `gallery` VALUES (12,'2014.12. 제1회 해양과학기술정책 포럼',' 2014.12. 1st Marine Science and Technology Policy Forum','메인사진12.jpg/43.jpg/44.jpg/45.jpg/46.jpg');









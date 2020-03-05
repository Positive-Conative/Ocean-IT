USE `ocean_it`;
UNLOCK TABLES;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ocean_it
-- ------------------------------------------------------
-- Server version	8.0.15
-- utf8mb4_bin / utf8mb4_unicode_ci
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `research_fields`
--

DROP TABLE IF EXISTS `research_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `research_results` (
  `rrid` int(11) NOT NULL AUTO_INCREMENT,
  `classification_ko` varchar(45) DEFAULT NULL, /*분류*/
  `classification_en` varchar(45) DEFAULT NULL,
  `result_name_ko` varchar(100) DEFAULT NULL, /*논문명()*/
  `result_name_en` varchar(100) DEFAULT NULL,
  `academic_journal_ko` varchar(45) DEFAULT NULL, /*학회/학술지명*/
  `academic_journal_en` varchar(45) DEFAULT NULL,
  `writers_ko` varchar(45) DEFAULT NULL, /*저자*/
  `writers_en` varchar(45) DEFAULT NULL,
  `announce_media_ko` varchar(45) DEFAULT NULL, /*발표매체*/
  `announce_media_en` varchar(45) DEFAULT NULL,
  `country_ko` varchar(45) DEFAULT NULL, /*국가*/
  `country_en` varchar(45) DEFAULT NULL,
  `relation_task_ko` varchar(45) DEFAULT NULL, /*관련 과제*/
  `relation_task_en` varchar(45) DEFAULT NULL,
  `abstract_ko` varchar(45) DEFAULT NULL, /*초록*//*P_Num(번호) */
  `abstract_en` varchar(45) DEFAULT NULL,
  `p_date` varchar(45) DEFAULT NULL, /*날짜*/
  PRIMARY KEY (`rrid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `research_results`
--

LOCK TABLES `research_results` WRITE;
/*!40000 ALTER TABLE `research_results` DISABLE KEYS */;
INSERT INTO `research_results` VALUES


(1,'논문','Thesis','수중 채널 환경에서 센서 간의 간격에 의한 수신 신호의 상관 특성 분석','Performance Analysis of the spatial Correction for Underwater Channel Environment','한국음향학회지 (제 31권 2호, pp.107-113)','Journal of the Acoustical Society of Korea (Vol.31 No. 2, pp.107-113)','고학림, 이승구, 김민상, 조대영, 김길용, 박병훈, 박종원, 임용곤',' Hak Lim Ko, Lee Seung Goo,Kim Min sang,Cho Dae-Young, Kim, Kil-Yong, Park Byung Hoon, Park, Jong-Won, Lim, Yong-Gon', '-',  '-','대한민국','South Korea','-', '-', '비SCI', '-','2012'),

(2, '논문', 'Thesis','수중 채널 환경에서 측정 데이터를 이용한 빔형성기가 결합된 다이버시티의 상관 계수 분석','Analysis on the Correlation Coefficient for the Diversity Technique Combined with Beamforming Using Measurement Data in Underwater Channel Environments','한국통신학회지(제 37권 12호, pp.1023~1030)','Korean Institute of Communication Sciences (Vol. 37, no.12, pp.1023 ~ 1030) ',' 김민상, 조대영, 박종원, 임용곤, 고학림','Kim Min-Sang, Cho Dae-Young, Park Jong-Won, Lim Yong-Kon, Ko Hak-Lim', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2012'),

(3, '논문', 'Thesis','이동통신 중계기용 스마트 안테나 구조설계','The Design of Smart Antenna Structures for RF Repeater','한국신호처리시스템학회지 (제 14권 2호, pp.110-116)','Korean Institute of Signal Processing and Systems (Vol.14 No. 2, pp.110-116)',' 조대영, 김계원, 이승구, 김민상, 박병훈, 고학림','Cho Dae-Young, Kim Kye-Won, Lee Seung-Goo ,Kim Min-Sang, Kim Kil-Yung, Park Byeong-Hoon', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2013'),

(4, '논문', 'Thesis','측정 데이터를 이용한 빔 형성기의 적용에 의한 수중 채널 환경에서의 상관 대역폭 분석','On the Performance Analysis of Coherent Bandwidth in Underwater Channel Environments Using Beamforming Technologies Based on the Use of Measurement Data','한국신호처리시스템학회지(제 15권 4호. pp.162-168)','Korean Institute of Signal Processing and Systems (Vol.15 No. 4, pp.162-168)',' 김민상, 조대영, 김계원, 이태석, 박종원, 임용곤, 고학림','Kim, Min-Sang, Cho, Dae-Young, Kim, Kye-Won, Lee, Tae-Seok, Park, Jong-Won , Lim, Yong-Gon, Ko, Hak-Lim', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2014'),

(5, '논문', 'Thesis','수중 채널 환경에서 전송량 증대를 위한 다중반송파 시스템에 관한 연구','A Study on the Multi-Carrier System for Throughput Enhancement in Underwater Channel Environments','한국통신학회논문집(제40권 6호, pp.1193~1199)','Journal of the Korean Institute of Communication Sciences (Vol.40 No.6, pp.1193 ~ 1199)',' 김민상, 조대영, 고학림, 홍대기, 김승근, 임태호','Min-sang Kim, Dae-young Cho  ,Hak-lim Ko, Dae-Ki Hong  ,Seung-geun Kim, Tae-ho Im', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2015'),

(6, '논문', 'Thesis','10KHz 반송파를 사용한 서해안 수중 채널환경 분석','Underwater Channel Environment Analysis Using 10Khz Carrier Frequency at the Shore of West Sea','한국통신학회 논문지 (제 41권 1호. pp.132~139)','The Journal of Korea Information and Communications Society (Vol. 41, No. 1, pp.132 ~ 139)',' 김민상, 고학림, 김계원, 이태석, 임태호','Min-sang Kim, Hak-lim Ko ,Kye-won Kim ,Tae-seok Lee ,Tae-ho Im', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2016'),

(7, '논문', 'Thesis','선박간 ad-hoc 통신 시스템에서 육상국용 적응 섹터시스템의 성능 분석','Performance Analysis of an Adaptive Sector System for Terrestrial Station in Ad-hoc Communication System Between Vessels','한국통신학회논문지 (제 41권 2호, pp.263~268)','The Journal of Korea Information and Communications Society (Vol. 41, No. 2, pp.263 ~ 268)',' 이형범, 김승근, 김준호, 김민상, 고학림, 임태호','Hyung-beom Lee, Seung-geun Kim, Jun-ho Kim, Min-sang Kim, Hak-lim Ko, Tae-ho Im', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2016'),
 
(8, '논문', 'Thesis','수중 채널환경에서 FMT-OFDM 시스템의 성능 향상을 위한 연구','A Study on the Improvement of Performance FMT-OFDM System in Underwater Channel Environment','한국통신학회논문지 (제 41권 3호, pp.365~370)','Korea Institute of Communication Sciences',' 김민상, 고학림, 김승근, 조대영, 임태호','Kim Min Sang, Park Jong Won, Lim Yong Gon, Ko Hak Lim, Tae-ho Im', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2016'),

(9, '논문', 'Thesis','이기종 네트워크를 위한 다중 셀 검출 기법','Multi-Cell Detection Techniques for Heterogeneous Networks','한국통신학회논문지(제 41권 4호, pp.395~403)','Korean Institute of Communication Sciences (Vol. 41, No. 4, pp.395 ~ 403)','조용호, 고학림, 임태호','Yongho Cho, Hak-Lim Ko, Tae Ho Im,', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2016'),

(10, '논문', 'Thesis','수중음향통신을 위한 물리계층 기술','Physical Layer Technology for Underwater Acoustic Communication','한국통신학회지 (정보와통신)(제 33권 8호, pp.63~70)','Korean Institute of Communication Sciences (Information and Communication) (Vol. 33, No. 8, pp.63 ~ 70)','임태호, 고학림','Taeho Im, Hak Lim Ko', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2016'),

(11, '논문', 'Thesis','해중지중저장 CO2 누출감시시스템의 국외 동향 및 시사점','Overseas Trends and Implications of Underwater Underground Storage CO2 Leak Monitoring Systems','한국해양정책학회지 (제1권 제1호, pp.177~186)','Korean Society for Maritime Policy Studies (Vol. I No. 1, pp.177 ~ 186)','조용갑, 임태호, 임현택, 고학림','Yong Kap Cho, Tae Ho Lim, Hyun Taek Lim, Hak Lim Ko', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2016'),

(12, '논문', 'Thesis','위상 배열 안테나를 이용한 저출력의 레이더 개발','Development of Low Power Radar Using Phased Array Antenna','한국통신학회논문지(제 21권 5호, pp.913~920)','The Journal of Korea Information and Communications Society (Vol. 21, No. 5, pp.913 ~ 920)','조대영, 김정환, 이명원, 이주형, 윤원상, 임태호, 고학림','Daeyoung Cho, Kim Jung-hwan, Lee Myung-won, Lee Joo-hyung, Yoon Won-sang, Lim Tae-ho, Ko Hak-Lim', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2017'),

(13, '논문', 'Thesis','해양 VHF 대역 데이터 교환 시스템을 위한 동기부 설계','Synchronous Design for Offshore VHF Band Data Exchange System','한국통신학회논문지(제 42권 12호, pp.2282~2284)','The Journal of Korea Information and Communications Society (Vol. 42, No. 12, pp.2282 ~ 2284)','조용호, 김승근, 임용곤, 고학림','Yong Ho Cho, Seung Geun Kim, Yong Gon Lim, Hak Lim Ko', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2017'),

(14, '논문', 'Thesis','서해 수중 환경에서 다른 파일럿 간격을 가진 직교 주파수 분할 다중화 시스템의 성능 분석','Performance Analysis of Orthogonal Frequency Division Multiplexing Systems with Different Pilot Intervals in the West Sea Underwater Environment','한국통신학회논문지(제 42권 12호, pp.2248~2254)','The Journal of Korea Information and Communications Society (Vol. 42, No. 12, pp.2248 ~ 2254)','조용호, 김준호, 고학림','Yongho Cho, Junho Kim, Hak Lim Ko ', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2017'),

(15, '논문', 'Thesis','수중기지국 기반 수중음파통신 기술과 활용 분야','Underwater base station-based hydroacoustic communication technology and applications','전자공학회지(제 45권 5호, pp.24-31)','Journal of the Institute of Electronics and Information Engineers, Vol. 45, No. 5, pp.24-31','임태호','Tae Ho Im', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2018'),

(16, '비SCI', 'Thesis','압축 센싱 기반 FMCW 레이다 검출기','Compression sensing based FMCW radar detector','한국통신학회논문지(제 43권 5호, pp.866~869)','Korean Institute of Communication Sciences (Vol. 43, No. 5, pp.866 ~ 869)','조용호, 조대영, 고학림','Yongho Cho, Daeyoung Cho, Hak Lim Ko', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2018'),

(17, '논문', 'Thesis','서해 천해역에서 수온 변화에 따른 채널 환경 분석','Channel Environment Analysis of Water Temperature Variation in the West Sea','한국통신학회논문지(제 43권 7호, pp.1191~1196)','Korean Institute of Communication Sciences (Vol. 43, No. 7, pp.1191 ~ 1196)','김길용, 김계원, 김민상, 정태건, 고학림','Gil Yong Kim, Kye Won Kim, Min Sang Kim, Tae Gun Jeong, Hak Lim Ko', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2018'),
 
(18, '논문', 'Thesis','서해 실해역에서 수중 채널 변화에 따른 OFDM 기반수중 음향 통신 시스템의 성능 분석 연구','Performance Analysis of OFDM Based Underwater Acoustic Communication System According to the Change of Underwater Channel in Real Sea Area','한국통신학회논문지(제 43권 10호, pp.1654~1663)','The Journal of Korea Information and Communications Society (Vol. 43, No. 10, pp.1654 ~ 1663)','조용호, 이태석, 고학림','Yongho Cho, Taeseok Lee, Hak Lim Ko', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2018'),
 
(19, '논문', 'Thesis','UCMAC: A Cooperative MAC Protocol for Underwater Wireless Sensor Networks ','UCMAC: A Cooperative MAC Protocol for Underwater Wireless Sensor Networks','SENSOR','SENSOR',' 김희원, 임태호, 조호신','Hee-won Kim, Tae Ho Im, Ho-Shin Cho', '-', '-','대한민국','South Korea','-', '-', 'SCI', '-','2018'),

(20, '논문', 'Thesis','A Simple Frequency-Domain Negative Acknowledgment Feedback for Automatic Repeat on request Underwater Acoustic Networks','A Simple Frequency-Domain Negative Acknowledgment Feedback for Automatic Repeat on request Underwater Acoustic Networks','IEEE JOURNAL OF OCEANIC ENGINEERING (Vol. 44, No. 1))',' IEEE JOURNAL OF OCEANIC ENGINEERING (Vol. 44, No. 1))','Andrea Petroni, Hak-Lim Ko, Taeho Im, Yong-Ho Cho, Stefano Pergoloni, Gaetano Scarano, Roberto Cusani, Mauro Biagi','Andrea Petroni, 고학림, 임태호, 조용호, Stefano Pergoloni, Gaetano Scarano, Roberto Cusani, Mauro Biagi ', '-', '-','대한민국','South Korea','-', '-', 'SCI', '-','2019'),

(21, '논문', 'Thesis','건물의 전역적 및 지역적 특성을 고려한 딥러닝 기반 건물 검출 및 인식 강화 방법에 관한 연구','A Study on Deep Learning-based Building Detection and Recognition Enhancement Considering Global and Regional Characteristics of Buildings','한국정보통신학회논문지','Korean Institute of Information and Communication Sciences','이효찬, 문대철, 박인학, 임태호','Hyochan Lee, Daecheol Moon, Inhak Park, Taeho Lim', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2019'),

(22, '논문', 'Thesis','Cell Search Techniques for Underwater Acoustic Cellular Systems','Cell Search Techniques for Underwater Acoustic Cellular Systems',' IEEE Access (Vol. 7, pp.106019-106033)','IEEE Access (Vol. 7, pp.106019-106033)','MUHAMMAD ASIM, ROTHNA PEC, TAE HO IM, YONG SOO CHO','MUHAMMAD ASIM, ROTHNA PEC,TAE HO IM, YONG SOO CHO ', '-', '-','대한민국','South Korea','-', '-', 'SCI', '-','2019'),

(23, '논문', 'Thesis','Enhanced DFT-Based Channel Estimator for Leakage Effect Mitigation in OFDM Systems','Enhanced DFT-Based Channel Estimator for Leakage Effect Mitigation in OFDM Systems ','IEEE Communications Letters(제 23권 5호, pp.875-879)','IEEE Communication Letter (Vol. 23, No. 5, pp.875-879)',' 조용호, 손혁민 ',' Yong-Ho Cho, Hyukmin Son', '-', '-','대한민국','South Korea','-', '-', 'SCI', '-','2019'),

(24, '논문', 'Thesis','수중 채널 환경에서 OFDM 및 CDMA 통신 방식별 성능 분석','Performance Analysis of OFDM and CDMA Communication Methods in Underwater Channel Environment','한국음향학회지 (제 38권 1호, pp.30~38)','The Journal of the Acoustical Society of Korea (Vol. 38, No. 1, pp.30 ~ 38)','김길용, 김민상, 고학림, 임태호','Gil Yong Kim, Min Sang Kim, Hak Lim Ko, Tae Ho Im ', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2019'),

(25, '논문', 'Thesis','Secrecy Outage Performance Analysis forCooperative NOMA Over Nakagami-m Channel','Secrecy Outage Performance Analysis forCooperative NOMA Over Nakagami-m Channel','IEEE Access (pp.79866~79876)','IEEE Access (pp.79866~79876)','CHAO YU, HAK-LIM K, XIN PENG1, WENWU XIE','CHAO YU, HAK-LIM K, XIN PENG1, WENWU XIE', '-', '-','대한민국','South Korea','-', '-', 'SCI', '-','2019'),

(26, '논문', 'Thesis','수중 OFDM 통신 환경에서 심층신경망을 이용한 채널 보상 기법','Channel Compensation Technique Using Deep Neural Networks in Underwater OFDM Communication Environments','한국통신학회논문지(제44권 8호, pp.1450~1459)','The Journal of Korea Information and Communications Society (Vol. 44, No. 8, pp.1450 ~ 1459)','송태영, 김용관, 고학림','Taeyoung Song, Yonggwan Kim, Hak Lim Ko ', '-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2019'),

(27, '논문', 'Thesis',' Jammer-Aided Secure Communications for Cooperative NOMA Systems ','Jammer-Aided Secure Communications for Cooperative NOMA Systems','IEEE Communications Letters(제 23권 11호, pp.1935-1939)','IEEE Communications Letters (Vol. 23, No. 11, pp.1935-1939)','Chao Yu, Hak-Lim Ko, Xin Peng, Wenwu Xie, Peng Zhu','Chao Yu, Hak-Lim Ko, Xin Peng, Wenwu Xie, Peng Zhu', '-', '-','대한민국','South Korea','-', '-', 'SCI', '-','2019'),

(28, '논문', 'Thesis','Local Compact Binary Count based Nonparametric Background Modeling for Foreground Detection in Dynamic Scenes','Local Compact Binary Count based Nonparametric Background Modeling for Foreground Detection in Dynamic Scenes','IEEE Access(제7권, pp.92329~92340)','IEEE Access (Vol. 7, pp.92329 ~ 92340)','WEI HE, YONG K-WAN KIM, HAK-LIM KO, JIANHUI WU, WUJING LI, BING TU','WEI HE, YONG K-WAN KIM, HAK-LIM KO, JIANHUI WU, WUJING LI, BING TU', '-', '-','대한민국','South Korea','-', '-', 'SCI', '-','2019'),

(29, '논문', 'Thesis','Spatiotemporal Local Compact Binary Pattern for Background Subtraction in Complex Scenes','Spatiotemporal Local Compact Binary Pattern for Background Subtraction in Complex Scenes','멀티미디어 도구 및 응용','Multimedia Tools and Applications','Wei He, Hak-Lim Ko, Yong Kwan Kim, Jianhui Wu, Guoyun Zhang, Qi Qi1, Bing Tu, Xianfeng Ou','Wei He, Hak-Lim Ko, Yong Kwan Kim, Jianhui Wu, Guoyun Zhang, Qi Qi1, Bing Tu, Xianfeng Ou ', '-', '-','대한민국','South Korea','-', '-', 'SCI', '-','2019'),

(30, '논문', 'Thesis','반복 전송 다이버시티 기법에 따른 OFDM 기반 수중 음향 통신 시스템의 실해역 성능 분석','Real-World Performance Analysis of OFDM-based Underwater Acoustic Communication System Based on Iterative Transmit Diversity Technique','한국정보통신학회논문지(제 23권 11호, pp.1434~1442','The Journal of Korea Information and Communications Society (Vol.23 No. 11, pp.1434 ~ 1442','채광영, 고학림, 김민상, 조용호, 임태호','Kwang-Young Chae, Gohak Lim, Min-Sang Kim, Yong-Ho Cho, Tae-Ho Lim ', '-', '-','대한민국','South Korea','-', '-', 'SCI', '-','2019'),

(31, '논문', 'Thesis','서해 실해역에서 CSS 기반 저전력 수중 통신 시스템의 성능 분석에 대한 연구','A Study on the Performance Analysis of CSS-based Low power Underwater Communication System in the Real Sea Area','한국통신학회논문지(제45권 2호, pp.344-354)','Korean Institute of Communication Sciences (Vol.45 No. 2, pp.344-354)','이태석. 김준호, 고학림, 조용호','Lee Tae-seok. Joonho Kim, Hak-Lim Ko, Yongho Cho','-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2020'),

(32, '논문', 'Thesis','남해 실해역 시험 기반 수중음향채널 경로손실에 관한 연구','A Study on the Path Loss of Underwater Acoustic Channel Based on the Real Sea Area Test','한국정보통신학회논문지 (2월 예정)','Korean Institute of Information and Communication Sciences','김민상, 이태석, 조용호, 임태호, 고학림','Kim Min-sang, Lee Tae-seok, Yongho Cho, Im Tae-ho, Hak-Lim Ko ','-', '-','대한민국','South Korea','-', '-', '비SCI', '-','2020'),




(33, '특허','Patent','병렬 탐색기를 이용한 스마트 안테나 시스템',' Smart Antenna System Using Parallel Searcher ','-','-',
' 고학림, ',' Hak-Lim Ko ','-', '- ',' 대한민국 ',' South Korea','10-0278543', '-', '등록 ', 'Register', '2000.10.20'),

(34, '특허','Patent','이동 통신 시스템의 복수 사용자 간섭 제거 장치','Multi-User Interference Cancellation Device in Mobile Communication System','-','-','이종헌, 이상연, 고학림 ',' Lee Jong Heon, Lee Sang Yeon, Hak-Lim Ko ','-', '- ','대한민국','South Korea  ','10-0372913 ','-',  '등록 ', 'Register','2003.02.06'),

(35, '특허','Patent','애드혹 망에서 소규모 망 구성 시 서버 설정방법','How to set up server when configuring small network in ad hoc network ','-','-',' 고학림, 고정길 ','Hak-Lim Ko, Jungil-Ko','-', '- ','대한민국','South Korea  ',' 10-0755095 ','-', '등록', 'Register','2007.08.28'),

(36, '특허','Patent','수중 음향 통신 시스템 및 통신 방법','Underwater acoustic communication system and communication method','-','-',' 박종원, 임용곤, 고학림 ','Park Jong Won, Yong Gon Lim, Hak-Lim Ko','-', '- ','대한민국','South Korea  ',' 10-0980091','-', ' 등록', 'Register',' 2010.08.30'),

(37, '특허','Patent','수중 음향통신 장치 및 방법','Underwater acoustic communication device and method','-','-',' 박종원, 임용곤, 고학림, 최영철, 김승근, 이판목','Park, Jong-Won, Yong-Gon Lim, Hak-Lim Ko, Young-Chul Choi, Seung-Geun Kim, Pan-Mok Lee ','-', '- ','대한민국','South Korea  ','  10-1046779 ','-', ' 등록 ', 'Register','2011.06.29'),

(38, '특허','Patent',' Wireless transmitting receiving signal processing apparatusin wireless communication system for transmitting single polarization signal','Wireless transmitting receiving signal processing apparatusin wireless communication system for transmitting single polarization signal','-','-',' 고학림, 임용곤, 박종원, 김승근','Hak-Lim Ko, Yonggon Lim, Jongwon Park, Seunggeun Kim','-', '- ','PCT',' PCT  ',' PCT-KR2012-007479 ','-', 'PCT 출원 ', 'PCT Application','2012.09.19'),

(39, '특허','Patent',' 중계장치','Repeater','-','-',' 고학림 ','Hak-Lim Ko','-', '- ','대한민국','South Korea  ',' 10-1212887 ','-', ' 등록 ', 'Register','2012.12.10'),

(40, '특허','Patent',' 수중 이동체 통신거리 확장 시스템','Underwater mobile communication distance extension system','- ','-',' 박무식, 고학림 ','Musik Park,Hak-Lim Ko ','-', '- ','대한민국',' South Korea ',' 10-1331245  ','-', '등록 ', 'Register','2013.11.13'),

(41, '특허','Patent',' 단일편파 신호를 전송하는 무선통신 시스템의 송수신 신호 처리장치',' Transmission and reception signal processing device of wireless communication system transmitting single polarization signal','- ','-','고학림, 임용곤, 박종원, 김승근',' Hak-Lim Ko, Yonggon Lim, Jongwon Park, Seunggeun Kim ','-', '- ','대한민국',' South Korea ',' 10-1377205','-', '등록 ',' Register','2014.03.17'),


(42, '특허','Patent',' 다중 홉 선박 통신망 기반의 자원할당 및 전송률 제어 방법','Resource allocation and rate control method based on multi-hop ship communication network',' -','- ','강충구, 조구민, 고학림, 박종원, 임용곤, 윤창호, 김승근','Choong-gu Kang, Gu-min Cho, Hak-lim Ko, Jong-won Park, Yong-gon Lim, Chang-ho Yoon, Seung-geun Kim','-', '- ','대한민국',' South Korea ',' 10-1407282','-', '등록 ', 'Register','2014.06.09'),

(43, '특허','Patent',' 빔형성기가 적용된 중계기 시스템 및 빔 형성기 제어방법',' Repeater system with beam former and beam former control method ',' -','- ','고학림',' Hak-Lim Ko ','-', '- ','대한민국',' South Korea ',' 10-1433094','-', '등록', 'Register','2014.08.18'), 

(44, '특허','Patent',' 배열 안테나를 이용한 빔 형성 장치 및 방법','Beam forming apparatus and method using array antenna ',' -','- ','김영락, 고학림, 강찬구, 김성근','Kim Young-rak, Hak-Lim Ko, Kang Chan-gu, Kim Sung-geun ','-', '- ','대한민국',' South Korea ',' 10-1447733','-', '등록 ', 'Register',' 2014.09.29'),

(45, '특허','Patent',' 배열 안테나가 구비된 기지국 송수신 장치 및 빔 형성 방법',' Base station transceiver and beamforming method with array antenna ',' -','- ','김영락, 강찬구, 고학림, 김성근','Kim Young-rak, Kang Chan-gu, Hak-lim Ko, Kim Sung-geun','-', '- ','대한민국',' South Korea ',' 10-1448981','-', '등록', 'Register',' 2014.10.01'), 

(46, '특허','Patent',' 배열 안테나가 구비된 기지국 송수신 장치 및 빔 형성 방법',' Base station transceiver and beamforming method with array antenna ',' -','- ','김영락, 강찬구, 고학림, 김성근','Kim Young-rak, Kang Chan-gu, Hak-lim Ko, Kim Sung-geun','-', '- ','대한민국',' South Korea ',' 10-1458535','-', '등록', 'Register','2014.10.30'),

(47, '특허','Patent',' 다중 홉 선박 무선 통신망에서 실시간 및 비실시간 서비스를 통합적으로 지원하는 프레임 구조 및 이를 이용한 자원 분배 통신 방법','Frame structure supporting integrated real non-real-time services in multi-hop ship wireless communication network and resource distribution communication method using the same ','-','-','강충구, 조구민, 고학림, 임용곤, 윤창호, 김승근',' Choong-gu Kang, Gu-min Cho, Hak-Lim Ko, Yong-gon Lim, Chang-ho Yoon, Seung-geun Kim ','-', '- ','대한민국',' South Korea ',' 10-1461643','-', '등록 ', 'Register','  2014.11.07'),

(48, '특허','Patent','  Apparatus and method for generating soft-decision information in a multiple antenna system ',' Apparatus and method for generating soft-decision information in a multiple antenna system ','-','-',' TH Im, KW Cheun ','TH Im, KW Cheun','-', '- ','US',' US ',' US9258079B2 ','-', '등록 ', 'Register',' 2016.02.00'),

(49, '특허','Patent',' GAODV 기반 다중-홉 선박 통신망에서 라우팅 오버헤드 감소를 위한 라우팅 경로 설정 방법',' Routing Path Establishment for Reducing Routing Overhead in GAODV-based Multi-Hop Ship Networks ',' -','- ','고학림, 강충구, 이준만, 조구민, 임용곤, 윤창호','Hak-lim Ko, Chung-gu Kang, Jun-man Lee, Ku-min Cho, Yong-gon Lim, Chang-ho Yoon ','-', '- ','대한민국','South Korea ',' 10-1638085','-', '등록 ',' Register','  2016.07.04'),

(50, '특허','Patent','Underwater Communication Method ',' Underwater Communication Method ','-','-','고학림, 조용갑, 임태호','Hak-Lim Ko, Yong Gap Cho, Tae Ho Im ','-', '- ','PCT','PCT',' PCT/KR2016/012764','-', 'PCT 출원 ', 'PCT Application','2016.11'),

(51, '특허','Patent',' Underwater Communication System ','Underwater Communication System','-','-','임태호, 고학림, 조용갑','Taeho Im, Hak-Lim Ko, Yong-Gap Cho','-', '- ','PCT','PCT',' PCT/KR2016/012767 ','-', 'PCT 출원 ', 'PCT Application',' 2016.11'), 

(52, '특허','Patent',' 수중통신의 기준신호제어장치 및 그 방법','Reference signal control device and method for underwater communication ','-','-','고학림, 조용호, 임태호','Hak-Lim Ko, Yong Ho Cho, Tae Ho Im ','-', '- ','대한민국','South Korea',' 10-2016-0156326 ','-', '출원 ', 'Application',' 2016.11.23'),

(53, '특허','Patent',' 무선 센서 네트워크, 이의 싱크노드와 센서 노드, 그리고 무선 센서 네트워크의 초기 설정 방법',' Wireless sensor network, its sink node and sensor node, and initial setup method of wireless sensor network ','-','-','조호신, 김희원, 고학림, 임태호',' Ho-Shin Jo, Hee-Won Kim, Hak-Lim Ko, Tae-Ho Im ','-', '- ','대한민국','South Korea',' 10-1685467','-', '등록 ', 'Register',' 2016.12.06'),

(54, '특허','Patent',' 수중 통신 방법','Underwater communication method',' -','- ','고학림, 조용갑, 임태호','Hak-Lim Ko, Yong Gap Cho, Tae Ho Im ','-', '- ','대한민국','South Korea',' 10-1717947 ','-', '등록 ',' Register','2017.03.14'),

(55, '특허','Patent',' 수중 통신 시스템','Underwater communication system','-','-','임태호, 고학림, 조용갑','Tae Ho Im, Hak-Lim Ko, Yong Gap Cho ','-', '- ','대한민국','South Korea','10-1717948','-', '등록 ', 'Register',' 2017.03.14 '),

(56, '특허','Patent',' 향상된 빔분해능을 갖는 FMCW 레이더 시스템','FMCW radar system with improved beam resolution','-','-','고학림, 조용호, 임태호, 윤원상','Hak-Lim Ko, Yong Ho Cho, Tae Ho Lim, Won Sang Sang ','-', '- ','대한민국','South Korea','10-2017-0051404','-', '출원 ', 'Application','2017.04.21'),

(57, '특허','Patent',' 수중국 배터리 교환 지원 시스템','China Battery Exchange Support System ','- ','-','박종원, 이정희, 임용곤, 고학림, 임태호','Jong-Won Park, Jung-Hee Lee, Yong-Gon Im, Hak-Lim Ko, Tae-Ho Im ','-', '- ','대한민국','South Korea',' 10-1770956 ','-', '등록', 'Register','2017.04.18'),

(58, '특허','Patent',' 수중통신에서 신호전송방법 및 장치','Signal transmission method and apparatus in underwater communication','-','-','고학림, 조용호, 임태호','Hak-Lim Ko, Yong Ho Cho, Tae Ho Im ','-', '- ','PCT','PCT',' KR2018/000583 ','-', 'PCT 출원', 'PCT Application','2018.01.12'), 

(59, '특허','Patent',' 어구통합관리시스템','Fishing Integrated Management System ','- ','-','고학림, 박주삼, 임태호','Hak-Lim Ko, Jusam Park, Taeho Im','-', '- ','대한민국','South Korea',' 10-1858845','-', '등록  ', 'Register','2018.05.10'),

(60, '특허 ','Patent',' UNDERWATER COMMUNICATION METHOD ','UNDERWATER COMMUNICATION METHOD ','-','-','고학림, 조용갑, 임태호','Hak-Lim Ko, Yong Gap Cho, Tae Ho Im ','-', '- ','미국','USA',' 16/064750','-', ' 출원', 'Application','2018.06.21'),

(61, '특허 ','Patent',' UNDERWATER COMMUNICATION SYSTEM ','UNDERWATER COMMUNICATION SYSTEM ','-','-','임태호, 고학림, 조용갑 ','Taeho Im, Hak-Lim Ko, Yong-Gap Cho ','-', '- ','미국','USA','  16/-065425 ','-', '출원 ', 'Application','2018.06.22'), 

(62, '특허 ','Patent','UNDERWATER COMMUNICATION METHOD ','UNDERWATER COMMUNICATION METHOD ','-','-',' 고학림, 조용갑,임태호 ','Hak-Lim Ko, Yong Gap Cho, Tae Ho Im','-', '- ','중국','CHINA',' 201600072818.1','-', '출원', 'Application','2018.06.12'),

(63, '특허 ','Patent',' UNDERWATER COMMUNICATION SYSTEM ',' UNDERWATER COMMUNICATION SYSTEM ','-','-',' 임태호,고학림, 조용갑 ','Tae-Ho Im, Gohak Lim, Yong-Gap Cho ','-', '- ','중국','CHINA',' 20160072817.7 ','-', '출원', 'Application',' 2018.06.12'), 

(64, '특허','Patent',' 수중 센서 네트워크 및 이의 데이터 전송 제어 방법','Underwater sensor network and its data transmission control method ','-','-',' 조호신, 조준호, 김희원, 고학림, 임태호 ','Ho Ho Shin, Joon Ho Cho, Hee Won Kim,Hak-Lim Ko, Taeho Im ','-', '- ','대한민국','South Korea',' 10-2019-0025304 ','-', '출원', 'Application','2019.03.05'), 

(65, '특허','Patent',' 수중 센서 네트워크 및 이의 샐 구성 및 주파수 할당 방법','Underwater sensor network and its sal configuration and frequency allocation method ','-','-',' 조호신, 김현근, 고학림, 임태호 ','Ho-Shin Cho, Hyun-Geun Kim, Hak-Lim Ko, Tae Ho Im','-', '- ','대한민국','South Korea','10-2019-0025431','-', '출원', 'Application','10-2019-0025431   2019.03.05'), 

(66, '특허','Patent',' 무선 센서 네트워크 및 이의 비대칭 트래픽 처리 방법',' Wireless sensor network and its asymmetric traffic processing method','-','-',' 조호신, 김희원, 고학림, 임태호, 조용호 ','Ho-Shin Cho, Hee-Won Kim, Hak-Lim Ko, Tae Ho Im, Yong-Ho Cho ','-', '- ','대한민국','South Korea',' 10-1959017 ','-', '등록', 'Register','10-1959017   2019.03.31'), 

(67, '특허','Patent',' 무선 센서 네트워크 및 이의 슬립 모드 제어 방법','Wireless sensor network and its sleep mode control method ','-','-',' 조호신, 김희원, 고학림, 임태호, 조용호 ','Ho-Shin Cho, Hee-Won Kim, Hak-Lim Ko, Tae Ho Im, Yong-Ho Cho','-', '- ','대한민국','South Korea',' 10-1976651','-', '등록', 'Register','2019.05.02'), 

(68, '특허','Patent',' 무선 센서 네트워크 및 이의 전이중 방식 임시 서킷 호 처리 방법','Wireless Sensor Network and Its Full-duplex Temporary Circuit Call Processing Method','-','-','조호신, 김희원, 고학림, 임태호, 조용호 ','Ho-Shin Cho, Hee-Won Kim, Hak-Lim Ko, Tae Ho Im, Yong-Ho Cho','-', '- ','대한민국','South Korea',' 10-1983362','-', '등록', 'Register','2019.05.22'),

(69, '특허','Patent',' 문서분류 장치 및 방법','Document classification device and method ','-','-',' 김한준, 임푸름, 고학림 ','Hanjun Kim, Imprum, Hak-Lim Ko ','-', '- ','대한민국','South Korea',' 10-1983752','-', '등록', 'Register','2019.05.23'),  

(70, '특허','Patent',' 위상 제어 공유 구조의 고정식 레이더 안테나 장치 및 그의 제어 방법','Fixed Radar Antenna Device with Phase Control Sharing Structure and Its Control Method ','-','-',' 고학림, 임태호, 김정환, 조대영 ','Hak-Lim Ko, Tae Ho Im, Jung Hwan Kim, Dae Young Cho ','-', '- ','대한민국','South Korea',' 등록/10-1991179','-', '등록', 'Register','2019.06.13'),

(71,  '특허','Patent',' 데이터를 시각화하는 장치 및 방법','Apparatus and method for visualizing data','-','-',' 김한준, 최희원, 고학림 ','Han Joon Kim, Hee Won Choi, Hak-Lim Ko  ','-', '- ','대한민국','South Korea','10-2039154 ','-', '등록', 'Register','2019.10.10'),

(72, '특허','Patent',' 수중통신에서 반복 전송장치 및 방법','Repeated transmission device and method in underwater communication',' -','-',' 고학림, 조용호, 임태호 ','Hak-Lim Ko, Yong Ho Cho, Tae Ho Im ','-', '- ','대한민국','South Korea',' 10-2045110','-', '등록', 'Register','2019.11.08'),  

(73, '특허','Patent',' 음성 및 안면 데이터를 이용한 인증 제공 방법 및 장치','Method and apparatus for providing authentication using voice and facial data ','- ','-',' 임태호, 이효찬, 송현학 ','Tae Ho Im, Hyochan Lee, Hyunhak Song ','-', '- ','대한민국','South Korea',' 10-2060563','-', '등록', 'Register','2019.12.23'),  

(74, '특허','Patent',' 심층신경망을 이용한 선박 주변 객체 인식 방법 및 시스템','Method and system for object recognition around ship using deep neural network','-','-',' 임태호, 이효찬 ','Tae Ho Im, Hyochan Lee ','-', '- ','대한민국','South Korea',' 10-2060567','-', '등록', 'Register','2019.12.23'),  

(75, '특허','Patent',' 수중환경에 적응적인 수중통신 방법','Adaptive underwater communication method for underwater environment ','-','-',' 고학림, 조용호, 임태호 ','Hak-Lim Ko, Yong Ho Cho, Tae Ho Im ','-', '- ','대한민국','South Korea','10-2078943','-', '등록', 'Register','2020.02.12'),


(76, '특허','Patent',' 수중통신에서 신호전송방법 및 장치',' Signal transmission method and apparatus in underwater communication ','- ','-',' 고학림, 조용호, 임태호 ','Hak-Lim Ko, Yong Ho Cho, Tae Ho Im ','-', '- ','대한민국','South Korea',' 10-2078899','-', '등록', 'Register','2020.02.12'),  

(77, '특허','Patent',' 수중 인명 구조용 신호 송수신 장치','Underwater lifesaving signal transceiver ','-','- ',' 고학림, 임태호, 조용호 ','Hak-Lim Ko, Tae Ho Im, Yong Ho Cho  ','-', '- ','대한민국','South Korea',' 출원예정 ' , '-', '출원', 'Application','출원예정');  



UNLOCK TABLES;

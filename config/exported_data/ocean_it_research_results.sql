
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
  `result_name_ko` varchar(45) DEFAULT NULL, /*논문명*/
  `result_name_en` varchar(45) DEFAULT NULL,
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
(1,'논문','Presentation','수중음향통신망을 위한 하이브리드 MAC 프로토콜 설계','Hybrid MAC Protocol Design for Underwater Acoustic Network','한국해양정보정보통신학회 논문지','The Institute of Korea Institute of Maritime & Communication Information and Communications Sciences
','박종원, 고학림, 조아라, 윤창호, 최영철, 임용곤','Jong-Won Park, Hak Lim Ko, A-RA Cho, Chang Ho Yun, YoungChol Choi, Yong Kon Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2009'),

(2,'논문','Thesis','이동통신용 적응 섹터 셀 시스템의 성능분석','A Performance Analysis of an Adaptive Sector Cell System','호서대학교 공업기술연구소 논문지','Journal of the Institute of Industrial Technology, Hoseo University
','김계원, 이승구, 김민상, 박병훈, 고학림','Kim Kyewon,  Seung Goo Lee, Kim Min Sang, Byung Hoon Park, Hak Lim Ko','-', '-','대한민국','South Korea','-', '-', '-', '-','2009'),

(3,'논문','Thesis','빔 형성기를 적용한 단말기의 성능향상 연구','Performance Analysis of Smart Antenna System in Mobile Terminals','한국통신학회 논문지','The Korean Institute of Communication Sciences'
,'김계원, 이승구, 김민상, 박병훈, 고학림','Kim Kyewon, Seung Goo Lee, Kim Min sang, Park Byung Hoon Park, Hak Lim Ko','-', '-','대한민국','South Korea','-', '-', '-', '-','2010'),

(4,'논문','Thesis','수중채널 환경에서 센서 간의 간격에 의한 수신 신호의 상관 특성 분석','Performance Analysis of the spatial Corection for Underwater Channel Environment','한국음향학회지','The Journal of the Acoustical society of Korea'
,'고학림, 이승구, 김민상, 조대영, 김길용, 박병훈, 박종원, 임용곤 ','Hak Lim Ko, Lee Seung Goo,Kim Min sang,Cho Dae-Young, Kim, Kil-Yong, Park Byung Hoon, Park, Jong-Won, Lim, Yong-Gon','-', '-','대한민국','South Korea','-', '-', '-', '-','2012'),

(5,'논문','Thesis','수중 채널 환경에서 측정 데이터를 이용한 빔형성기가 결합된 다이버시티의 상관 계수 분석','Analysis on the Correlation Coefficient for the Diversity Technique Combined with Beamforming Using Measurement Data in Underwater Channel Environments','한국통신학회','Korea Information and Communication Society'
,'김민상, 조대영, 박종원, 임용곤, 고학림, ','Kim Min-Sang, Cho Dae-Young, Park Jong-Won, Lim Yong-Kon, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2012'),

(6,'논문','Thesis','이동통신 중계기용 스마트 안테나 구조설계','The Design of Smart Antenna Structures for RF Repeater','한국신호처리시스템학회','The Journal of Korea Institute of Signal Processing  System'
,'조대영, 김계원, 이승구, 김민상, 박병훈, 고학림','Cho Dae-Young, Kim Kye-Won, Lee Seung-Goo ,Kim Min-Sang, Kim Kil-Yung, Park Byeong-Hoon','-', '-','대한민국','South Korea','-', '-', '-', '-','2013'),

(7,'논문','Thesis','측정 데이터를 이용한 빔형성기의 적용에 의한 수중 채널 환경에서의 상관대역폭 분석','On the Performance Analysis of Coherent Bandwidth in Underwater Channel Environments Using Beamforming Technologies Based on the Use of Measurement Data','한국신호처리시스템학회','The Journal of Korea Institute of Signal Processing  System'
,'김민상, 조대영, 김계원, 이태석, 박종원, 임용곤, 고학림','Kim, Min-Sang, Cho, Dae-Young, Kim, Kye-Won, Lee, Tae-Seok, Park, Jong-Won , Lim, Yong-Gon, Ko, Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2014'),

(8,'논문','Thesis','수중 채널 환경에서 전송량 증대를 위한 다중반송파 시스템에 관한 연구','A Study on the Multi-Carrier System for Throughput Enhancement in Underwater Channel Environments','한국통신학회논문지',' The Korean Institute of Communications and Information Sciences
','김민상, 조대영 고학림, 홍대기 김승근, 임태호','Min-sang Kim, Dae-young Cho  ,Hak-lim Ko, Dae-Ki Hong  ,Seung-geun Kim, Tae-ho Im','-', '-','대한민국','South Korea','-', '-', '-', '-','2015'),

(9,'발표','Presentation','수중 음향 채널에서 Multi-Band DFT-spread OFDM 시스템의 성능분석','Performance analysis of Multi-Band DFT-spread OFDM system in Underwater Acoustic Channel','2015 하계 통신학회',' 2015 Summer Communication Society',
'이태석, 임태호, 김계원, 최배성, 고학림','Lee Tae-Seok, Im Tae-Ho, Kim Kye-Won, Choi Bae-Seong, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2015.6'),

(10,'발표','Presentation','수중 실해역 측정을 통한 국내 서해안 지역의 채널 환경 분석','Channel Analysis of Korea West Coast Local Through Real Underwater Measurement','한국통신학회 2015년도 추계종합학술발표',' Korean Institute of Communication Sciences2015 Autumn Conference',
'이태석, 김민상, 이형범, 고학림','Lee Tae-Seok, Kim Min-Sang, Lee Hyung-Beom, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2015.11'),

(11,'발표','Presentation','수중기지국 기반 수중음향 통신시스템의 구조에 따른 운용 주파수에 관한 연구','Studies on the structure and operating frequency for the underwater base-station based on underwater acoustic communication systems','한국통신학회 2015년도 추계종합학술발표',' Korean Institute of Communication Sciences2015 Autumn Conference',
'진선후, 조용갑, 임태호, 마현, 고학림','Jin-Seon Hoo, Cho-Yong Kap ,Im-Tae Ho, Ma-Hyun, Ko-Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2015.11'),

(12,'발표','Presentation','최근 수중 통신망 연구 개발 동향분석에 관한 연구','A study on the trends of recent underwater communication network systems','한국통신학회 2015년도 추계종합학술발표',' Korean Institute of Communication Sciences2015 Autumn Conference',
'김준호, 임태호, 정태건, 김세연, 고학립','Kim Jun Ho ,Im-Tae Ho, Chung Tae Geon, Kim Se Yeon, Ko-Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2015.11'),

(13,'논문','Thesis','실해역 측정을 통한 국내 서해안 지역의 도플러 확산 분석',' Analysis of Doppler Diffusion in the West Coast of Korea by Measuring Sea Area',' 2015년도 추계음향학회',' 2015 Fall Acoustic Society of Korea',
'진선후, 임태호, 조용갑, 고학립','Seon-Hoo Jin, Tae Ho Im, Yong-Kap Cho, Ko-Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2015.11'),

(14,'발표','Presentation','실해역 측정을 통한 국내 서해안 지역의 도플러 확산 분석',' Analysis of Doppler Diffusion in the West Coast of Korea by Measuring Sea Area Measurement',' 2015 추계음향학회',' 2015 Fall Acoustic Society of Korea',
'이형범, 정태건, 김준호, 이태석, 임태호, 고학립','Hyung-Beom Lee, Tea-geon Chung, Jun-Ho Kim, Tae-Seok Lee, Tae Ho Im,Ko-Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2015.11'),

(15,'발표','Presentation','수중음향통신을 위한 링크버짓 분석',' Link budget analysis for underwater acoustic communication',' 2015 추계음향학회',' 2015 Fall Acoustic Society of Korea',
'김민상, 김계원, 임태호, 고학립',' Min Sang Kim, Kim, Kye-Won, Tae Ho Im, Ko-Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2015.11'),
(16,'발표','Presentation','서해 천해역의 OFDM 시스템 구현을 위한 연구',' Study on Implementation of OFDM System of West Coast','한국통신학회 2016 동계종합학술발표회','Korea Institute of Communication Sciences 2016 Winter Synthesis Conference',
'이태석, 이형범, 마현, 임태호, 고학림',' Lee Tae-Seok, Lee Hyung-Beom, Ma Hyun, Im Tae-Ho, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.1'),


(17,'발표','Presentation','서해와 남해의 천해역에서 주파수별 수중채널환경 분석 ',' Underwater Channel Environment Analysis in West Coast and South Coast by Carrier Frequency','한국통신학회 2016 동계종합학술발표회','Korean Institute of Communication Sciences 2016Winter Synthesis Conference',
'김민상,김계원,진선후,임태호 ,김세연, 고학림',' Kim Min-Sang, kim Kye-Won, Jin Seon-Hoo ,Im Tae-Ho, Kim Se-Yeon, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.1'),

(18,'발표','Presentation','서해상에서의 음속 측정데이터 분석을 통한 통신 성능 분석 ',' An analysis of underwater communication performance using measured data in the Yellow Sea','한국통신학회 2016 동계종합학술발표회','Korean Institute of Communication Sciences 2016Winter Synthesis Conference',
'이정희, 차민혁, 박종원, 임용곤, 김민상, 고학림',' Jeong-Hee Lee, Min-Hyuk Cha, Jong-WonPark,Yong-Kon Lim, Min-Sang Kim, Hak-Lim Ko','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.1'),

(19,'발표','Presentation','중소형 선박용 고정식 레이더 배열 안테나 구조의 안테나 간격에 따른 성능 분석 ',' Performance Analysis of Fixed RADAR array antenna to variance over antenna  element spacing','한국통신학회 2016년도 동계종합학술발표회','Korean Institute of Communication Sciences 2016Winter Synthesis Conference',
'김준호, 임태호, 진선후, 정태건, 고학림',' Kim Jun-Ho, Im Tae-Ho Ko  ,Jin Seon-Hoo, Jung Tae-Geon, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.1'),

(20,'발표','Presentation','10khz 반송파를 사용한 서해안 수중 채널환경 분석 ','Underwater Channel Environment Analysis Using 10Khz Carrier Frequency at the Shore of West Sea','한국통신학회','Korean Institute of Communication Sciences',
'김민상 ,고학림, 김계원 ,이태석 ,임태호','Min-sang Kim, Hak-lim Ko ,Kye-won Kim ,Tae-seok Lee ,Tae-ho Im ','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.1'), 

(21,'발표','Presentation','Aldebaran 버츄얼 플랫폼을 이용한 차선검출 임베디드 시스템 설계 ','Design of Lane Detection Embedded System Based on Aldebaran Virtual Platform','한국통신학회','Korean Institute of Communication Sciences',
'이효찬,이재진,  박인학 허강,  유준상,  이재성,  문대철',' Hyo-Chan Lee, Jae-Jin Lee, In-Hag Park, Kang Heo, Jun Sang You, Jae Sung Lee, Dai-Tchul Moon','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.1'),


(22,'논문','Thesis','선박간 ad-hoc 통신 시스템에서 육상국용 적응섹터 시스템의 성능분석 ','Performance Analysis of an Adaptive Sector System for Terrestrial Station in Ad-hoc Communication System Between Vessels','한국통신학회논문지','Journal of Korean Institute of Communication and Information Sciences',
'이형범, 김승근, 김준호, 김민상, 고학림, 임태호',' Hyung-beom Lee, Seung-geun Kim, Jun-ho Kim, Min-sang Kim, Hak-lim Ko, Tae-ho Im','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.1'), 

(23,'논문','Thesis','이기종 네트워크를 위한 다중 셀 검출 기법 ','Multi-Cell Search Scheme for Heterogeneous Networks','한국통신학회논문지','Journal of Korean Institute of Communication and Information Sciences',
'조용호, 고학림, 임태호',' Yong-Ho Cho, Hak-lim Ko, Tae-ho Im','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.4'), 

(24,'논문','Thesis','이기종 네트워크를 위한 다중 셀 검출 기법 ','Multi-Cell Search Scheme for Heterogeneous Networks','한국통신학회논문지','Journal of Korean Institute of Communication and Information Sciences',
'조용호, 고학림, 임태호',' Yong-Ho Cho, Hak-lim Ko, Tae-ho Im','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.4'), 

(25,'발표','Presentation','육상국용 적응 섹터 시스템의 성능 향상을 위한 연구 ','A study on the performance improvement of adaptive sector system for terrestrial station','2016년 한국통신학회 하계종합학술발표회','Korea Institute of Communication Sciences 2016 Summer General Conferenc',
'조영민, 조용갑, 이효찬, 고학림',' Jo Young Min, Jo Yong Gap, Lee Hyo Chan, Ko Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.6'),

(26,'논문','Presentation','수중 광대역 빔 형성기의 DSP 구현에 관한 연구 ','A Study on DSP Implementation of Underwater Wideband Beamformer','2016년 한국통신학회 하계종합학술발표회','Korea Institute of Communication Sciences  2016 Summer General Conference
','정태건, 조용호, 이태석, 김준호, 고학림','Jung Tae Geon, Cho Yong Ho, Lee Tae Seok, Kim Jun Ho, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.6'), 

(27,'발표','Presentation','수중 QPSK-OFDM 시스템에서의 파일럿 심볼 간격에 따른 수조 실측 데이터 성능 분석 ','Performance analysis of pilot symbol spacing for underwater QPSK-OFDM system  based on measurement data','2016년 한국통신학회 하계종합학술발표회','Korea Institute of Communication Sciences 2016 Summer General Conference
','김준호, 김계원, 조용호, 차민혁, 김세연, 조영민, 고학림','  Kim Jun Ho, Kim Kye Won, Cho Yong Ho, Cha Min Hyuk, Kim Sae Yeon, Cho Young Min, Ko Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.6'),
 
(28,'발표','Presentation','샤크 핀 타입의 WAVE용 8-Band 통합 안테나의 2x2 평면 배열 스위칭 빔 스마트 안테나 적용에 따른 성능 분석','Performance analysis of 2x2 planar array switching beam smart antenna system for 8-Band shark fin type WAVE antenna','2016년 한국통신학회 하계종합학술발표회','Korea Institute of Communication Sciences 2016 Summer General Conference
','김준호, 이태석, 양태훈, 조성민, 고학림',' Kim Jun Ho, Lee Tae Seok, Yang Tae Hoon, Cho Sung Min, Ko Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.6'),

(29,'발표','Presentation','수중 채널환경에서 FMT-OFDM 시스템의 성능향상을 위한 연구','A Study on the Improvement of Performance FMT-OFDM System in Underwater Channel Environment','한국통신학회','Korea Institute of Communication Sciences
','김민상, 박종원, 임용곤, 고학림',' Kim Min Sang, Park Jong Won, Lim Yong Gon, Ko Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.6'),

(30,'논문','Thesis','해저 면에 거치 된 구조물의 동적거동에 대한 고찰','Dynamic Response Motions of a Structure Located on the Seabed in the Ocean','KSCE 2016 CONVENTION','KSCE 2016 CONVENTION
','마호성, 김종하, 임화진',' Mha, Ho-Seong, Kim, Jong Ha, Yim, Hwa-Jin','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.10'),


(31,'발표','Presentation','서해 실해역 수중채널환경에서 OFDM 시스템의 파일럿 심볼 간격에 따른 성능 분석 연구','Performance analysis of pilot symbol spacing for OFDM system based on measurement data at West sea','2017년도 한국통신학회 동계종합학술발표회',' Korea Institute of Communication Sciences 2017 winter General Conference 
','김준호, 이태석, 임태호, 김민상, 고학림, 조용호','  Kim Jun Ho, Lee Tae Seok, Lim Tae Ho, Kim Min Sang, Ko Hak Lim, Cho Yong-Ho','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.1'),

(32,'발표','Presentation','서해와 남해에서 OFDM 기반 수중통신 시스템의 성능분석 관한 연구','study on Performance Analysis of OFDM Dased Underwater Communications System','2017년도 한국통신학회 동계종합학술발표회',' Korea Institute of Communication Sciences 2017 winter General Conference 
','정태건, 이태석, 김계원, 차민혁, 고학림','  Chung Tea Geon, Lee Tae Seok, Kim Kye Won, Cha Min Hyuk, Ko Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.1'),

(33,'발표','Presentation','서해 당진 천해역의 수중 채널 특성 분석','Analysis of Underwater Channel Characteristics at Western Sea of Korea','2017년도 한국통신학회 동계종합학술발표회',' Korea Institute of Communication Sciences 2017 General winter Conference  
 ','진선후, 차민혁, 김세연, 고학림, 임태호','   Jin Seon-Hoo, Cha Min-Hyuk, Kim Se-Yeon, Ko Hak-Lim, Im Tae-Ho','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.1'),
 
 (34,'발표','Presentation','OFDM 기반 수중 통신 시스템을 위한 채널 추정 기법에 관한 연구 ','A study on channel estimation schemes for OFDM based Underwater Communications System','2017년도 한국통신학회 동계종합학술발표회',' Korea Institute of Communication Sciences 2017 General winter Conference  
 ','진선후, 이태석, 김계원, 고학림, 임태호',' Jin Seon-Hoo, Lee Tae-Seok, Kim Kye-Won, Ko Hak-Lim, Im Tae-Ho','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.1'),
 
 (35,'발표','Presentation',' OFDM과 SC-FDMA의 실해역 성능 분석에 관한 연구 ','A study on performance analysis of OFDM and SC-FDMA in the sea','2017년도 한국통신학회 동계종합학술발표회',' Korea Institute of Communication Sciences 2017 General winter Conference  
 ','김길용, 이태석, 고학림, 조용호',' Kim Kil-Yong, Lee Tae-Seok, Ko Hak-Lim, Cho Yong-Ho','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.1'),
 
 (36,'발표',' Presentation','해저통신시스템 장비 보호를 위한 고찰 ','Consideration for protection of submarine communication system equipment','2017년도 한국강구조학회 학술대회',' 2017 Korean Society of Steel Construction Conference   
 ','마호성, 조효상, 윤원중, 고학림, 원정훈',' Mha, Ho-Seong, Cho, Sang Yoon, Won Jung Ko,Hak Lim, Won, Jeong-Hun','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.6'),
 
 (37,'논문','Thesis',' 태안 천해역의 수중 채널 특성 분석','Analysis of Underwater Channel Characteristics at Tae-an Sea Area','2017년도 한국통신학회 하계종합학술발표회','Korea Institute of communications and Information 2017 Summer  Conference
','김길용, 김계원, 김세연, 고학림','  Kim Kil-Yong, Kim Kye-Won, Kim Se-Yeon, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.6'),

(38,'논문','Thesis','서해 수중채널 환경에서 HFM의 대역폭에 따른 동기검출 성능 분석',' Analysis of synchronization detection performance according to bandwidth of HFM in the West Sea underwater channel environment','2017년도 한국통신학회 하계종합학술발표회','Korea Institute of communications and Information 2017 Summer   Conference
','김준호, 김민상, 차민혁, 고학림',' Kim Jun-Ho, Kim Min-Sang, Cha Min-Hyuk, Im Tae-Ho, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.6'),

(39,'발표','Presentation','태안 천해역에서 수중 OFDM 시스템의 주파수 다이버시티 성능 검증',' Performance analysis of OFDM system using frequency diversity on West Sea underwater','2017년도 한국통신학회 하계종합학술발표회','Korea Institute of communications and Information 2017 Summer  Conference
','정태건, 김계원, 임태호, 조용호, 이태석, 고학림',' Chung Tea Geon, Kim Kye-Won, Im Tae-Ho, Cho Yong-Ho, Lee Tae-Seok, Ko Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.6'),

(40,'논문','Thesis','서해 천해역에서 수온 변화에 따른 수중 채널 환경 분석',' An analysis of underwater acoustic channel environment according to water temperature change in the shallow water of the west sea','2017년도 한국통신학회 하계종합학술발표회','Korea Institute of communications and Information 2018 winter  Conference
','김길용, 김계원, 김민상, 정태건, 고학림',' Kim Kil-Yong, Kim Kye-Won, Kim Min-Sang, Jeong Tae-geon, Ko Hak-Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.1'),


(41,'발표','Presentation','서해 천해역에서 OFDM 기반 채널 추정 기법에 관한 연구',' A Study on OFDM-based Channel Estimation Technique in Korea West Coastal Area','2018년도 한국통신학회 동계종합학술발표회','Korea Institute of communications and Information 2018 winter Conference 
','마현, 조용호, 차민혁, 여초, 고학림',' Ma Hyun, Cho Yong Ho, Cha Min Hyuk, Yu Chao, Ko Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.1'),

(42,'발표','Presentation','수중 OFDM 시스템의 링크 적응을 위한 서해 실해역 측정 데이터 기반 성능 분석 연구','Performance Analysis of Underwater OFDM System for Link Adaptation based on Measured Data in Korea West','2018년도 한국통신학회 동계종합학술발표회','Korea Institute of communications and Information 2018 winter Conference 
 ','김준호, 임태호, 이태석, 김세연, 하위, 고학림',' Kim Jun Ho, Im Tae Ho, Lee Tae Seok, Kim Sae Yeon, He Wei, Ko Hak Lim','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.1'),

(43,'발표','Presentation','Zynq 프로세서 기반 OFDM 수중통신 모뎀 구현','Zynq-based system for underwater communication modem','2018년도 한국통신학회 동계종합학술발표회',' Korea Institute of communications and Information 2018 winter Conference
','정태건, 이효찬, 유준상, 이재성, 채광영, 임태호',' Chung Tea Geon, Lee Hyo Chan, You Jun Sang, Lee Jae Sung, Chae Kwang Young, Im Tae-Ho','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.1.'),

(44,'발표','Presentation','Zynq 프로세서 기반 OFDM 수중통신 모뎀 구현','Zynq-based system for underwater communication modem','2018년도 한국통신학회 동계종합학술발표회',' Korea Institute of communications and Information 2018 winter Conference
','정태건, 이효찬, 유준상, 이재성, 채광영, 임태호',' Chung Tea Geon, Lee Hyo Chan, You Jun Sang, Lee Jae Sung, Chae Kwang Young, Im Tae-Ho','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.1.'),

(45,'발표','Presentation','분산형 수중관측 제어망 개발 연구 진행에 대하여... 구조물을 중심으로','A Study on the Development of Distributed Underwater Observation Control Network','2018년도 강구조학회 정기총회 및 학술대회',' Regular meetings and academic conferences of the Steel Structure Society of 2018
  ','마호성, 윤원중, 조효상, 고학림',' Mha Ho-Seong, Yoon Won Jung, Cho Hyo Sang, Ko Hak Lim, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.5.'),
  
(46,'발표',' Presentation','서해 천해역에서 채널 코딩 방식별 성능 분석','Performance Analysis of Channel Coding Scheme in Shallow Water of West Sea','2018년도 한국통신학회 동계종합학술발표회',' 2018 Korea Institute of Communication Sciences Winter Conference
','김길용, 김민상, 여초, 조효서, 고학림','  Kim Kil Yong, Kim Min Sang, Yu Chao, Zhao Xiao Rui, Ko Hak Lim, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.6.'),
  
(47,'발표','Presentation','서해 천해역에서 OFDM 시스템의 PAPR 감소를 위한 clipping level에 관한 연구','A Study on the clipping Level for PAPR Reduction of OFDM System in Korea West Coastal Area','2018년도 한국통신학회 하계종합학술발표회',' 2018 Korea Institute of Communication Sciences Summer Conference
','채광영, 김세연, 조천지, 김계원, 고학림','  ChaeKwang-Young, Kim Se-Yeon, Cho Chun-Ji, Kim Kye-Kon, Ko Hak-Lim, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.6.'),

(48,'발표','Presentation','남해 천해역에서 수중 OFDM 시스템과 MFSK 변조 방식을 사용하는 상용모뎀의 성능 비교','Comparison of performance of underwater OFDM system and commercial modem using MF SK modulation method in the sea of the South Sea','2018년도 한국통신학회 하계종합학술발표회',' 2018 Korea Institute of Communication Sciences Summer Conference
','정태건, 차민혁, 김계원, 임태호, 조용호, 고학림',' Chung Tae Geon, Cha Min Hyu, Kim Kye Wo, Im Tae Ho, Yong-Ho Cho, Ko Hak Lim, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.6.'),

(49,'발표','Presentation','중앙집중형 수중음향통신 네트워크를 위한 물리계층 설계에 관한 연구','A Study on the Physical Layer Design for Centralized Underwater Acoustic Communication Network','2018년도 한국통신학회 하계종합학술발표회',' 2018 Korea Institute of Communication Sciences Summer Conference
','이태석, 정태건, 정다은, 마현 고학림, 임태호',' Lee Tae Seok, Chung Tea Geon, Jung Da Eun, Ma Hyun, Ko Hak Lim, Im Tae Ho, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.6.'),

(50,'발표','Presentation','잔여 주파수 오차를 고려한 해상 VDES 시스템의 수신기 개발','Development of receiver for marine VDES system considering residual frequency offset','2018년도 한국통신학회 하계종합학술발표회',' 2018년도 한국통신학회 하계종합학술발표회
','정다은, 오지윤, 채광영, 조용호, 고학림',' Jung Da Eun, Oh Ji Yoon, Chae Kwang Young, Cho Yong Ho, Ko Hak Lim, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.6.'),

(51,'발표','Presentation','송신 빔형성에 따른 근거리 고속 수중 음향 통신 시스템의 성능 분석','Performance analysis of near-field high speed underwater acoustic communication system by transmission beamforming','2018년도 한국통신학회 하계종합학술발표회',' 2018 Korea Institute of Communication Sciences Summer Conference
','김준호, 이태석, 정태건, 조용호, 고학림',' Kim Jun Ho, Lee Tae Seok, Chung Tae Geon, Cho Yong Ho, Ko Hak Lim, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.6.'),

(52,'논문','Thesis','수중 MIMO-PPM 음향 통신을위한 준 추적- 직교 시공간 블록 부호화 ','Quasi-Trace-Orthogonal Space-Time Block Coding for Underwater MIMO-PPM Acoustic Communication','OCEANS’18 MTS/IEEE Kobe',' OCEANS’18 MTS/IEEE Kobe
','김준호, Andrea Petroni',' Kim Jun Ho, Andrea Petroni, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.5.'),

(53,'논문','Thesis','수중 통신망 시스템의 IT 장비를위한 강철 보호 프레임에 관한 연구 ','Study on the Steel Protection Frame for the IT Equipments of the Underwater Communication Network Systems','OCEANS’18 MTS/IEEE Kobe',' OCEANS’18 MTS/IEEE Kobe
','마호성, 조효상, 윤원중, 고학림, 원정훈',' Mha Ho Seong, Cho Hyo Sang, Yoon Won Jung, Ko Hak Lim, Won, Jeong-Hun, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2017.11.'),

(54,'논문','Thesis','서해 및 남해 해저 수로의 특성 분석을 통한 OFDM 기반 수중 음향 통신 모뎀의 설계 및 성능 분석 ','Design and Performance Analysis of OFDM-based Underwater Acoustic Communication Modem by Analyzing Characteristics of Underwater Channel in the West Sea and South Sea of Korea','KSII',' KSII
','정태건, 고학림, 임태호',' Jeong Tae geon, Ko Hak Lim, Im Tae Ho, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.6'),

(55,'논문','Thesis','서해 24 시간 수중 환경 측정을위한 OFDM 기반 수중 통신 모뎀의 성능 분석 ','Performance Analysis of OFDM-based Underwater Communication Modem with 24 Hour Measurement of Underwater Channel Environment in the West Sea of Korea','KSII',' KSII
','이태석, 조용호, 고학림, 임태호',' Tae Seok Lee, Cho Yong ho, Hak Lim Ko,  Tae-ho Im, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.6'),

(56,'논문','Thesis','서해 실해역에서 수중 채널 변화에 따른 OFDM 기반 수중 음향 통신 시스템의 성능 분석 연구','Performance Analysis of OFDM-based Underwater Acoustic Communication System with Change of Underwater Channel in  West Sea Area','한국통신학회논문지',' Journal of Korean Institute of Communication Sciences
','조용호, 이태석, 고학림',' Cho Yong ho, Tae Seok Lee, Hak Lim Ko, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2018.'),

(57, '논문','Thesis','수중 채널환경에서 OFDM 및 CDMA 통신 방식별 성능 분석  ','Performance analysis of OFDM and CDMA communication methods in underwater acoustic channel ','한국음향학회지 ',' The Journal of Acoustical Society of Korea
','김길용, 김민상, 고학림, 임태호',' Kim Kil Yong, Kim Min Sang, Ko Hak Lim, Im Tae Ho, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

(58, '발표','Presentation','남해 천해역의 수중 채널 특성 분석','Analysis of Underwater Channel Characteristics at South Sea of Korea',' 2019 한국통신학회 동계종합학술발표회 ','2019 Korea Telecommunications Society Winter Conference
','김길용, 김정호, 김세연, 차민혁, 임태호, 고학림',' Kim Kil Yong, Kim Jeong Ho, Kim Se Yeon, Cha Min Hyuk, Im Tae Ho, Ko Hak Lim, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

(59, '발표','Presentation','남해 실해역에서 수중 OFDM 통신 시스템을 위한 수신 빔포밍 성능에 관한 연구','A Study on Performance of Receive Beamforming for Underwater OFDM Communication Systems in South Sea of Korea',' 2019 한국통신학회 동계종합학술발표회 ','2019 Korea Telecommunications Society Winter Conference
','이태석, 하위, 김민상, 조용호, 고학림',' Tae-Seok Lee, He Wei, Min-Sang Kim, Yong-Ho Cho, Hak-Lim Ko, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

(60, '발표','Presentation','수중 센서 네트워크에서 강화학습 기반 라우팅 알고리즘의 성능 개선 방안 연구','A Study on Enhancement of Reinforcement Learning-based Routing Algorithms in Underwater Sensor Networks',' 2019년도 한국통신학회 동계종합학술발표회
  ','2019 Korea Telecommunications Society Winter Conference','김희원, 조호신',' Hee-won Kim, Ho-Shin Cho, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

(61, '논문','Thesis','Nakagami-m 채널을 통한 협동 NOMA의 비밀 정전 성능 분석',' Secrecy Outage Performance Analysis for Cooperative NOMA Over Nakagami-m Channel ',' 2019 IEEE Access
  ','2019 IEEE Access',' CHAO YU, 고학림, XIN PENG1, WENWU XIE',' CHAO YU, HAK-LIM KO, XIN PENG1, WENWU XIE, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),
  

(62, '발표',' Presentation','수중 셀룰러 네트워크에서 저전력 통신을 위한 매체 접속 제어 프로토콜',' A Medium Access Control Protocol for Low-Power Communication in Underwater Cellular Network',' 2019년도 한국통신학회 동계종합학술발표회
','2019 Korea Telecommunications Society Winter Conference','조준호, 김희원, 조호신',' Junho Cho, Hee-won Kim, Ho-Shin Cho, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

(63, '논문',' Thesis','동적 장면에서 전경 검출을 위한 로컬 컴팩트 이진 수 기반 비모수 적 배경 모델링',' Local Compact Binary Count based Nonparametric Background Modeling for Foreground Detection in Dynamic Scene','IEEE Access
','IEEE Access','Wei He, 김용관, Hak-Lim Ko, Jianhui Wu, Wujing Li, and Bing Tu ',' Wei He, Yong K-wan Kim, Hak-Lim Ko, Jianhui Wu, Wujing Li, and Bing Tu, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

 (64, '논문',' Thesis','수중기지국 기반 수중음향통신망에 관한 연구',' PERFORMANCE ANALYSIS OF UNDERWATER ACOUSTIC COMMUNICATION NETWORK BASED ON UNDERWATER BASE STATION','한국음향학회 2019년 춘계학술대회 발표논문지
','Paper presented at the Korean Acoustical Society 2019 Spring Conference','김민상, 이태석, 정태건, 고학림, 임태호','  Min-Sang Kim, Tae-Seok LEE, Tae-Gun Jung, Hak-Lim KO, and Tae-Ho Im , ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

 (65, '논문','Thesis',' 실해역 시험 기반 수중 통신 시스템 성능 분석',' PERFORMANCE ANALYSIS OF UNDERWATER COMMUNICATIONS SYSTEM BASED ON REAL SEA- EXPERIMENTS ','한국음향학회 2019년 춘계학술대회 발표논문지
 ','Paper presented at the Korean Acoustical Society 2019 Spring Conference ',' 채광영, 조용호, 이태석, 김준호, 고학림 ','  Kwangyoung CHAE, Yong-Ho CHO, Tae-Seok LEE, Jun-Ho Kim, and Hak-Lim Ko','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

(66, '논문','Thesis','분산형 수중관측 제어망의 구조적 요소: 해상부이 및 수중기지국-해상실험 ',' Structural Components of Distributed Underwater Monitoring: Floating Buoy and Underwater Base Station  ','2019년 한국강구조학회 학술대회 발표지 
','Collection of 2019 Korean Society for Steel Structure Conference ',' 마 호 성, 윤 원 중, 장 제 형, 고 학 림 ','  Mha Ho-Seong, Yoon Won Jung, Jang Je Hyeong, Ko Hak Lim, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),
 
 (67, '논문','Thesis','음향 모뎀 비선형 성을위한 주파수 도메인 신호 결합',' Frequency Domain Signal Combining for Acoustic Modem Non-Linearities ','_',' _','
 Andrea Petroni, 고학림, 이태호, 조용호, Roberto Cusani, Gaetano Scarano, Mauro Biagi ',' Andrea Petroni, Hak-Lim Ko, Tae Ho Im, Yong-Ho Cho, Roberto Cusani, Gaetano Scarano, Mauro Biagi, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

 (68, '특허','Patent','채널 특성에 따른 불균을 폭을 갖는 빔형성을위한 OFDM& Orthogonal Frequency Division Multiplexing& 수신 장치, 이름 이용한 통신 장치 및 방법 ','Orthogonal Frequency Division Multiplexing &OFDM&Receiving Device for Forming Beam with Uneven Width by Channel Property Communication Device Using the Same, and Method 
 ','학회',' Journal','한글이름',' 영어이름 ','-', '-',' 미국 ','USA ','-', '-', '-', '-','2008.2'),
 
(69, '특허','Patent','무선 통신 장치 및 방법 ',' WIRELESS COMMUNICATION DEVICES AND METHODS ','_',' _','한글이름',' 영어이름 ','-', '-',' 미국 ','USA ','-', '-', '-', '-','2012.6'),
 
(70, '특허','Patent',' 단일 편광 신호를 송신하는 무선 통신 시스템의 무선 송수신 신호 처리 장치 ',' Wireless transmitting/ receiving signal processing apparatus in wireless communication system for
 transmitting single polarization signal','학회',' Journal','한글이름',' 영어이름 ','-', '-',' PCT 국제출원 ',' PCT International Patent  ','-', '-', '-', '-','2012.6'),
 
 (71, '특허','Patent',' 수중 음향 통신 시스템 및 통신 방법',' Underwater acoustic communication system and communication method',' __',' __',' 박종원, 임용곤, 고학림','
 Jong-Won Park, Yong-Kon Lim, Hak-Lim Ko ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-0980091', ' 10-0980091','2012.8'),
 
 (72, '특허','Patent',' 수중 음향 통신 장치 및 방법',' Underwater acoustic communication device and method',' _',' _',' 박종원, 임용곤, 고학림, 최영철, 김승근','
 Jong-Won Park, Yong-Kon Lim, Hak-Lim Ko, , ','-', '-',' 대한민국 ',' South Korea','-', '-', '1046779', ' 1046779','2011.6'),
 
 (73, '특허','Patent',' 이동 통신 시스템의 복수 사용자 간섭 제거 장치',' Multi-User Interference Cancellation Device in Mobile Communication System',' Sk 텔레콤',' SK Telecom',' 이종헌, 이상연, 고학립','
 __,__, Hak-Lim Ko, , ','-', '-',' 대한민국 ',' South Korea','-', '-', '10-0372913', ' 10-0372913','2013.2'),
 
(74, '특허','Patent',' 중계장치',' Relay device','_ ',' _ ','  , ','__,__,  , ','-', '-',' 대한민국 ',' South Korea','-', '-', '10-1212887', ' 10-0372913','2013.2'), 

(75, '특허','Patent',' 수중 이동체 통신거리 확장 시스템',' Underwater mobile communication distance extension system','_ ',' _ ',' 박무식, 고학림','__,Hak-Lim Ko,  , ','-', '-',' 대한민국 ',' South Korea','-', '-', '10-1331245', ' 10-1331245','2013.11'),

(76, '특허','Patent',' 순차적 빔형성 방법을 이용한 레이더용 스캐너',' Scanner for radar using sequential beam forming method','_ ',' _ ',' 박무식, 고학림','__,Hak-Lim Ko,  , ','-', '-',' 대한민국 ',' South Korea','-', '-', '10-2014-0010226', ' 10-2014-0010226','2014.1'),

(77, '특허','Patent',' 단일편파 신호를 전송하는 무선통신 시스템의 송수신 신호 처리장치 ',' Transmission and reception signal processing apparatus of wireless communication system transmitting single polarization signal','_ ',' _ ','고학림, 임용곤,박종원, 김승근','Hak-Lim Ko,   , ','-', '-',' 대한민국 ',' South Korea','-', '-', '10-1377205', ' 10-1377205','2014.3'),

(78, '특허','Patent',' 빔형성기가 적용된 중계기 시스템 및 빔형성기 제어방법 ',' Repeater system to which beamformer is applied Beam former control method ','Sk 텔레콤 ',' SK Telecom ','고학림 ','Hak-Lim Ko,   , ','-', '-',' 대한민국 ',' South Korea','-', '-', '10-1433094', ' 10-1433094','2014.8'),

(79, '특허','Patent',' 배열 안테나를 이용한 빔 형성 장치 및 방법 ',' Beam forming apparatus and method using array antenna ','_  ','__ ',' 김영락, 고학림, 김찬구, 김성근 ','__,Hak-Lim Ko,___,___ ','-', '-',' 대한민국 ',' South Korea','-', '-', '10-1447733', ' 10-1447733','2014.9'),

(80, '특허','Patent',' 배열 안테나가 구비된 기지국 송수신 장치 및 빔 협성 방법 ',' Beam station transceiver and beamforming method with array array antenna ','_  ','__ ',' 김영락,김찬구,고학림,김성근 ','__,Hak-Lim Ko,___,___ ','-', '-',' 대한민국 ',' South Korea','-', '-', '10-1458535', ' 10-145853','2014.10'),

(81, '특허','Patent',' 다중 홉 선박 무선 통신망에서 실시간 및 비실시간 서비스를 통합적으로 지원하는 프레임 구조 및 이를 이용한 자원 분배 통신 방법 ',' Frame structure that supports both real-time and non-real-time service in multi-hop ship wireless communication network and resource distribution communication method using it ','_  ','__ ',' 강충구, 조구민, 고학림, 임용곤, 윤창호, 김승근 ','__,__,Hak-Lim Ko,___,Changho Yun ,___','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-1461643', ' 10-1461643','2014.11'),

(82, '특허','Patent',' 수중통신의 기준신호제어장치 및 그 방법 ',' Reference signal control device and method for underwater communication',' 호서대학교 산학협력단',' Hoseo University Industry-Academic Collaboration Foundation',' 고학림, 조용호, 임태호 ',' Hak-Lim Ko, Yong-Ho Cho, Im Tae Ho','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-2016-0156326', '10-2016-0156326','2016.11'),
 
(83, '특허','Patent',' 어구 통합 관리 시스템 ',' Fishing Integration and Management system','호서대학교 산학협력단 ','Hoseo University Industry-Academic Collaboration Foundation',' 고학림, 박주삼, 임태호 ',' Hak-Lim Ko,___, Im Tae Ho','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-1858845', '10-1858845','2016.5'),

(84, '특허','Patent',' 무선 센서 네트워크 및 이의 솔립 모드 제어',' Wireless sensor network and its sleep mode control method ','경북대학교 산학협력단, 호서대학교 산학협력단 ','Kyungpook National University Industry-Academic Cooperation Foundation, Hoseo University Industry-Academic Collaboration Foundation ',' 고학림, 박주삼, 임태호 ',' Hak-Lim Ko,___, Im Tae Ho','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-1858845', '10-1858845','2016.5'),

(85, '특허','Patent',' 무선 센서 네트워크 및 이의 비대칭 트래픽 처리 방버',' Wireless sensor network and its asymmetic traffic handling  method ','경북대학교 산학협력단, 호서대학교 산학협력단 ','Kyungpook National University Industry-Academic Cooperation Foundation, Hoseo University Industry-Academic Collaboration Foundation ',' 조호신, 김희원, 고학림, 임태호, 조용호','___,___,Hak-Lim Ko, Im Tae Ho, Cho Yong-Ho','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-2017-0168497', '10-2017-0168497','2017.12'),

(86, '특허','Patent',' 수중통신에서 신호전송 방법 및 장치',' Method and appearatus for signal transmission in underwater communication',' 호서대학교 산학협력단 ',' Hoseo University Industry-Academic Collaboration Foundation ','고학림, 조용호, 임태호','Hak-Lim Ko, Cho Yong-Ho, Im Tae Ho, ','-', '-',' 대한민국 ',' South Korea','-', '-', ' PCT/KR2018/000583', 'PCT/KR2018/000583','2017.12'),

(87, '특허','Patent',' 수중통신에서 신호전송 방법 및 장치',' Method and appearatus for signal transmission in underwater communication',' ',' ','고학림, 조용호, 임태호','Hak-Lim Ko, Cho Yong-Ho, Im Tae Ho, ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-2016-0181100', '10-2016-0181100','2016.12'),

(88, '특허','Patent','수중통신 방법 ',' Underwater communication method',' ',' ','고학림, 조용갑, 임태호','Hak-Lim Ko, Cho-Yong Kap, Im Tae Ho, ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-1717947', '10-1717947','2017.3'),

(89, '특허','Patent','수중통신 방법 ',' Underwater communication method',' ',' ','임태호, 고학림, 조용갑 ',' Im Tae Ho, Hak-Lim Ko, Cho-Yong Kap ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-1717948', '10-1717948','2017.3'),

(90, '특허','Patent',' 향산된 빔분해능을 갖는 FMCW 레이더 시스템 ',' FMCW radar system with improved beam resolution',' ',' ','고학림, 조용호, 임태호, 윤원상',' Hak-Lim Ko, Cho Yong-Ho, Im Tae Ho,  __ ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-2017-0051404', '10-2017-0051404','2017.4'),

(91, '특허','Patent',' 무선 센서 네트워크, 이의 싱크노드와 센서노드 그리고 무선 센서 네트워크의 초기 설정 방법 ',' Wireless sensor network, its sink node and sensor node, and wireless senor network initial setting method',' ',' ','조호신, 김희원, 고학림, 임태호',' _, __,Hak-Lim Ko, Im Tae Ho,  __ ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-1685467', '10-1685467','2016.12'),

(92, '특허','Patent',' 수중국 배터리 교환 지원 시스템  ',' Battery Exchange Support System',' ',' ','박종원, 이정희, 임용곤, 고학림, 임태호',' _, __,__, Hak-Lim Ko, Im Tae Ho,  __ ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-1770956', '10-1770956','2017.8'),

(93, '특허','Patent',' 위상  제어 공유 구조의 고정식 레이더 안테나 장치 및 그외 제어 방법',' Fixed radar antenna Device with phase control sharing structure and control method ',' ',' ','고학림, 임태호, 김정환, 조대영','Hak-Lim Ko, Im Tae Ho,__,__ ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-2017-0135112', '10-2017-0135112','2017.10'),

(94, '특허','Patent',' 무선 센서 네트워크 및 이의 전이중 방식 임시서킷 호 처리 방법',' Wireless Sensor Network and its Full Dulex Temporary circuit call processing  method ',' ',' ','조호신, 김희원, 고학림, 임태호, 조용호','__,__,Hak-Lim Ko, Im Tae Ho,__','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-2017-0168499', '10-2017-0168499','2017.12'),

(95, '특허','Patent',' 수중통신에서 신호전송 방법 및 장치',' Signal transmission method and apparatus in underwater communiction',' 호서대학교 산학협력단 ',' Hoseo University Industry-Academia Collaboration Foundation','고학림, 조용호, 임태호',' Hak-Lim Ko, Cho Yong-Ho, Im Tae Ho ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-2017-004012', '10-2017-004012','2017.2'),

(96,'비SCI 논문','Thesis',' 수중 채널 환경에서 센서 간의 간격에 의한 수신 신호의 상관 특성 분석',' Analysis of Correlation Characteristics of Received Signals by Sensor Interval in Underwater Channel Environment ',' 한국음향학회지',' Korean Acoustical Society','고학림, 이승구, 김민상, 조대영, 김길용, 박병훈, 박종원, 임용곤',' Hak-Lim Ko, Lee Seung Gu, Min Sang Kim, Dae Young Cho, Gil Yong Kim, Byung Hoon Park, Jong Won Park, Yong Gon Lim ','-', '-',' 대한민국 ',' South Korea', '-', '-', ' -', '-','2012'),

(97, '비SCI 논문', 'Thesis',' 수중음향통신을 위한 물리계층 기술',' Physical Layer Technology for Underwater Acoustic Communication',' 한국통신학회지 정보와통신',' Korean Journal of Communication Sciences Information and Communication ',' 임태호, 고학림 ',' Hak-Lim Ko, Im Tae Ho, ','-', '-','대한민국','South Korea','-', '-', '-', '-','2016.'),

(98, '비SCI 논문', 'Thesis',' 해중지중저장 CO2 누출감시시스템의 국외 동향 및 시사점',' Overseas Trends and Implications of Underwater Underground Storage CO2 Leak Monitoring Systems',' 한국해양정책학회지','Korean Society for Maritime Policy Studies ',' 조용갑, 임태호, 임현택, 고학림 ',' Cho-Yong Kap, Im Tae Ho, Hyuntaek Lim, Hak-Lim Ko ','-', '-','대한민국','South Korea', '-',  '-', '-', '-','2016.'),

(99, '비SCI 논문', 'Thesis',' 위상 배열 안테나를 이용한 저출력의 레이더 개발',' Development of Low Power Radar Using Phased Array Antenna','한국통신학회논문지','Korean Institute of Communication Sciences','조대영, 김정환, 이명원, 이주형, 윤원상, 임태호, 고학림',' Daeyoung Cho, Junghwan Kim, Myungwon Lee, Hyung Ju Lee, Wonsang Yoon,Cho-Yong Kap, Im Tae Ho, Hak-Lim Ko','-', '-','대한민국','South Korea', '-', '-', '-', '-','2017.'),

(100, '비SCI 논문', 'Thesis',' 해양 VHF 대역 데이터 교환 시스템을 위한 동기부 설계',' Synchronous Design for Offshore VHF Band Data Exchange System',' 한국통신학회논문지','Korean Institute of Communication Sciences',' 조용호, 김승근, 임용곤, 고학림 ',' Yong Ho Cho, Seung Geun Kim, Yong Gon Lim, Hak Lim Ko', '-', '-', '대한민국', 'South Korea', '-', '-', '-', '-', '2017.'),

(101, '비SCI 논문', 'Thesis',' 압축 센싱 기반 FMCW 레이다 검출기','Compression sensing based FMCW radar detector','한국통신학회논문지','Korean Institute of Communication Sciences','조용호, 조대영, 고학림',' Yongho Cho, Daeyoung Cho, Hak Lim Ko', '-', '-','대한민국','South Korea', '-', '-', '-', '-','2018.'),

(102, 'SCI 논문', 'Thesis',' 수중 음향 네트워크에서 자동 반복을위한 간단한 주파수 영역 음성 확인 피드백','A Simple Frequency-Domain Negative Acknowledgment Feedback for Automatic Repeat on reQuest Underwater Acoustic Networks','IEEE 해양 공학 저널 2018','2018 in IEEE Journal of Oceanic Engineering ','Andrea Petroni, 고학림, 임태호, 조용호, Stefano Pergoloni, Gaetano Scarano, Roberto Cusani, Mauro Biagi',' Andrea Petroni, Hak-Lim Ko, Taeho Im, Yong-Ho Cho, Stefano Pergoloni, Gaetano Scarano, Roberto Cusani, Mauro Biagi', '-', '-','대한민국',' South Korea', '-',  '-',  '-',  '-', '2018.'),

(103, '비SCI 논문', 'Thesis',' 수중 OFDM 통신 환경에서 심층신경망을 이용한 채널 보상 기법','Channel Compensation Technique Using Deep Neural Networks in Underwater OFDM Communication Environments', '한국통신학회논문지','Korean Institute of Communication Sciences ','송태영, 김용관, 고학림',' Taeyoung Song, Yonggwan Kim, Hak-Lim Ko', '-', '-','대한민국','South Korea', '-', '-', '-', '-','2019.'),

(104, 'SCI 논문', 'Thesis',' 협력적인 NOMA 시스템을위한 재머 보조 보안 통신','Jammer-Aided Secure Communications for Cooperative NOMA Systems', 'IEEE 통신 서신','IEEE Communications Letters ','차오유, 고학림, 신펑, 원우시, 펑주',' Chao Yu, Hak-Lim Ko, Xin Peng, Wenwu Xie, Peng Zhu','-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

(105, 'SCI 논문', 'Thesis',' 복잡한 장면에서 배경 뺄셈을위한 시공간 로컬 컴팩트 이진 패턴 ',' Spatiotemporal Local Compact Binary Pattern for Background Subtraction in Complex Scenes',' 멀티미디어 도구 및 응용','Multimedia Tools and Applications ','웨이헤, 고학림, 김용관, Jianhui Wu, 장 구윤, 제나라 Qi1, 빙 투, feng 펑 오우 ',' Wei He, Hak-Lim Ko, Yong Kwan Kim, Jianhui Wu, Guoyun Zhang, Qi Qi1, Bing Tu, Xianfeng Ou', '-',  '-','대한민국','South Korea', '-', '-', '-', '-','2019.'),

(106, '비SCI 논문', 'Thesis',' 반복 전송 다이버시티 기법에 따른 OFDM 기반 수중 음향 통신 시스템의 실해역 성능 분석','Real-World Performance Analysis of OFDM-based Underwater Acoustic Communication System Based on Iterative Transmit Diversity Technique','한국정보통신학회논문지','Korean Institute of Information and Communication Sciences ','채광영, 고학림, 김민상, 조용호, 임태호',' Chae Kwang Young, Ko Hak Lim, Min Sang Kim, Yong Ho Cho, Tae Ho Lim', '-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

(107, '비SCI 논문', 'Thesis',' 서해 실해역에서 CSS 기반 저전력 수중 통신 시스템의 성능 분석에 대한 연구','A Study on the Performance Analysis of CSS-based Low Power Underwater Communication System in the Real Sea Area','한국통신학회논문지','Korean Institute of Communication Sciences','이태석. 김준호, 고학림, 조용호',' Lee Tae-seok, Joonho Kim, Hak-Lim Ko, Yongho Cho', '-', '-','대한민국','South Korea','-', '-', '-', '-','2020.'),

(108, '비SCI 논문', 'Thesis',' 남해 실해역 시험 기반 수중음향채널 경로손실에 관한','On the path loss of underwater acoustic channel','한국정보통신학회논문지','Korean Institute of Information and Communication Sciences','김민상, 이태석, 조용호, 임태호, 고학림',' Kim Min-sang, Lee Tae-seok, Cho Yong-ho, Im Tae-ho, Ko Hak-rim',  '-', '-','대한민국','South Korea','-', '-', '-', '-','2020.'),

(109, '비SCI 논문', 'Thesis',' 실측 데이터 분석으로 수중 채널 환경연구',' Underwater channel environment research through actual data analysis','한국신호처리시스템학회지','Korean Institute of Signal Processing and Systems',' 조대영, 차민혁, 박종원, 임용곤, 고학림',' Dae Young Cho, Min Hyuk Cha, Jong Won Park, Yong Gon Lim, Hak Lim Ko', '-', '-','대한민국',' South Korea', '-', '-', '-', '-', '2013.'),

(110, '비SCI 논문', 'Thesis',' 선박간 ad-hoc 통신용 Directional MAC 알고리즘 성능 분석','Performance Analysis of Directional MAC Algorithm for Ad-hoc Communication between Ships','한국신호처리시스템학회지','Korean Institute of Signal Processing and Systems',' 조대영, 차민혁, 박종원, 임용곤, 고학림',' Dae Young Cho, Min Hyuk Cha, Jong Won Park, Yong Gon Lim, Hak Lim Ko', '-', '-','대한민국','South Korea','-', '-', '-', '-','2013.'),

(111, '비SCI 논문', 'Thesis',' VHF 육상국용 적응섹터 구조도 연구','A Study on the Structure of Adaptive Sector for VHF Land Station','한국신호처리시스템학회지','Korean Institute of Signal Processing and Systems',' 김민상, 김계원, 김준호, 박종원, 임용곤, 고학림','Kim Min Sang, Kye Won Kim, Jun Ho Kim, Jong Won Won, Yong Gon Lim, Hak Lim Lim', '-', '-','대한민국','South Korea','-', '-', '-', '-','2014.'),

(112, '비SCI논문', 'Thesis',' 수중채널 환경에서 FMT-OFDM 시스템의 성능향상을 위한연구','A Study on Performance Improvement of FMT-OFDM System in Underwater Channel Environment',' 한국통신학회논문지','Korean Institute of Signal Processing and Systems',' 김민상, 고학림, 김승근, 조대영, 임태호','Kim Min-sang, Ko Hak-Lim, Kim Seung-geun, Dae Young Cho, Tae Ho Im ', '-', '-','대한민국','South Korea','-', '-', '-', '-','2016.'),

(113, '비SCI 논문', 'Thesis',' 수중 채널에서 파라메터에 따른 심층신경망 기반 채널추정 성능비교','Performance Comparison of Channel Estimation Based on Deep Neural Networks According to Parameters in Underwater Channels',' 한국통신학회논문지','Korean Institute of Signal Processing and Systems',' 송태영, 김준호, 조천지, 조용호, 김용관, 고학림','Song Tae-young, Kim Jun-ho, Cho Cheon-ji, Cho Yong-ho, Kim Yong-gwan, Ko Hak-Lim ', '-', '-','대한민국','South Korea','-', '-', '-', '-','2019.'),

(114, '특허', 'Patent',' 병렬 탐색기를 이용한 스마트 안테나 시스템',' Smart Antenna System Using Parallel Searcher',' ',' ', '고학림', 'Hak-Lim Ko', '-', '-', '대한민국 ','South Korea', '-', '-', '10-0278543', '10-2017-004012','2000.10.20'),

(115, '특허', 'Patent',' 애드혹 망에서 소규모 망 구성 시 서버 설정방법',' How to set up server when configuring small network in ad hoc network',' ',' ', '고학림, 고정길', 'Hak-Lim Ko, Ko-Jeonggil', '-', '-', '대한민국 ',' South Korea', '-', '-', ' ', '10-0755095 ','2007.8.28'),

(116, '특허','Patent','수중 음향통신 장치 및 방법 ',' Underwater acoustic communication device and method',' ',' ','박종원, 임용곤, 고학림, 최영철, 김승근, 이판목',' Park, Jong-Won, Yong-Gon Lim, Hak-Lim Ko, Young-Chul Choi, Seung-Keun Kim, Pan Mok Lee ','-', '-',' 대한민국 ',' South Korea','-', '-', ' 10-1046779', '','2011.6.29'),

(117, '특허','Patent','단일 편파 신호를 전송하기위한 무선 통신 시스템에서 무선 송수신 신호 처리 장치 ',' Wireless transmitting/ receiving signal processing apparatus in wireless communication system for transmitting single polarization signal',' ',' ','고학림, 임용곤, 박종원, 김승근','  Hak-Lim Ko, Yonggon Lim, Jongwon Park, Seunggeun Kim ','-', '-',' PCT ',' ','-', '-', ' 출원/PCT/KR2012/007/479', '','2012.9.19'),

(118, '특허','Patent','수중 이동체 통신거리 확장 시스템 ',' Underwater mobile communication distance extension system',' ',' ',' 박무식, 고학림','  Hak-Lim Ko, Musik Park','-', '-','  ',' ','-', '-', ' 등록/10-1331245', '','2013.11.13'),

(119, '특허','Patent','단일편파 신호를 전송하는 무선통신 시스템의 송수신 신호 처리장치 ',' Transmission and reception signal processing apparatus of wireless communication system transmitting single polarized signal',' ',' ',' 고학림, 임용곤, 박종원, 김승근','  Hak-Lim Ko, Yonggon Lim, Jongwon Park, Seunggeun Kim','-', '-','  ',' ','-', '-', ' 등록/10-1377205', '','2014.3.17'),

(120, '특허','Patent','다중 홉 선박 통신망 기반의 자원할당 및 전송률 제어 방법 ',' Resource allocation and rate control method based on multi-hop ship network',' ',' ',' 강충구, 조구민, 고학림, 박종원, 임용곤, 윤창호, 김승근',' Choong-gu Kang, Gu-min Cho, Hak-Lim Ko,, Jong-won Park, Yong-gon Lim, Chang-ho Yoon','-', '-','  ',' ','-', '-', ' 등록/10-1407282', '','2014.6.9'),

(121, '특허','Patent','배열 안테나를 이용한 빔 형성 장치 및 방법 ',' Beam forming apparatus and method using array antenna',' ',' ',' 김영락, 고학림, 강찬구, 김성근',' Kim Young-rak, Ko Hak-Lim, Kang Chan-gu, Kim Sung-geun','-', '-','  ',' ','-', '-', ' 등록/10-1447733', '','2014.9.29'),

(122, '특허','Patent','다중 홉 선박 무선 통신망에서 실시간 및 비실시간 서비스를 통합적으로 지원하는 프레임 구조 및 이를 이용한 자원 분배 통신 방법 ',' Frame structure supporting integrated real-time and non-real-time services in multi-hop ship wireless communication network and resource distribution communication method using the same',' ',' ',' 강충구, 조구민, 고학림, 임용곤, 윤창호, 김승근',' Choong-gu Kang, Gu-min Cho, Hak-lim ko, Yong-gon Lim, Chang-ho Yoon, Seung-geun Kim','-', '-','  ',' ','-', '-', ' 등록/10-146143', '','2014.11.7'),

(123, '특허','Patent','GAODV 기반 다중-홉 선박 통신망에서 라우팅 오버헤드 감소를 위한 라우팅 경로 설정 방법 ',' Routing Path Establishment for Reducing Routing Overhead in GAODV-based Multi-Hop Ship Networks',' ',' ',' 강충구, 조구민, 고학림, 임용곤, 윤창호, 김승근',' Choong-gu Kang, Gu-min Cho, Hak-lim ko, Yong-gon Lim, Chang-ho Yoon, Seung-geun Kim','-', '대한민국','South Korea  ',' ','-', '-', ' 등록/10-1438085', '','201671.4'),

(124, '특허','Patent','수중 통신 방법 ',' Underwater Communication Method',' ',' ',' 고학림, 조용갑, 임태호',' Tae Ho Lim, Ko Hak Lim, Yong Gap Cho, ','-', 'PCT','PCT ',' ','-', '-', ' 출원/PCT/KR2016-1438085', '','2016.11'),

(125, '특허','Patent','수중 통신 시스템',' Underwater Communication System',' ',' ',' 임태호, 고학림, 조용갑','  Hak-Lim Ko, Yong-Gap Cho, ','-', 'PCT','PCT ',' ','-', '-', ' 출원/PCT/KR2016-012767', '','2016.11'),

(126, '특허','Patent','수중통신의 기준신호제어장치 및 그 방법',' Reference signal control device and method for underwater communication',' ',' ',' 고학림, 조용호, 임태호','  Hak-Lim Ko, Yong Ho Cho, Tae Ho Lim ','-', '',' ',' ','-', '-', ' 출원/10-2016-0156326', '','2016.11.23'),

(127, '특허','Patent','수중통신에서 신호전송방법 및 장치',' Signal transmission method and apparatus in underwater communication',' ',' ',' 고학림, 조용호, 임태호','  Hak-Lim Ko, Yong Ho Cho, Tae Ho Lim ','-', '',' ',' ','-', '-', ' 출원/10-2017-0024012', '','2017.2.23'),

(128, '특허','Patent','향상된 빔분해능을 갖는 FMCW 레이더 시스템',' FMCW radar system with improved beam resolution',' ',' ',' 고학림, 조용호, 임태호, 윤원상','  Hak-Lim Ko, Yong Ho Cho, Tae Ho Lim, Won Sang Sang ','-', '',' ',' ','-', '-', ' 출원/10-2017-0051404', '','2017.4.21'),

(129, '특허','Patent','수중국 배터리 교환 지원 시스템',' China Battery Exchange Support System',' ',' ',' 박종원, 이정희, 임용곤, 고학림, 임태호','  Jong-Won Park, Jung-Hee Lee, Yong-Kon Lim, Hak-Lim Ko,Tae Ho Lim  ','-', '',' ',' ','-', '-', ' 등록/10-1770956', '','2017.8.18'),

(130, '특허','Patent','수중 통신 방법 ',' UNDERWATER COMMUNICATION METHOD',' ',' ',' 고학림, 조용갑, 임태호','  Hak-lim ko, Yong Gap Cho, Tae Ho Lim ','-', '미국','USA  ',' ','-', '-', ' 출원/16/064,750', '','2018.6.21'),

(131, '특허','Patent','수중 통신 시스템 ',' UNDERWATER COMMUNICATION SYSTEM',' ',' ',' 임태호, 고학림, 조용갑','  Tae Ho Lim, Hak-lim ko, Yong Gap Cho, ','-', '미국','USA  ',' ','-', '-', ' 출원/16/065,425', '','2018.6.22'),

(132, '특허','Patent','수중 통신 방법',' UNDERWATER COMMUNICATION METHOD',' ',' ','  고학림, 조용갑, 임태호,','   Hak-lim ko, Yong-Gap Cho, Tae Ho Lim, ','-', '중국','China  ',' ','-', '-', ' 출원/201680072818.1', '','2018.06.12'),

(133, '특허','Patent','수중 통신 시스템',' UNDERWATER COMMUNICATION SYSTEM',' ',' ',' 임태호, 고학림, 조용갑','  Tae Ho Lim, Hak-lim ko, Yong-Gap Cho, ','-', '중국','China  ',' ','-', '-', ' 출원/201680072817.7', '','2018.06.12'),

(134, '특허','Patent','수중환경에 적응적인 수중통신 방법 및 수중통신 시스템',' Adaptive underwater communication method and underwater communication system',' ',' ',' 고학림, 조용호, 임태호','  Hak-lim ko, Yong-Gap Cho, Tae Ho Lim,','-', '대한민국','South Korea  ',' ','-', '-', ' 출원/10-2018-0161650', '','2018.12.14'),

(135, '특허','Patent','수중 센서 네트워크 및 이의 데이터 전송 제어 방법',' Underwater sensor network and its data transmission control method',' ',' ',' 조호신, 조준호, 김희원, 고학림, 임태호','  Cho Ho Shin, Joon Ho Cho, Hee Won Kim, Hak-Lim Ko, Tae Ho Lim,','-', '대한민국','South Korea  ',' ','-', '-', ' 출원/10-2019-0025304', '','2019.3.5'),

(136, '특허','Patent','수중 센서 네트워크 및 이의 샐 구성 및 주파수 할당 방법',' Underwater sensor network and its sal configuration and frequency allocation method',' ',' ',' 조호신, 김현근, 고학림, 임태호','  Ho-Shin Cho, Hyun-Geun Kim, Hak-Lim Ko, Tae Ho Lim,','-', '대한민국','South Korea  ',' ','-', '-', ' 출원/10-2019-0025431', '','2019.3.5'),

(137, '특허','Patent','수중통신에서 반복 전송장치 및 방법',' Repeated transmission device and method in underwater communication',' ',' ',' 고학림, 조용호, 임태호','   Hak-Lim Ko, Yongho Cho, Tae Ho Lim,','-', '대한민국','South Korea  ',' ','-', '-', ' 등록/10-2045110', '','2019.11.8'),

(138, '특허','Patent','문서분류 장치 및 방법',' Document classification device and method',' ',' ',' 김한준, 임푸름, 고학림','   Hanjun Kim, Im Fu rum, Gohak Lim, Hak-Lim Ko,','-', '대한민국','South Korea  ',' ','-', '-', ' 등록/10-1983752', '','2019.5.23'),

(139, '특허','Patent','데이터를 시각화하는 장치 및 방법',' Apparatus and method for visualizing data',' ',' ',' 김한준, 최희원, 고학림','   Han Joon Kim, Hee Won Choi, Hak-Lim Ko,','-', '대한민국','South Korea  ',' ','-', '-', ' 등록결정', '','2019.10.10'),

(140, '특허','Patent','수중 인명 구조용 신호 송수신 장치',' Underwater lifesaving signal transceiver',' ',' ',' 고학림, 임태호, 조용호, ',' Hak-Lim Ko,Tae Ho Lim,Yongho Cho, ','-', '대한민국','South Korea  ',' ','-', '-', ' 줄원예정', '','출원예정'), 

(141, '저서','Patent','모바일 통신 시스템',' Mobile communication systems',' ',' ',' 고학림, 임용곤, 박종원, 윤창호, ',' Hak-Lim Ko,Yonggon Lim, Jongwon Park, Changho Yoon, ','-', '대한민국','South Korea  ',' ','-', '-', ' ISBN/978-89-97033-20-1 93560', '','2011.10.10'); 
 
 
 
 

UNLOCK TABLES;

USE `ocean_it`;
SET NAMES utf8 ;
DROP TABLE IF EXISTS `research_fields`;
SET character_set_client = utf8mb4 ;

CREATE TABLE `research_fields` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `research_name_ko` varchar(300) DEFAULT NULL, /*한글과제명*/
  `research_name_en` varchar(300) DEFAULT NULL, /*영문과제명*/
  `business_name_ko` varchar(100) DEFAULT NULL,  /*사업명(한글)*/
  `business_name_en` varchar(100) DEFAULT NULL,  /*사업명(영문)*/
  `department_name_ko` varchar(100) DEFAULT NULL,  /*부처(한글)*/
  `department_name_en` varchar(100) DEFAULT NULL,  /*부처(영문)*/
  `subjectivity_organization_ko` varchar(100) DEFAULT NULL,  /*주관기관(한글)*/
  `subjectivity_organization_en` varchar(100) DEFAULT NULL,  /*주관기관(영문)*/
  `support_organization_ko` varchar(100) DEFAULT NULL,  /*지원기관(한글)*/
  `support_organization_en` varchar(100) DEFAULT NULL,  /*지원기관(영문)*/
  `participation_organization_ko` varchar(100) DEFAULT NULL,  /*참여기관(한글)*/
  `participation_organization_en` varchar(100) DEFAULT NULL,  /*참여기관(영문)*/
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
(1,'분산형 수중관측 제어망 개발','Development of Distributed Underwater Monitoring Control Network','-','-','-','-'
  ,'-','-','해양수산과학기술진흥원','National Fisheries Research and Development Institute','한글참여기관','영문참여기관'
  ,'수중환경에서 장시간․실시간 관측 및 제어를 위한 기지국 기반의 수중 관측․제어망 핵심기술 및 체계 구축연구','Study on the establishment of core technology and system for underwater observation and control network based on base station for long time and real time observation and control in underwater environment','한글연구내용 그림 ?','영문연구내용 Pic? ','-','영문기대성과'
  ,'2015-05-01','2021-12-31','-','-','-','-'
  , "1/0//분산형 수중관측 제어망 개발1.jpg
  /*1/2/ ◈ 수중 통신 알고리즘 개발/
  -기지국 기반 수중 저전력 통신 알고리즘 개발/
  -수중 채널 환경에 따라 적응적으로 변화하는 링크 적응용 수중 통신 알고리즘 개발/분산형 수중관측 제어망 개발2.jpg
  /*1/0/ ◈ 수중 통신 모뎀 보드 설계 및 제작/분산형 수중관측 제어망 개발3.jpg/분산형 수중관측 제어망 개발4.jpg/
  (좌:수중센서노드,\n 우:수중통신모뎀)
  /*1/0/◈ 수중 통신 아날로그 보드 설계 및 제작/분산형 수중관측 제어망 개발5.jpg/분산형 수중관측 제어망 개발6.jpg
  /*1/0/◈ 기지국 기반 수중 통신망 프로토콜 설계/분산형 수중관측 제어망 개발7.jpg
  /*1/0/ /분산형 수중관측 제어망 개발8.jpg
  /*1/0/ ◈ 해상부이 제작/분산형 수중관측 제어망 개발9.jpg
  /*1/0/ ◈ 수중 기지국 제작/분산형 수중관측 제어망 개발10.jpg  
  /*1/0/◈ 수중 센서 노드 제작/분산형 수중관측 제어망 개발11.jpg
  /*1/1/ ◈  mobile application 개발/ 
  -수중에서 관측 및 감시 데이터의 실시간 관찰 및 제어/분산형 수중관측 제어망 개발12.jpg
  /*1/0/◈ 실해역 실험/분산형 수중관측 제어망 개발13.jpg
  /*1/0/<실해역 실험 영상> https://youtu.be/evIU1vIvOWo/분산형 수중관측 제어망 개발14.jpg
  /*1/0/◈ 활용분야/분산형 수중관측 제어망 개발15.jpg
  /*1/0/◈ 활용분야/분산형 수중관측 제어망 개발16.jpg
  
");
 
 INSERT INTO `research_fields` VALUES 
(2,'5G 기반 산업별 빅데이터 활용 딥러닝 모형 개발 및 인력양성','Develop 5G deep industry-based deep learning model and foster human resources','-','-','-','-'
  ,'-','-','정보통신기술진흥센터','Information Communication Technology Promotion Center','-','-'
  ,'5G빅데이터 센서, 빅데이터플랫폼 및 산업별 딥러닝 적용 모델을 제공하기 위한 원천 기술을 개발하고, 이를 해양ㆍ항만 산업분야에 특화시켜 적용','Develop original technologies to provide 5G big data sensors, big data platforms, and industry-specific deep learning models, and apply them to the marine and port industries.','한글연구내용 그림','영문연구내용Pic','-','-'
  ,'2018-06-01','2021-12-31','-','-','-','-'
  , "1/0/스마트 양식 시스템 시작품 개발 및 어류 최종 성장 알고리즘/5G 기반 산업별 빅데이터 활용 딥러닝 모형 개발 및 인력양성1.jpg
    /*1/0/스마트 양식 시스템 시작품 개발 및 어류 최종 성장 알고리즘/5G 기반 산업별 빅데이터 활용 딥러닝 모형 개발 및 인력양성2.jpg
    /*1/0/선박안전, 자융운항 선박, 항만자동화를 고려한 영상 데이터를 이용한 딥러닝 모델 개발/5G 기반 산업별 빅데이터 활용 딥러닝 모형 개발 및 인력양성3.jpg
  ");
  
   INSERT INTO `research_fields` VALUES 
(3,'ICT기반 수산자원관리 연구센터','ICT-based Fisheries Resource Management Research Center','-','-','-','-','-','-','해양수산과학기술진흥원','National Fisheries Research and Development Institute','-','-'
  ,'- 1+4차 산업형 수산자원관리 기술개발 및 전문인력 양성 - 수산자원의 지속가능한 보존·이용을 위해 전통적인 기초연구분야와 ICT 등 4차산업의 핵심분야가 결합된 고효율 관리 기술개발 및 융합 전문인력 양성 체계 구축.
','-Development of 1 + 4th industrial fisheries resource management technology and training of experts
   -Development of high-efficiency management technology combined with the core areas of the 4th industry such as ICT and the establishment of a convergence specialist training system for sustainable conservation and use of fishery resources//
   ',' - IoT 융합 어업생산정보 분석 및 서비스 ⦁ 차세대 전자조업 모니터링 시스템의 통합 설계','
-IoT convergence fishery production information analysis and service
    통합 Integrated design of next generation electronic fishing monitoring system.
    ','-','-','2019-01-01','2025-12-31','-','-','-','-'
  , "1/0/IoT 융합 어업생산정보 분석 및 서비스/ICT기반 수산자원관리 연구센터1.jpg
  /*1/0/1-2 전자조업 모니터링 시스템을 이용한 AI기반 어업생산정보 분석개발/ICT기반 수산자원관리연구센터2.jpg
    ");
  
   INSERT INTO `research_fields` VALUES 
(4,'수중음향통신을 위한 기계학습 기반 링크적응형 송수신 기법 연구 ','A Study on Link-adaptive Transceiver Method Based on Machine Learning for Underwater Acoustic Communication','-','-','-','-','-','-',' 한국연구재단','Korea Research Foundation','-','-'
  ,'- 다양한 수중음향채널에서 안정적인 성능으로 통신을 가능하게 위하여 수중음향채널 상태에 따라 적응적으로 물리계층의 송수신 방식을 결정하는 알고리즘 개발 - OFDM 기반의 수중음향통신 모뎀을 위한 기계학습 기반 링크적응형 송수신 파라미터 선정 알고리즘 개발','
-Algorithm development to determine the transmission and reception method of the physical layer adaptively according to the state of the underwater acoustic channel in order to enable communication with various underwater acoustic channels with stable performance
-Development of machine learning based link adaptive transmission / reception parameter selection algorithm for OFDM based underwater acoustic communication modem','-본 연구에서는 다양한 형태로 급변하는 수중음향채널을 기계학습 알고리즘을 기반으로 OFDM 방식의 수중음향통신 모뎀의 적응적인 송수신 방법을 결정하는 알고리즘 개발을 목표로 한다. 특히, 그러므로 수중음향채널에 대한 변동성을 모사할 수 있는 수중음향채널 분석 및 모델링, 기계학습 알고리즘 기반의 수중음향채널 링크적응을 위한 통신모뎀 파라미터 선택 알고리즘 개발, SDR 기반의 수중통신모뎀 구현 및 실해역 실험을 아래와 같이 연차별로 수행한다.
','This study aims to develop an algorithm for the adaptive transmission / reception of the underwater acoustic communication modem of the OFDM method based on the machine learning algorithm for the rapidly changing underwater acoustic channel in various forms. Especially, underwater acoustic channel analysis and modeling which can simulate the variability of underwater acoustic channel, development of communication modem parameter selection algorithm for underwater acoustic channel link adaptation based on machine learning algorithm, implementation of underwater communication modem based on SDR and real area The experiment is performed annually as follows.
','-','-','2017-09-01','2020-08-31
','-','-','-','-'
  , "0");  
  
  INSERT INTO `research_fields` VALUES 
(5,'기계적인 회전을 사용하지 않는 중소형 어선용 고정식 레이더 개발 ','Developed fixed radar for small and medium sized fishing boats without mechanical rotation','-','-','-','-','-','-','해양수산과학기술진흥원(산 엔지니어링)','Marine Fisheries Science and Technology Agency (San Engineering)','-','-'
  ,'기계적인 회전을 사용하지 않는 FMCW방식의 중소형 어선용 고정식 레이더 개발','Development of fixed radar for small and medium sized fishing boats using FMCW method without mechanical rotation','- 고정식 안테나부 설계/검증 신호처리부 알고리즘 설계/검증','
-Fixed antenna part design / verification Signal processor part algorithm design / verification','-','-','2015-06-01','2018-05-31','-','-','-','-'
  , "1/0/고정식 안테나부 설계,검증/기계적인 회전을 사용하지 않는 중소형 어선용 고정식 레이더 개발1.jpg
     /*1/0/신호처리부 알고리즘 설계,검증/기계적인 회전을 사용하지 않는 중소형 어선용 고정식 레이더 개발2.jpg
    ");  
 
   INSERT INTO `research_fields` VALUES 
(6,'수중통신용 빔형성기 개발','Developed beamformer for underwater communication','-','-','-','-','-','-','해양수산과학기술진흥원(선박해양플랜트연구소)','National Fisheries Research and Development Institute (Ship & Ocean Plant Research Institute)','-','-'
  ,'수중 통신의 성능 및 용량 향상을 위한 빔형성 구조도 설계 및 빔형성 알고리즘 개발 ','Design of Beamforming Structure and Development of Beamforming Algorithm for Performance and Capacity Improvement of Underwater Communication','- 장거리 수중 통신용 빔형성 구조도 및 알고리즘 개발
   - 단거리 수중 통신용 빔형성 구조도 및 알고리즘 개발
   - 빔형성기 구현 및 성능 검증','
-Development of beamforming structure diagram and algorithm for long distance underwater communication
   -Development of beamforming structure diagram and algorithm for short range underwater communication
   -Beamformer implementation and performance verification','-','-','2020-08-01','2019-01-31','-','-','-','-'
  , "1/0/빔형성기 구현 및 성능 검증/수중통신용 빔형성기 개발1.jpg
  /*1/0/6x6평면 배열 센서 구조에서의 방향 빔 패턴/수중통신용 빔형성기 개발2.jpg
   ");
   
   INSERT INTO `research_fields` VALUES 
(7,'해양환경에 강인한 Ad-hoc 통신 성능향상 연구','Ad-hoc communication performance improvement robust to the marine environment','-','-','-','-','-','-','해양수산과학기술진흥원(선박해양플랜트 연구소)','Marine Fisheries Science and Technology Agency (Ship & Ocean Plant Research Institute)','-','-'
  ,'해양 환경에 강인한 선박간 ad-hoc 통신망의 효율을 최대화시키기 위한 해양 통신 시스템에 빔형성 적용 기법 연구','A Study on Beamforming Applied Technique in Marine Communication System for Maximizing Efficiency of Ship-to-Board Ad-hoc Network Robust to Marine Environment','//- 선박간 ad-hoc 통신망의 성능 및 throughput을 향상시키기 위한 빔형성 기술 개발//','//
-Development of beamforming technology to improve performance and throughput of ship-to-ship ad-hoc network//','-','-','2008-10-01','2019-03-31','-','-','-','-'
  , "1/0/선박간 ad-hoc 통신망의 성능 및 throughput을  향샹시키기 위한 빔형성 기술 개발/해양환경에 강인한 Ad-hoc 통신 성능향상 연구1.jpg
   ");
   
   INSERT INTO `research_fields` VALUES 
(8,'스마트 양식장 통합관리시스템 개발 기획연구','Planning and Research for Development of Integrated Management System for Smart Farms','-','-','-','-','-','-','해양수산과학기술진흥원','National Fisheries Research and Development Institute','-','-'
  ,'스마트양식장 통합관리시스템 개발을 위한 적용 가능한 타분야(IT, 에너지, 환경, 기계공학 등) 요소기술 동향을 파악하고, 핵심 요소기술들이 양식장에서 통합관리 되는 시스템 개발 및 산업화 계획 제시','
Identify trends in other technologies (IT, energy, environment, mechanical engineering, etc.) applicable for the development of integrated management system for smart farms, and present system development and industrialization plan in which key element technologies are integrated management in farms//','//- 스마트양식장 통합 관리 시스템 개발에 필요한 환경분석 수행//','//-Perform environmental analysis for developing smart farm integrated management system','-','-','2015-10-05','2016-04-04
','-','-','-','-'
  , "1/0/최종목표 및 스마트양식장 통합관리시스템의 주요 기술/스마트 양식장 통합관리시스템 개발 기획연구1.jpg
  ");
  
  INSERT INTO `research_fields` VALUES 
(9,'어구 자동식별 부이를 이용한 어구 모니터링 시스템 개발 및 관제센터 구축 기획연구','
Planning and development of fishing gear monitoring system and control center using automatic fishing identification buoy','-','-','-','-','-','-','해양수산과학기술진흥원','
National Fisheries Research and Development Institute','-','-'
  ,'최근의 특허 및 선진국 기술개발동향과 시장분석을 통해 폐어구 처리를 포함한 어구 자동식별 부이(AIB)를 이용한 어구 모니터링 시스템 개발 및 관제센터 구축 방향을 검토하여 명확한 기술개발 로드맵 작성.
  ','Develop a clear roadmap for developing technology by reviewing the development of a monitoring system and control center using the automatic identification buoy (AIB), including waste fishing, through recent patent and technology development trends and market analysis.','-','-','-','-','2015-10-01','2016-03-31
  ','-','-','-','-'
  , "1/0/어구 자동식별 모니터링 시스템의 개요도/어구 자동식별 부이를 이용한 어구 모니터링 시스템 개발 및 관제센터 구축 기획연구1.jpg
  ");
  
    INSERT INTO `research_fields` VALUES 
(10,'CO2 누출감시 시스템 구축 방안 연구','Study on CO2 Leak Monitoring System','-','-','-','-','-','-','해양수산과학기술진흥원','National Fisheries Research and Development Institute','-','-'
  ,'육상 파이프라인과 수중에서의 CO2 누출 감시 시스템 구축 방안을 기획하는 연구','A Study on the Planning of CO2 Leakage Monitoring System in the Land Pipeline and Underwater','육상 파이프라인에서의 CO2 누출 감시 시스템 구축 방안 기획 - 수중에서의 CO2 누출 감시 시스템 구축 방안 기획','
-Plan to establish CO2 leakage monitoring system in land pipeline -Plan the establishment of CO2 leakage monitoring system in water','-','-','2015-04-01','2016-03-31','-','-','-','-'
  , "1/0/수중에서의 CO2 누출 감시 시스템 구축 방안 기획/CO2 누출감시 시스템 구축 방안 연구1.jpg
  
   ");
  
   
 
 
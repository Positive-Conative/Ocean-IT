
USE `ocean_it`;
 SET NAMES utf8 ;
DROP TABLE IF EXISTS `research_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `research_fields` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `research_name_ko` varchar(45) DEFAULT NULL, /*한글논문명*/
  `research_name_en` varchar(45) DEFAULT NULL, /*영문논문명*/
  `classification_ko` varchar(45) DEFAULT NULL,  /*과제목적분류(한글)*/
  `classification_en` varchar(45) DEFAULT NULL,  /*과제목적분류(영문)*/
  `support_organization_ko` varchar(45) DEFAULT NULL,  /*지원기관(한글)*/
  `support_organization_en` varchar(45) DEFAULT NULL,  /*지원기관(영문)*/
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
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `research_fields` VALUES 
 /*(1, '분산형 수중관측 제어망 개발',' Development of Distributed Underwater Monitoring Control Network ','주관 ',' Organize ',' 한국해양과학기술진흥원 ','Korea Ocean Science and Technology Agency ','','
__연구목표 한글___, _영문목표 영문__, , ___연구내용한글____,,___연구내용영문_____,기대성과 한글, 기대성과 영문, 2015/05/01 ~ 2021/01/31', '고학림', ' Hak-Lim Ko','소속한글' ',' 소속영어');*/


(1,'분산형 수중관측 제어망 개발','Development of Distributed Underwater Monitoring Control Network','주관','Organize','한국해양과학기술진흥원','Korea Ocean Science and Technology Agency','
수중환경에서 장시간 실시간 관측 및 제어를 위한 기지국 기반 수중 관측 제어망 핵심기술 및 체계 구축연구
 - 사용주파수 : 5~50kHz 주파수(멀티밴드)
 - 수중기지국제어국당 수중기지국 최대수 : 3개
 - 수중기지국당 수중센서노드 최대수 : 64개
 - 동적 주파수 할당, 자원분배, 기지국간 시간동기화, 적응변조, 네트워크 운영관리 등 기능지원
 - 체계구성 : 수중센서노드(센서모뎀+네트워크+해양센서+구조물), 수중기지국노드(기지국모뎀+네트워크+구조물+기구물), 수중기지국제어국(기지국모뎀+네트워크+네트워크관리+해상부이+센서구조물+육상통신), 육상제어네트워크(육상통신+수중네트워크관리+관측정보감시데모서비스)
 - 테스트베드 구축 및 실해역 성능검증'
 ,'Underwater observation based on base station for real-time observation and control in aquatic environment for a long time
 - Frequency used: 5 ~ 50kHz Frequency (multi band)
 - Maximum number of underwater bases per underwater base station control station: 3
 - Maximum number of underwater sensor nodes per underwater base station: 64
 - Supports functions such as dynamic frequency allocation, resource allocation, time synchronization between base stations, adaptive modulation, and network operation management.
 - System configuration: Underwater sensor node (sensor modem + network + marine sensor + structure), underwater base station node (base station modem + network + structure + mechanism), underwater base station control station (base station modem + network + network management + Structure + land communication), land control network (land communication + underwater network management + monitoring information demo service)
 - Establishment of test bed and performance verification'
 ,'멀티밴드 수중음향센서 개발
 - 수중 센서노드-기지국-해상부이간 광대역 수중통신모뎀 개발
 - 수중 센서노드-기지국-해상부이간 네트워크 프로토콜 개발
 - 수중관측 제어망 네트워크 및 통합관리 시스템 개발
 - 수중 관측제어망 테스트베드 구축'
,'Multi-band underwater acoustic sensor development - Development of a broadband underwater communication modem between underwater sensor node, base station and offshore - Development of network protocol between underwater sensor node and base station - Development of underwater observing control network and integrated management system - Underwater observation control network test bed construction'
,'최종 성과물인 수중 기지국 노드, 수중 센서노드, 수중 네트워크용 해상 게이트웨이, 수중 감시 네트워크용 프로토콜, 수중 감시망 통합운영 시스템을 위한 기술 및 장비의 상용화를 통한 국내 관련 산업의 활성화 및 국외 수출 산업 기반을 강화할 것으로 기대
 - 기지국 기반의 수중 통신망 구축은 신규 해양 및 수중음향 모뎀 분야와 기타 융합기술 분야에서의 파생 연구 분야 창출로 이어져, 국내 해양 관련 산업뿐만 아니라 해양 관련 융복합 산업 발전에 기여할 수 있으며, 국내에서 활발한 연구가 진행되고 있지 않은 현재 상황에서 분산형 수중관측 제어망 연구를 통하여 국내 기술이 선진국과의 비교우위에 서는 데에 활용될 수 있음'
 ,'It will promote the domestic related industries through commercialization of technologies and equipments for underwater basestation node, underwater sensor node, marine gateway for underwater network, protocol for underwater surveillance network, Expectation
 - Establishment of base station based underwater communication network leads to creation of new research field in new marine and underwater acoustic modem field and other convergence technology field and contributes to development of marine related fusion industry as well as domestic marine related industry, In the current situation where there is no progress, it is possible to utilize domestic technology in comparative advantage with developed countries through the study of distributed underwater observation control network.'
 ,'2015-05-01','2021-01-31','고학림','Hak-Lim Ko','호서대학교','Hoseo univ'),
 
 
 /*(2, '수중음향통신을 위한 기계학습 기반 링크적응형 송수신 기법 연구 ',' A Study on Link Adaptive Transmission and Reception Technique based on Machine Learning for Underwater Acoustic Communication',' 주관 ',' Organize ',' 한국연구재단 ','Korea Research Foundation ','','
__연구목표 한글___, _영문목표 영문__, , ___연구내용한글____,,___연구내용영문_____,기대성과 한글, 기대성과 영문, 2017-09-01','2020-08-31', '임태호 ', 'Im Tae Ho ','소속한글' ','소속영어');*/

(2,'수중음향통신을 위한 기계학습 기반 링크적응형 송수신 기법 연구','A Study on Link Adaptive Transmission and Reception Technique based on Machine Learning for Underwater Acoustic Communication','주관','Organize ','한국연구재단','Korea Research Foundation','수중음향통신은 지상의 전파를 이용한 무선 통신 기술과 달리 주로 음파를 이용한다. 음파는 매우 저속이며 시간에 따른 다중 경로와 해수면과 해저면에서의 반사가 발생한다. 또한 수온, 염분, 수압, 해류와 해저지형 등에 의해 신호의 왜곡 및 손실이 일어나기 때문에 수중음향통신은 지상에서 전파를 이용한 통신에 비하여 매우 어려운 일이다. 본 연구에서는 다양한 수중음향채널에서 안정적인 성능으로 통신을 가능하게 위하여 수중음향채널 상태에 따라 적응적으로 물리계층의 송수신 방식을 결정하는 알고리즘 개발을 목표로 한다. 수중음향채널의 상태에 따른 송수신 방식을 결정을 기계학습을 이용하여 최적화할 수 있도록 연구하고자 한다. 특히, OFDM 기반의 수중음향통신 모뎀을 위한 기계학습 기반 링크적응형 송수신 파라미터 선정 알고리즘 개발을 목표로 한다.'
,'Unlike wireless communication technology using ground wave, underwater acoustic communication mainly uses sound waves. Sound waves are very slow and multipath with time and reflections from sea level and sea floor. In addition, underwater sound communication is very difficult compared with ground wave communication because it causes signal distortion and loss due to water temperature, salinity, water pressure, current and sea bottom. In this study, we aim to develop an algorithm that determines the transmission and reception method of the physical layer adaptively according to the underwater acoustic channel condition in order to enable communication with stable performance in various underwater acoustic channels. We investigate how to determine the transmission and reception method according to the state of underwater acoustic channel using machine learning. In particular, we aim to develop a link adaptive transmission and reception parameter selection algorithm based on machine learning for OFDM based underwater acoustic communication modems.'
,'본 연구에서는 다양한 형태로 급변하는 수중음향채널을 기계학습 알고리즘을 기반으로 OFDM 방식의 수중음향통신 모뎀의 적응적인 송수신 방법을 결정하는 알고리즘 개발을 목표로 한다. 특히, 그러므로 수중음향채널에 대한 변동성을 모사할 수 있는 수중음향채널 분석 및 모델링, 기계학습 알고리즘 기반의 수중음향채널 링크적응을 위한 통신모뎀 파라미터 선택 알고리즘 개발, SDR 기반의 수중통신모뎀 구현 및 실해역 실험을 아래와 같이 연차별로 수행한다.
 1차년도에는 다음과 같은 연구내용을 수행한다.
  - 기존에 수집된 데이터를 기반으로 수중음향채널 분석
  - 수중음향채널의 변동성에 대한 유효 파라미터 분석
 2차년도에는 다음과 같은 연구내용을 수행한다.
  - 수중음향채널의 변동성을 모사할 수 있는 수중음향채널 모델링
  - 수중음향채널 링크적응에 적용 가능한 기계학습 알고리즘 선정 및 개발
 3차년도에는 다음과 같은 연구내용을 수행한다.
  - SDR& #40;Software Defined Radio& #41; 기반의 다양한 파라미터 설정이 가능한 수중통신모뎀 개발
  - SDR 기반의 수중통신모뎀에 링크적응을 위한 기계학습을 적용 개발
 4차년도에는 다음과 같은 연구내용을 수행한다.
  - SDR 기반 수중통신모뎀 안정화 작업 및 실해역 실험
  - 실해역 실험 결과 분석을 통한 기계학습 알고리즘 검증 및 보완'
  ,'The purpose of this study is to develop an algorithm to determine adaptive transmission and reception method of underwater acoustic communication modems based on OFDM based learning algorithms. Particularly, therefore, underwater acoustic channel analysis and modeling which can simulate the variability of underwater acoustic channel, communication modem parameter selection algorithm for underwater acoustic channel link adaptation based on machine learning algorithm, SDR based underwater communication modem implementation, The experiment is carried out for each year as follows.
 In the first year, the following researches are carried out.
  - Underwater acoustic channel analysis based on previously collected data
  - Analysis of effective parameters on the variability of underwater acoustic channel
Selection and development of a machine learning algorithm applicable to underwater acoustic channel link adaptation
 In the third year, the following research contents are carried out.
  - SDR & quot; Software Defined Radio & quot; Development of underwater communication modem capable of setting various parameters based on
  - Developed the application of mechanical learning for link adaptation to SDR based underwater communication modem
 In the fourth year, the following research contents are carried out.
  - Stabilization work of SDR-based underwater communication modem and actual sea area experiment
  - Verification and supplementation of machine learning algorithm by analyzing actual sea area experiment result',
  '수중통신 기술은 재난 및 재해에 대한 감시와 육상 재난망과의 연계를 통한 감시 시스템으로 활용이 가능하며, 지진, 쓰나미, 방사능 감시 및 해류, 수온, 염분, CO2 농도 등 실시간/장시간 해양환경 관측을 위한 통신장비로 활용이 가능하다. 또한, 국방 분야에서 수중이동체의 탐지 및 위치추적을 통한 항만방어체계, 무인방어체계의 통신기기로 활용이 가능하고,  해양플랜트에서 원유, 가스 시추 및 처리시 누출 감시 및 지중매립 CO2 유출 감시 분야에도 활용이 가능하다. 또한, 최근 수중 사물인터넷 Internet of Underwater Things 서비스에 대한 관심이 증대되고 있는데 이를 위한 통신인프라의 핵심 기술로 활용이 가능하다.'
  ,'Intermediate technology can be used as a surveillance system through disaster and disaster surveillance and linkage with on-land disaster network. It can monitor real-time / long-term marine environment such as earthquake, tsunami, radioactivity surveillance and current, water temperature, It can be used as communication equipment for In addition, it can be used as a communication device for port defense systems and unmanned defense systems through detection and location tracking of underwater vehicles in the defense field. It is also possible to monitor the leakage of crude oil, gas drilling, It is available. In addition, recently, underwater objects & # 39; Internet of Underwater Things & # 41; As interest in services is growing, it can be used as a core technology of communication infrastructure. 
','2017-09-01','2020-08-31','임태호','Tae-ho Lim','호서대학교','Hoseo Univ'),


 /*(3, ' 수중광역 이동통신 시스템기술개발',' Underwater wide area mobile communication system technology development',' 위탁 ',' Consignment ',' 해양수산과학기술진흥원 ',' Marine Fisheries Science and Technology Agency','','
__연구목표 한글___, _영문목표 영문__, , ___연구내용한글____,,___연구내용영문_____,기대성과 한글, 기대성과 영문, 2012-08-01','2021-07-31', '고학림 ', 'Hak-Lim Ko','호서대학교'  ','Hoseo University');*/


(3,'수중광역 이동통신 시스템기술개발','Underwater wide area mobile communication system technology development','위탁','Consignment','해양수산과학기술진흥원','Marine Fisheries Science and Technology Agency','수중에서 자유로운 정보교환 및 육상에서의 원격제어가 가능한 수중 광역 이동통신 네트워크 개발','Development of underwater wide area mobile communication network that can freely exchange information in the water and remote control on land'
,'-수중이동 그룹 내 고속통신 네트워크 개발 -수중이동 그룹 간 장거리 제어 네트워크 개발','- Development of high speed communication network in underwater mobile group - Development of long distance control network between underwater movement groups'
,'ㅁ해양공간 및 자원개발, 해양탐사, 해양구난 작업 등을 효율적으로 수행하기 위해 필수적으로 요구되고 있는 수중 무선통신 인프라 구축 ㅁ현대 군사작전에서 효율성 및 생존성 향상을 위해 요구되는 네트워크중심전& #40;NCW : Network Centric Warfare& #41; 체계의 수중 네트워크 기반으로 활용'
,'ㅁ It is essential to efficiently perform marine space and resource development, marine exploration, and marine rescue work. Underwater wireless communication infrastructure construction ㅁ Network Centric Warfare required to improve efficiency and survivability in modern military operations.   Utilizing the underwater network of the system as a base
','2012-08-01','2021-07-31','고학림','Hak-Lim Ko','호서대학교','hoseo univ'),


/*(4, ' 5G 기반 산업별 빅데이터 활용 딥러닝 모형 개발 및 인력양성 ',' 5G-based Big Data Utilization Deep Learning Model Development and Human Resource Development',' 주관',' Organize ',' 정보통신기술진흥센터장','Director of Information and Communication Technology Promotion Center ','','
__연구목표 한글___, _영문목표 영문__, , ___연구내용한글____,,___연구내용영문_____,기대성과 한글, 기대성과 영문, 2018-06-01','2021-12-31', '고학림 ', ' Hak-Lim Ko','호서대학교' ',' Hoseo University');*/


(4,'5G 기반 산업별 빅데이터 활용 딥러닝 모형 개발 및 인력양성','5G-based Big Data Utilization Deep Learning Model Development and Human Resource Development','주관','Organize','정보통신기술진흥센터장','Director of Information and Communication Technology Promotion Center'
,'
ㅇ5G, 빅데이터, 딥러닝으로 대표되는 ICT융합신기술을 중심으로 기존 산업이 개편되고, 제4차 산업혁명의 도래에 따라 지능정보서비스의 수요가 폭발적으로 증대될 것으로 예상
 
 ㅇ 이에 따라, 호서대학교는 초연결ㆍ고신뢰산업지능센터& #40;HCIC, CLoud and AI Research Center& #41;를 설립하여 5G빅데이터 센서, 보안기반 빅데이터플랫폼 및 산업별 딥러닝 적용 모델을 제공하기 위한 원천 기술을 개발하고, 이를 충청권의 주력 산업인 제조분야와 미래 먹거리로 육성중인 해양ㆍ항만 산업분야에 특화시켜 적용
 
 ㅇ 이를 바탕으로 해양 빅데이터사이언티스트, 5G기반 지능정보제조솔루션 전문가 등 신산업 인력 수요에 대응한 고급인력을 양성하여 4차 산업혁명 시대에 충남권은 물론 전 국가 산업 발전에 기여하도록 함
','
ㅇ It is expected that the existing industry will be revamped with ICT convergence technology represented by 5G, Big Data, and Deep Learning, and the demand for intelligent information service will increase explosively with the advent of the 4th Industrial Revolution.  Therefore, Hoseo University established HCIC, CLoud and AI Research Center and the 5G Big Data Sensor, security-based Big Data Platform and industry-specific Deep Learning application model. And it is applied to the manufacturing field of Chungcheong region and the marine ㆍ port industry which is being cultivated as future food
ㅇ Based on this, we will cultivate high-level human resources responding to the demands of new industry workers such as Ocean Big Data Scientist and 5G-based intelligent information manufacturing solution specialist to contribute to the development of Chungnam region as well as the whole country in the era of the 4th Industrial Revolution.
','
ㅇ 충남권의 현재와 미래의 주력 산업인 제조분야와 해양ㆍ항만 분야를 중심으로 5G빅데이터ㆍ딥러닝 연구개발과 인력양성을 위한‘초연결ㆍ고신뢰산업지능센터& 로 특화된 ITRC 운영 공동연구+융합연구 중심의 과제 구성& #41; 본 HCIC는 4개의 세부과제를 운영하며 이중 3개 과제가 모두가 5Gㆍ빅데이터ㆍ딥러닝 분야 유망 중소기업, 또는 기술 수요 중소기업과의 공동연구로 수행되어 산업체의 수요에 기반을 둔 특징을 갖고 있음. 또한 1개 세부과제는 산업디자인+ICT 융합 관련 선도적 연구를 수행하여 타 3개 공동연구 세부과제가 그 결과를 공유할 수 있도록 추진하여 전반적으로 융합적 연구가 내제되어있도록 추진 협력 주체& #41; SKT 등 대기업, 충남도청 및 충청권 지자체& #40;아산시 한국정보화진흥원, 충남테크노파크 등 정부기관, 충남벤처협회, 중소기업연합중앙회 등 주요 협단체의 참여는 물론 중소중견 수요기업 60여개 및 지역의 딥러닝 솔루션 기업 등과 그랜드 컨소시엄을 구축
 
 ㅇ & #40;협력 구도& #41;이상의 광범위한 협력 채널을 바탕으로 학생군, 기업군, 교수군, 협력기관군 등의 참여 주체들이 세부 주제 각각을 대상으로 협력하는 방식으로 연구를 수행
 
 연구 방식& #41; 각 세부과제 공동연구를 위한 문제해결식 멘토링, 인턴쉽, Co-Op이 진행되며, 이를 통해 공동연구를 수행하는 기업은 제품화 수요 기술을 심도있게 해결함으로서 제품의 경쟁력을 높이게 되며, 고용연계가 이루어지게 됨위원회 운영 운영위원회를 정점으로 하여 평가위원회, 인력양성위원회, 사업화위원회가 유기적으로 협업하여 긴장감있고 효과적인 센터운영을 이끌어갈 예정임
','
ㅇ It is expected that the existing industry will be revamped with ICT convergence technology represented by 5G, Big Data, and Deep Learning, and the demand for intelligent information service will increase explosively with the advent of the 4th Industrial Revolution.  Therefore, Hoseo University established HCIC, CLoud and AI Research Center and the 5G Big Data Sensor, security-based Big Data Platform and industry-specific Deep Learning application model. And it is applied to the manufacturing field of Chungcheong region and the marine ㆍ port industry which is being cultivated as future food  ㅇ Based on this, we will cultivate high-level human resources responding to the demands of new industry workers such as Ocean Big Data Scientist and 5G-based intelligent information manufacturing solution specialist to contribute to the development of Chungnam region as well as the whole country in the era of the 4th Industrial Revolution.
','
ㅇ 본 연구를 통하여, 제조업의 빅데이터ㆍAIㆍ5G 도입 활성화를 위한 연구개발 축적 및 결과물 확보, 기술이전에 기여
  - 나아가 제조 IT 기업 창업 활성화, IT 기반 일자리 창출, 중소중견기업 지속성장 보장 등 다양한 사회 문제를 해결할 것으로 기대
 
 ㅇ 지방분권에 흐름에 부응하여 지역의 제조·생산 현장의 빅데이터, AI, 5G 전문인력 부족 수요에 대해 충남권 석·박사 전문 인력양성 및 관련 일자리로 연계 확대
 
 ㅇ 빅데이터, 딥러닝, 5G 기술 진흥을 통해 우리나라 수출 주력산업인 ICT제조& #40;반도체, 디스플레이& #41; 자동차, 바이오 산업의 글로벌 경쟁력을 강화
','ㅇThrough this research, it contributes to accumulation of R & D, securing of output and technology transfer for activation of big data, AI, 5G introduction of manufacturing industry  
- Furthermore, it is expected to solve various social problems such as revitalizing manufacturing IT companies, creating IT-based jobs, assuring sustainable growth of small and medium-sized enterprises
 
 ㅇ In response to the trend toward decentralization, we are expanding the linkage with the training of professional engineers in Chungnam region and related jobs for the demand of big data, AI, 5G professional manpower shortage in local manufacturing and production sites.  ㅇ ICT manufacturing, which is Korea`s main export industry, through Big Data, Deep Learning, and 5G technology promotion. Strengthen global competitiveness of automobile and bio industry
 ','2018-06-01','2021-12-31','고학림','Hak-Lim Ko','호서대학교','hoseo univ'),
 
 

(5,'5번과제','asdf','위탁',NULL,'ㅁㄴㅇㅁㄴㅇ',NULL,'ㅁㄴㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴ','ㅇㅁㄴㅇㅁㄴㅇ','ㄴㅁㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2016-10-12','2019-07-28','123',NULL,'호서대학교','hoseo univ');


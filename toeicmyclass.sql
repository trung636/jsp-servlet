CREATE DATABASE  IF NOT EXISTS `toeicmyclass` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `toeicmyclass`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: toeicmyclass
-- ------------------------------------------------------
-- Server version	5.7.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `accid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`accid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorymember`
--

DROP TABLE IF EXISTS `categorymember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorymember` (
  `categorymemberid` int(11) NOT NULL,
  `categorymembername` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`categorymemberid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorymember`
--

LOCK TABLES `categorymember` WRITE;
/*!40000 ALTER TABLE `categorymember` DISABLE KEYS */;
INSERT INTO `categorymember` VALUES (1,'Ng?????i d??ng'),(2,'Qu???n tr???');
/*!40000 ALTER TABLE `categorymember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmtgrammar`
--

DROP TABLE IF EXISTS `cmtgrammar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmtgrammar` (
  `cmtgrammarid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtgrammarcontent` text COLLATE utf8_swedish_ci,
  `memberid` int(11) DEFAULT NULL,
  `grammarguidelineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmtgrammarid`),
  KEY `FK_CMTGRA_GRAGU_idx` (`grammarguidelineid`),
  KEY `FK_CMTGRA_ME_idx` (`memberid`),
  CONSTRAINT `FK_CMTGRA_GRAGU` FOREIGN KEY (`grammarguidelineid`) REFERENCES `grammarguideline` (`grammarguidelineid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CMTGRA_ME` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmtgrammar`
--

LOCK TABLES `cmtgrammar` WRITE;
/*!40000 ALTER TABLE `cmtgrammar` DISABLE KEYS */;
INSERT INTO `cmtgrammar` VALUES (6,'tung lam',15,48),(10,'myclass.vn',15,48),(13,'tung lam',15,48),(14,'tung lam',15,48),(15,'myclass',15,48),(16,'tung lam',15,48);
/*!40000 ALTER TABLE `cmtgrammar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmtvocabulary`
--

DROP TABLE IF EXISTS `cmtvocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmtvocabulary` (
  `cmtvocabularyid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtvocabularycontent` text COLLATE utf8_swedish_ci,
  `memberid` int(11) DEFAULT NULL,
  `vocabularyguidelineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmtvocabularyid`),
  KEY `FK_CMTVO_MEM_idx` (`memberid`),
  KEY `FK_CMTVO_VOGU_idx` (`vocabularyguidelineid`),
  CONSTRAINT `FK_CMTVO_MEM` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CMTVO_VOGU` FOREIGN KEY (`vocabularyguidelineid`) REFERENCES `vocabularyguideline` (`vocabularyguidelineid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmtvocabulary`
--

LOCK TABLES `cmtvocabulary` WRITE;
/*!40000 ALTER TABLE `cmtvocabulary` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmtvocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examination` (
  `examinationid` int(11) NOT NULL AUTO_INCREMENT,
  `examinationame` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `examinatioimage` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `checkedcauhoi` int(11) DEFAULT NULL,
  PRIMARY KEY (`examinationid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (26,'????? thi 1','dethi2.png',1),(29,'????? thi 2','dethi2.png',0),(30,NULL,NULL,NULL);
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examinationquestion`
--

DROP TABLE IF EXISTS `examinationquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examinationquestion` (
  `examinationquestionid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `imagequestion` varchar(45) CHARACTER SET ucs2 COLLATE ucs2_swedish_ci DEFAULT NULL,
  `audiogg` varchar(45) CHARACTER SET ucs2 COLLATE ucs2_swedish_ci DEFAULT NULL,
  `audiomp3` varchar(45) CHARACTER SET ucs2 COLLATE ucs2_swedish_ci DEFAULT NULL,
  `paragraph` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `question` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `option1` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `option2` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `option3` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `option4` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `correctanswer` varchar(45) CHARACTER SET ucs2 COLLATE ucs2_swedish_ci DEFAULT NULL,
  `examinationid` int(11) DEFAULT NULL,
  PRIMARY KEY (`examinationquestionid`),
  KEY `FK_EXQ_EX_idx` (`examinationid`),
  CONSTRAINT `FK_EXQ_EX` FOREIGN KEY (`examinationid`) REFERENCES `examination` (`examinationid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examinationquestion`
--

LOCK TABLES `examinationquestion` WRITE;
/*!40000 ALTER TABLE `examinationquestion` DISABLE KEYS */;
INSERT INTO `examinationquestion` VALUES (43,1,'hinh1_1.jpg','audio1_1.ogg','audio1_1.mp3','','Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:','','','','','A',26),(44,2,'hinh1_2.jpg','audio1_2.ogg','audio1_2.mp3','','Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:','','','','','B',26),(45,3,'','audio1_3.ogg','audio1_3.mp3','','Listen to the question and the three responses. Choose the response that best answers the question:','','','','','A',26),(46,4,'','audio1_4.ogg','audio1_4.mp3','','Listen to the question and the three responses. Choose the response that best answers the question:','','','','','B',26),(47,5,'','','','','??It is common misconception that running anti-virus software programs and keeping them up to date is enough to protect ------- from viruses.','??A. instructions','B. instruct','C. ??instructor','D. instructive','C',26),(48,6,'','','','','??-------- a recent incident with one of the newly installed elevators malfunctioning, repairmen have been hired to check all of them.','A. your','B. yours','C. you','D. ??you???re','B',26),(49,7,'','','','Read the passage and choose the correct answer:\nPassage 1:\n\nMOSS RESIDENTIAL TECH\n                                                            Staff Expense Form\nName: Bill Sweet\nReason for expense: Client meetings and product demonstrations in Indianapolis, Indiana with Davies Home Distribution Corporation\nDates of trip: May 12-18\n \nExpense Amount paid ($) Details\nPlane ticket 600 Round trip - Economy class\nHotel room 0 Complimentary - Bonus card\nFood and Beverage 400  \nTaxi/ airport limo 100 The airport is far from the site\nMisc. 150 Alcohol for the clients\nTotal 1,250  \n \nEmployee signature: Bill Sweet\nManager signature: Elsa Wagner\n                       \nComments:\nAll of the receipts from my business trip have been attached via staple to this form. I am sorry that I missed the submissions deadline of 2 weeks after returning. I was overwhelmed by the response from the clients to my product demonstration as I had an 80% increase in sales. I am hoping that this increase in sales is a valid excuse for my tardiness. I would appreciate it if you could reimburse me as soon as possible, as I have to make another trip soon. My manager and I will be in the office today if you have any questions. Thanks in advance.\n***********\nPassage 2: \n \nDate: May 28, 11:20 a.m.\nTo: Bill Sweet \nFrom: Samuel Wilson <s-wilson@mossrtech.com>\nCc: Payton Maroney <p-maroney@mossrtech.com>\nSubject: Expense report\n \nMr. Sweet,\n \nThanks for completing and submitting the proper forms for your reimbursement. Although, you missing the deadline we will be able to pay you back for the money you spent on your trip. Your supervisor has already informed me of your situation, and it is acceptable. I hope that you continue your good sales record, but if you could try and submit your forms on time, it would make my job easier.\n \nAfter reading your report I noticed that you expensed drinks for clients. I am sorry to say that we don???t cover that type of expense, so we will not be able to reimburse you for that. If you have any questions about what is covered, you should refer to the employee manual. Additionally, next time you attach your receipts, can you please put them in the order you have written them on the form? This will speed processing time and reduce errors.\n \nI will be out of town starting tomorrow. I am going on a short vacation and I will be out of reach. If you have any questions, please contact my assistant Payton at extension 6859. I have carbon copied this e-mail to him, so he is aware of the details.\n \nSincerely,\nSamuel Wilson\nAccounting Division','??Why did Mr. Sweet submit the report?','A. to list the things he spent his money on','B. to ask for permission to take a business trip','C. airfare','D. to request that he be paid back for his expenses','D',26),(50,8,'','','','','What did Mr. Sweet???s supervisor ask him to do in Indiana?','A. go to a sales training seminar','B. make a sales presentation to potential clients','C. acquire new sales employees','D. deliver new products to customers','B',26),(51,9,'','','','','Why was Mr. Sweet late in submitting the form?','A. He filled out the form incorrectly.','B. He was swamped with new customers.','C. He returned from Indiana after the due date.','D. He sent the form to the wrong person','B',26),(52,10,'','','','Did you know that a typical business uses over 2,000 ink cartridges per year? The environmental consequences of this are important for us to consider. Bold Ink, Inc. would like to minimize the amount of waste produced by local businesses. We urge our customers to recycle used ink cartridges (54) ------- possible, because as a company we are committed to reducing environmental pollution.\n \nIt is easy to recycle used ink cartridges. You can deposit them in recycling bins labeled ???Bold Ink??? at any office supply store that sells our products. Store employees (55) ------ the cartridges to us so that we can process them.\nWhen you recycle a cartridge, you receive a discount on your next cartridge purchase. To get further (56) ------- about the discount program, log on to our homepage at www.boldink.com.','','A, some','B.  whenever','C, altogether','??D. meanwhile','A',26);
/*!40000 ALTER TABLE `examinationquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grammarguideline`
--

DROP TABLE IF EXISTS `grammarguideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grammarguideline` (
  `grammarguidelineid` int(11) NOT NULL AUTO_INCREMENT,
  `grammarname` text CHARACTER SET utf8,
  `grammarimage` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `content` text COLLATE utf8_swedish_ci,
  PRIMARY KEY (`grammarguidelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grammarguideline`
--

LOCK TABLES `grammarguideline` WRITE;
/*!40000 ALTER TABLE `grammarguideline` DISABLE KEYS */;
INSERT INTO `grammarguideline` VALUES (48,'H?????NG D???N C??CH T?? DUY M???T S??? LO???I C??U H???I TH?? V??? TRONG TOEIC READING ','Hinhhdnguphap1.jpg','Th???t l?? m???t m???i khi l??m b??i t???p TOEIC Reading m?? ph???i ng???i d???ch t???ng c??u ????ng kh??ng c??c em? T??? v???ng Ti???ng Anh l?? m???t kho t??ng kh??ng bao gi??? h???t, n??n c?? ch??a bao gi??? khuy???n kh??ch h???c vi??n c???a m??nh d???ch ngh??a m???t c??u ????? c?? th??? ch???n ???????c ????p ??n ????ng. L??c n??o c??ng th???, c?? mu???n c??c b???n th??? d??ng ng??? ph??p ????? gi???i quy???t v???n ????? tr?????c ti??n. H??m nay c?? tr?? m??nh c??ng t?? duy m???t s??? lo???i c??u h???i th?? v??? trong ????? thi TOEIC nh?? c??c em.\r\n\r\n1. The team members have the same opinions on the matter ???.they shared the same information\r\na. following\r\nb. more than\r\nc. because\r\nd. unless\r\nC??c em ch?? ?? nh??, ????p ??n c???n ??i???n l?? ????p ??n c?? th??? n???i hai m???nh ????? v???i nhau, ngay l???p t???c c?? lo???i A v?? B. L??c n??y c?? c??n nh???c hai ????p ??n C v?? D. C???n d???ch ch??a nh???? Ch??a ????u em nh?? :)\r\n\r\nUnless t???c l?? If not ????ng kh??ng c??c em? Ch??ng ta nh??? l???i ki???n th???c c??u ??i???u ki???n xem. Kh??ng c?? c??u ??i???u ki???n n??o m???nh ????? If chia th?? qu?? kh??? ????n (shared) trong khi m???nh ????? ch??nh chia hi???n t???i ????n (have ) c???, n??n ????p ??n c??u n??y l?? C ????ng kh??ng n??o?													'),(49,'L??? tr??nh 990 TOEIC d??nh cho ng?????i m???t g???c','Hinhhdnguphap2.jpg',NULL);
/*!40000 ALTER TABLE `grammarguideline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listenexercise`
--

DROP TABLE IF EXISTS `listenexercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listenexercise` (
  `listenexerciseid` int(11) NOT NULL AUTO_INCREMENT,
  `listenexercisename` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `listenexerciseimage` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `checkcauhoi` int(11) DEFAULT NULL,
  PRIMARY KEY (`listenexerciseid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listenexercise`
--

LOCK TABLES `listenexercise` WRITE;
/*!40000 ALTER TABLE `listenexercise` DISABLE KEYS */;
INSERT INTO `listenexercise` VALUES (2,'B??i t???p nghe 1','hinhbtnghe1.png',1);
/*!40000 ALTER TABLE `listenexercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listenquestion`
--

DROP TABLE IF EXISTS `listenquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listenquestion` (
  `listenquestionid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `imagename` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiomp3` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiogg` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `question` text COLLATE utf8_swedish_ci,
  `option1` text COLLATE utf8_swedish_ci,
  `option2` text COLLATE utf8_swedish_ci,
  `option3` text COLLATE utf8_swedish_ci,
  `option4` text COLLATE utf8_swedish_ci,
  `correctanswer` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `listenexerciseid` int(11) DEFAULT NULL,
  PRIMARY KEY (`listenquestionid`),
  KEY `FK_LIQU_LIEX_idx` (`listenexerciseid`),
  CONSTRAINT `FK_LIQU_LIEX` FOREIGN KEY (`listenexerciseid`) REFERENCES `listenexercise` (`listenexerciseid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listenquestion`
--

LOCK TABLES `listenquestion` WRITE;
/*!40000 ALTER TABLE `listenquestion` DISABLE KEYS */;
INSERT INTO `listenquestion` VALUES (5,1,'hinh1_1.jpg','audio1_1.mp3','audio1_1.ogg','Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:','A.','B.','C.','D.','B',2),(6,2,'hinh1_2.jpg','audio1_2.mp3','audio1_2.ogg','Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:','A.','B.','C.','D.','C',2),(7,3,'hinh1_3.jpg','audio1_3.mp3','audio1_3.ogg','Listen to the question and the three responses. Choose the response that best answers the question:','A.','B.','C.','D.','A',2),(8,4,'hinh1_4.jpg','audio1_4.mp3','audio1_4.ogg','Listen to the question and the three responses. Choose the response that best answers the question:','A.','B.','C.','D.','A',2);
/*!40000 ALTER TABLE `listenquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memberid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `membername` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `memberpass` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `categorymemberid` int(11) DEFAULT NULL,
  PRIMARY KEY (`memberid`),
  KEY `FK_MB_CMB_idx` (`categorymemberid`),
  CONSTRAINT `FK_MB_CMB` FOREIGN KEY (`categorymemberid`) REFERENCES `categorymember` (`categorymemberid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (14,'admin','admin','123456789',2),(15,'tr????ng t??ng l??m','meoiancom','1234567',1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'H???i Ph??ng'),(2,'H?? N???i'),(3,'Hu???'),(4,'???? N???ng'),(5,'Nha Trang'),(6,'H??? Ch?? Minh'),(7,'V??ng T??u'),(8,'C???n Th??');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readexercise`
--

DROP TABLE IF EXISTS `readexercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readexercise` (
  `readexeriseid` int(11) NOT NULL AUTO_INCREMENT,
  `readname` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `readimage` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `checkcauhoi` int(11) DEFAULT NULL,
  PRIMARY KEY (`readexeriseid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readexercise`
--

LOCK TABLES `readexercise` WRITE;
/*!40000 ALTER TABLE `readexercise` DISABLE KEYS */;
INSERT INTO `readexercise` VALUES (42,'b??i t???p ??oc 1','contract.jpg',1);
/*!40000 ALTER TABLE `readexercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readquestion`
--

DROP TABLE IF EXISTS `readquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `readquestion` (
  `readquestionid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `paragraph` text COLLATE utf8_swedish_ci,
  `question` text COLLATE utf8_swedish_ci,
  `option1` text COLLATE utf8_swedish_ci,
  `option2` text COLLATE utf8_swedish_ci,
  `option3` text COLLATE utf8_swedish_ci,
  `option4` text COLLATE utf8_swedish_ci,
  `correctanswer` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `readexeriseid` int(11) DEFAULT NULL,
  PRIMARY KEY (`readquestionid`),
  KEY `FK_REQU_REEX_idx` (`readexeriseid`),
  CONSTRAINT `FK_REQU_REEX` FOREIGN KEY (`readexeriseid`) REFERENCES `readexercise` (`readexeriseid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readquestion`
--

LOCK TABLES `readquestion` WRITE;
/*!40000 ALTER TABLE `readquestion` DISABLE KEYS */;
INSERT INTO `readquestion` VALUES (70,1,'','I don\'t think he will remember the appointment ?????? you remind him.','A. so','B. if','C. unless','D. lest','D',42),(71,2,'','The river has overflowed his banks ??????. it has been raining continuously for several days.','A. still','B. ??Yet','C. when','D. as','B',42),(72,3,'','Those village folk are poor ??????. they always seem so contented.','A. though','B. since','C. yet','D. or','A',42),(73,4,'','??????.. he was not interested in music, he agreed to go to the concert.','A. ??Thought','B. while','C. for','D. since','D',42);
/*!40000 ALTER TABLE `readquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `correctanswernum` int(11) DEFAULT NULL,
  `incorrectanswernum` int(11) DEFAULT NULL,
  `time` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `examinationid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `correctanswerread` int(11) DEFAULT NULL,
  `correctanswerlisten` int(11) DEFAULT NULL,
  PRIMARY KEY (`resultid`),
  KEY `FK_EX_RE_idx` (`memberid`),
  KEY `FK_EX_RE_idx1` (`examinationid`),
  CONSTRAINT `FK_EX_RE` FOREIGN KEY (`examinationid`) REFERENCES `examination` (`examinationid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_MEM_RE` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (79,0,10,'Sat Nov 05 11:56:44 ICT 2016',26,15,NULL,NULL),(80,3,7,'Sat Nov 05 12:09:30 ICT 2016',26,15,NULL,NULL),(81,2,8,'Sat Nov 05 12:10:13 ICT 2016',26,15,NULL,NULL),(82,6,4,'Sat Nov 05 12:28:45 ICT 2016',26,15,NULL,NULL),(83,5,5,'Sat Nov 05 12:33:58 ICT 2016',26,15,NULL,NULL),(84,5,5,'Sat Nov 05 13:00:13 ICT 2016',26,15,2,3),(85,5,5,'Sat Nov 05 13:00:47 ICT 2016',26,15,2,3),(86,3,7,'Sat Nov 05 22:27:55 ICT 2016',26,15,0,3);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slidebanner`
--

DROP TABLE IF EXISTS `slidebanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slidebanner` (
  `slidebannerid` int(11) NOT NULL,
  `slidename` text CHARACTER SET utf8,
  `slidecontent` text COLLATE utf8_swedish_ci,
  `slideimage` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`slidebannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slidebanner`
--

LOCK TABLES `slidebanner` WRITE;
/*!40000 ALTER TABLE `slidebanner` DISABLE KEYS */;
INSERT INTO `slidebanner` VALUES (1,'Cung C???p D???ng B??i T???p Nghe, ?????c','Ch??ng t??i cung c???p cho c??c b???n c??c d???ng b??i t???p hay, b??? ??ch','slide2.jpg'),(2,'Thi Th??? Toeic Online','Sau khi c?? ki???n th???c v???ng v??ng, c??c b???n s??? ???????c tr???i nghi???m thi online','slide3.jpg');
/*!40000 ALTER TABLE `slidebanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `FK_Student_Province_idx` (`province_id`),
  CONSTRAINT `FK_Student_Province` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabularycontent`
--

DROP TABLE IF EXISTS `vocabularycontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabularycontent` (
  `vocabularycontentid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `vocabularycontentname` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `transcribe` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `image` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiomp3` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiogg` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `mean` text CHARACTER SET utf8,
  `vocabularyguidelineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`vocabularycontentid`),
  KEY `FK_VOCO_VOGU_idx` (`vocabularyguidelineid`),
  CONSTRAINT `FK_VOCO_VOGU` FOREIGN KEY (`vocabularyguidelineid`) REFERENCES `vocabularyguideline` (`vocabularyguidelineid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularycontent`
--

LOCK TABLES `vocabularycontent` WRITE;
/*!40000 ALTER TABLE `vocabularycontent` DISABLE KEYS */;
INSERT INTO `vocabularycontent` VALUES (13,1,'abide by','/??\'baid/','abide_by.jpg','abide_by.mp3','abide_by.ogg','(v): t??n tr???ng, tu??n theo, gi??? (l???i)',3),(14,2,'agreement','/??\'gri:m??nt/','agreement.jpg','agreement.mp3','agreement.ogg','(n): h???p ?????ng, giao k??o, s??? ?????ng ??/th???a thu???n v???i nhau',3),(15,3,'assurance','/??\'??u??r??ns/','assurance.jpg','assurance.mp3','assurance.ogg','(n): s??? cam ??oan, b???o ?????m, ch???c ch???n; s??? tin ch???c, t??? tin',3),(16,4,'cancellation','/,k??nse\'lei??n/','cancellation.jpg','cancellation.mp3','cancellation.ogg','(n): s??? b??i b???, h???y b???',3);
/*!40000 ALTER TABLE `vocabularycontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabularyguideline`
--

DROP TABLE IF EXISTS `vocabularyguideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vocabularyguideline` (
  `vocabularyguidelineid` int(11) NOT NULL AUTO_INCREMENT,
  `vocabularyname` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `vocabularyimage` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `checknoidung` int(11) DEFAULT NULL,
  PRIMARY KEY (`vocabularyguidelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularyguideline`
--

LOCK TABLES `vocabularyguideline` WRITE;
/*!40000 ALTER TABLE `vocabularyguideline` DISABLE KEYS */;
INSERT INTO `vocabularyguideline` VALUES (3,'B??i 1: Contracts - H???p ?????ng','contract.jpg',1);
/*!40000 ALTER TABLE `vocabularyguideline` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-18 18:14:41

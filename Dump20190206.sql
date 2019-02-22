-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	5.7.24-log

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_num` int(11) NOT NULL AUTO_INCREMENT,
  `customer_num` int(11) NOT NULL,
  `product_num` int(11) NOT NULL,
  `quan` int(11) NOT NULL,
  PRIMARY KEY (`cart_num`),
  KEY `member_member_num_fk` (`customer_num`),
  KEY `mechandise_merc_num_fk` (`product_num`),
  CONSTRAINT `mechandise_merc_num_fk` FOREIGN KEY (`product_num`) REFERENCES `merchandise` (`merc_num`),
  CONSTRAINT `member_member_num_fk` FOREIGN KEY (`customer_num`) REFERENCES `member` (`member_num`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,19,1),(2,1,18,2),(19,1,9,10),(20,1,12,1),(21,1,13,1),(23,1,19,2),(32,1,20,1),(36,1,20,1),(39,1,19,5),(40,1,15,2),(41,1,20,1),(42,1,11,2),(43,1,19,1),(55,2,20,1),(83,4,19,2),(84,4,9,2),(89,15,19,2),(90,15,15,4),(91,2,15,4),(92,2,14,4),(93,2,6,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_num` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `birth` varchar(20) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`member_num`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'ubunsa','1','우분사','010-3333-5555','dodo@naver.com','19911106','2019-01-14',NULL),(2,'demian','1','김성민','010-7186-6065','stranger_m@naver.com','19911106','2019-01-21',NULL),(3,'o2o2','1234','정재원','23232','3232@nave.rocm','2019-12-01','2019-01-21',NULL),(4,'stranger','1','이방인','010-7890-1234','stranger_m@naver.com','19911106','2019-01-23',NULL),(5,'newdegree','1','김태화','010-4564-1230','newdegree@naver.com','19911112','2019-01-23',NULL),(6,'kimsh8664','kimsh8664','김성훈','010-4865-6835','dnwjdtkfkd7@nate.com','860604','2019-01-23',NULL),(7,'barean','12345','생선킴','010-1234-5678','barishd@naver.com','1963-04-11','2019-01-26',NULL),(8,'112','123','김생민','0101231234','ddg@nnd.com','2019-01-01','2019-01-26',NULL),(9,'iuloveme','123123','신민아','01089258444','dhfhfj@naver.com','2019-01-24','2019-01-26',NULL),(10,'abc123','abc123','김성민','01037488876','','2019-05-09','2019-01-28',NULL),(11,'qorwnstm','gosqls12','김백준','01075656552','','','2019-01-28',NULL),(12,'dos','1','김성민','010-1234-7777','stranger@naver.com','1991-11-06','2019-01-29',NULL),(13,'iii','1','김성민','010-0000-0000','dodo123@gmail.com','1990-10-10','2019-01-29','13480/경기 성남시 분당구 대왕판교로 477/경기 성남시 분당구 판교동 649/ / (판교동)'),(14,'ony','1','지디','010-7892-8887','stragner_m@naver.com','1991-11-30','2019-02-01','13480/경기 성남시 분당구 대왕판교로 477/경기 성남시 분당구 판교동 649/ / (판교동)'),(15,'J_ony97','1','정원','010-7186-6067','demian10@naver.com','1997-05-01','2019-02-01','48060/부산 해운대구 APEC로 17/부산 해운대구 우동 1514/ 102동/ (우동)'),(16,'hyensuk123','qazwsx0987**','성민찐따','000-0097-6778','qaush@nate.com','2017-03-02','2019-02-02',' / / / / '),(17,'qudgus463','1','손병현','010-9391-4976','qudgus463@naver.com','1991-04-17','2019-02-02',' / / / / ');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchandise`
--

DROP TABLE IF EXISTS `merchandise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchandise` (
  `merc_num` int(11) NOT NULL,
  `merc_name` varchar(30) NOT NULL,
  `supply` varchar(30) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `volume` varchar(20) NOT NULL,
  `al_degree` varchar(20) DEFAULT NULL,
  `feature` varchar(50) DEFAULT NULL,
  `image` varchar(30) NOT NULL,
  `thumb_nail` varchar(30) NOT NULL,
  PRIMARY KEY (`merc_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchandise`
--

LOCK TABLES `merchandise` WRITE;
/*!40000 ALTER TABLE `merchandise` DISABLE KEYS */;
INSERT INTO `merchandise` VALUES (0,'default','default',0,'default','default','default','default','default'),(1,'gentleman lager','playground_brewery',5000,'500ml','7.6%','classic pilsner lager','m1_image','m1_thumb_nail'),(2,'joker pale ale','playground_brewery',5000,'500ml','5.6%','golden pale ale','m2_image','m2_thumb_nail'),(3,'monk american ipa','playground_brewery',5000,'500ml','7.2%','dry american ipa','m3_image','m3_thumb_nail'),(4,'witch chocolate stout','playground_brewery',5000,'500ml','5.7%','bitter and sweat chocolate stout','m4_image','m4_thumb_nail'),(5,'madam wheat ale','playground_brewery',5000,'500ml','5.6%','cherry flavored wheat ale','m5_image','m5_thumb_nail'),(6,'mosaic ipa','kabrew',5000,'500ml','6.5%','india pale ale','m6_image','m6_thumb_nail'),(7,'peach ale','kabrew',5000,'500ml','4.5%','germanish peach ale','m7_image','m7_thumb_nail'),(8,'dark ale','kabrew',5000,'500ml','4.5%','coffee flavored ale','m8_image','m8_thumb_nail'),(9,'coconut porter','kabrew',5000,'500ml','4.5%','coconut flavored ale','m9_image','m9_thumb_nail'),(10,'black cat ipa','kabrew',5000,'500ml','5.5%','india dark pale ale','m10_image','m10_thumb_nail'),(11,'night walk','weizenhaus_beer',5000,'500ml','5.0%','brown ale with chestnut','m11_image','m11_thumb_nail'),(12,'silk river','weizenhaus_beer',5000,'500ml','4.5%','smooth citrus flavored ale','m12_image','m12_thumb_nail'),(13,'princess weizen','weizenhaus_beer',5000,'500ml','5.0%','weizenhaus signature ale','m13_image','m13_thumb_nail'),(14,'bangmoon ipa','weizenhaus_beer',5000,'500ml','6.3%','rich flavor ipa','m14_image','m14_thumb_nail'),(15,'226 golden ale','weizenhaus_beer',5000,'500ml','4.5%','citrus flavor golden ale','m15_image','m15_thumb_nail'),(16,'british stout','gorilla_brewing_co',5000,'500ml','6.3%','dark rich smooth stout','m16_image','m16_thumb_nail'),(17,'gorilla blonde ale','gorilla_brewing_co',5000,'500ml','5.2%','caramel flavored blonde ale','m17_image','m17_thumb_nail'),(18,'gorilla ipa','gorilla_brewing_co',5000,'500ml','5.4%','classic amber ipa','m18_image','m18_thumb_nail'),(19,'busan pale ale','gorilla_brewing_co',5000,'500ml','4.5%','floral pale ale','m19_image','m19_thumb_nail'),(20,'raspberry wheat','gorilla_brewing_co',5000,'500ml','6.3%','sweet and sour raspberry wheat','m20_image','m20_thumb_nail');
/*!40000 ALTER TABLE `merchandise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordertable` (
  `order_num` int(11) NOT NULL AUTO_INCREMENT,
  `customer_num` int(11) DEFAULT NULL,
  `productNo` int(11) NOT NULL,
  `quan` int(11) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`order_num`),
  KEY `member_member_num_order_fk` (`customer_num`),
  KEY `mechandise_merc_num_order_fk` (`productNo`),
  CONSTRAINT `mechandise_merc_num_order_fk` FOREIGN KEY (`productNo`) REFERENCES `merchandise` (`merc_num`),
  CONSTRAINT `member_member_num_order_fk` FOREIGN KEY (`customer_num`) REFERENCES `member` (`member_num`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertable`
--

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (1,1,15,4,'payment','2019-01-18'),(2,1,20,4,'payment','2019-01-18'),(3,1,14,4,'payment','2019-01-18'),(4,1,19,6,'payment','2019-01-18'),(5,1,11,7,'payment','2019-01-18'),(6,1,12,10,'payment','2019-01-18'),(7,1,20,10,'payment','2019-01-18'),(8,1,20,3,'payment','2019-01-18'),(9,1,9,3,'payment','2019-01-18'),(10,1,12,5,'payment','2019-01-18'),(11,1,13,1,'payment','2019-01-18'),(12,1,12,1,'payment','2019-01-18'),(13,1,9,10,'payment','2019-01-18'),(14,1,18,2,'payment','2019-01-18'),(15,1,19,1,'payment','2019-01-18'),(26,1,20,1,'payment','2019-01-18'),(27,1,20,0,'payment','2019-01-18'),(28,1,20,1,'payment','2019-01-18'),(29,1,20,0,'payment','2019-01-18'),(30,1,20,0,'payment','2019-01-18'),(31,1,20,1,'payment','2019-01-18'),(32,1,20,1,'payment','2019-01-18'),(33,1,19,1,'payment','2019-01-18'),(34,1,19,2,'payment','2019-01-18'),(35,1,13,1,'payment','2019-01-18'),(36,1,12,1,'payment','2019-01-18'),(37,1,9,10,'payment','2019-01-18'),(38,1,20,1,'payment','2019-01-18'),(39,1,20,0,'payment','2019-01-18'),(40,1,20,0,'payment','2019-01-18'),(41,1,20,1,'payment','2019-01-18'),(42,1,20,1,'payment','2019-01-18'),(43,1,19,1,'payment','2019-01-18'),(44,1,19,2,'payment','2019-01-18'),(45,1,13,1,'payment','2019-01-18'),(46,1,12,1,'payment','2019-01-18'),(47,1,9,10,'payment','2019-01-18'),(48,1,20,1,'payment','2019-01-18'),(49,1,20,0,'payment','2019-01-18'),(50,1,20,0,'payment','2019-01-18'),(51,1,20,1,'payment','2019-01-18'),(52,1,20,1,'payment','2019-01-18'),(53,1,19,1,'payment','2019-01-18'),(54,1,19,2,'payment','2019-01-18'),(55,1,13,1,'payment','2019-01-18'),(56,1,12,1,'payment','2019-01-18'),(57,1,9,10,'payment','2019-01-18'),(58,1,20,1,'payment','2019-01-18'),(59,1,20,0,'payment','2019-01-18'),(60,1,20,0,'payment','2019-01-18'),(61,1,20,1,'payment','2019-01-18'),(62,1,20,1,'payment','2019-01-18'),(63,1,19,1,'payment','2019-01-18'),(64,1,19,2,'payment','2019-01-18'),(65,1,13,1,'payment','2019-01-18'),(66,1,12,1,'payment','2019-01-18'),(67,1,9,10,'payment','2019-01-18'),(68,1,20,1,'payment','2019-01-18'),(69,1,20,1,'payment','2019-01-18'),(70,1,20,0,'payment','2019-01-18'),(71,1,20,0,'payment','2019-01-18'),(72,1,20,1,'payment','2019-01-18'),(73,1,20,1,'payment','2019-01-18'),(74,1,19,1,'payment','2019-01-18'),(75,1,19,2,'payment','2019-01-18'),(76,1,13,1,'payment','2019-01-18'),(77,1,12,1,'payment','2019-01-18'),(78,1,9,10,'payment','2019-01-18'),(79,1,20,1,'payment','2019-01-18'),(80,1,20,1,'payment','2019-01-18'),(81,1,20,1,'payment','2019-01-18'),(82,1,20,1,'payment','2019-01-18'),(83,1,20,1,'payment','2019-01-18'),(84,1,20,1,'payment','2019-01-18'),(85,1,20,0,'payment','2019-01-18'),(86,1,20,0,'payment','2019-01-18'),(87,1,20,1,'payment','2019-01-18'),(88,1,20,1,'payment','2019-01-18'),(89,1,19,1,'payment','2019-01-18'),(90,1,19,2,'payment','2019-01-18'),(91,1,13,1,'payment','2019-01-18'),(92,1,20,1,'payment','2019-01-18'),(93,1,20,1,'payment','2019-01-18'),(94,1,20,1,'payment','2019-01-18'),(95,1,20,0,'payment','2019-01-18'),(96,1,20,0,'payment','2019-01-18'),(97,1,20,1,'payment','2019-01-18'),(98,1,20,1,'payment','2019-01-18'),(99,1,19,1,'payment','2019-01-18'),(100,1,19,2,'payment','2019-01-18'),(101,1,13,1,'payment','2019-01-18'),(102,1,20,1,'payment','2019-01-18'),(103,1,20,1,'payment','2019-01-18'),(104,1,20,1,'payment','2019-01-18'),(105,1,20,0,'payment','2019-01-18'),(106,1,20,0,'payment','2019-01-18'),(107,1,20,1,'payment','2019-01-18'),(108,1,20,1,'payment','2019-01-18'),(109,1,19,1,'payment','2019-01-18'),(110,1,19,2,'payment','2019-01-18'),(111,1,13,1,'payment','2019-01-18'),(112,1,20,1,'payment','2019-01-18'),(113,1,20,1,'payment','2019-01-18'),(114,1,20,1,'payment','2019-01-18'),(115,1,20,0,'payment','2019-01-18'),(116,1,20,0,'payment','2019-01-18'),(117,1,20,1,'payment','2019-01-18'),(118,1,20,1,'payment','2019-01-18'),(119,1,19,1,'payment','2019-01-18'),(120,1,19,2,'payment','2019-01-18'),(121,1,13,1,'payment','2019-01-18'),(122,1,20,1,'payment','2019-01-18'),(123,1,20,1,'payment','2019-01-18'),(124,1,20,1,'payment','2019-01-18'),(125,1,20,0,'payment','2019-01-18'),(126,1,20,0,'payment','2019-01-18'),(127,1,20,1,'payment','2019-01-18'),(128,1,20,1,'payment','2019-01-18'),(129,1,19,1,'payment','2019-01-18'),(130,1,19,2,'payment','2019-01-18'),(131,1,13,1,'payment','2019-01-18'),(132,1,20,1,'payment','2019-01-18'),(133,1,20,1,'payment','2019-01-18'),(134,1,20,1,'payment','2019-01-18'),(135,1,20,0,'payment','2019-01-18'),(136,1,20,0,'payment','2019-01-18'),(137,1,20,1,'payment','2019-01-18'),(138,1,20,1,'payment','2019-01-18'),(139,1,19,1,'payment','2019-01-18'),(140,1,19,2,'payment','2019-01-18'),(141,1,13,1,'payment','2019-01-18'),(142,1,19,5,'payment','2019-01-18'),(143,1,20,1,'payment','2019-01-18'),(144,1,20,1,'payment','2019-01-18'),(145,1,20,1,'payment','2019-01-18'),(146,1,20,0,'payment','2019-01-18'),(147,1,20,0,'payment','2019-01-18'),(148,1,20,1,'payment','2019-01-18'),(149,1,20,1,'payment','2019-01-18'),(150,1,19,1,'payment','2019-01-18'),(151,1,19,2,'payment','2019-01-18'),(152,1,19,5,'payment','2019-01-18'),(153,1,20,1,'payment','2019-01-18'),(154,1,20,1,'payment','2019-01-18'),(155,1,20,1,'payment','2019-01-18'),(156,1,20,0,'payment','2019-01-18'),(157,1,20,0,'payment','2019-01-18'),(158,1,20,1,'payment','2019-01-18'),(159,1,20,1,'payment','2019-01-18'),(160,1,19,1,'payment','2019-01-18'),(161,1,19,2,'payment','2019-01-18'),(162,1,19,5,'payment','2019-01-18'),(163,1,20,1,'payment','2019-01-18'),(164,1,20,1,'payment','2019-01-18'),(165,1,20,1,'payment','2019-01-18'),(166,1,20,0,'payment','2019-01-18'),(167,1,20,0,'payment','2019-01-18'),(168,1,20,1,'payment','2019-01-18'),(169,1,20,1,'payment','2019-01-18'),(170,1,19,1,'payment','2019-01-18'),(171,1,19,2,'payment','2019-01-18'),(172,1,19,5,'payment','2019-01-18'),(173,1,20,1,'payment','2019-01-18'),(174,1,20,1,'payment','2019-01-18'),(175,1,20,1,'payment','2019-01-18'),(176,1,20,0,'payment','2019-01-18'),(177,1,20,0,'payment','2019-01-18'),(178,1,20,1,'payment','2019-01-18'),(179,1,20,1,'payment','2019-01-18'),(180,1,19,1,'payment','2019-01-18'),(181,1,19,2,'payment','2019-01-18'),(182,1,15,2,'payment','2019-01-18'),(183,1,15,2,'payment','2019-01-18'),(184,1,15,2,'payment','2019-01-18'),(185,1,15,2,'payment','2019-01-18'),(186,1,15,2,'payment','2019-01-18'),(187,1,15,2,'payment','2019-01-18'),(188,1,20,1,'payment','2019-01-18'),(189,1,20,1,'payment','2019-01-18'),(190,1,20,1,'payment','2019-01-18'),(191,1,15,2,'payment','2019-01-18'),(192,1,15,2,'payment','2019-01-18'),(193,1,15,2,'payment','2019-01-18'),(194,1,15,2,'payment','2019-01-18'),(195,1,15,2,'payment','2019-01-18'),(196,1,15,2,'payment','2019-01-18'),(197,1,11,2,'payment','2019-01-18'),(198,1,11,2,'payment','2019-01-18'),(199,1,20,1,'payment','2019-01-18'),(200,1,15,2,'payment','2019-01-18'),(201,1,19,5,'payment','2019-01-18'),(202,1,20,1,'payment','2019-01-18'),(203,1,20,1,'payment','2019-01-18'),(204,1,20,1,'payment','2019-01-18'),(205,1,20,1,'payment','2019-01-18'),(206,1,20,1,'payment','2019-01-18'),(207,1,19,1,'payment','2019-01-18'),(208,1,11,2,'payment','2019-01-18'),(209,1,11,2,'payment','2019-01-18'),(210,1,11,2,'payment','2019-01-18'),(211,1,11,2,'payment','2019-01-18'),(212,1,11,2,'payment','2019-01-18'),(213,1,11,2,'payment','2019-01-18'),(214,1,11,2,'payment','2019-01-18'),(215,1,11,2,'payment','2019-01-18'),(216,1,20,1,'payment','2019-01-18'),(217,1,20,1,'payment','2019-01-18'),(218,1,20,1,'payment','2019-01-18'),(219,1,20,1,'payment','2019-01-18'),(220,1,11,2,'payment','2019-01-18'),(221,1,11,2,'payment','2019-01-18'),(222,1,11,2,'payment','2019-01-18'),(223,1,11,2,'payment','2019-01-18'),(224,1,11,2,'payment','2019-01-18'),(225,1,11,2,'payment','2019-01-18'),(226,1,11,2,'payment','2019-01-18'),(227,1,20,1,'payment','2019-01-18'),(228,1,11,2,'payment','2019-01-18'),(229,1,11,2,'payment','2019-01-18'),(230,1,11,2,'payment','2019-01-18'),(231,1,11,2,'payment','2019-01-18'),(232,1,11,2,'payment','2019-01-18'),(233,1,11,2,'payment','2019-01-18'),(234,1,11,2,'payment','2019-01-18'),(235,1,11,2,'payment','2019-01-18'),(236,1,11,2,'payment','2019-01-18'),(237,1,11,2,'payment','2019-01-18'),(238,1,11,2,'payment','2019-01-18'),(239,1,11,2,'payment','2019-01-18'),(240,1,11,2,'payment','2019-01-18'),(241,1,11,2,'payment','2019-01-18'),(242,1,11,2,'payment','2019-01-18'),(243,1,11,2,'payment','2019-01-18'),(244,1,11,2,'payment','2019-01-18'),(245,1,11,2,'payment','2019-01-18'),(246,1,11,2,'payment','2019-01-18'),(247,1,11,2,'payment','2019-01-18'),(248,1,11,2,'payment','2019-01-18'),(249,2,15,2,'무통장 입금/김성민','2019-01-21'),(250,2,16,2,'무통장 입금/김성민','2019-01-21'),(251,2,17,2,'무통장 입금/김성민','2019-01-21'),(252,2,18,2,'무통장 입금/김성민','2019-01-21'),(253,2,20,2,'무통장 입금/김성민','2019-01-21'),(254,2,19,2,'무통장 입금/김성민','2019-01-21'),(255,2,11,2,'무통장 입금/김성민','2019-01-21'),(256,3,19,1,'무통장 입금/정재원','2019-01-21'),(257,3,20,1,'무통장 입금/정재원','2019-01-21'),(258,2,19,2,'무통장 입금/김성민','2019-01-21'),(259,4,16,1,'무통장 입금/이방인','2019-01-23'),(260,4,10,2,'무통장 입금/이방인','2019-01-23'),(261,4,20,2,'무통장 입금/이방인','2019-01-23'),(262,4,18,2,'무통장 입금/이방인','2019-01-23'),(263,4,15,3,'무통장 입금/이방인','2019-01-23'),(264,4,14,2,'무통장 입금/이방인','2019-01-23'),(265,4,12,2,'무통장 입금/이방인','2019-01-23'),(266,4,17,1,'무통장 입금/이방인','2019-01-23'),(267,2,13,2,'무통장 입금/김성민','2019-01-23'),(268,2,9,2,'무통장 입금/김성민','2019-01-23'),(269,2,7,2,'무통장 입금/김성민','2019-01-23'),(270,5,20,2,'무통장 입금/김태화','2019-01-23'),(271,5,14,2,'무통장 입금/김태화','2019-01-23'),(272,5,12,2,'무통장 입금/김태화','2019-01-23'),(273,5,19,2,'무통장 입금/김태화','2019-01-23'),(274,5,15,2,'무통장 입금/김태화','2019-01-23'),(275,5,18,2,'무통장 입금/김태화','2019-01-23'),(276,5,13,2,'무통장 입금/김태화','2019-01-23'),(277,6,20,1,'무통장 입금/김성훈','2019-01-23'),(278,6,20,1,'무통장 입금/김성훈','2019-01-23'),(279,5,8,2,'무통장 입금/김태화','2019-01-23'),(280,5,6,2,'무통장 입금/김태화','2019-01-23'),(281,5,5,2,'무통장 입금/김태화','2019-01-23'),(282,5,3,1,'무통장 입금/김태화','2019-01-23'),(283,4,12,1,'무통장 입금/이방인','2019-01-23'),(284,4,18,1,'무통장 입금/이방인','2019-01-23'),(285,4,20,1,'무통장 입금/이방인','2019-01-23'),(286,7,11,1,'무통장 입금/생선킴','2019-01-26'),(287,7,11,1,'무통장 입금/생선킴','2019-01-26'),(288,7,11,1,'무통장 입금/생선킴','2019-01-26'),(289,7,19,2,'무통장 입금/생선킴','2019-01-26'),(290,8,16,7,'무통장 입금/김생민','2019-01-26'),(291,9,13,2,'무통장 입금/신민아','2019-01-26'),(292,9,13,2,'무통장 입금/신민아','2019-01-26'),(293,8,11,3,'무통장 입금/김생민','2019-01-26'),(294,13,19,1,'무통장 입금/김성민','2019-01-29'),(295,2,4,1,'무통장 입금/김성민','2019-02-01'),(296,2,7,1,'무통장 입금/김성민','2019-02-01'),(297,14,18,1,'무통장 입금/지디','2019-02-01'),(298,15,14,4,'무통장 입금/정원','2019-02-01'),(299,16,19,3,'무통장 입금/성민찐따','2019-02-02'),(300,17,4,1,'무통장 입금/손병현','2019-02-02');
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `QnA_num` int(11) NOT NULL,
  `customerId` varchar(20) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `file` varchar(50) DEFAULT NULL,
  `readcount` int(11) DEFAULT NULL,
  `numProduct` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`QnA_num`),
  KEY `member_member_id_customerId_fk` (`customerId`),
  KEY `mechandise_merc_num_question_fk` (`numProduct`),
  CONSTRAINT `mechandise_merc_num_question_fk` FOREIGN KEY (`numProduct`) REFERENCES `merchandise` (`merc_num`),
  CONSTRAINT `member_member_id_customerId_fk` FOREIGN KEY (`customerId`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (2,'demian','#상품 문의 드립니다.','상품 문의 드립니다.',NULL,5,17,'2019-01-23'),(4,'stranger','#상품 문의 드립니다.','\r\n패, 하나에 소학교 부끄러운 당신은 어머니, 이름과, 이제 남은 있습니다. \r\n시인의 멀리 내린 가득 봅니다. 사랑과 다 무엇인지 이름과, 하나에 아스라히 묻힌 부끄러운 까닭입니다.','re052.jpg',21,20,'2019-01-23'),(5,'demian','#입금 문의 드립니다.','무통장 입금만 가능한가요?\r\n너무 불편하네요...',NULL,1,0,'2019-01-23'),(7,'newdegree','#배송 문의 드립니다.','일주일이나 기다리는 중입니다.\r\n배송이 너무 느리네요 ...\r\n',NULL,25,0,'2019-01-23'),(8,'newdegree','#상품 문의 드립니다.',' \r\n무성할 않은 아름다운 버리었습니다. 언덕 어머니 별 밤을 우는 덮어 가을 같이 멀리 까닭입니다. 오면 이국 같이 계집애들의 남은 별들을 까닭입니다.',NULL,2,11,'2019-01-23'),(22,'barean','#상품 문의 드립니다.','Silk River 마시면 오줌 줄기도 비단결 처럼 나오나요?\r\n\r\n밑에 게시글 알바들 간첩 같네요. 비밀 암호문 게시하고',NULL,5,12,'2019-01-26'),(23,'hyensuk123','#상품 문의 드립니다.','성민이는 왜 찐따인까?',NULL,1,7,'2019-02-02');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_num` int(11) NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `productNo` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `file` varchar(50) DEFAULT NULL,
  `evaluation` varchar(10) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`review_num`),
  KEY `member_member_id_fk` (`customer_id`),
  KEY `mechandise_merc_num_review_fk` (`productNo`),
  CONSTRAINT `mechandise_merc_num_review_fk` FOREIGN KEY (`productNo`) REFERENCES `merchandise` (`merc_num`),
  CONSTRAINT `member_member_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (5,'o2o2',19,'환불해주세요','곰팡이가 피었네여',NULL,'100','2019-01-21'),(6,'demian',11,'청주 대표 맥주 밤마실 입니다.','물이 깨끗하기로 유명한 청주의 대표 수제 맥주 입니다.\r\n꼭 드셔보시는 것을 추천합니다.~~~~','re10.jpg','100','2019-01-21'),(8,'stranger',16,'british stout 리뷰 입니다.',' \r\n된 불러 내일 이름과, 하나에 있습니다. 봄이 하나에 많은 별 부끄러운 버리었습니다. 이런 아름다운 이런 슬퍼하는 버리었습니다.\r\n 별 북간도에 애기 위에 멀리 마디씩 없이 라이너 이름자 듯합니다. 별 이름과, 나의 라이너 이네들은 \r\n그러나 이름을 어머니, 했던 까닭입니다. 하나에 된 별들을 않은 봅니다. 같이 우는 이름을 별 어머님, 소녀들의 있습니다.','re01.jpg','90','2019-01-23'),(9,'stranger',20,'raspberry wheat 추천 드려요~~!',' \r\n소녀들의 무덤 남은 별 이름과, 시와 거외다. 무엇인지 하나에 풀이 하나에 잔디가 지나고 당신은 남은 듯합니다.\r\n 별 겨울이 때 멀리 무덤 쓸쓸함과 하늘에는 계십니다. \r\n애기 나는 차 아름다운 까닭입니다. 다 그리워 없이 까닭입니다.\r\n 않은 많은 소녀들의 나는 동경과 나는 까닭입니다.\r\n 소학교 우는 별 피어나듯이 거외다.','re11.jpg','80','2019-01-23'),(10,'stranger',10,'black cat ipa 리뷰 남겨요!!',' \r\n사랑과 가을 나는 쓸쓸함과 위에도 어머니, 별 하나에 이름을 거외다. 차 가난한 부끄러운 이국 위에도 노새, 프랑시스 아름다운 묻힌 버리었습니다. 보고, 없이 프랑시스 이네들은 하나 딴은 쉬이 무덤 계십니다. 이네들은 봄이 별빛이 옥 불러 보고, 하나 지나가는 않은 까닭입니다. 하나에 별을 차 봅니다. 릴케 언덕 아이들의 토끼, 까닭입니다.','re10.jpg','100','2019-01-23'),(11,'stranger',15,'226 golden ale ','어머니, 벌써 때 어머님, 내일 둘 노새, 봅니다. 시인의 보고, 이제 계집애들의 내일 새겨지는 버리었습니다. \r\n이름과 별 헤는 그러나 이름과, 걱정도 겨울이 남은 계십니다. \r\n다 헤는 나의 그러나 딴은 지나가는 어머니 밤을 어머님, 계십니다. \r\n잔디가 한 우는 까닭입니다.','re09.jpg','100','2019-01-23'),(12,'stranger',14,'방문 아이피에이 후기입니다.~~','위에도 그리워 별 자랑처럼 벌레는 못 벌써 있습니다. 이름을 피어나듯이 하나에 버리었습니다. 프랑시스 책상을 멀듯이, 하나에 쉬이 소학교 지나가는 하나에 있습니다. 같이 시인의 흙으로 벌레는 있습니다. 시인의 그리워 하나 아스라히 봅니다. 하나의 위에 새겨지는 아침이 위에도 버리었습니다.','re13.jpg','100','2019-01-23'),(13,'stranger',18,'고릴라 아이피에이 !!!','풀이 추억과 언덕 오면 토끼, 하나에 버리었습니다. 걱정도 아스라히 하나에 봅니다. \r\n자랑처럼 마디씩 한 까닭입니다. 까닭이요, 추억과 시와 부끄러운 가슴속에 계집애들의 새워 까닭입니다. \r\n그리워 오면 아이들의 쓸쓸함과 위에 강아지, 마리아 우는 봅니다. 덮어 하늘에는 별 책상을 애기 이름자 된 거외다.','re05.jpg','100','2019-01-23'),(14,'stranger',12,'물이 맑은 도시 금강의 대표수제맥주!!!',' \r\n까닭이요, 이네들은 쉬이 걱정도 토끼, 릴케 별 피어나듯이 봅니다. \r\n경, 벌써 이름을 있습니다. 때 아침이 내 사람들의 불러 하나에 버리었습니다. \r\n파란 겨울이 내 쓸쓸함과 까닭입니다. 둘 내일 너무나 시와 계집애들의 이국 새워 마리아 어머니, 계십니다.','re02.jpg','50','2019-01-23'),(22,'newdegree',20,'딸기의 달콤함이 느껴지는 수제맥주','딴은 않은 가을 이국 아스라히 북간도에 이런 거외다. 딴은 아무 없이 불러 별들을 나는 듯합니다. 하나에 헤는 멀듯이, 자랑처럼 봅니다.','re12.jpg','80','2019-01-23'),(23,'newdegree',14,'## bangmoon ipa 입니다.','하나 동경과 속의 무엇인지 어머니, 이런 새워 차 써 봅니다. 때 헤는 오면 이름과, 계절이 무성할 하나에 봅니다. 어머님, 가득 별을 듯합니다. 마리아 계절이 했던 거외다.','main02 logo.jpg','80','2019-01-23'),(24,'newdegree',12,'금강 silk river!!!',' \r\n없이 이제 오면 아스라히 멀듯이, 오는 둘 듯합니다. 밤을 나의 이름과, 프랑시스 비둘기, 별 당신은 까닭입니다. 어머니, 패, 덮어 이름을 이런 파란 강아지, 봅니다.','main 07 logo.png','80','2019-01-23'),(25,'newdegree',19,'부산 ~~~ ##busan','차 때 쉬이 이 밤이 언덕 어머님, 노루, 듯합니다. 추억과 옥 이네들은 나는 불러 다 봅니다.','main01.jpg','90','2019-01-23'),(26,'newdegree',15,'이이육 골든 에일~~~!!!',' \r\n못 가난한 이런 추억과 아이들의 비둘기, 겨울이 것은 이네들은 있습니다. 하나에 아무 가을로 추억과 듯합니다. 경, 마디씩 이름과, 오는 토끼, 노새, 했던 사랑과 우는 있습니다. 하나에 마디씩 우는 하나의 이국 당신은 나의 오는 지나고 있습니다.','갈매기 브루잉 로고.jpg','90','2019-01-23'),(27,'newdegree',18,'릴라 릴라 고릴라 ~~!','이름과, 하늘에는 소녀들의 하나 딴은 있습니다. 딴은 차 별 있습니다. 사랑과 새워 많은 봅니다.','main 03 .jpg','80','2019-01-23'),(28,'newdegree',13,'공주가 마시는 수제맥주',' \r\n하늘에는 벌써 둘 옥 별들을 지나고 강아지, 거외다. 별 하늘에는 가슴속에 별 보고, 이름을 계십니다. 우는 같이 아직 보고, 봅니다. 어머니, 내 말 하나에 이름을 까닭이요, 패, 봅니다.','main06 logo.jpg','70','2019-01-23'),(29,'kimsh8664',20,'빠른 배송 감사합니다 ~!!','빠른 배송 감사합니다 ~!!빠른 배송 감사합니다 ~!!빠른 배송 감사합니다 ~!!빠른 배송 감사합니다 ~!!빠른 배송 감사합니다 ~!!',NULL,'10','2019-01-23'),(30,'newdegree',8,'까만 에일 이루 - 까만안경아시는분~~','하나에 하나의 이름과, 새워 그리고 쉬이 둘 이국 별 계십니다. 아스라히 어머니 까닭이요, 소녀들의 않은 이름과, 동경과 비둘기, 봅니다. 추억과 그리워 경, 있습니다.',NULL,'70','2019-01-23'),(31,'newdegree',6,'모자익 아이페에이?? 모자이크의 준말인가?','멀리 이 마디씩 우는 이름과, 보고, 멀듯이, 거외다. 피어나듯이 별 별이 오는 청춘이 풀이 거외다. 별 말 덮어 버리었습니다.','re051.jpg','80','2019-01-23'),(32,'newdegree',5,'마담 하회탈이 멋지군요','봄이 북간도에 써 있습니다. 북간도에 하나에 다 많은 된 있습니다. 오면 시인의 무성할 북간도에 듯합니다.','re072.jpg','80','2019-01-23'),(33,'barean',19,'맥주에 거품이 많네요','맥주에 거품이 많네요. 환풀해주세요\r\n\r\n윗분 말 처럼 곰팡이도 피어있어요',NULL,'20','2019-01-26'),(34,'112',16,'맛없어요','환불해주세요',NULL,'20','2019-01-26'),(35,'112',11,'하이','하이',NULL,'100','2019-01-26'),(36,'iuloveme',13,'안녕하세요 신민아입니다.','맥주가 정말 맛있네요!!!\r\n',NULL,'100','2019-01-26'),(37,'qorwnstm',0,'맥주가 생각나는 밤입니다','한잔?',NULL,'100','2019-01-28'),(38,'iii',19,'맛나요','맛있어요',NULL,'90','2019-01-29'),(39,'hyensuk123',19,'사장님!','진짜 병신이세요????',NULL,'100','2019-02-02'),(40,'qudgus463',4,'맛이 개노답 환불해주세요','1',NULL,'100','2019-02-02');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-06 15:57:28

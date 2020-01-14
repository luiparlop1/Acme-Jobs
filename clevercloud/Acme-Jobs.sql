-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: acme-jobs
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2a5vcjo3stlfcwadosjfq49l1` (`user_account_id`),
  CONSTRAINT `FK_2a5vcjo3stlfcwadosjfq49l1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (4,0,3),(7,0,6);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adrian_bulletin`
--

DROP TABLE IF EXISTS `adrian_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adrian_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adrian_bulletin`
--

LOCK TABLES `adrian_bulletin` WRITE;
/*!40000 ALTER TABLE `adrian_bulletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `adrian_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alejandro_bulletin`
--

DROP TABLE IF EXISTS `alejandro_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alejandro_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alejandro_bulletin`
--

LOCK TABLES `alejandro_bulletin` WRITE;
/*!40000 ALTER TABLE `alejandro_bulletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `alejandro_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `more_info` varchar(255) DEFAULT NULL,
  `text` varchar(1024) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
INSERT INTO `announcement` VALUES (33,0,'2019-09-06 08:10:00.000000','http:/algo.com','Description01','Titulo01'),(34,0,'2019-10-06 08:10:00.000000','http:/algo.com','Description02','Titulo02'),(35,0,'2019-10-20 08:10:00.000000','http:/algo.com','Description03','Titulo03'),(36,0,'2019-08-10 08:10:00.000000','http:/algo.com','Description04','Titulo04'),(37,0,'2019-10-27 09:10:00.000000',NULL,'Description05','Titulo05');
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anonymous`
--

DROP TABLE IF EXISTS `anonymous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anonymous` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6lnbc6fo3om54vugoh8icg78m` (`user_account_id`),
  CONSTRAINT `FK_6lnbc6fo3om54vugoh8icg78m` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anonymous`
--

LOCK TABLES `anonymous` WRITE;
/*!40000 ALTER TABLE `anonymous` DISABLE KEYS */;
INSERT INTO `anonymous` VALUES (2,0,1);
/*!40000 ALTER TABLE `anonymous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `qualifications` varchar(1024) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `skills` varchar(1024) DEFAULT NULL,
  `statements` varchar(1024) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `job_id` int(11) NOT NULL,
  `worker_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ct7r18vvxl5g4c4k7aefpa4do` (`reference`),
  KEY `IDXg54pxa1gngqheaipukeg8jypk` (`moment`),
  KEY `IDX2q2747fhp099wkn3j2yt05fhs` (`status`),
  KEY `IDX5wwxv107kvi5si12nh4226lnx` (`moment`,`status`),
  KEY `FKoa6p4s2oyy7tf80xwc4r04vh6` (`job_id`),
  KEY `FKmbjdoxi3o93agxosoate4sxbt` (`worker_id`),
  CONSTRAINT `FKmbjdoxi3o93agxosoate4sxbt` FOREIGN KEY (`worker_id`) REFERENCES `worker` (`id`),
  CONSTRAINT `FKoa6p4s2oyy7tf80xwc4r04vh6` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (108,0,'2019-12-10 09:10:00.000000','Qualifications1','EMPA-JOBB:APPA','Skills1','Statements1','PENDING',82,28),(109,0,'2019-12-10 08:10:00.000000','Qualifications2','EMPA-JOBB:APPB','Skills2','Statements2','ACCEPTED',82,31),(110,0,'2019-12-05 09:10:00.000000','Qualifications3','EMPA-JOBC:APPA','Skills3','Statements3','REJECTED',83,28),(111,0,'2019-11-25 09:10:00.000000','Qualifications4','EMPA-JOBC:APPB','Skills4','Statements4','PENDING',83,31),(112,0,'2019-12-02 09:10:00.000000','Qualifications5','EMPA-JOBD:APPA','Skills5','Statements5','PENDING',84,28),(113,0,'2019-12-08 09:10:00.000000','Qualifications6','EMPB-JOBA:APPB','Skills6','Statements6','REJECTED',85,28),(114,0,'2019-12-10 09:10:00.000000','Qualifications7','EMPB-JOBB:APPD','Skills7','Statements7','ACCEPTED',86,28);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditor`
--

DROP TABLE IF EXISTS `auditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `firm` varchar(255) DEFAULT NULL,
  `responsibility_statement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_clqcq9lyspxdxcp6o4f3vkelj` (`user_account_id`),
  CONSTRAINT `FK_clqcq9lyspxdxcp6o4f3vkelj` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditor`
--

LOCK TABLES `auditor` WRITE;
/*!40000 ALTER TABLE `auditor` DISABLE KEYS */;
INSERT INTO `auditor` VALUES (22,0,21,'Firma 1','Algo que poner'),(25,0,24,'Firma 2','Algo que poner');
/*!40000 ALTER TABLE `auditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditor_record`
--

DROP TABLE IF EXISTS `auditor_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditor_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(1024) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `auditor_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjx5w0xtdjllmdj2el2rlx4wdj` (`auditor_id`),
  KEY `FKcpwoo69w5dhtr8nvg0xhl9qv9` (`job_id`),
  CONSTRAINT `FKcpwoo69w5dhtr8nvg0xhl9qv9` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  CONSTRAINT `FKjx5w0xtdjllmdj2el2rlx4wdj` FOREIGN KEY (`auditor_id`) REFERENCES `auditor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditor_record`
--

LOCK TABLES `auditor_record` WRITE;
/*!40000 ALTER TABLE `auditor_record` DISABLE KEYS */;
INSERT INTO `auditor_record` VALUES (103,0,'Cuerpo del auditor1','2019-09-11 08:10:00.000000',_binary '','Titulo01',22,82),(104,0,'Cuerpo del auditor2','2019-09-12 08:10:00.000000',_binary '','Titulo02',25,82),(105,0,'Cuerpo del auditor3','2019-09-13 08:10:00.000000',_binary '','Titulo03',22,83),(106,0,'Cuerpo del auditor4','2019-09-14 08:10:00.000000',_binary '','Titulo04',22,84),(107,0,'Cuerpo del auditor5','2019-09-15 08:10:00.000000',_binary '','Titulo05',25,85);
/*!40000 ALTER TABLE `auditor_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authenticated`
--

DROP TABLE IF EXISTS `authenticated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authenticated` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h52w0f3wjoi68b63wv9vwon57` (`user_account_id`),
  CONSTRAINT `FK_h52w0f3wjoi68b63wv9vwon57` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authenticated`
--

LOCK TABLES `authenticated` WRITE;
/*!40000 ALTER TABLE `authenticated` DISABLE KEYS */;
INSERT INTO `authenticated` VALUES (5,0,3),(8,0,6),(11,0,9),(14,0,12),(17,0,15),(20,0,18),(23,0,21),(26,0,24),(29,0,27),(32,0,30);
/*!40000 ALTER TABLE `authenticated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capi_bulletin`
--

DROP TABLE IF EXISTS `capi_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capi_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capi_bulletin`
--

LOCK TABLES `capi_bulletin` WRITE;
/*!40000 ALTER TABLE `capi_bulletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `capi_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge`
--

DROP TABLE IF EXISTS `challenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `challenge` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `goal_bronze` varchar(255) DEFAULT NULL,
  `goal_gold` varchar(255) DEFAULT NULL,
  `goal_silver` varchar(255) DEFAULT NULL,
  `reward_bronze` varchar(255) DEFAULT NULL,
  `reward_gold` varchar(255) DEFAULT NULL,
  `reward_silver` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge`
--

LOCK TABLES `challenge` WRITE;
/*!40000 ALTER TABLE `challenge` DISABLE KEYS */;
INSERT INTO `challenge` VALUES (44,0,'2019-12-31 23:00:00.000000','Login once a day for as many days as possible to receive a prize!','Login for 5 days straight!','Login for 30 days straight!','Login for 15 days straight!','1 day premium','10 days premium','5 days premium','Sample challenge 01'),(45,0,'2020-12-04 23:00:00.000000','Post as many announcements as possible to receive a prize!','Post 5 announcements!','Post 20 announcements!','Post 10 announcements!','1 day premium','10 days premium','5 days premium','Sample challenge 02'),(46,0,'2020-12-28 23:00:00.000000','Be a member for as long as possible to receive a prize!','Be a member for over a month!','Be a member for over a year!','Be a member for over 6 months!','1 week premium','Free premium','3 months premium','Sample challenge 03');
/*!40000 ALTER TABLE `challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commercial_banner`
--

DROP TABLE IF EXISTS `commercial_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commercial_banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `card` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sponsor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd0k52g7lcacefcp62kb4p9aor` (`sponsor_id`),
  CONSTRAINT `FKd0k52g7lcacefcp62kb4p9aor` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commercial_banner`
--

LOCK TABLES `commercial_banner` WRITE;
/*!40000 ALTER TABLE `commercial_banner` DISABLE KEYS */;
INSERT INTO `commercial_banner` VALUES (52,0,'5188893404505068','https://i.imgur.com/8YcXhS0.png','Flowers','https://www.flores.com',10);
/*!40000 ALTER TABLE `commercial_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6cyha9f1wpj0dpbxrrjddrqed` (`user_account_id`),
  CONSTRAINT `FK_6cyha9f1wpj0dpbxrrjddrqed` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customization_parameters`
--

DROP TABLE IF EXISTS `customization_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customization_parameters` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `spam_threshold` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customization_parameters`
--

LOCK TABLES `customization_parameters` WRITE;
/*!40000 ALTER TABLE `customization_parameters` DISABLE KEYS */;
INSERT INTO `customization_parameters` VALUES (43,0,1);
/*!40000 ALTER TABLE `customization_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customization_parameters_spam_words`
--

DROP TABLE IF EXISTS `customization_parameters_spam_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customization_parameters_spam_words` (
  `customization_parameters_id` int(11) NOT NULL,
  `spam_words` varchar(255) DEFAULT NULL,
  KEY `FKhcqquyqtys40tece78apjsbyt` (`customization_parameters_id`),
  CONSTRAINT `FKhcqquyqtys40tece78apjsbyt` FOREIGN KEY (`customization_parameters_id`) REFERENCES `customization_parameters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customization_parameters_spam_words`
--

LOCK TABLES `customization_parameters_spam_words` WRITE;
/*!40000 ALTER TABLE `customization_parameters_spam_words` DISABLE KEYS */;
INSERT INTO `customization_parameters_spam_words` VALUES (43,'cialis'),(43,'million dollar'),(43,'millon de dolares'),(43,'you\'ve won'),(43,'has ganado'),(43,'nigeria'),(43,'viagra'),(43,'hard core'),(43,'sex'),(43,'sexo');
/*!40000 ALTER TABLE `customization_parameters_spam_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customization_parameters_spam_wordsen`
--

DROP TABLE IF EXISTS `customization_parameters_spam_wordsen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customization_parameters_spam_wordsen` (
  `customization_parameters_id` int(11) NOT NULL,
  `spam_wordsen` varchar(255) DEFAULT NULL,
  KEY `FKbhkqx27mqg6ab1q178e070cgc` (`customization_parameters_id`),
  CONSTRAINT `FKbhkqx27mqg6ab1q178e070cgc` FOREIGN KEY (`customization_parameters_id`) REFERENCES `customization_parameters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customization_parameters_spam_wordsen`
--

LOCK TABLES `customization_parameters_spam_wordsen` WRITE;
/*!40000 ALTER TABLE `customization_parameters_spam_wordsen` DISABLE KEYS */;
INSERT INTO `customization_parameters_spam_wordsen` VALUES (16,'sex'),(16,'hard core'),(16,'viagra'),(16,'cialis'),(16,'nigeria'),(16,'you’ve won'),(16,'million dollar');
/*!40000 ALTER TABLE `customization_parameters_spam_wordsen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customization_parameters_spam_wordses`
--

DROP TABLE IF EXISTS `customization_parameters_spam_wordses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customization_parameters_spam_wordses` (
  `customization_parameters_id` int(11) NOT NULL,
  `spam_wordses` varchar(255) DEFAULT NULL,
  KEY `FKysc8qi3etv448vx3bp2amqna` (`customization_parameters_id`),
  CONSTRAINT `FKysc8qi3etv448vx3bp2amqna` FOREIGN KEY (`customization_parameters_id`) REFERENCES `customization_parameters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customization_parameters_spam_wordses`
--

LOCK TABLES `customization_parameters_spam_wordses` WRITE;
/*!40000 ALTER TABLE `customization_parameters_spam_wordses` DISABLE KEYS */;
INSERT INTO `customization_parameters_spam_wordses` VALUES (16,'sexo'),(16,'hard core'),(16,'viagra'),(16,'cialis'),(16,'nigeria'),(16,'has ganado'),(16,'millon de dolares');
/*!40000 ALTER TABLE `customization_parameters_spam_wordses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptor`
--

DROP TABLE IF EXISTS `descriptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descriptor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptor`
--

LOCK TABLES `descriptor` WRITE;
/*!40000 ALTER TABLE `descriptor` DISABLE KEYS */;
INSERT INTO `descriptor` VALUES (97,0,'Description01'),(98,0,'Description02'),(99,0,'Description03'),(100,0,'Description04'),(101,0,'Description05'),(102,0,'Description06');
/*!40000 ALTER TABLE `descriptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptor_duty`
--

DROP TABLE IF EXISTS `descriptor_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descriptor_duty` (
  `descriptor_id` int(11) NOT NULL,
  `dutys_id` int(11) NOT NULL,
  UNIQUE KEY `UK_gicb7at1idsamnu3xgj4i91vc` (`dutys_id`),
  KEY `FKqitedkrksd2w8qyp1fp5eao9f` (`descriptor_id`),
  CONSTRAINT `FKkm3m3388tiixfsn63295m8n13` FOREIGN KEY (`dutys_id`) REFERENCES `duty` (`id`),
  CONSTRAINT `FKqitedkrksd2w8qyp1fp5eao9f` FOREIGN KEY (`descriptor_id`) REFERENCES `descriptor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptor_duty`
--

LOCK TABLES `descriptor_duty` WRITE;
/*!40000 ALTER TABLE `descriptor_duty` DISABLE KEYS */;
INSERT INTO `descriptor_duty` VALUES (97,88),(97,89),(98,90),(100,91),(100,92),(100,93),(101,94),(102,95),(102,96);
/*!40000 ALTER TABLE `descriptor_duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duty`
--

DROP TABLE IF EXISTS `duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duty` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `percentaje` double DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duty`
--

LOCK TABLES `duty` WRITE;
/*!40000 ALTER TABLE `duty` DISABLE KEYS */;
INSERT INTO `duty` VALUES (88,0,'Description01',50.3,'Titulo01'),(89,0,'Description02',43.3,'Titulo02'),(90,0,'Description03',20.6,'Titulo03'),(91,0,'Description04',15.8,'Titulo04'),(92,0,'Description05',36.5,'Titulo05'),(93,0,'Description06',5.5,'Titulo06'),(94,0,'Description07',2.5,'Titulo07'),(95,0,'Description08',20.5,'Titulo08'),(96,0,'Description09',50.5,'Titulo09');
/*!40000 ALTER TABLE `duty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_na4dfobmeuxkwf6p75abmb2tr` (`user_account_id`),
  CONSTRAINT `FK_na4dfobmeuxkwf6p75abmb2tr` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (16,0,15,'employer 1, Inc','Sector 1'),(19,0,18,'employer 2, Inc','Sector 2');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fernando_bulletin`
--

DROP TABLE IF EXISTS `fernando_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fernando_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fernando_bulletin`
--

LOCK TABLES `fernando_bulletin` WRITE;
/*!40000 ALTER TABLE `fernando_bulletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `fernando_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (117);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investor_record`
--

DROP TABLE IF EXISTS `investor_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `investor_record` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `investing_statement` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `stars` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investor_record`
--

LOCK TABLES `investor_record` WRITE;
/*!40000 ALTER TABLE `investor_record` DISABLE KEYS */;
INSERT INTO `investor_record` VALUES (57,0,10,'Titulo01','Sector01',2),(58,0,20.5,'Titulo02','Sector02',1),(59,0,50.2,'Titulo03','Sector03',1),(60,0,5,'Titulo04','Sector04',4),(61,0,35.3,'Titulo05','Sector04',5);
/*!40000 ALTER TABLE `investor_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `more_info` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `salary_amount` double DEFAULT NULL,
  `salary_currency` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `descriptor_id` int(11) DEFAULT NULL,
  `employer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7jmfdvs0b0jx7i33qxgv22h7b` (`reference`),
  KEY `IDXfdmpnr8o4phmk81sqsano16r` (`deadline`),
  KEY `IDX28ur9xm72oo1df9g14xhnh8h3` (`status`),
  KEY `IDXal59yunywnkwi09ps7jxpr18c` (`deadline`,`status`),
  KEY `FKfqwyynnbcsq0htxho3vchpd2u` (`descriptor_id`),
  KEY `FK3rxjf8uh6fh2u990pe8i2at0e` (`employer_id`),
  CONSTRAINT `FK3rxjf8uh6fh2u990pe8i2at0e` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`id`),
  CONSTRAINT `FKfqwyynnbcsq0htxho3vchpd2u` FOREIGN KEY (`descriptor_id`) REFERENCES `descriptor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (82,1,'2020-12-27 09:10:00.000000','http://acme.com','EMPA-JOBB',501.2,'EUR',_binary '','Titulo01',97,16),(83,1,'2020-12-28 09:10:00.000000','http://acme.com','EMPA-JOBC',500,'EUR',_binary '','Titulo02',98,16),(84,1,'2020-12-29 09:10:00.000000','http://acme.com','EMPA-JOBD',400,'EUR',_binary '','Titulo03',99,16),(85,1,'2020-12-10 09:10:00.000000','http://acme.com','EMPB-JOBA',501.2,'EUR',_binary '','Titulo04',100,19),(86,1,'2020-12-11 09:10:00.000000','http://acme.com','EMPB-JOBB',5000,'EUR',_binary '','Titulo05',101,19),(87,1,'2020-12-12 09:10:00.000000','http://acme.com','EMPA-JOBX',5000,'EUR',_binary '\0','Titulo06',102,16);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `justification`
--

DROP TABLE IF EXISTS `justification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `justification` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `reason` varchar(1024) DEFAULT NULL,
  `application_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2ctploatlatw5btxcjwembifo` (`application_id`),
  CONSTRAINT `FK8ma9xucf9mh9736jhtdumt8x3` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `justification`
--

LOCK TABLES `justification` WRITE;
/*!40000 ALTER TABLE `justification` DISABLE KEYS */;
INSERT INTO `justification` VALUES (115,0,'No me gusta esta peticion',110),(116,0,'No me gusta esta peticion 2',113);
/*!40000 ALTER TABLE `justification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luis_bulletin`
--

DROP TABLE IF EXISTS `luis_bulletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luis_bulletin` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luis_bulletin`
--

LOCK TABLES `luis_bulletin` WRITE;
/*!40000 ALTER TABLE `luis_bulletin` DISABLE KEYS */;
/*!40000 ALTER TABLE `luis_bulletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mark` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `application_id` int(11) NOT NULL,
  `pacile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_bhkykjd46b9diw59dwqlwqi93` (`application_id`),
  UNIQUE KEY `UK_6titib41hm078bogvnb7i4qkm` (`pacile_id`),
  CONSTRAINT `FKh9ri0kjios1b5h52c9ump993s` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  CONSTRAINT `FKsm6nbb3ehhkot33d5folpuk0s` FOREIGN KEY (`pacile_id`) REFERENCES `pacile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` VALUES (116,0,'No me gusta esta peticion 1','http://algo.com','AAA1111111111__',105,114),(117,0,'No me gusta esta peticion 2',NULL,NULL,107,115);
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKik4epe9dp5q6uenarfyia7xin` (`user_id`),
  CONSTRAINT `FKik4epe9dp5q6uenarfyia7xin` FOREIGN KEY (`user_id`) REFERENCES `authenticated` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (65,0,'Este es el cuerpo del mensaje','2019-09-06 07:30:00.000000','Un mensaje de algo',8),(66,0,'Este es el cuerpo del mensaje 2','2019-09-06 07:32:00.000000','Otro mensaje mas',8),(67,0,'Este es el cuerpo del mensaje 3','2019-09-06 07:40:00.000000','Aun mas mensajes',8),(68,0,'Buenos dias','2019-09-06 08:30:00.000000','Que tal',8),(69,0,'Holaa','2019-09-06 09:30:00.000000','Saludo',8),(70,0,'Este mensaje es solo para saludaros','2019-09-07 09:30:00.000000','Hola a todos',17);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_tags`
--

DROP TABLE IF EXISTS `message_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_tags` (
  `message_id` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  KEY `FKk6j00y1eiyu6qe5gad8rvefed` (`message_id`),
  CONSTRAINT `FKk6j00y1eiyu6qe5gad8rvefed` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_tags`
--

LOCK TABLES `message_tags` WRITE;
/*!40000 ALTER TABLE `message_tags` DISABLE KEYS */;
INSERT INTO `message_tags` VALUES (65,'Menssage'),(65,'Population'),(65,'Algo mas que poner'),(66,'Menssage'),(66,'Population'),(66,':)'),(67,'Menssage'),(67,'Population'),(67,'Tres'),(68,'Menssage'),(68,'Population'),(68,'Adios'),(69,'Menssage'),(69,'Hola'),(69,'Por poner algo'),(70,'Menssage'),(70,'Hola'),(70,'Saludo');
/*!40000 ALTER TABLE `message_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_thread`
--

DROP TABLE IF EXISTS `message_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_thread` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_thread`
--

LOCK TABLES `message_thread` WRITE;
/*!40000 ALTER TABLE `message_thread` DISABLE KEYS */;
INSERT INTO `message_thread` VALUES (71,0,'2019-09-03 07:30:00.000000','Hilo de mensajes'),(72,0,'2019-09-05 07:30:00.000000','Comentarios'),(73,0,'2019-09-03 07:30:00.000000','Vacio');
/*!40000 ALTER TABLE `message_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_thread_message`
--

DROP TABLE IF EXISTS `message_thread_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_thread_message` (
  `message_thread_id` int(11) NOT NULL,
  `messages_id` int(11) NOT NULL,
  UNIQUE KEY `UK_bx8ll7j8be93gcj4mnbmvm2rk` (`messages_id`),
  KEY `FKp1bkunf5gyu1vtt1q3f2djagy` (`message_thread_id`),
  CONSTRAINT `FKka0a2jm3m6obl7wa6586cqyp4` FOREIGN KEY (`messages_id`) REFERENCES `message` (`id`),
  CONSTRAINT `FKp1bkunf5gyu1vtt1q3f2djagy` FOREIGN KEY (`message_thread_id`) REFERENCES `message_thread` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_thread_message`
--

LOCK TABLES `message_thread_message` WRITE;
/*!40000 ALTER TABLE `message_thread_message` DISABLE KEYS */;
INSERT INTO `message_thread_message` VALUES (71,65),(71,66),(71,67),(72,68),(72,69),(73,70);
/*!40000 ALTER TABLE `message_thread_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_commercial_banner`
--

DROP TABLE IF EXISTS `non_commercial_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `non_commercial_banner` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `jingle` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sponsor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpcpr0xb5k7s4rxv5pulstt5v9` (`sponsor_id`),
  CONSTRAINT `FKpcpr0xb5k7s4rxv5pulstt5v9` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_commercial_banner`
--

LOCK TABLES `non_commercial_banner` WRITE;
/*!40000 ALTER TABLE `non_commercial_banner` DISABLE KEYS */;
INSERT INTO `non_commercial_banner` VALUES (53,0,'patata','https://i.imgur.com/NGLSjk6.png','Manquepierda','https://www.betis.com',13),(54,0,'patata','https://i.imgur.com/2eVF1HG.png','Manquepierda','https://www.betis.com',13),(55,0,'patata','https://i.imgur.com/fihihcF.png','Manquepierda','https://www.betis.com',13),(56,0,'patata','https://i.imgur.com/MtBRoNP.png','Manquepierda','https://www.betis.com',13);
/*!40000 ALTER TABLE `non_commercial_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `reward_amount` double DEFAULT NULL,
  `reward_currency` varchar(255) DEFAULT NULL,
  `text` varchar(1024) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_iex7e8fs0fh89yxpcnm1orjkm` (`ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
INSERT INTO `offer` VALUES (38,0,'2020-12-27 09:10:00.000000','2019-10-27 09:10:00.000000',5001.2,'EUR','Description01','OADCD-55555','Titulo01'),(39,0,'2020-10-27 09:10:00.000000','2019-09-21 08:10:00.000000',500,'EUR','Description02','OCCCc-55345','Titulo02'),(40,0,'2020-12-30 09:10:00.000000','2019-10-26 08:10:00.000000',5001.2,'EUR','Description03','OACDC-14355','Titulo03'),(41,0,'2020-11-27 09:10:00.000000','2019-10-25 08:10:00.000000',20.2,'EUR','Description04','OADCX-44445','Titulo04'),(42,0,'2020-12-28 09:10:00.000000','2019-10-28 09:10:00.000000',501.2,'EUR','Description05','OADCW-75055','Titulo05');
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacile`
--

DROP TABLE IF EXISTS `pacile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacile` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_70b356e5a27528wtps3tv01os` (`job_id`),
  CONSTRAINT `FK7b7r4mbp9e1ox6gbdbo53p6gs` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacile`
--

LOCK TABLES `pacile` WRITE;
/*!40000 ALTER TABLE `pacile` DISABLE KEYS */;
INSERT INTO `pacile` VALUES (114,0,'http://algo.com','Texto de ejemploo',79),(115,0,NULL,'Texto de ejemploo2',80),(119,0,'http://algo.com','hola',118);
/*!40000 ALTER TABLE `pacile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_b1gwnjqm6ggy9yuiqm0o4rlmd` (`user_account_id`),
  CONSTRAINT `FK_b1gwnjqm6ggy9yuiqm0o4rlmd` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `ceo` varchar(255) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `incorporated` bit(1) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `stars` double DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
/*!40000 ALTER TABLE `records` DISABLE KEYS */;
INSERT INTO `records` VALUES (47,0,'Sergio','Description01',_binary '','sergio@gmail.com','Capi, Inc.','+34 66356995','Technology',5,'https://www.google.com'),(48,0,'Juan','Description02',_binary '\0','capi@gmail.com','Laks, LLC','+912 (1231) 999549','Sports',4.3,'https://www.yahoo.com'),(49,0,'Pepe','Description02',NULL,'capi@gmail.com','KimTe','(1231) 999549','Industrial',4.3,'https://www.yahoo.com'),(50,0,'Rocío','Description02',_binary '','capi@gmail.com','Jaws, Inc.','999549','Security',NULL,'https://www.yahoo.com'),(51,0,'Adri','Description10',_binary '','algo@gmail.com','Alguien, Inc.','999549','Security',NULL,'https://www.yahoo.com');
/*!40000 ALTER TABLE `records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deadline` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `reward_amount` double DEFAULT NULL,
  `reward_currency` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9mxq3powq8tqctclj0fbi2nih` (`ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (62,0,'2020-12-27 09:10:00.000000','Esta es una descripción de prueba','2019-10-27 09:10:00.000000',501.2,'EUR','RABCD-91234','Titulo01'),(63,0,'2020-03-15 12:15:00.000000','¡Un coche por favor!','2019-11-03 09:10:00.000000',9999.99,'EUR','RABGH-98534','Quiero un coche de lujo'),(64,0,'2020-09-03 07:30:00.000000','O una caravana','2019-09-03 07:30:00.000000',999.99,'EUR','RUIGH-98744','Para ser feliz quiero un camión');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_auditor`
--

DROP TABLE IF EXISTS `request_auditor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_auditor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `firm` varchar(255) DEFAULT NULL,
  `responsibility_statement` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg9gmiivm111rnb6yd8eq82kbk` (`user_id`),
  CONSTRAINT `FKg9gmiivm111rnb6yd8eq82kbk` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_auditor`
--

LOCK TABLES `request_auditor` WRITE;
/*!40000 ALTER TABLE `request_auditor` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_auditor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shout`
--

DROP TABLE IF EXISTS `shout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shout` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `moment` datetime(6) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shout`
--

LOCK TABLES `shout` WRITE;
/*!40000 ALTER TABLE `shout` DISABLE KEYS */;
/*!40000 ALTER TABLE `shout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `credit_card` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_20xk0ev32hlg96kqynl6laie2` (`user_account_id`),
  CONSTRAINT `FK_20xk0ev32hlg96kqynl6laie2` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES (10,0,9,'5188893404505068','Sponsor ej 1'),(13,0,12,NULL,'Sponsor ej 2');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `identity_email` varchar(255) DEFAULT NULL,
  `identity_name` varchar(255) DEFAULT NULL,
  `identity_phone_area_code` varchar(255) DEFAULT NULL,
  `identity_phone_country_code` int(11) DEFAULT NULL,
  `identity_phone_number` varchar(255) DEFAULT NULL,
  `identity_surname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_castjbvpeeus0r8lbpehiu0e4` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,0,_binary '\0','john.doe@acme.com','John',NULL,NULL,NULL,'Doe','$2a$05$sU6LN/LwhKdCNk68BiwPYOxNOfFH9lK3sWeNqdAC2YtQaoX8Gg6qa','anonymous'),(3,0,_binary '','administrator1@acme.com','Administrator',NULL,NULL,NULL,'Acme1.com','$2a$05$Pvej2GJYN4tFLrIXXwWuz.oPMSEKiWpZ5d/Hxewh1C6QQfhik/qkm','administrator01'),(6,0,_binary '','administrator@acme.com','Administrator',NULL,34,'123 456 789','Acme.com','$2a$05$Gjq4tJSH19mj1bOFB4W19.DxNeH1UILGnqYG1yaYVWFQiaUmo4w0G','administrator'),(9,0,_binary '','sponsor1@acme.com','Sponsor',NULL,NULL,NULL,'One','$2a$05$/64InU.B5Wq6pUgfluk9WOt4d8upXwrbuFY9q2FpBa2QrGd9Hak4y','sponsor1'),(12,0,_binary '','sponsor2@acme.com','Sponsor',NULL,NULL,NULL,'One','$2a$05$aIiwg.pwYYVEiILHfidG9OaCHs7Jx5TK9OTXk9p.00Y0j2494l/OS','sponsor2'),(15,0,_binary '','employer1@acme.com','Employer',NULL,NULL,NULL,'One','$2a$05$j.pcQEbxq3N11hI26w6TvOgixPsEAnOWqoDF8KX7VMWzEPf71Csum','employer1'),(18,0,_binary '','employer2@acme.com','Employer2',NULL,NULL,NULL,'Two','$2a$05$DRi7CBssUwCAi/55ZEJuye38jsuw.SrIsCbVt.lLUnUEquwigjCtW','employer2'),(21,0,_binary '','auditor1@acme.com','auditor',NULL,NULL,NULL,'One','$2a$05$WiKkm2ZPYFLONkIs6NJvVOhjb3W/asj.kVk3AP36afcg1daxD.xsW','auditor1'),(24,0,_binary '','auditor2@acme.com','auditor2',NULL,NULL,NULL,'One','$2a$05$f5MgDFvIrA.KKXbi3kd0h.n4PzzYapbGe/gjMmd1oKQPxhSVdhF32','auditor2'),(27,0,_binary '','worker1@acme.com','worker',NULL,NULL,NULL,'One','$2a$05$uPGyP1iNvzMWxeNGd1AgWuwqdx3FV1SlqaHcvzJuFXgT7q23rWaE6','worker1'),(30,0,_binary '','worker2@acme.com','worker2',NULL,NULL,NULL,'One','$2a$05$4lT47fYeFYEjQVlYuOpFIOvFQsMvDqNbbQ/Dpm9Yl2.Cz2Bm.yjhu','worker2');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_involved`
--

DROP TABLE IF EXISTS `user_involved`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_involved` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `message_thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKevpise8r0ofnf4xpw18mkgesw` (`message_thread_id`),
  KEY `FKn5kf90daeyb1rcq0soeax5tx3` (`user_id`),
  CONSTRAINT `FKevpise8r0ofnf4xpw18mkgesw` FOREIGN KEY (`message_thread_id`) REFERENCES `message_thread` (`id`),
  CONSTRAINT `FKn5kf90daeyb1rcq0soeax5tx3` FOREIGN KEY (`user_id`) REFERENCES `authenticated` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_involved`
--

LOCK TABLES `user_involved` WRITE;
/*!40000 ALTER TABLE `user_involved` DISABLE KEYS */;
INSERT INTO `user_involved` VALUES (74,0,71,8),(75,0,72,8),(76,0,73,8),(77,0,73,26),(78,0,73,23),(79,0,73,17),(80,0,73,20),(81,0,73,29);
/*!40000 ALTER TABLE `user_involved` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `user_account_id` int(11) DEFAULT NULL,
  `qualifications_record` varchar(255) DEFAULT NULL,
  `skills_record` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_l5q1f33vs2drypmbdhpdgwfv3` (`user_account_id`),
  CONSTRAINT `FK_l5q1f33vs2drypmbdhpdgwfv3` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (28,0,27,'quealifications 1','skills 1, Inc'),(31,0,30,'quealifications 2','skills 2');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xxx1`
--

DROP TABLE IF EXISTS `xxx1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xxx1` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `more_info` varchar(255) DEFAULT NULL,
  `text` varchar(1024) DEFAULT NULL,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_76hv5113nyo8dj1vrfbujinm` (`job_id`),
  CONSTRAINT `FKk01c0gpbm6jpjfgu9vcni8y3j` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xxx1`
--

LOCK TABLES `xxx1` WRITE;
/*!40000 ALTER TABLE `xxx1` DISABLE KEYS */;
INSERT INTO `xxx1` VALUES (114,0,'http://algo.com','Texto de ejemploo',79),(115,0,NULL,'Texto de ejemploo2',80),(119,0,NULL,'pppppppppppppppppppppppppppppppppppp',118),(121,0,'http://k','ccccccccccccccccccccccccccccc',120),(123,0,'http://algo.com','rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr',122);
/*!40000 ALTER TABLE `xxx1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xxx2`
--

DROP TABLE IF EXISTS `xxx2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xxx2` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `application_id` int(11) NOT NULL,
  `xxx1_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fw64o7ksyqkpko4t3kc35bldx` (`application_id`),
  UNIQUE KEY `UK_om9tesqykqdo8o9wj5oo06ill` (`xxx1_id`),
  CONSTRAINT `FKaqef0w3fpqew2f1d18hx71ol9` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  CONSTRAINT `FKpwued4rhyyr4fyq4jgckagrig` FOREIGN KEY (`xxx1_id`) REFERENCES `xxx1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xxx2`
--

LOCK TABLES `xxx2` WRITE;
/*!40000 ALTER TABLE `xxx2` DISABLE KEYS */;
INSERT INTO `xxx2` VALUES (116,0,'No me gusta esta peticion 1','AAA111__',105,114),(117,0,'No me gusta esta peticion 2',NULL,107,115),(132,0,'sssssssss',NULL,131,121),(134,0,'rrrrrrrrrrrr','xxxx11111_',133,123);
/*!40000 ALTER TABLE `xxx2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-14 16:58:40

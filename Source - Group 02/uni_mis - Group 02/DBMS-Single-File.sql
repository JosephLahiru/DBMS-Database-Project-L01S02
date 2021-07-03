-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: uni_mis
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` char(8) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('ADM_001','Joseph','Rasanjana','Male','Admin','joseph.rasanjana1@gmail.com'),('ADM_002','Umeen','Rathnayake','Male','Admin','umeenbg16@gmail.com'),('ADM_003','Niraj','Dilshan','Male','Admin','nirajnimantha@gmail.com'),('ADM_004','Waruna','Dissanayaka','Male','Admin','warunahello@gmail.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `assessment_top_marks`
--

DROP TABLE IF EXISTS `assessment_top_marks`;
/*!50001 DROP VIEW IF EXISTS `assessment_top_marks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `assessment_top_marks` AS SELECT 
 1 AS `stu_id`,
 1 AS `course_id`,
 1 AS `max1`,
 1 AS `max2`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `assessments`
--

DROP TABLE IF EXISTS `assessments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessments` (
  `stu_id` char(11) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  `assessment_1` float DEFAULT NULL,
  `assessment_2` float DEFAULT NULL,
  `assessment_3` float DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`course_id`),
  KEY `course_id_ass_idx` (`course_id`),
  CONSTRAINT `course_id_ass` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_id_ass` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessments`
--

LOCK TABLES `assessments` WRITE;
/*!40000 ALTER TABLE `assessments` DISABLE KEYS */;
INSERT INTO `assessments` VALUES ('TG/2019/400','ICT1113',80,56,NULL),('TG/2019/400','ICT1123',52,46,44),('TG/2019/400','ICT1133',81,94,91),('TG/2019/400','ICT1143',58,54,50),('TG/2019/400','ICT1213',NULL,NULL,NULL),('TG/2019/400','ICT1232',NULL,NULL,NULL),('TG/2019/401','ICT1113',100,68,NULL),('TG/2019/401','ICT1123',69,51,59),('TG/2019/401','ICT1133',40,47,60),('TG/2019/401','ICT1143',41,84,60),('TG/2019/401','ICT1213',NULL,NULL,NULL),('TG/2019/401','ICT1232',NULL,NULL,NULL),('TG/2019/402','ICT1113',76,61,NULL),('TG/2019/402','ICT1123',61,90,89),('TG/2019/402','ICT1133',39,85,73),('TG/2019/402','ICT1143',53,86,51),('TG/2019/402','ICT1213',NULL,NULL,NULL),('TG/2019/402','ICT1232',NULL,NULL,NULL),('TG/2019/403','ICT1113',42,50,NULL),('TG/2019/403','ICT1123',75,46,64),('TG/2019/403','ICT1133',36,46,87),('TG/2019/403','ICT1143',83,96,98),('TG/2019/403','ICT1213',NULL,NULL,NULL),('TG/2019/403','ICT1232',NULL,NULL,NULL),('TG/2019/404','ICT1113',53,67,NULL),('TG/2019/404','ICT1123',77,77,18),('TG/2019/404','ICT1133',35,59,52),('TG/2019/404','ICT1143',87,62,49),('TG/2019/404','ICT1213',NULL,NULL,NULL),('TG/2019/404','ICT1232',NULL,NULL,NULL),('TG/2019/405','ICT1113',50,80,NULL),('TG/2019/405','ICT1123',70,71,83),('TG/2019/405','ICT1133',81,75,90),('TG/2019/405','ICT1143',51,68,84),('TG/2019/405','ICT1213',NULL,NULL,NULL),('TG/2019/405','ICT1232',NULL,NULL,NULL),('TG/2019/406','ICT1113',60,70,NULL),('TG/2019/406','ICT1123',80,31,40),('TG/2019/406','ICT1133',41,45,91),('TG/2019/406','ICT1143',71,90,82),('TG/2019/406','ICT1213',NULL,NULL,NULL),('TG/2019/406','ICT1232',NULL,NULL,NULL),('TG/2019/407','ICT1113',80,66,NULL),('TG/2019/407','ICT1123',39,97,55),('TG/2019/407','ICT1133',79,57,53),('TG/2019/407','ICT1143',55,52,70),('TG/2019/407','ICT1213',NULL,NULL,NULL),('TG/2019/407','ICT1232',NULL,NULL,NULL),('TG/2019/408','ICT1113',57,68,NULL),('TG/2019/408','ICT1123',41,40,80),('TG/2019/408','ICT1133',68,71,40),('TG/2019/408','ICT1143',90,64,80),('TG/2019/408','ICT1213',NULL,NULL,NULL),('TG/2019/408','ICT1232',NULL,NULL,NULL),('TG/2019/409','ICT1113',90,88,NULL),('TG/2019/409','ICT1123',36,42,54),('TG/2019/409','ICT1133',55,84,63),('TG/2019/409','ICT1143',55,85,43),('TG/2019/409','ICT1213',NULL,NULL,NULL),('TG/2019/409','ICT1232',NULL,NULL,NULL);
/*!40000 ALTER TABLE `assessments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `stu_id` char(11) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  `type` char(1) NOT NULL,
  `date` date NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`stu_id`,`course_id`,`date`,`type`),
  KEY `course_id_idx` (`course_id`),
  CONSTRAINT `course_id_at` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `stu_id_at` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('TG/2019/400','ICT1113','T','2020-06-02','1'),('TG/2019/400','ICT1113','T','2020-06-05','1'),('TG/2019/400','ICT1113','T','2020-06-10','1'),('TG/2019/400','ICT1113','T','2020-06-11','1'),('TG/2019/400','ICT1113','T','2020-06-16','1'),('TG/2019/400','ICT1113','T','2020-06-19','1'),('TG/2019/400','ICT1113','T','2020-06-20','1'),('TG/2019/400','ICT1123','T','2020-06-02','1'),('TG/2019/400','ICT1123','P','2020-06-05','1'),('TG/2019/400','ICT1123','T','2020-06-10','1'),('TG/2019/400','ICT1123','P','2020-06-11','1'),('TG/2019/400','ICT1123','T','2020-06-16','1'),('TG/2019/400','ICT1123','P','2020-06-19','1'),('TG/2019/400','ICT1123','T','2020-06-20','1'),('TG/2019/400','ICT1133','T','2020-06-03','1'),('TG/2019/400','ICT1133','P','2020-06-06','1'),('TG/2019/400','ICT1133','P','2020-06-12','1'),('TG/2019/400','ICT1133','T','2020-06-17','1'),('TG/2019/400','ICT1143','T','2020-06-03','1'),('TG/2019/400','ICT1143','P','2020-06-06','1'),('TG/2019/400','ICT1143','P','2020-06-12','1'),('TG/2019/400','ICT1143','T','2020-06-17','1'),('TG/2019/400','ICT1213','T','2020-06-04','1'),('TG/2019/400','ICT1213','P','2020-06-09','1'),('TG/2019/400','ICT1213','P','2020-06-13','1'),('TG/2019/400','ICT1213','T','2020-06-18','1'),('TG/2019/400','ICT1232','T','2020-06-04','1'),('TG/2019/400','ICT1232','P','2020-06-09','1'),('TG/2019/400','ICT1232','P','2020-06-13','1'),('TG/2019/400','ICT1232','T','2020-06-18','1'),('TG/2019/401','ICT1113','T','2020-06-02','1'),('TG/2019/401','ICT1113','T','2020-06-05','1'),('TG/2019/401','ICT1113','T','2020-06-10','1'),('TG/2019/401','ICT1113','T','2020-06-11','1'),('TG/2019/401','ICT1113','T','2020-06-16','1'),('TG/2019/401','ICT1113','T','2020-06-19','1'),('TG/2019/401','ICT1113','T','2020-06-20','1'),('TG/2019/401','ICT1123','T','2020-06-02','1'),('TG/2019/401','ICT1123','P','2020-06-05','1'),('TG/2019/401','ICT1123','T','2020-06-10','1'),('TG/2019/401','ICT1123','P','2020-06-11','1'),('TG/2019/401','ICT1123','T','2020-06-16','1'),('TG/2019/401','ICT1123','P','2020-06-19','1'),('TG/2019/401','ICT1123','T','2020-06-20','1'),('TG/2019/401','ICT1133','T','2020-06-03','1'),('TG/2019/401','ICT1133','P','2020-06-06','1'),('TG/2019/401','ICT1133','P','2020-06-12','1'),('TG/2019/401','ICT1133','T','2020-06-17','0'),('TG/2019/401','ICT1143','T','2020-06-03','1'),('TG/2019/401','ICT1143','P','2020-06-06','1'),('TG/2019/401','ICT1143','P','2020-06-12','1'),('TG/2019/401','ICT1143','T','2020-06-17','0'),('TG/2019/401','ICT1213','T','2020-06-04','1'),('TG/2019/401','ICT1213','P','2020-06-09','1'),('TG/2019/401','ICT1213','P','2020-06-13','1'),('TG/2019/401','ICT1213','T','2020-06-18','1'),('TG/2019/401','ICT1232','T','2020-06-04','1'),('TG/2019/401','ICT1232','P','2020-06-09','1'),('TG/2019/401','ICT1232','P','2020-06-13','1'),('TG/2019/401','ICT1232','T','2020-06-18','1'),('TG/2019/402','ICT1113','T','2020-06-02','1'),('TG/2019/402','ICT1113','T','2020-06-05','1'),('TG/2019/402','ICT1113','T','2020-06-10','1'),('TG/2019/402','ICT1113','T','2020-06-11','1'),('TG/2019/402','ICT1113','T','2020-06-16','1'),('TG/2019/402','ICT1113','T','2020-06-19','0'),('TG/2019/402','ICT1113','T','2020-06-20','1'),('TG/2019/402','ICT1123','T','2020-06-02','1'),('TG/2019/402','ICT1123','P','2020-06-05','1'),('TG/2019/402','ICT1123','T','2020-06-10','1'),('TG/2019/402','ICT1123','P','2020-06-11','1'),('TG/2019/402','ICT1123','T','2020-06-16','1'),('TG/2019/402','ICT1123','P','2020-06-19','0'),('TG/2019/402','ICT1123','T','2020-06-20','1'),('TG/2019/402','ICT1133','T','2020-06-03','1'),('TG/2019/402','ICT1133','P','2020-06-06','1'),('TG/2019/402','ICT1133','P','2020-06-12','1'),('TG/2019/402','ICT1133','T','2020-06-17','1'),('TG/2019/402','ICT1143','T','2020-06-03','1'),('TG/2019/402','ICT1143','P','2020-06-06','1'),('TG/2019/402','ICT1143','P','2020-06-12','1'),('TG/2019/402','ICT1143','T','2020-06-17','1'),('TG/2019/402','ICT1213','T','2020-06-04','0'),('TG/2019/402','ICT1213','P','2020-06-09','1'),('TG/2019/402','ICT1213','P','2020-06-13','1'),('TG/2019/402','ICT1213','T','2020-06-18','1'),('TG/2019/402','ICT1232','T','2020-06-04','0'),('TG/2019/402','ICT1232','P','2020-06-09','1'),('TG/2019/402','ICT1232','P','2020-06-13','1'),('TG/2019/402','ICT1232','T','2020-06-18','1'),('TG/2019/403','ICT1113','T','2020-06-02','1'),('TG/2019/403','ICT1113','T','2020-06-05','1'),('TG/2019/403','ICT1113','T','2020-06-10','1'),('TG/2019/403','ICT1113','T','2020-06-11','1'),('TG/2019/403','ICT1113','T','2020-06-16','0'),('TG/2019/403','ICT1113','T','2020-06-19','1'),('TG/2019/403','ICT1113','T','2020-06-20','1'),('TG/2019/403','ICT1123','T','2020-06-02','1'),('TG/2019/403','ICT1123','P','2020-06-05','1'),('TG/2019/403','ICT1123','T','2020-06-10','1'),('TG/2019/403','ICT1123','P','2020-06-11','1'),('TG/2019/403','ICT1123','T','2020-06-16','0'),('TG/2019/403','ICT1123','P','2020-06-19','1'),('TG/2019/403','ICT1123','T','2020-06-20','1'),('TG/2019/403','ICT1133','T','2020-06-03','1'),('TG/2019/403','ICT1133','P','2020-06-06','1'),('TG/2019/403','ICT1133','P','2020-06-12','1'),('TG/2019/403','ICT1133','T','2020-06-17','1'),('TG/2019/403','ICT1143','T','2020-06-03','1'),('TG/2019/403','ICT1143','P','2020-06-06','1'),('TG/2019/403','ICT1143','P','2020-06-12','1'),('TG/2019/403','ICT1143','T','2020-06-17','1'),('TG/2019/403','ICT1213','T','2020-06-04','1'),('TG/2019/403','ICT1213','P','2020-06-09','1'),('TG/2019/403','ICT1213','P','2020-06-13','1'),('TG/2019/403','ICT1213','T','2020-06-18','1'),('TG/2019/403','ICT1232','T','2020-06-04','1'),('TG/2019/403','ICT1232','P','2020-06-09','1'),('TG/2019/403','ICT1232','P','2020-06-13','1'),('TG/2019/403','ICT1232','T','2020-06-18','1'),('TG/2019/404','ICT1113','T','2020-06-02','1'),('TG/2019/404','ICT1113','T','2020-06-05','1'),('TG/2019/404','ICT1113','T','2020-06-10','1'),('TG/2019/404','ICT1113','T','2020-06-11','1'),('TG/2019/404','ICT1113','T','2020-06-16','1'),('TG/2019/404','ICT1113','T','2020-06-19','1'),('TG/2019/404','ICT1113','T','2020-06-20','1'),('TG/2019/404','ICT1123','T','2020-06-02','1'),('TG/2019/404','ICT1123','P','2020-06-05','1'),('TG/2019/404','ICT1123','T','2020-06-10','1'),('TG/2019/404','ICT1123','P','2020-06-11','1'),('TG/2019/404','ICT1123','T','2020-06-16','1'),('TG/2019/404','ICT1123','P','2020-06-19','1'),('TG/2019/404','ICT1123','T','2020-06-20','1'),('TG/2019/404','ICT1133','T','2020-06-03','1'),('TG/2019/404','ICT1133','P','2020-06-06','1'),('TG/2019/404','ICT1133','P','2020-06-12','1'),('TG/2019/404','ICT1133','T','2020-06-17','1'),('TG/2019/404','ICT1143','T','2020-06-03','1'),('TG/2019/404','ICT1143','P','2020-06-06','1'),('TG/2019/404','ICT1143','P','2020-06-12','1'),('TG/2019/404','ICT1143','T','2020-06-17','1'),('TG/2019/404','ICT1213','T','2020-06-04','1'),('TG/2019/404','ICT1213','P','2020-06-09','1'),('TG/2019/404','ICT1213','P','2020-06-13','1'),('TG/2019/404','ICT1213','T','2020-06-18','1'),('TG/2019/404','ICT1232','T','2020-06-04','1'),('TG/2019/404','ICT1232','P','2020-06-09','1'),('TG/2019/404','ICT1232','P','2020-06-13','1'),('TG/2019/404','ICT1232','T','2020-06-18','1'),('TG/2019/405','ICT1113','T','2020-06-02','1'),('TG/2019/405','ICT1113','T','2020-06-05','1'),('TG/2019/405','ICT1113','T','2020-06-10','1'),('TG/2019/405','ICT1113','T','2020-06-11','1'),('TG/2019/405','ICT1113','T','2020-06-16','1'),('TG/2019/405','ICT1113','T','2020-06-19','1'),('TG/2019/405','ICT1113','T','2020-06-20','0'),('TG/2019/405','ICT1123','T','2020-06-02','1'),('TG/2019/405','ICT1123','P','2020-06-05','1'),('TG/2019/405','ICT1123','T','2020-06-10','1'),('TG/2019/405','ICT1123','P','2020-06-11','1'),('TG/2019/405','ICT1123','T','2020-06-16','1'),('TG/2019/405','ICT1123','P','2020-06-19','1'),('TG/2019/405','ICT1123','T','2020-06-20','0'),('TG/2019/405','ICT1133','T','2020-06-03','1'),('TG/2019/405','ICT1133','P','2020-06-06','0'),('TG/2019/405','ICT1133','P','2020-06-12','1'),('TG/2019/405','ICT1133','T','2020-06-17','1'),('TG/2019/405','ICT1143','T','2020-06-03','1'),('TG/2019/405','ICT1143','P','2020-06-06','0'),('TG/2019/405','ICT1143','P','2020-06-12','1'),('TG/2019/405','ICT1143','T','2020-06-17','1'),('TG/2019/405','ICT1213','T','2020-06-04','1'),('TG/2019/405','ICT1213','P','2020-06-09','1'),('TG/2019/405','ICT1213','P','2020-06-13','1'),('TG/2019/405','ICT1213','T','2020-06-18','1'),('TG/2019/405','ICT1232','T','2020-06-04','1'),('TG/2019/405','ICT1232','P','2020-06-09','1'),('TG/2019/405','ICT1232','P','2020-06-13','1'),('TG/2019/405','ICT1232','T','2020-06-18','1'),('TG/2019/406','ICT1113','T','2020-06-02','1'),('TG/2019/406','ICT1113','T','2020-06-05','1'),('TG/2019/406','ICT1113','T','2020-06-10','1'),('TG/2019/406','ICT1113','T','2020-06-11','1'),('TG/2019/406','ICT1113','T','2020-06-16','1'),('TG/2019/406','ICT1113','T','2020-06-19','1'),('TG/2019/406','ICT1113','T','2020-06-20','1'),('TG/2019/406','ICT1123','T','2020-06-02','1'),('TG/2019/406','ICT1123','P','2020-06-05','1'),('TG/2019/406','ICT1123','T','2020-06-10','1'),('TG/2019/406','ICT1123','P','2020-06-11','1'),('TG/2019/406','ICT1123','T','2020-06-16','1'),('TG/2019/406','ICT1123','P','2020-06-19','1'),('TG/2019/406','ICT1123','T','2020-06-20','1'),('TG/2019/406','ICT1133','T','2020-06-03','1'),('TG/2019/406','ICT1133','P','2020-06-06','1'),('TG/2019/406','ICT1133','P','2020-06-12','1'),('TG/2019/406','ICT1133','T','2020-06-17','1'),('TG/2019/406','ICT1143','T','2020-06-03','1'),('TG/2019/406','ICT1143','P','2020-06-06','1'),('TG/2019/406','ICT1143','P','2020-06-12','1'),('TG/2019/406','ICT1143','T','2020-06-17','1'),('TG/2019/406','ICT1213','T','2020-06-04','1'),('TG/2019/406','ICT1213','P','2020-06-09','1'),('TG/2019/406','ICT1213','P','2020-06-13','1'),('TG/2019/406','ICT1213','T','2020-06-18','1'),('TG/2019/406','ICT1232','T','2020-06-04','1'),('TG/2019/406','ICT1232','P','2020-06-09','1'),('TG/2019/406','ICT1232','P','2020-06-13','1'),('TG/2019/406','ICT1232','T','2020-06-18','1'),('TG/2019/407','ICT1113','T','2020-06-02','1'),('TG/2019/407','ICT1113','T','2020-06-05','1'),('TG/2019/407','ICT1113','T','2020-06-10','1'),('TG/2019/407','ICT1113','T','2020-06-11','1'),('TG/2019/407','ICT1113','T','2020-06-16','1'),('TG/2019/407','ICT1113','T','2020-06-19','1'),('TG/2019/407','ICT1113','T','2020-06-20','1'),('TG/2019/407','ICT1123','T','2020-06-02','1'),('TG/2019/407','ICT1123','P','2020-06-05','1'),('TG/2019/407','ICT1123','T','2020-06-10','1'),('TG/2019/407','ICT1123','P','2020-06-11','1'),('TG/2019/407','ICT1123','T','2020-06-16','1'),('TG/2019/407','ICT1123','P','2020-06-19','1'),('TG/2019/407','ICT1123','T','2020-06-20','1'),('TG/2019/407','ICT1133','T','2020-06-03','1'),('TG/2019/407','ICT1133','P','2020-06-06','1'),('TG/2019/407','ICT1133','P','2020-06-12','1'),('TG/2019/407','ICT1133','T','2020-06-17','1'),('TG/2019/407','ICT1143','T','2020-06-03','1'),('TG/2019/407','ICT1143','P','2020-06-06','1'),('TG/2019/407','ICT1143','P','2020-06-12','1'),('TG/2019/407','ICT1143','T','2020-06-17','1'),('TG/2019/407','ICT1213','T','2020-06-04','1'),('TG/2019/407','ICT1213','P','2020-06-09','1'),('TG/2019/407','ICT1213','P','2020-06-13','1'),('TG/2019/407','ICT1213','T','2020-06-18','0'),('TG/2019/407','ICT1232','T','2020-06-04','1'),('TG/2019/407','ICT1232','P','2020-06-09','1'),('TG/2019/407','ICT1232','P','2020-06-13','1'),('TG/2019/407','ICT1232','T','2020-06-18','0'),('TG/2019/408','ICT1113','T','2020-06-02','0'),('TG/2019/408','ICT1113','T','2020-06-05','1'),('TG/2019/408','ICT1113','T','2020-06-10','1'),('TG/2019/408','ICT1113','T','2020-06-11','1'),('TG/2019/408','ICT1113','T','2020-06-16','1'),('TG/2019/408','ICT1113','T','2020-06-19','1'),('TG/2019/408','ICT1113','T','2020-06-20','1'),('TG/2019/408','ICT1123','T','2020-06-02','0'),('TG/2019/408','ICT1123','P','2020-06-05','1'),('TG/2019/408','ICT1123','T','2020-06-10','1'),('TG/2019/408','ICT1123','P','2020-06-11','1'),('TG/2019/408','ICT1123','T','2020-06-16','1'),('TG/2019/408','ICT1123','P','2020-06-19','1'),('TG/2019/408','ICT1123','T','2020-06-20','1'),('TG/2019/408','ICT1133','T','2020-06-03','1'),('TG/2019/408','ICT1133','P','2020-06-06','1'),('TG/2019/408','ICT1133','P','2020-06-12','1'),('TG/2019/408','ICT1133','T','2020-06-17','1'),('TG/2019/408','ICT1143','T','2020-06-03','1'),('TG/2019/408','ICT1143','P','2020-06-06','1'),('TG/2019/408','ICT1143','P','2020-06-12','1'),('TG/2019/408','ICT1143','T','2020-06-17','1'),('TG/2019/408','ICT1213','T','2020-06-04','1'),('TG/2019/408','ICT1213','P','2020-06-09','1'),('TG/2019/408','ICT1213','P','2020-06-13','0'),('TG/2019/408','ICT1213','T','2020-06-18','1'),('TG/2019/408','ICT1232','T','2020-06-04','1'),('TG/2019/408','ICT1232','P','2020-06-09','1'),('TG/2019/408','ICT1232','P','2020-06-13','0'),('TG/2019/408','ICT1232','T','2020-06-18','1'),('TG/2019/409','ICT1113','T','2020-06-02','1'),('TG/2019/409','ICT1113','T','2020-06-05','1'),('TG/2019/409','ICT1113','T','2020-06-10','0'),('TG/2019/409','ICT1113','T','2020-06-11','1'),('TG/2019/409','ICT1113','T','2020-06-16','1'),('TG/2019/409','ICT1113','T','2020-06-19','1'),('TG/2019/409','ICT1113','T','2020-06-20','1'),('TG/2019/409','ICT1123','T','2020-06-02','1'),('TG/2019/409','ICT1123','P','2020-06-05','1'),('TG/2019/409','ICT1123','T','2020-06-10','0'),('TG/2019/409','ICT1123','P','2020-06-12','1'),('TG/2019/409','ICT1123','T','2020-06-16','1'),('TG/2019/409','ICT1123','P','2020-06-19','1'),('TG/2019/409','ICT1123','T','2020-06-20','1'),('TG/2019/409','ICT1133','T','2020-06-03','1'),('TG/2019/409','ICT1133','P','2020-06-06','1'),('TG/2019/409','ICT1133','P','2020-06-12','1'),('TG/2019/409','ICT1133','T','2020-06-17','1'),('TG/2019/409','ICT1143','T','2020-06-03','1'),('TG/2019/409','ICT1143','P','2020-06-06','1'),('TG/2019/409','ICT1143','P','2020-06-12','1'),('TG/2019/409','ICT1143','T','2020-06-17','1'),('TG/2019/409','ICT1213','T','2020-06-04','1'),('TG/2019/409','ICT1213','P','2020-06-09','1'),('TG/2019/409','ICT1213','P','2020-06-13','1'),('TG/2019/409','ICT1213','T','2020-06-18','1'),('TG/2019/409','ICT1232','T','2020-06-04','1'),('TG/2019/409','ICT1232','P','2020-06-09','1'),('TG/2019/409','ICT1232','P','2020-06-13','1'),('TG/2019/409','ICT1232','T','2020-06-18','1');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `attendance_eligibility`
--

DROP TABLE IF EXISTS `attendance_eligibility`;
/*!50001 DROP VIEW IF EXISTS `attendance_eligibility`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `attendance_eligibility` AS SELECT 
 1 AS `stu_id`,
 1 AS `course_id`,
 1 AS `eligebility`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ca_eligibility`
--

DROP TABLE IF EXISTS `ca_eligibility`;
/*!50001 DROP VIEW IF EXISTS `ca_eligibility`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ca_eligibility` AS SELECT 
 1 AS `stu_id`,
 1 AS `course_id`,
 1 AS `quiz_marks`,
 1 AS `assessment_marks`,
 1 AS `ca_marks`,
 1 AS `eligibility`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` varchar(7) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `credits` int DEFAULT NULL,
  `course_desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('ICT1113','Essential of ICT',3,'45 hrs including tutorials and presentations'),('ICT1123','PC Application & Computer Laboratory',4,'Theory : 15 h ,Practical : 90 h'),('ICT1133','Fundamentals of Program Concepts ',4,'Theory : 30 h ,Practical : 45 h'),('ICT1143','Web Technologies',3,'Lecture Hours: 15 Practical Hours: 90'),('ICT1213','Database Management',4,'Lecture Hours:2 per week '),('ICT1232','Computer Laboratory',2,'Theory : 18 h ,Practical : 90 h');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_and_lecturer`
--

DROP TABLE IF EXISTS `course_and_lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_and_lecturer` (
  `course_id` varchar(7) NOT NULL,
  `lec_id` char(8) NOT NULL,
  PRIMARY KEY (`course_id`,`lec_id`),
  KEY `lec_id_idx` (`lec_id`),
  KEY `lec_id` (`lec_id`),
  CONSTRAINT `course_id_cl` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lec_id_cl` FOREIGN KEY (`lec_id`) REFERENCES `lecturer` (`lec_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_and_lecturer`
--

LOCK TABLES `course_and_lecturer` WRITE;
/*!40000 ALTER TABLE `course_and_lecturer` DISABLE KEYS */;
INSERT INTO `course_and_lecturer` VALUES ('ICT1113','LEC/0001'),('ICT1133','LEC/0002'),('ICT1123','LEC/0003'),('ICT1143','LEC/0003'),('ICT1213','LEC/0004'),('ICT1232','LEC/0005');
/*!40000 ALTER TABLE `course_and_lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_and_student`
--

DROP TABLE IF EXISTS `course_and_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_and_student` (
  `course_id` varchar(7) NOT NULL,
  `stu_id` char(11) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`course_id`,`stu_id`),
  KEY `stu_id_cs_idx` (`stu_id`),
  CONSTRAINT `course_id_cs` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_id_cs` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_and_student`
--

LOCK TABLES `course_and_student` WRITE;
/*!40000 ALTER TABLE `course_and_student` DISABLE KEYS */;
INSERT INTO `course_and_student` VALUES ('ICT1113','TG/2019/400','p'),('ICT1113','TG/2019/401','p'),('ICT1113','TG/2019/402','p'),('ICT1113','TG/2019/403','p'),('ICT1113','TG/2019/404','p'),('ICT1113','TG/2019/405','p'),('ICT1113','TG/2019/406','p'),('ICT1113','TG/2019/407','p'),('ICT1113','TG/2019/408','p'),('ICT1113','TG/2019/409','p'),('ICT1123','TG/2019/400','p'),('ICT1123','TG/2019/401','p'),('ICT1123','TG/2019/402','p'),('ICT1123','TG/2019/403','p'),('ICT1123','TG/2019/404','p'),('ICT1123','TG/2019/405','p'),('ICT1123','TG/2019/406','p'),('ICT1123','TG/2019/407','p'),('ICT1123','TG/2019/408','p'),('ICT1123','TG/2019/409','p'),('ICT1133','TG/2019/400','p'),('ICT1133','TG/2019/401','p'),('ICT1133','TG/2019/402','p'),('ICT1133','TG/2019/403','p'),('ICT1133','TG/2019/404','p'),('ICT1133','TG/2019/405','p'),('ICT1133','TG/2019/406','p'),('ICT1133','TG/2019/407','p'),('ICT1133','TG/2019/408','p'),('ICT1133','TG/2019/409','p'),('ICT1143','TG/2019/400','p'),('ICT1143','TG/2019/401','p'),('ICT1143','TG/2019/402','p'),('ICT1143','TG/2019/403','p'),('ICT1143','TG/2019/404','p'),('ICT1143','TG/2019/405','p'),('ICT1143','TG/2019/406','p'),('ICT1143','TG/2019/407','p'),('ICT1143','TG/2019/408','p'),('ICT1143','TG/2019/409','p'),('ICT1213','TG/2019/400','p'),('ICT1213','TG/2019/401','p'),('ICT1213','TG/2019/402','p'),('ICT1213','TG/2019/403','p'),('ICT1213','TG/2019/404','p'),('ICT1213','TG/2019/405','p'),('ICT1213','TG/2019/406','p'),('ICT1213','TG/2019/407','p'),('ICT1213','TG/2019/408','p'),('ICT1213','TG/2019/409','p'),('ICT1232','TG/2019/400','p'),('ICT1232','TG/2019/401','p'),('ICT1232','TG/2019/402','p'),('ICT1232','TG/2019/403','p'),('ICT1232','TG/2019/404','p'),('ICT1232','TG/2019/405','p'),('ICT1232','TG/2019/406','p'),('ICT1232','TG/2019/407','p'),('ICT1232','TG/2019/408','p'),('ICT1232','TG/2019/409','p');
/*!40000 ALTER TABLE `course_and_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo`
--

DROP TABLE IF EXISTS `demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo` (
  `demo_id` char(9) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `contact_no` char(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`demo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo`
--

LOCK TABLES `demo` WRITE;
/*!40000 ALTER TABLE `demo` DISABLE KEYS */;
INSERT INTO `demo` VALUES ('DEMO/0001','David','Roberts','0711234567','1476  Walton Street, Provo, Utah.',27,'1994-01-08','Male'),('DEMO/0002','John','Belton','0721234567','3949  Rivendell Drive, Canal Fulton, Ohio.',29,'1992-05-20','Male'),('DEMO/0003','Lillian','McCracken','0761234567','4158  Buena Vista Avenue, Eugene, Oregon.',28,'1993-06-01','Female'),('DEMO/0004','Guadalupe','Carlson','0751234567','3685  Rowes Lane, Glasgow, Kentucky.',26,'1995-07-19','Female'),('DEMO/0005','Devon','Reiter','0781234567','1798  Thunder Road, San Francisco, California.',25,'1996-02-25','Female');
/*!40000 ALTER TABLE `demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `end_exam_marks`
--

DROP TABLE IF EXISTS `end_exam_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `end_exam_marks` (
  `stu_id` char(11) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  `end_exam_theory` float NOT NULL,
  `end_exam_practical` float DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`course_id`),
  KEY `course_id_idx` (`course_id`),
  CONSTRAINT `course_id_eem` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_id_eem` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `end_exam_marks`
--

LOCK TABLES `end_exam_marks` WRITE;
/*!40000 ALTER TABLE `end_exam_marks` DISABLE KEYS */;
INSERT INTO `end_exam_marks` VALUES ('TG/2019/400','ICT1113',76.1,NULL),('TG/2019/400','ICT1123',79.89,72.21),('TG/2019/400','ICT1133',90.64,25.02),('TG/2019/400','ICT1143',34.47,43.9),('TG/2019/400','ICT1213',87.31,65.73),('TG/2019/400','ICT1232',38.93,44.93),('TG/2019/401','ICT1113',46.13,NULL),('TG/2019/401','ICT1123',62.85,75.05),('TG/2019/401','ICT1133',60.8,79.91),('TG/2019/401','ICT1143',81.1,31.61),('TG/2019/401','ICT1213',89.38,46.38),('TG/2019/401','ICT1232',78.03,64.06),('TG/2019/402','ICT1113',34.83,NULL),('TG/2019/402','ICT1123',31.89,36.5),('TG/2019/402','ICT1133',42.75,57.23),('TG/2019/402','ICT1143',59.85,78.67),('TG/2019/402','ICT1213',81.13,77.39),('TG/2019/402','ICT1232',34.88,22.28),('TG/2019/403','ICT1113',81.61,NULL),('TG/2019/403','ICT1123',73.8,33.34),('TG/2019/403','ICT1133',70.52,38.15),('TG/2019/403','ICT1143',61.32,23.99),('TG/2019/403','ICT1213',47.86,77.12),('TG/2019/403','ICT1232',90.09,45.33),('TG/2019/404','ICT1113',61.08,NULL),('TG/2019/404','ICT1123',64.74,70.85),('TG/2019/404','ICT1133',39.19,21.19),('TG/2019/404','ICT1143',42.99,73.09),('TG/2019/404','ICT1213',38.48,22.9),('TG/2019/404','ICT1232',53.04,22.11),('TG/2019/405','ICT1113',57.86,NULL),('TG/2019/405','ICT1123',44.82,36.14),('TG/2019/405','ICT1133',38.23,27.78),('TG/2019/405','ICT1143',84.07,53.67),('TG/2019/405','ICT1213',82.68,53.82),('TG/2019/405','ICT1232',31.76,58.27),('TG/2019/406','ICT1113',74,NULL),('TG/2019/406','ICT1123',64.12,33.58),('TG/2019/406','ICT1133',33.21,36.5),('TG/2019/406','ICT1143',76.2,41.67),('TG/2019/406','ICT1213',68.8,79.77),('TG/2019/406','ICT1232',48.12,50.67),('TG/2019/407','ICT1113',81.61,NULL),('TG/2019/407','ICT1123',82.26,40.61),('TG/2019/407','ICT1133',36.72,24.88),('TG/2019/407','ICT1143',59.14,41.8),('TG/2019/407','ICT1213',59.41,81.03),('TG/2019/407','ICT1232',94.4,46.86),('TG/2019/408','ICT1113',58.56,NULL),('TG/2019/408','ICT1123',82.79,31.68),('TG/2019/408','ICT1133',44.69,50.74),('TG/2019/408','ICT1143',59.72,47.81),('TG/2019/408','ICT1213',98.11,55.77),('TG/2019/408','ICT1232',32.08,64.46),('TG/2019/409','ICT1113',80.13,NULL),('TG/2019/409','ICT1123',97.35,53.88),('TG/2019/409','ICT1133',32.14,83.99),('TG/2019/409','ICT1143',89.47,62.84),('TG/2019/409','ICT1213',65.17,52.33),('TG/2019/409','ICT1232',83.51,25.09);
/*!40000 ALTER TABLE `end_exam_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `final_grade_temp`
--

DROP TABLE IF EXISTS `final_grade_temp`;
/*!50001 DROP VIEW IF EXISTS `final_grade_temp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `final_grade_temp` AS SELECT 
 1 AS `stu_id`,
 1 AS `course_id`,
 1 AS `quiz_marks`,
 1 AS `assessment_marks`,
 1 AS `mid_marks`,
 1 AS `end_exam_theory`,
 1 AS `end_exam_practical`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `final_grade_temp_scaled`
--

DROP TABLE IF EXISTS `final_grade_temp_scaled`;
/*!50001 DROP VIEW IF EXISTS `final_grade_temp_scaled`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `final_grade_temp_scaled` AS SELECT 
 1 AS `stu_id`,
 1 AS `course_id`,
 1 AS `quiz_marks`,
 1 AS `assessment_marks`,
 1 AS `mid_marks`,
 1 AS `end_theory`,
 1 AS `end_practical`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!50001 DROP VIEW IF EXISTS `grades`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `grades` AS SELECT 
 1 AS `stu_id`,
 1 AS `course_id`,
 1 AS `final_grades`,
 1 AS `grade_point`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer` (
  `lec_id` char(8) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `contact_no` char(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`lec_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` VALUES ('LEC/0001','Nanayakkara','Fernando','Male','0777369254','79/1B Kadawatha Road, Dehiwela','1980-03-25'),('LEC/0002','Nimal','Rajapaksha','Male','0775389254','69, SRI JINARATHANA ROAD,Colombo','1982-05-15'),('LEC/0003','Yasas','Mallawaarachchi','Male','0782517254','336, Colombo Road,Peradeniya','1986-03-25'),('LEC/0004','Shayani','Mendis','Female','0763497254','20, D.B. PERERA MAWATHA,Paratta','1988-04-20'),('LEC/0005','Thilini','Rajapaksha','Female','0718207354','610, Galle Road, Kollpitty','1984-11-20');
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicals`
--

DROP TABLE IF EXISTS `medicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicals` (
  `medical_id` char(8) NOT NULL,
  `stu_id` char(11) NOT NULL,
  `issue_date` date DEFAULT NULL,
  PRIMARY KEY (`medical_id`,`stu_id`),
  KEY `stu_id_med_idx` (`stu_id`),
  CONSTRAINT `stu_id_med` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicals`
--

LOCK TABLES `medicals` WRITE;
/*!40000 ALTER TABLE `medicals` DISABLE KEYS */;
INSERT INTO `medicals` VALUES ('MED/0001','TG/2019/401','2020-06-17'),('MED/0002','TG/2019/402','2020-06-19');
/*!40000 ALTER TABLE `medicals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mid_exam_marks`
--

DROP TABLE IF EXISTS `mid_exam_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mid_exam_marks` (
  `stu_id` char(11) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  `mid_theory` float NOT NULL,
  `mid_practical` float DEFAULT NULL,
  PRIMARY KEY (`stu_id`,`course_id`),
  KEY `course_id_idx` (`course_id`),
  CONSTRAINT `course_id_mem` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_id_mem` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mid_exam_marks`
--

LOCK TABLES `mid_exam_marks` WRITE;
/*!40000 ALTER TABLE `mid_exam_marks` DISABLE KEYS */;
INSERT INTO `mid_exam_marks` VALUES ('TG/2019/400','ICT1113',72.11,NULL),('TG/2019/400','ICT1123',60.62,59.25),('TG/2019/400','ICT1133',82.36,78.79),('TG/2019/400','ICT1143',38.97,80.87),('TG/2019/400','ICT1213',58.18,45.56),('TG/2019/400','ICT1232',39.68,27.87),('TG/2019/401','ICT1113',89.48,NULL),('TG/2019/401','ICT1123',94.8,51.1),('TG/2019/401','ICT1133',35.5,63.6),('TG/2019/401','ICT1143',41.05,37.65),('TG/2019/401','ICT1213',61.8,74.33),('TG/2019/401','ICT1232',77.54,29.25),('TG/2019/402','ICT1113',55.48,NULL),('TG/2019/402','ICT1123',95.18,78.03),('TG/2019/402','ICT1133',94.87,78.21),('TG/2019/402','ICT1143',97.3,32.06),('TG/2019/402','ICT1213',79.8,49.24),('TG/2019/402','ICT1232',67.29,44.52),('TG/2019/403','ICT1113',52.78,NULL),('TG/2019/403','ICT1123',98.89,67.55),('TG/2019/403','ICT1133',79.51,74.35),('TG/2019/403','ICT1143',52.53,63.09),('TG/2019/403','ICT1213',65.42,50.08),('TG/2019/403','ICT1232',94.22,43.83),('TG/2019/404','ICT1113',61.54,NULL),('TG/2019/404','ICT1123',78.42,70.44),('TG/2019/404','ICT1133',67.96,73.1),('TG/2019/404','ICT1143',45.19,73.55),('TG/2019/404','ICT1213',79.4,73.39),('TG/2019/404','ICT1232',50.12,63.89),('TG/2019/405','ICT1113',78.5,NULL),('TG/2019/405','ICT1123',41.29,56.45),('TG/2019/405','ICT1133',92.22,57.02),('TG/2019/405','ICT1143',95.9,30.17),('TG/2019/405','ICT1213',42.18,36.76),('TG/2019/405','ICT1232',48.49,20.22),('TG/2019/406','ICT1113',53.65,NULL),('TG/2019/406','ICT1123',69.85,82.87),('TG/2019/406','ICT1133',87.46,55.02),('TG/2019/406','ICT1143',47.87,51.87),('TG/2019/406','ICT1213',34.18,57.45),('TG/2019/406','ICT1232',85.6,60.43),('TG/2019/407','ICT1113',38.06,NULL),('TG/2019/407','ICT1123',95.57,30.19),('TG/2019/407','ICT1133',70.84,62.24),('TG/2019/407','ICT1143',82.56,36.44),('TG/2019/407','ICT1213',86.73,63.86),('TG/2019/407','ICT1232',91.09,76.62),('TG/2019/408','ICT1113',70.98,NULL),('TG/2019/408','ICT1123',59.84,59.81),('TG/2019/408','ICT1133',67.28,48.84),('TG/2019/408','ICT1143',59,23.59),('TG/2019/408','ICT1213',70.73,78.38),('TG/2019/408','ICT1232',38.85,63.91),('TG/2019/409','ICT1113',61.02,NULL),('TG/2019/409','ICT1123',69.34,70.68),('TG/2019/409','ICT1133',60.54,39.4),('TG/2019/409','ICT1143',38.72,33.73),('TG/2019/409','ICT1213',48.52,47.45),('TG/2019/409','ICT1232',71.57,81.23);
/*!40000 ALTER TABLE `mid_exam_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mid_exam_overall_marks`
--

DROP TABLE IF EXISTS `mid_exam_overall_marks`;
/*!50001 DROP VIEW IF EXISTS `mid_exam_overall_marks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mid_exam_overall_marks` AS SELECT 
 1 AS `stu_id`,
 1 AS `course_id`,
 1 AS `mid_theory`,
 1 AS `mid_practical`,
 1 AS `overall`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `quiz_mark_avgs`
--

DROP TABLE IF EXISTS `quiz_mark_avgs`;
/*!50001 DROP VIEW IF EXISTS `quiz_mark_avgs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `quiz_mark_avgs` AS SELECT 
 1 AS `stu_id`,
 1 AS `course_id`,
 1 AS `max1`,
 1 AS `max2`,
 1 AS `max3`,
 1 AS `avg`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `quiz_marks`
--

DROP TABLE IF EXISTS `quiz_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_marks` (
  `stu_id` char(11) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  `quiz_1_marks` float NOT NULL,
  `quiz_2_marks` float NOT NULL,
  `quiz_3_marks` float NOT NULL,
  `quiz_4_marks` float NOT NULL,
  PRIMARY KEY (`stu_id`,`course_id`),
  KEY `course_id_idx` (`course_id`),
  CONSTRAINT `course_id_qm` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_id_qm` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_marks`
--

LOCK TABLES `quiz_marks` WRITE;
/*!40000 ALTER TABLE `quiz_marks` DISABLE KEYS */;
INSERT INTO `quiz_marks` VALUES ('TG/2019/400','ICT1113',86.5,72.3,69.9,43.2),('TG/2019/400','ICT1123',36.27,54.9,28.8,69.65),('TG/2019/400','ICT1133',55.94,73.25,38.19,96.88),('TG/2019/400','ICT1143',62.45,35.02,57.56,91.17),('TG/2019/400','ICT1213',53.66,29.81,49.61,58.29),('TG/2019/400','ICT1232',49.72,59.39,66.61,61.97),('TG/2019/401','ICT1113',75.5,32.9,53.5,71.1),('TG/2019/401','ICT1123',49.73,94.22,46.54,55.7),('TG/2019/401','ICT1133',44.87,97.28,49.22,83.68),('TG/2019/401','ICT1143',62.53,32.26,62.57,92.07),('TG/2019/401','ICT1213',53.28,24.64,82.66,62.91),('TG/2019/401','ICT1232',49.51,55.77,48.33,72.64),('TG/2019/402','ICT1113',98.58,76.45,86.12,82.28),('TG/2019/402','ICT1123',63.49,51.51,28.38,85.72),('TG/2019/402','ICT1133',78.71,86.71,50.06,66.33),('TG/2019/402','ICT1143',64.36,58.43,32.77,85.28),('TG/2019/402','ICT1213',54.27,25.49,75.63,69.05),('TG/2019/402','ICT1232',56.91,52.54,58.21,70.79),('TG/2019/403','ICT1113',89.65,68.72,98.37,77.05),('TG/2019/403','ICT1123',32.9,86.02,60.1,88.43),('TG/2019/403','ICT1133',70.1,72.19,56.49,83.03),('TG/2019/403','ICT1143',64,46.65,71.09,77.23),('TG/2019/403','ICT1213',55.13,29.84,54.96,55.85),('TG/2019/403','ICT1232',33.6,55.61,56.96,61.52),('TG/2019/404','ICT1113',57.35,61.56,47.46,62.5),('TG/2019/404','ICT1123',39.41,74.53,20.42,65.39),('TG/2019/404','ICT1133',51.22,74.55,54.02,62.31),('TG/2019/404','ICT1143',56.17,69.26,56.41,78.23),('TG/2019/404','ICT1213',58.97,49.73,49.23,69.24),('TG/2019/404','ICT1232',50.2,51.97,72.47,73.75),('TG/2019/405','ICT1113',93.11,94.81,99.99,71.26),('TG/2019/405','ICT1123',63.82,65.39,39.12,93.05),('TG/2019/405','ICT1133',61.31,70.31,39.69,99.42),('TG/2019/405','ICT1143',57.55,38.19,63.3,84.68),('TG/2019/405','ICT1213',55.78,35.02,83.56,68.24),('TG/2019/405','ICT1232',46.28,50.6,64.33,66.82),('TG/2019/406','ICT1113',74.21,34.75,98.84,33.4),('TG/2019/406','ICT1123',36.97,63.18,74.26,61.87),('TG/2019/406','ICT1133',51.46,76.18,42.67,70.11),('TG/2019/406','ICT1143',79.04,46.53,34.98,77.32),('TG/2019/406','ICT1213',51.44,32.6,45.99,65.74),('TG/2019/406','ICT1232',52.57,50.28,51.47,68.19),('TG/2019/407','ICT1113',92.3,91.15,35.15,55.03),('TG/2019/407','ICT1123',65.58,58.31,65.65,58.31),('TG/2019/407','ICT1133',43.91,77.68,53.7,59.43),('TG/2019/407','ICT1143',51.73,52.51,60.01,81.08),('TG/2019/407','ICT1213',52.74,37.78,68.96,59.71),('TG/2019/407','ICT1232',53.88,45.24,64.9,69.43),('TG/2019/408','ICT1113',84.09,99.1,44.62,98.32),('TG/2019/408','ICT1123',41.02,75.02,45.81,78.4),('TG/2019/408','ICT1133',56.07,54.3,41.53,79.11),('TG/2019/408','ICT1143',78.59,31.87,61.17,81.77),('TG/2019/408','ICT1213',51.64,40.57,62.39,57.3),('TG/2019/408','ICT1232',50.35,47.15,77.23,79.15),('TG/2019/409','ICT1113',46.22,33.36,77.81,62.05),('TG/2019/409','ICT1123',52.68,76.94,66.82,57.89),('TG/2019/409','ICT1133',67.25,50.82,79.36,61.37),('TG/2019/409','ICT1143',73.94,64.29,27.55,53.21),('TG/2019/409','ICT1213',58.15,35.04,59.95,60.4),('TG/2019/409','ICT1232',32.82,59.68,52.38,66.65);
/*!40000 ALTER TABLE `quiz_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sgpa`
--

DROP TABLE IF EXISTS `sgpa`;
/*!50001 DROP VIEW IF EXISTS `sgpa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sgpa` AS SELECT 
 1 AS `stu_id`,
 1 AS `sgpa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sgpa_temp`
--

DROP TABLE IF EXISTS `sgpa_temp`;
/*!50001 DROP VIEW IF EXISTS `sgpa_temp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sgpa_temp` AS SELECT 
 1 AS `stu_id`,
 1 AS `course_id`,
 1 AS `final_grades`,
 1 AS `grade_point`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `stu_id` char(11) NOT NULL,
  `batch_no` varchar(3) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact_no` char(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('TG/2019/400','004','Michelle','Stemple','Female','2254  Lowes Alley, Columbus','0771234321','1999-01-02',22),('TG/2019/401','004','Dawn','Dowling','Female','4394  Newton Street, Minneapolis','0778396546','1999-06-02',22),('TG/2019/402','004','Chad','Jester','Male','2849  Broad Street, ECHO','0778496543','1999-12-12',22),('TG/2019/403','004','Megan','Beatty','Female','327  Highland View Drive, Loomis','0716569810','1999-03-12',22),('TG/2019/404','004','Angela','Brooks','Female','4152  Science Center Drive, Coeur D Alene','0718235672','1999-04-12',22),('TG/2019/405','004','Sarah','Spencer','Female','2440  Railroad Street, Fence River','0784525694','1999-04-30',22),('TG/2019/406','004','James','Cooper','Male','3434  Mount Street, Saginaw','0786493678','1999-05-13',22),('TG/2019/407','004','Kerrie','Biggins','Female','1926  Emily Drive, Columbia','0726925490','1999-07-19',22),('TG/2019/408','004','Elon','Musk','Male','1926  Silicon Valley, Califonia','0756278691','1999-05-29',22),('TG/2019/409','004','Alex','Bezos','Male','4376  George Avenue, Mobile','0726112639','1999-09-11',22);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_sgpa`
--

DROP TABLE IF EXISTS `student_sgpa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_sgpa` (
  `stu_id` char(11) DEFAULT NULL,
  `sgpa` decimal(39,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_sgpa`
--

LOCK TABLES `student_sgpa` WRITE;
/*!40000 ALTER TABLE `student_sgpa` DISABLE KEYS */;
INSERT INTO `student_sgpa` VALUES ('TG/2019/400',6.15000),('TG/2019/401',6.85000),('TG/2019/402',5.90000),('TG/2019/403',6.85000),('TG/2019/404',5.00000),('TG/2019/405',6.20000),('TG/2019/406',5.30000),('TG/2019/407',5.70000),('TG/2019/408',6.90000),('TG/2019/409',7.00000);
/*!40000 ALTER TABLE `student_sgpa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_o`
--

DROP TABLE IF EXISTS `t_o`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_o` (
  `to_id` char(7) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `contact_no` char(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_o`
--

LOCK TABLES `t_o` WRITE;
/*!40000 ALTER TABLE `t_o` DISABLE KEYS */;
INSERT INTO `t_o` VALUES ('TO/0001','Nicole','Houk','0711234567','332  Angus Road, CHAMA, New Mexico. ',28,'1992-08-23','Female'),('TO/0002','James','McElwain','0771234567','2607  Bates Brothers Road, Columbus, Ohio.',29,'1991-03-23','Male'),('TO/0003','Norma','Canty','0751234567','2474  Wildwood Street, Akron, Ohio.',30,'1990-05-24','Female'),('TO/0004','Kenneth','Rose','0761234567','2931  Richland Avenue, Sugar Land, Texas.',29,'1991-05-11','Male'),('TO/0005','Marjorie','Martinez','0721234567','3769  West Fork Drive, Hollywood, Florida.',30,'1990-10-26','Female');
/*!40000 ALTER TABLE `t_o` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'uni_mis'
--

--
-- Final view structure for view `assessment_top_marks`
--

/*!50001 DROP VIEW IF EXISTS `assessment_top_marks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `assessment_top_marks` AS select `assessments`.`stu_id` AS `stu_id`,`assessments`.`course_id` AS `course_id`,`t`.`max1` AS `max1`,`t`.`max2` AS `max2` from (`assessments` join lateral (select max((case `t`.`rn` when 1 then `t`.`qn` end)) AS `max1`,max((case `t`.`rn` when 2 then `t`.`qn` end)) AS `max2`,max((case `t`.`rn` when 3 then `t`.`qn` end)) AS `max3` from (select `q`.`m` AS `qn`,row_number() OVER (ORDER BY `q`.`m` desc )  AS `rn` from (select `assessments`.`assessment_1` AS `assessment_1` union all select `assessments`.`assessment_2` AS `assessment_2` union all select `assessments`.`assessment_3` AS `assessment_3`) `q` (`m`)) `t`) `t`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `attendance_eligibility`
--

/*!50001 DROP VIEW IF EXISTS `attendance_eligibility`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `attendance_eligibility` AS select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/400') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/401') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/402') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/403') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/404') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/405') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/406') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/407') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/408') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/409') and (`attendance`.`course_id` = 'ICT1113')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/400') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/401') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/402') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/403') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/404') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/405') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/406') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/407') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/408') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/409') and (`attendance`.`course_id` = 'ICT1123')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/400') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/401') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/402') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/403') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/404') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/405') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/406') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/407') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/408') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/409') and (`attendance`.`course_id` = 'ICT1133')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/400') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/401') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/402') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/403') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/404') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/405') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/406') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/407') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/408') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/409') and (`attendance`.`course_id` = 'ICT1143')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/400') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/401') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/402') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/403') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/404') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/405') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/406') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/407') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/408') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/409') and (`attendance`.`course_id` = 'ICT1213')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/400') and (`attendance`.`course_id` = 'ICT1232')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/401') and (`attendance`.`course_id` = 'ICT1232')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/402') and (`attendance`.`course_id` = 'ICT1232')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/403') and (`attendance`.`course_id` = 'ICT1232')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/404') and (`attendance`.`course_id` = 'ICT1232')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/405') and (`attendance`.`course_id` = 'ICT1232')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/406') and (`attendance`.`course_id` = 'ICT1232')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/407') and (`attendance`.`course_id` = 'ICT1232')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/408') and (`attendance`.`course_id` = 'ICT1232')) union all select `attendance`.`stu_id` AS `stu_id`,`attendance`.`course_id` AS `course_id`,if(((sum(`attendance`.`status`) * (80 / 100)) > (15 * (80 / 100))),'eligeble','noteligeble') AS `eligebility` from `attendance` where ((`attendance`.`stu_id` = 'TG/2019/409') and (`attendance`.`course_id` = 'ICT1232')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ca_eligibility`
--

/*!50001 DROP VIEW IF EXISTS `ca_eligibility`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ca_eligibility` AS select `f`.`stu_id` AS `stu_id`,`f`.`course_id` AS `course_id`,`f`.`quiz_marks` AS `quiz_marks`,`f`.`assessment_marks` AS `assessment_marks`,if((`f`.`assessment_marks` is not null),((`f`.`quiz_marks` + `f`.`assessment_marks`) / 2),`f`.`quiz_marks`) AS `ca_marks`,if((if((`f`.`assessment_marks` is not null),((`f`.`quiz_marks` + `f`.`assessment_marks`) / 2),`f`.`quiz_marks`) > 50),'PASS','FAIL') AS `eligibility` from `final_grade_temp` `f` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `final_grade_temp`
--

/*!50001 DROP VIEW IF EXISTS `final_grade_temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `final_grade_temp` AS select `q`.`stu_id` AS `stu_id`,`q`.`course_id` AS `course_id`,`q`.`avg` AS `quiz_marks`,((`a`.`max1` + `a`.`max2`) / 2) AS `assessment_marks`,`m`.`overall` AS `mid_marks`,`e`.`end_exam_theory` AS `end_exam_theory`,`e`.`end_exam_practical` AS `end_exam_practical` from (((`quiz_mark_avgs` `q` join `assessment_top_marks` `a`) join `mid_exam_overall_marks` `m`) join `end_exam_marks` `e`) where ((`q`.`stu_id` = `a`.`stu_id`) and (`a`.`stu_id` = `m`.`stu_id`) and (`m`.`stu_id` = `e`.`stu_id`) and (`q`.`stu_id` = `e`.`stu_id`) and (`q`.`course_id` = `a`.`course_id`) and (`a`.`course_id` = `m`.`course_id`) and (`m`.`course_id` = `e`.`course_id`) and (`q`.`course_id` = `e`.`course_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `final_grade_temp_scaled`
--

/*!50001 DROP VIEW IF EXISTS `final_grade_temp_scaled`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `final_grade_temp_scaled` AS select `f`.`stu_id` AS `stu_id`,`f`.`course_id` AS `course_id`,if(((`f`.`course_id` = 'ICT1213') or (`f`.`course_id` = 'ICT1232')),(`f`.`quiz_marks` * (20 / 100)),(`f`.`quiz_marks` * (10 / 100))) AS `quiz_marks`,if(((`f`.`course_id` = 'ICT1213') or (`f`.`course_id` = 'ICT1232')),NULL,(`f`.`assessment_marks` * (20 / 100))) AS `assessment_marks`,if(((`f`.`course_id` = 'ICT1213') or (`f`.`course_id` = 'ICT1232') or (`f`.`course_id` = 'ICT1113')),(`f`.`mid_marks` * (20 / 100)),NULL) AS `mid_marks`,if(((`e`.`course_id` = 'ICT1213') or (`e`.`course_id` = 'ICT1232') or (`e`.`course_id` = 'ICT1143')),(`e`.`end_exam_theory` * (30 / 100)),if((`e`.`course_id` = 'ICT1113'),(`e`.`end_exam_theory` * (50 / 100)),if(((`e`.`course_id` = 'ICT1123') or (`e`.`course_id` = 'ICT1133')),(`e`.`end_exam_theory` * (40 / 100)),NULL))) AS `end_theory`,if(((`e`.`course_id` = 'ICT1213') or (`e`.`course_id` = 'ICT1232') or (`e`.`course_id` = 'ICT1123') or (`e`.`course_id` = 'ICT1133')),(`e`.`end_exam_practical` * (30 / 100)),if((`e`.`course_id` = 'ICT1113'),NULL,if((`e`.`course_id` = 'ICT1143'),(`e`.`end_exam_practical` * (40 / 100)),NULL))) AS `end_practical` from (`final_grade_temp` `f` join `end_exam_marks` `e`) where ((`e`.`course_id` = `f`.`course_id`) and (`e`.`stu_id` = `f`.`stu_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `grades`
--

/*!50001 DROP VIEW IF EXISTS `grades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `grades` AS select `f`.`stu_id` AS `stu_id`,`f`.`course_id` AS `course_id`,((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) AS `final_grades`,if((((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) >= 90),10,if(((((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) < 90) and (((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) >= 85)),9,if(((((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) < 85) and (((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) >= 80)),8.5,if(((((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) < 80) and (((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) >= 70)),8,if(((((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) < 70) and (((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) >= 60)),7,if(((((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) < 60) and (((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) >= 50)),6,if(((((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) < 50) and (((((if((`f`.`quiz_marks` is not null),`f`.`quiz_marks`,0) + if((`f`.`assessment_marks` is not null),`f`.`assessment_marks`,0)) + if((`f`.`mid_marks` is not null),`f`.`mid_marks`,0)) + if((`f`.`end_theory` is not null),`f`.`end_theory`,0)) + if((`f`.`end_practical` is not null),`f`.`end_practical`,0)) >= 45)),5,0))))))) AS `grade_point` from `final_grade_temp_scaled` `f` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mid_exam_overall_marks`
--

/*!50001 DROP VIEW IF EXISTS `mid_exam_overall_marks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mid_exam_overall_marks` AS select `mid_exam_marks`.`stu_id` AS `stu_id`,`mid_exam_marks`.`course_id` AS `course_id`,if((`mid_exam_marks`.`mid_practical` is not null),(`mid_exam_marks`.`mid_theory` * (60 / 100)),`mid_exam_marks`.`mid_theory`) AS `mid_theory`,if((`mid_exam_marks`.`mid_practical` is not null),(`mid_exam_marks`.`mid_practical` * (40 / 100)),NULL) AS `mid_practical`,if((`mid_exam_marks`.`mid_practical` is not null),((`mid_exam_marks`.`mid_theory` * (60 / 100)) + (`mid_exam_marks`.`mid_practical` * (40 / 100))),`mid_exam_marks`.`mid_theory`) AS `overall` from `mid_exam_marks` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quiz_mark_avgs`
--

/*!50001 DROP VIEW IF EXISTS `quiz_mark_avgs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `quiz_mark_avgs` AS select `quiz_marks`.`stu_id` AS `stu_id`,`quiz_marks`.`course_id` AS `course_id`,`t`.`max1` AS `max1`,`t`.`max2` AS `max2`,`t`.`max3` AS `max3`,`t`.`avg` AS `avg` from (`quiz_marks` join lateral (select max((case `t`.`rn` when 1 then `t`.`qn` end)) AS `max1`,max((case `t`.`rn` when 2 then `t`.`qn` end)) AS `max2`,max((case `t`.`rn` when 3 then `t`.`qn` end)) AS `max3`,max((case `t`.`rn` when 4 then `t`.`qn` end)) AS `max4`,(((max((case `t`.`rn` when 1 then `t`.`qn` end)) + max((case `t`.`rn` when 2 then `t`.`qn` end))) + max((case `t`.`rn` when 3 then `t`.`qn` end))) / 3) AS `avg` from (select `q`.`m` AS `qn`,row_number() OVER (ORDER BY `q`.`m` desc )  AS `rn` from (select `quiz_marks`.`quiz_1_marks` AS `quiz_1_marks` union all select `quiz_marks`.`quiz_2_marks` AS `quiz_2_marks` union all select `quiz_marks`.`quiz_3_marks` AS `quiz_3_marks` union all select `quiz_marks`.`quiz_4_marks` AS `quiz_4_marks`) `q` (`m`)) `t`) `t`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sgpa`
--

/*!50001 DROP VIEW IF EXISTS `sgpa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sgpa` AS select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/400')) union all select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/401')) union all select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/402')) union all select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/403')) union all select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/404')) union all select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/405')) union all select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/406')) union all select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/407')) union all select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/408')) union all select `s`.`stu_id` AS `stu_id`,(sum((`s`.`grade_point` * `c`.`credits`)) / 20) AS `sgpa` from (`sgpa_temp` `s` join `course` `c`) where ((`s`.`course_id` = `c`.`course_id`) and (`s`.`stu_id` = 'TG/2019/409')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sgpa_temp`
--

/*!50001 DROP VIEW IF EXISTS `sgpa_temp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sgpa_temp` AS select `g`.`stu_id` AS `stu_id`,`g`.`course_id` AS `course_id`,`g`.`final_grades` AS `final_grades`,if((`g`.`final_grades` >= 90),10,if((`g`.`final_grades` >= 85),9,if((`g`.`final_grades` >= 80),8.5,if((`g`.`final_grades` >= 70),8,if((`g`.`final_grades` >= 60),7,if((`g`.`final_grades` >= 50),6,if((`g`.`final_grades` >= 45),5,0))))))) AS `grade_point` from `grades` `g` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-02 13:01:05

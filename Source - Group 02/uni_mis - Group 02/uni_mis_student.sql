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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-02 10:34:00

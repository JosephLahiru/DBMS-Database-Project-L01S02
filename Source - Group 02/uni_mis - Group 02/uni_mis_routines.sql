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
-- Dumping routines for database 'uni_mis'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-02 10:35:18

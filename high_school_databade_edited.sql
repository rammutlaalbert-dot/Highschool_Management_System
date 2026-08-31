-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `attendance_status` varchar(20) NOT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `attendance_fk` (`student_id`),
  CONSTRAINT `attendance_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,226,'Present'),(2,227,'Present'),(3,228,'Absent'),(4,229,'Present'),(5,230,'Present'),(6,231,'Present'),(7,232,'Absent'),(8,233,'Present'),(9,234,'Present'),(10,235,'Present'),(11,236,'Present'),(12,237,'Present'),(13,238,'Present'),(14,239,'Absent'),(15,240,'Present'),(16,241,'Present'),(17,242,'Present'),(18,243,'Absent'),(19,244,'Present'),(20,245,'Present'),(21,246,'Present'),(22,247,'Present'),(23,248,'Present'),(24,249,'Absent'),(25,250,'Present'),(26,251,'Present'),(27,252,'Absent'),(28,253,'Present'),(29,254,'Present'),(30,255,'Present'),(31,256,'Present'),(32,257,'Present'),(33,258,'Absent'),(34,259,'Present'),(35,260,'Present'),(36,261,'Present'),(37,262,'Absent'),(38,263,'Present'),(39,264,'Present'),(40,265,'Present'),(41,266,'Present'),(42,267,'Present'),(43,268,'Present'),(44,269,'Absent'),(45,270,'Present'),(46,271,'Present'),(47,272,'Absent'),(48,273,'Present'),(49,274,'Present'),(50,275,'Present'),(51,276,'Present'),(52,277,'Present'),(53,278,'Absent'),(54,279,'Present'),(55,280,'Present'),(56,281,'Present'),(57,282,'Absent'),(58,283,'Present'),(59,284,'Present'),(60,285,'Present'),(61,286,'Present'),(62,287,'Present'),(63,288,'Present'),(64,289,'Absent'),(65,290,'Present'),(66,291,'Present'),(67,292,'Absent'),(68,293,'Present'),(69,294,'Present'),(70,295,'Present'),(71,296,'Present'),(72,297,'Present'),(73,298,'Absent'),(74,299,'Present'),(75,300,'Present');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `class_id` int NOT NULL AUTO_INCREMENT,
  `class_name` varchar(20) NOT NULL,
  `grade` int NOT NULL,
  `current_year` int NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'A',8,2026),(2,'B',8,2026),(3,'C',8,2026),(4,'A',9,2026),(5,'B',9,2026),(6,'C',9,2026),(7,'A',10,2026),(8,'B',10,2026),(9,'C',10,2026),(10,'A',11,2026),(11,'B',11,2026),(12,'C',11,2026),(13,'A',12,2026),(14,'B',12,2026),(15,'C',12,2026);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `mark_id` int NOT NULL,
  `student_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `test_mark` decimal(5,2) DEFAULT NULL,
  `exam_mark` decimal(5,2) DEFAULT NULL,
  `final_mark` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`mark_id`),
  KEY `marks_fk1` (`student_id`),
  KEY `marks_fk2` (`subject_id`),
  CONSTRAINT `marks_fk1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `marks_fk2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks`
--

LOCK TABLES `marks` WRITE;
/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` VALUES (1,226,1,30.00,29.00,59.00),(2,226,2,31.00,38.00,69.00),(3,226,3,32.00,47.00,79.00),(4,226,4,33.00,25.00,58.00),(5,226,5,34.00,34.00,68.00),(6,226,6,35.00,43.00,78.00),(7,226,7,36.00,21.00,57.00),(8,227,1,31.00,30.00,61.00),(9,227,2,32.00,40.00,72.00),(10,227,3,33.00,50.00,83.00),(11,227,4,34.00,29.00,63.00),(12,227,5,35.00,39.00,74.00),(13,227,6,36.00,49.00,85.00),(14,227,7,37.00,28.00,65.00),(15,228,1,32.00,31.00,63.00),(16,228,2,33.00,42.00,75.00),(17,228,3,34.00,22.00,56.00),(18,228,4,35.00,33.00,68.00),(19,228,5,36.00,44.00,80.00),(20,228,6,37.00,24.00,61.00),(21,228,7,38.00,35.00,73.00),(22,229,1,33.00,32.00,65.00),(23,229,2,34.00,44.00,78.00),(24,229,3,35.00,25.00,60.00),(25,229,4,36.00,37.00,73.00),(26,229,5,37.00,49.00,86.00),(27,229,6,38.00,30.00,68.00),(28,229,7,39.00,42.00,81.00),(29,230,1,34.00,33.00,67.00),(30,230,2,35.00,46.00,81.00),(31,230,3,36.00,28.00,64.00),(32,230,4,37.00,41.00,78.00),(33,230,5,38.00,23.00,61.00),(34,230,6,39.00,36.00,75.00),(35,230,7,40.00,49.00,89.00),(36,231,1,35.00,34.00,69.00),(37,231,2,36.00,48.00,84.00),(38,231,3,37.00,31.00,68.00),(39,231,4,38.00,45.00,83.00),(40,231,5,39.00,28.00,67.00),(41,231,6,40.00,42.00,82.00),(42,231,7,41.00,25.00,66.00),(43,232,1,36.00,35.00,71.00),(44,232,2,37.00,50.00,87.00),(45,232,3,38.00,34.00,72.00),(46,232,4,39.00,49.00,88.00),(47,232,5,40.00,33.00,73.00),(48,232,6,41.00,48.00,89.00),(49,232,7,42.00,32.00,74.00),(50,233,1,37.00,36.00,73.00),(51,233,2,38.00,21.00,59.00),(52,233,3,39.00,37.00,76.00),(53,233,4,40.00,22.00,62.00),(54,233,5,41.00,38.00,79.00),(55,233,6,42.00,23.00,65.00),(56,233,7,43.00,39.00,82.00),(57,234,1,38.00,37.00,75.00),(58,234,2,39.00,23.00,62.00),(59,234,3,40.00,40.00,80.00),(60,234,4,41.00,26.00,67.00),(61,234,5,42.00,43.00,85.00),(62,234,6,43.00,29.00,72.00),(63,234,7,44.00,46.00,90.00),(64,235,1,39.00,38.00,77.00),(65,235,2,40.00,25.00,65.00),(66,235,3,41.00,43.00,84.00),(67,235,4,42.00,30.00,72.00),(68,235,5,43.00,48.00,91.00),(69,235,6,44.00,35.00,79.00),(70,235,7,45.00,22.00,67.00),(71,236,1,40.00,39.00,79.00),(72,236,2,41.00,27.00,68.00),(73,236,3,42.00,46.00,88.00),(74,236,4,43.00,34.00,77.00),(75,236,5,44.00,22.00,66.00),(76,236,6,45.00,41.00,86.00),(77,236,7,46.00,29.00,75.00),(78,237,1,41.00,40.00,81.00),(79,237,2,42.00,29.00,71.00),(80,237,3,43.00,49.00,92.00),(81,237,4,44.00,38.00,82.00),(82,237,5,45.00,27.00,72.00),(83,237,6,46.00,47.00,93.00),(84,237,7,47.00,36.00,83.00),(85,238,1,42.00,41.00,83.00),(86,238,2,43.00,31.00,74.00),(87,238,3,44.00,21.00,65.00),(88,238,4,45.00,42.00,87.00),(89,238,5,46.00,32.00,78.00),(90,238,6,47.00,22.00,69.00),(91,238,7,48.00,43.00,91.00),(92,239,1,43.00,42.00,85.00),(93,239,2,44.00,33.00,77.00),(94,239,3,45.00,24.00,69.00),(95,239,4,46.00,46.00,92.00),(96,239,5,47.00,37.00,84.00),(97,239,6,48.00,28.00,76.00),(98,239,7,49.00,50.00,99.00),(99,240,1,44.00,43.00,87.00),(100,240,2,45.00,35.00,80.00),(101,240,3,46.00,27.00,73.00),(102,240,4,47.00,50.00,97.00),(103,240,5,48.00,42.00,90.00),(104,240,6,49.00,34.00,83.00),(105,240,7,50.00,26.00,76.00),(106,241,8,21.00,26.00,47.00),(107,241,9,22.00,50.00,72.00),(108,241,10,23.00,43.00,66.00),(109,241,11,24.00,36.00,60.00),(110,241,12,25.00,29.00,54.00),(111,241,13,26.00,22.00,48.00),(112,241,14,27.00,46.00,73.00),(113,242,8,22.00,34.00,56.00),(114,242,9,23.00,28.00,51.00),(115,242,10,24.00,22.00,46.00),(116,242,11,25.00,47.00,72.00),(117,242,12,26.00,41.00,67.00),(118,242,13,27.00,35.00,62.00),(119,242,14,28.00,29.00,57.00),(120,243,8,23.00,42.00,65.00),(121,243,9,24.00,37.00,61.00),(122,243,10,25.00,32.00,57.00),(123,243,11,26.00,27.00,53.00),(124,243,12,27.00,22.00,49.00),(125,243,13,28.00,48.00,76.00),(126,243,14,29.00,43.00,72.00),(127,244,8,24.00,50.00,74.00),(128,244,9,25.00,46.00,71.00),(129,244,10,26.00,42.00,68.00),(130,244,11,27.00,38.00,65.00),(131,244,12,28.00,34.00,62.00),(132,244,13,29.00,30.00,59.00),(133,244,14,30.00,26.00,56.00),(134,245,8,25.00,27.00,52.00),(135,245,9,26.00,24.00,50.00),(136,245,10,27.00,21.00,48.00),(137,245,11,28.00,49.00,77.00),(138,245,12,29.00,46.00,75.00),(139,245,13,30.00,43.00,73.00),(140,245,14,31.00,40.00,71.00),(141,246,8,26.00,35.00,61.00),(142,246,9,27.00,33.00,60.00),(143,246,10,28.00,31.00,59.00),(144,246,11,29.00,29.00,58.00),(145,246,12,30.00,27.00,57.00),(146,246,13,31.00,25.00,56.00),(147,246,14,32.00,23.00,55.00),(148,247,8,27.00,43.00,70.00),(149,247,9,28.00,42.00,70.00),(150,247,10,29.00,41.00,70.00),(151,247,11,30.00,40.00,70.00),(152,247,12,31.00,39.00,70.00),(153,247,13,32.00,38.00,70.00),(154,247,14,33.00,37.00,70.00),(155,248,8,28.00,20.00,48.00),(156,248,9,29.00,20.00,49.00),(157,248,10,30.00,20.00,50.00),(158,248,11,31.00,20.00,51.00),(159,248,12,32.00,20.00,52.00),(160,248,13,33.00,20.00,53.00),(161,248,14,34.00,20.00,54.00),(162,249,8,29.00,28.00,57.00),(163,249,9,30.00,29.00,59.00),(164,249,10,31.00,30.00,61.00),(165,249,11,32.00,31.00,63.00),(166,249,12,33.00,32.00,65.00),(167,249,13,34.00,33.00,67.00),(168,249,14,35.00,34.00,69.00),(169,250,8,30.00,36.00,66.00),(170,250,9,31.00,38.00,69.00),(171,250,10,32.00,40.00,72.00),(172,250,11,33.00,42.00,75.00),(173,250,12,34.00,44.00,78.00),(174,250,13,35.00,46.00,81.00),(175,250,14,36.00,48.00,84.00),(176,251,8,31.00,44.00,75.00),(177,251,9,32.00,47.00,79.00),(178,251,10,33.00,50.00,83.00),(179,251,11,34.00,22.00,56.00),(180,251,12,35.00,25.00,60.00),(181,251,13,36.00,28.00,64.00),(182,251,14,37.00,31.00,68.00),(183,252,8,32.00,21.00,53.00),(184,252,9,33.00,25.00,58.00),(185,252,10,34.00,29.00,63.00),(186,252,11,35.00,33.00,68.00),(187,252,12,36.00,37.00,73.00),(188,252,13,37.00,41.00,78.00),(189,252,14,38.00,45.00,83.00),(190,253,8,33.00,29.00,62.00),(191,253,9,34.00,34.00,68.00),(192,253,10,35.00,39.00,74.00),(193,253,11,36.00,44.00,80.00),(194,253,12,37.00,49.00,86.00),(195,253,13,38.00,23.00,61.00),(196,253,14,39.00,28.00,67.00),(197,254,8,34.00,37.00,71.00),(198,254,9,35.00,43.00,78.00),(199,254,10,36.00,49.00,85.00),(200,254,11,37.00,24.00,61.00),(201,254,12,38.00,30.00,68.00),(202,254,13,39.00,36.00,75.00),(203,254,14,40.00,42.00,82.00),(204,255,8,35.00,45.00,80.00),(205,255,9,36.00,21.00,57.00),(206,255,10,37.00,28.00,65.00),(207,255,11,38.00,35.00,73.00),(208,255,12,39.00,42.00,81.00),(209,255,13,40.00,49.00,89.00),(210,255,14,41.00,25.00,66.00),(211,256,15,43.00,47.00,90.00),(212,256,16,44.00,24.00,68.00),(213,256,17,45.00,32.00,77.00),(214,256,18,46.00,40.00,86.00),(215,256,19,47.00,48.00,95.00),(216,256,20,48.00,25.00,73.00),(217,256,21,49.00,33.00,82.00),(218,257,15,44.00,31.00,75.00),(219,257,16,45.00,40.00,85.00),(220,257,17,46.00,49.00,95.00),(221,257,18,47.00,27.00,74.00),(222,257,19,48.00,36.00,84.00),(223,257,20,49.00,45.00,94.00),(224,257,21,50.00,23.00,73.00),(225,258,15,45.00,46.00,91.00),(226,258,16,46.00,25.00,71.00),(227,258,17,47.00,35.00,82.00),(228,258,18,48.00,45.00,93.00),(229,258,19,49.00,24.00,73.00),(230,258,20,50.00,34.00,84.00),(231,258,21,20.00,44.00,64.00),(232,259,15,46.00,30.00,76.00),(233,259,16,47.00,41.00,88.00),(234,259,17,48.00,21.00,69.00),(235,259,18,49.00,32.00,81.00),(236,259,19,50.00,43.00,93.00),(237,259,20,20.00,23.00,43.00),(238,259,21,21.00,34.00,55.00),(239,260,15,47.00,45.00,92.00),(240,260,16,48.00,26.00,74.00),(241,260,17,49.00,38.00,87.00),(242,260,18,50.00,50.00,100.00),(243,260,19,20.00,31.00,51.00),(244,260,20,21.00,43.00,64.00),(245,260,21,22.00,24.00,46.00),(246,261,15,48.00,29.00,77.00),(247,261,16,49.00,42.00,91.00),(248,261,17,50.00,24.00,74.00),(249,261,18,20.00,37.00,57.00),(250,261,19,21.00,50.00,71.00),(251,261,20,22.00,32.00,54.00),(252,261,21,23.00,45.00,68.00),(253,262,15,49.00,44.00,93.00),(254,262,16,50.00,27.00,77.00),(255,262,17,20.00,41.00,61.00),(256,262,18,21.00,24.00,45.00),(257,262,19,22.00,38.00,60.00),(258,262,20,23.00,21.00,44.00),(259,262,21,24.00,35.00,59.00),(260,263,15,50.00,28.00,78.00),(261,263,16,20.00,43.00,63.00),(262,263,17,21.00,27.00,48.00),(263,263,18,22.00,42.00,64.00),(264,263,19,23.00,26.00,49.00),(265,263,20,24.00,41.00,65.00),(266,263,21,25.00,25.00,50.00),(267,264,15,20.00,43.00,63.00),(268,264,16,21.00,28.00,49.00),(269,264,17,22.00,44.00,66.00),(270,264,18,23.00,29.00,52.00),(271,264,19,24.00,45.00,69.00),(272,264,20,25.00,30.00,55.00),(273,264,21,26.00,46.00,72.00),(274,265,15,21.00,27.00,48.00),(275,265,16,22.00,44.00,66.00),(276,265,17,23.00,30.00,53.00),(277,265,18,24.00,47.00,71.00),(278,265,19,25.00,33.00,58.00),(279,265,20,26.00,50.00,76.00),(280,265,21,27.00,36.00,63.00),(281,266,15,22.00,42.00,64.00),(282,266,16,23.00,29.00,52.00),(283,266,17,24.00,47.00,71.00),(284,266,18,25.00,34.00,59.00),(285,266,19,26.00,21.00,47.00),(286,266,20,27.00,39.00,66.00),(287,266,21,28.00,26.00,54.00),(288,267,15,23.00,26.00,49.00),(289,267,16,24.00,45.00,69.00),(290,267,17,25.00,33.00,58.00),(291,267,18,26.00,21.00,47.00),(292,267,19,27.00,40.00,67.00),(293,267,20,28.00,28.00,56.00),(294,267,21,29.00,47.00,76.00),(295,268,15,24.00,41.00,65.00),(296,268,16,25.00,30.00,55.00),(297,268,17,26.00,50.00,76.00),(298,268,18,27.00,39.00,66.00),(299,268,19,28.00,28.00,56.00),(300,268,20,29.00,48.00,77.00),(301,268,21,30.00,37.00,67.00),(302,269,15,25.00,25.00,50.00),(303,269,16,26.00,46.00,72.00),(304,269,17,27.00,36.00,63.00),(305,269,18,28.00,26.00,54.00),(306,269,19,29.00,47.00,76.00),(307,269,20,30.00,37.00,67.00),(308,269,21,31.00,27.00,58.00),(309,270,15,26.00,40.00,66.00),(310,270,16,27.00,31.00,58.00),(311,270,17,28.00,22.00,50.00),(312,270,18,29.00,44.00,73.00),(313,270,19,30.00,35.00,65.00),(314,270,20,31.00,26.00,57.00),(315,270,21,32.00,48.00,80.00),(316,271,22,34.00,30.00,64.00),(317,271,23,35.00,22.00,57.00),(318,271,24,36.00,45.00,81.00),(319,271,25,37.00,37.00,74.00),(320,271,26,38.00,29.00,67.00),(321,271,27,39.00,21.00,60.00),(322,271,28,40.00,44.00,84.00),(323,272,22,35.00,21.00,56.00),(324,272,23,36.00,45.00,81.00),(325,272,24,37.00,38.00,75.00),(326,272,25,38.00,31.00,69.00),(327,272,26,39.00,24.00,63.00),(328,272,27,40.00,48.00,88.00),(329,272,28,41.00,41.00,82.00),(330,273,22,36.00,43.00,79.00),(331,273,23,37.00,37.00,74.00),(332,273,24,38.00,31.00,69.00),(333,273,25,39.00,25.00,64.00),(334,273,26,40.00,50.00,90.00),(335,273,27,41.00,44.00,85.00),(336,273,28,42.00,38.00,80.00),(337,274,22,37.00,34.00,71.00),(338,274,23,38.00,29.00,67.00),(339,274,24,39.00,24.00,63.00),(340,274,25,40.00,50.00,90.00),(341,274,26,41.00,45.00,86.00),(342,274,27,42.00,40.00,82.00),(343,274,28,43.00,35.00,78.00),(344,275,22,38.00,25.00,63.00),(345,275,23,39.00,21.00,60.00),(346,275,24,40.00,48.00,88.00),(347,275,25,41.00,44.00,85.00),(348,275,26,42.00,40.00,82.00),(349,275,27,43.00,36.00,79.00),(350,275,28,44.00,32.00,76.00),(351,276,22,39.00,47.00,86.00),(352,276,23,40.00,44.00,84.00),(353,276,24,41.00,41.00,82.00),(354,276,25,42.00,38.00,80.00),(355,276,26,43.00,35.00,78.00),(356,276,27,44.00,32.00,76.00),(357,276,28,45.00,29.00,74.00),(358,277,22,40.00,38.00,78.00),(359,277,23,41.00,36.00,77.00),(360,277,24,42.00,34.00,76.00),(361,277,25,43.00,32.00,75.00),(362,277,26,44.00,30.00,74.00),(363,277,27,45.00,28.00,73.00),(364,277,28,46.00,26.00,72.00),(365,278,22,41.00,29.00,70.00),(366,278,23,42.00,28.00,70.00),(367,278,24,43.00,27.00,70.00),(368,278,25,44.00,26.00,70.00),(369,278,26,45.00,25.00,70.00),(370,278,27,46.00,24.00,70.00),(371,278,28,47.00,23.00,70.00),(372,279,22,42.00,20.00,62.00),(373,279,23,43.00,20.00,63.00),(374,279,24,44.00,20.00,64.00),(375,279,25,45.00,20.00,65.00),(376,279,26,46.00,20.00,66.00),(377,279,27,47.00,20.00,67.00),(378,279,28,48.00,20.00,68.00),(379,280,22,43.00,42.00,85.00),(380,280,23,44.00,43.00,87.00),(381,280,24,45.00,44.00,89.00),(382,280,25,46.00,45.00,91.00),(383,280,26,47.00,46.00,93.00),(384,280,27,48.00,47.00,95.00),(385,280,28,49.00,48.00,97.00),(386,281,22,44.00,33.00,77.00),(387,281,23,45.00,35.00,80.00),(388,281,24,46.00,37.00,83.00),(389,281,25,47.00,39.00,86.00),(390,281,26,48.00,41.00,89.00),(391,281,27,49.00,43.00,92.00),(392,281,28,50.00,45.00,95.00),(393,282,22,45.00,24.00,69.00),(394,282,23,46.00,27.00,73.00),(395,282,24,47.00,30.00,77.00),(396,282,25,48.00,33.00,81.00),(397,282,26,49.00,36.00,85.00),(398,282,27,50.00,39.00,89.00),(399,282,28,20.00,42.00,62.00),(400,283,22,46.00,46.00,92.00),(401,283,23,47.00,50.00,97.00),(402,283,24,48.00,23.00,71.00),(403,283,25,49.00,27.00,76.00),(404,283,26,50.00,31.00,81.00),(405,283,27,20.00,35.00,55.00),(406,283,28,21.00,39.00,60.00),(407,284,22,47.00,37.00,84.00),(408,284,23,48.00,42.00,90.00),(409,284,24,49.00,47.00,96.00),(410,284,25,50.00,21.00,71.00),(411,284,26,20.00,26.00,46.00),(412,284,27,21.00,31.00,52.00),(413,284,28,22.00,36.00,58.00),(414,285,22,48.00,28.00,76.00),(415,285,23,49.00,34.00,83.00),(416,285,24,50.00,40.00,90.00),(417,285,25,20.00,46.00,66.00),(418,285,26,21.00,21.00,42.00),(419,285,27,22.00,27.00,49.00),(420,285,28,23.00,33.00,56.00),(421,286,29,25.00,37.00,62.00),(422,286,30,26.00,44.00,70.00),(423,286,31,27.00,20.00,47.00),(424,286,32,28.00,27.00,55.00),(425,286,33,29.00,34.00,63.00),(426,286,34,30.00,41.00,71.00),(427,286,35,31.00,48.00,79.00),(428,287,29,26.00,35.00,61.00),(429,287,30,27.00,43.00,70.00),(430,287,31,28.00,20.00,48.00),(431,287,32,29.00,28.00,57.00),(432,287,33,30.00,36.00,66.00),(433,287,34,31.00,44.00,75.00),(434,287,35,32.00,21.00,53.00),(435,288,29,27.00,33.00,60.00),(436,288,30,28.00,42.00,70.00),(437,288,31,29.00,20.00,49.00),(438,288,32,30.00,29.00,59.00),(439,288,33,31.00,38.00,69.00),(440,288,34,32.00,47.00,79.00),(441,288,35,33.00,25.00,58.00),(442,289,29,28.00,31.00,59.00),(443,289,30,29.00,41.00,70.00),(444,289,31,30.00,20.00,50.00),(445,289,32,31.00,30.00,61.00),(446,289,33,32.00,40.00,72.00),(447,289,34,33.00,50.00,83.00),(448,289,35,34.00,29.00,63.00),(449,290,29,29.00,29.00,58.00),(450,290,30,30.00,40.00,70.00),(451,290,31,31.00,20.00,51.00),(452,290,32,32.00,31.00,63.00),(453,290,33,33.00,42.00,75.00),(454,290,34,34.00,22.00,56.00),(455,290,35,35.00,33.00,68.00),(456,291,29,30.00,27.00,57.00),(457,291,30,31.00,39.00,70.00),(458,291,31,32.00,20.00,52.00),(459,291,32,33.00,32.00,65.00),(460,291,33,34.00,44.00,78.00),(461,291,34,35.00,25.00,60.00),(462,291,35,36.00,37.00,73.00),(463,292,29,31.00,25.00,56.00),(464,292,30,32.00,38.00,70.00),(465,292,31,33.00,20.00,53.00),(466,292,32,34.00,33.00,67.00),(467,292,33,35.00,46.00,81.00),(468,292,34,36.00,28.00,64.00),(469,292,35,37.00,41.00,78.00),(470,293,29,32.00,23.00,55.00),(471,293,30,33.00,37.00,70.00),(472,293,31,34.00,20.00,54.00),(473,293,32,35.00,34.00,69.00),(474,293,33,36.00,48.00,84.00),(475,293,34,37.00,31.00,68.00),(476,293,35,38.00,45.00,83.00),(477,294,29,33.00,21.00,54.00),(478,294,30,34.00,36.00,70.00),(479,294,31,35.00,20.00,55.00),(480,294,32,36.00,35.00,71.00),(481,294,33,37.00,50.00,87.00),(482,294,34,38.00,34.00,72.00),(483,294,35,39.00,49.00,88.00),(484,295,29,34.00,50.00,84.00),(485,295,30,35.00,35.00,70.00),(486,295,31,36.00,20.00,56.00),(487,295,32,37.00,36.00,73.00),(488,295,33,38.00,21.00,59.00),(489,295,34,39.00,37.00,76.00),(490,295,35,40.00,22.00,62.00),(491,296,29,35.00,48.00,83.00),(492,296,30,36.00,34.00,70.00),(493,296,31,37.00,20.00,57.00),(494,296,32,38.00,37.00,75.00),(495,296,33,39.00,23.00,62.00),(496,296,34,40.00,40.00,80.00),(497,296,35,41.00,26.00,67.00),(498,297,29,36.00,46.00,82.00),(499,297,30,37.00,33.00,70.00),(500,297,31,38.00,20.00,58.00),(501,297,32,39.00,38.00,77.00),(502,297,33,40.00,25.00,65.00),(503,297,34,41.00,43.00,84.00),(504,297,35,42.00,30.00,72.00),(505,298,29,37.00,44.00,81.00),(506,298,30,38.00,32.00,70.00),(507,298,31,39.00,20.00,59.00),(508,298,32,40.00,39.00,79.00),(509,298,33,41.00,27.00,68.00),(510,298,34,42.00,46.00,88.00),(511,298,35,43.00,34.00,77.00),(512,299,29,38.00,42.00,80.00),(513,299,30,39.00,31.00,70.00),(514,299,31,40.00,20.00,60.00),(515,299,32,41.00,40.00,81.00),(516,299,33,42.00,29.00,71.00),(517,299,34,43.00,49.00,92.00),(518,299,35,44.00,38.00,82.00),(519,300,29,39.00,40.00,79.00),(520,300,30,40.00,30.00,70.00),(521,300,31,41.00,20.00,61.00),(522,300,32,42.00,41.00,83.00),(523,300,33,43.00,31.00,74.00),(524,300,34,44.00,21.00,65.00),(525,300,35,45.00,42.00,87.00);
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_fk1` (`class_id`),
  CONSTRAINT `student_fk1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (226,'Thabo','Mokoena','2012-01-15','Male',1),(227,'Lerato','Molefe','2012-03-22','Female',1),(228,'Sipho','Dlamini','2012-05-10','Male',1),(229,'Nomsa','Nkosi','2012-07-18','Female',1),(230,'Kagiso','Mabuza','2012-09-25','Male',1),(231,'Palesa','Mthembu','2012-02-12','Female',2),(232,'Bongani','Zulu','2012-04-20','Male',2),(233,'Precious','Ndlovu','2012-06-14','Female',2),(234,'Mpho','Molefe','2012-08-21','Male',2),(235,'Ayanda','Khumalo','2012-10-05','Female',2),(236,'Tshepo','Mokoena','2012-01-30','Male',3),(237,'Zanele','Sithole','2012-03-17','Female',3),(238,'David','Mahlangu','2012-05-24','Male',3),(239,'Linda','Maseko','2012-07-09','Female',3),(240,'Brian','Mthethwa','2012-11-11','Male',3),(241,'Karabo','Molefe','2011-02-14','Female',4),(242,'Sello','Mokoena','2011-04-19','Male',4),(243,'Boitumelo','Nkosi','2011-06-23','Female',4),(244,'Tumelo','Dlamini','2011-08-12','Male',4),(245,'Refilwe','Mabuza','2011-10-27','Female',4),(246,'Neo','Mthembu','2011-01-11','Male',5),(247,'Kelebogile','Zulu','2011-03-28','Female',5),(248,'Oupa','Ndlovu','2011-05-16','Male',5),(249,'Masego','Khumalo','2011-07-22','Female',5),(250,'Lesedi','Sithole','2011-09-30','Male',5),(251,'Onthatile','Mokoena','2011-02-07','Female',6),(252,'Kabelo','Molefe','2011-04-15','Male',6),(253,'Bontle','Mahlangu','2011-06-20','Female',6),(254,'Mothusi','Maseko','2011-08-18','Male',6),(255,'Dineo','Mthethwa','2011-10-09','Female',6),(256,'Kamohelo','Nkosi','2010-01-19','Male',7),(257,'Keitumetse','Dlamini','2010-03-25','Female',7),(258,'Tebogo','Mabuza','2010-05-13','Male',7),(259,'Refentse','Mthembu','2010-07-29','Female',7),(260,'Mosa','Zulu','2010-09-17','Male',7),(261,'Katlego','Ndlovu','2010-02-10','Female',8),(262,'Boikanyo','Molefe','2010-04-22','Male',8),(263,'Kefilwe','Khumalo','2010-06-15','Female',8),(264,'Gomolemo','Mokoena','2010-08-24','Male',8),(265,'Tshegofatso','Sithole','2010-10-31','Female',8),(266,'Mpho','Mahlangu','2010-01-08','Male',9),(267,'Naledi','Maseko','2010-03-19','Female',9),(268,'Thabiso','Mthethwa','2010-05-27','Male',9),(269,'Lorato','Nkosi','2010-07-14','Female',9),(270,'Mogau','Dlamini','2010-09-26','Male',9),(271,'Gift','Mokoena','2009-02-13','Male',10),(272,'Precious','Molefe','2009-04-21','Female',10),(273,'Siyabonga','Ndlovu','2009-06-18','Male',10),(274,'Amanda','Mabuza','2009-08-29','Female',10),(275,'Vusi','Zulu','2009-10-16','Male',10),(276,'Nkosana','Mthembu','2009-01-24','Male',11),(277,'Portia','Khumalo','2009-03-15','Female',11),(278,'Sibusiso','Dlamini','2009-05-23','Male',11),(279,'Brenda','Sithole','2009-07-11','Female',11),(280,'Andile','Mokoena','2009-09-28','Male',11),(281,'Lunga','Mahlangu','2009-02-09','Male',12),(282,'Nompumelelo','Maseko','2009-04-17','Female',12),(283,'Themba','Mthethwa','2009-06-26','Male',12),(284,'Wendy','Nkosi','2009-08-13','Female',12),(285,'Sanele','Molefe','2009-10-20','Male',12),(286,'Junior','Mokoena','2008-01-12','Male',13),(287,'Mapula','Molefe','2008-03-24','Female',13),(288,'Mandla','Dlamini','2008-05-19','Male',13),(289,'Thandi','Nkosi','2008-07-27','Female',13),(290,'Lucky','Mabuza','2008-09-14','Male',13),(291,'Sizwe','Zulu','2008-02-16','Male',14),(292,'Nokuthula','Ndlovu','2008-04-28','Female',14),(293,'Bongiwe','Mthembu','2008-06-21','Female',14),(294,'Musa','Khumalo','2008-08-09','Male',14),(295,'Asanda','Sithole','2008-10-25','Female',14),(296,'Lebo','Mokoena','2008-01-29','Female',15),(297,'Vuyo','Mahlangu','2008-03-18','Male',15),(298,'Nandi','Maseko','2008-05-22','Female',15),(299,'Mthokozisi','Mthethwa','2008-07-16','Male',15),(300,'Zinhle','Nkosi','2008-09-30','Female',15);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subject_id` int NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `grade` int NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'English',8),(2,'Mathematics',8),(3,'Social Sciences',8),(4,'Natural Sciences',8),(5,'Creative Arts',8),(6,'Economic and Management Sciences',8),(7,'Life Orientation',8),(8,'English',9),(9,'Mathematics',9),(10,'Social Sciences',9),(11,'Natural Sciences',9),(12,'Creative Arts',9),(13,'Economic and Management Sciences',9),(14,'Life Orientation',9),(15,'Mathematics',10),(16,'Physical Sciences',10),(17,'Life Sciences',10),(18,'English',10),(19,'Life Orientation',10),(20,'Geography',10),(21,'Computer Applications Technology',10),(22,'Mathematics',11),(23,'Physical Sciences',11),(24,'Life Sciences',11),(25,'English',11),(26,'Life Orientation',11),(27,'Geography',11),(28,'Computer Applications Technology',11),(29,'Mathematics',12),(30,'Physical Sciences',12),(31,'Life Sciences',12),(32,'English',12),(33,'Life Orientation',12),(34,'Geography',12),(35,'Computer Applications Technology',12);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Thabo','Mokoena','0712345678','thabo.mokoena@gmail.com'),(2,'Lerato','Molefe','0723456789','lerato.molefe@gmail.com'),(3,'Sipho','Dlamini','0734567890','sipho.dlamini@gmail.com'),(4,'Nomsa','Nkosi','0745678901','nomsa.nkosi@gmail.com'),(5,'Kagiso','Mabuza','0756789012','kagiso.mabuza@gmail.com'),(6,'Palesa','Mthembu','0767890123','palesa.mthembu@gmail.com'),(7,'Bongani','Zulu','0778901234','bongani.zulu@gmail.com'),(8,'Precious','Ndlovu','0789012345','precious.ndlovu@gmail.com'),(9,'Mpho','Molefe','0790123456','mpho.molefe@gmail.com'),(10,'Ayanda','Khumalo','0711122233','ayanda.khumalo@gmail.com'),(11,'Tshepo','Mokoena','0722233344','tshepo.mokoena@gmail.com'),(12,'Zanele','Sithole','0733344455','zanele.sithole@gmail.com'),(13,'David','Mahlangu','0744455566','david.mahlangu@gmail.com'),(14,'Linda','Maseko','0755566677','linda.maseko@gmail.com'),(15,'Brian','Mthethwa','0766677788','brian.mthethwa@gmail.com');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher_subject`
--

DROP TABLE IF EXISTS `teacher_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher_subject` (
  `teacher_subject_id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`teacher_subject_id`),
  KEY `teacher_subject_fk1` (`teacher_id`),
  KEY `teacher_subject_fk2` (`subject_id`),
  CONSTRAINT `teacher_subject_fk1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`),
  CONSTRAINT `teacher_subject_fk2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher_subject`
--

LOCK TABLES `teacher_subject` WRITE;
/*!40000 ALTER TABLE `teacher_subject` DISABLE KEYS */;
INSERT INTO `teacher_subject` VALUES (1,1,2),(2,1,9),(3,1,15),(4,1,22),(5,1,29),(6,2,15),(7,2,22),(8,2,29),(9,3,16),(10,3,23),(11,3,30),(12,4,17),(13,4,24),(14,4,31),(15,5,1),(16,5,8),(17,5,18),(18,5,25),(19,5,32),(20,6,3),(21,6,10),(22,7,4),(23,7,11),(24,8,20),(25,8,27),(26,8,34),(27,9,7),(28,9,14),(29,9,19),(30,9,26),(31,9,33),(32,10,21),(33,10,28),(34,10,35),(35,11,5),(36,11,12),(37,12,6),(38,12,13),(39,13,15),(40,13,22),(41,13,29),(42,14,18),(43,14,25),(44,14,32),(45,15,17),(46,15,24),(47,15,31);
/*!40000 ALTER TABLE `teacher_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_position` varchar(30) NOT NULL,
  `teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'teacher1','Teacher@123','Teacher',1),(2,'teacher2','Teacher@124','Teacher',2),(3,'teacher3','Teacher@125','Teacher',3),(4,'teacher4','Teacher@126','Teacher',4),(5,'teacher5','Teacher@127','Teacher',5),(6,'teacher6','Teacher@128','Teacher',6),(7,'teacher7','Teacher@129','Teacher',7),(8,'teacher8','Teacher@130','Teacher',8),(9,'teacher9','Teacher@131','Teacher',9),(10,'teacher10','Teacher@132','Teacher',10),(11,'teacher11','Teacher@133','Teacher',11),(12,'teacher12','Teacher@134','Teacher',12),(13,'teacher13','Teacher@135','Teacher',13),(14,'teacher14','Teacher@136','Teacher',14),(15,'teacher15','Teacher@137','Teacher',15),(16,'admin','Admin@123','Admin',NULL),(17,'principal','Principal@123','Principal',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-30 18:36:32


-- ============================================================
-- 1. USERS  (user_id, username, password, user_position)
-- ============================================================

-- INSERT
INSERT INTO users (username, password, user_position)
VALUES ('teacher16', 'Teacher@138', 'Teacher');

-- SELECT (login check)
SELECT user_id, username, user_position
FROM users
WHERE username = 'teacher1' AND password = 'Teacher@123';

-- SELECT all users of a given position
SELECT user_id, username, user_position
FROM users
WHERE user_position = 'Teacher';

-- UPDATE (change password)
UPDATE users
SET password = 'NewPass@999'
WHERE username = 'teacher1';

-- DELETE
DELETE FROM users
WHERE username = 'teacher16';


-- ============================================================
-- 2. STUDENT  (student_id, first_name, last_name, date_of_birth, gender, class_id)
-- ============================================================

-- INSERT
INSERT INTO student (first_name, last_name, date_of_birth, gender, class_id)
VALUES ('Anele', 'Nkosi', '2012-06-01', 'Female', 1);

-- SELECT all students
SELECT student_id, first_name, last_name, class_id
FROM student
ORDER BY last_name;

-- SELECT one student by ID
SELECT *
FROM student
WHERE student_id = 226;

-- SELECT by name search
SELECT *
FROM student
WHERE last_name LIKE '%Mokoena%';

-- SELECT students with their class name (join class)
SELECT s.student_id, s.first_name, s.last_name, c.class_name, c.grade
FROM student s
JOIN class c ON s.class_id = c.class_id
WHERE c.grade = 10 AND c.class_name = 'A';

-- UPDATE (edit student record / move to another class)
UPDATE student
SET class_id = 2
WHERE student_id = 226;

-- DELETE
DELETE FROM student
WHERE student_id = 226;


-- ============================================================
-- 3. TEACHER  (teacher_id, first_name, surname, phone, email)
-- ============================================================

-- INSERT
INSERT INTO teacher (teacher_id, first_name, surname, phone, email)
VALUES (16, 'Nomvula', 'Radebe', '0798887766', 'nomvula.radebe@gmail.com');

-- SELECT all teachers
SELECT teacher_id, first_name, surname, email
FROM teacher
ORDER BY surname;

-- SELECT one teacher
SELECT *
FROM teacher
WHERE teacher_id = 1;

-- SELECT search by surname
SELECT *
FROM teacher
WHERE surname LIKE '%Mokoena%';

-- UPDATE
UPDATE teacher
SET phone = '0799990000'
WHERE teacher_id = 1;

-- DELETE
DELETE FROM teacher
WHERE teacher_id = 16;


-- ============================================================
-- 4. CLASS  (class_id, class_name, grade, current_year)
-- ============================================================

-- INSERT
INSERT INTO class (class_name, grade, current_year)
VALUES ('D', 8, 2026);

-- SELECT all classes
SELECT class_id, class_name, grade, current_year
FROM class
ORDER BY grade, class_name;

-- SELECT classes for a specific grade
SELECT class_id, class_name
FROM class
WHERE grade = 10;

-- UPDATE
UPDATE class
SET current_year = 2027
WHERE class_id = 1;

-- DELETE
DELETE FROM class
WHERE class_id = 16;


-- ============================================================
-- 5. SUBJECTS  (subject_id, subject_name, grade)
-- ============================================================

-- INSERT
INSERT INTO subjects (subject_id, subject_name, grade)
VALUES (36, 'Information Technology', 12);

-- SELECT all subjects
SELECT subject_id, subject_name, grade
FROM subjects
ORDER BY grade, subject_name;

-- SELECT subjects offered for a specific grade
SELECT subject_id, subject_name
FROM subjects
WHERE grade = 10;

-- UPDATE
UPDATE subjects
SET subject_name = 'Life Sciences (Advanced)'
WHERE subject_id = 17;

-- DELETE
DELETE FROM subjects
WHERE subject_id = 36;


-- ============================================================
-- 6. MARKS  (mark_id, student_id, subject_id, test_mark, exam_mark, final_mark)
-- ============================================================

-- INSERT
INSERT INTO marks (mark_id, student_id, subject_id, test_mark, exam_mark, final_mark)
VALUES (526, 226, 1, 40.00, 45.00, 85.00);

-- SELECT: all marks for one student, with subject name
SELECT s.first_name, s.last_name, sub.subject_name,
       m.test_mark, m.exam_mark, m.final_mark
FROM marks m
JOIN student s ON m.student_id = s.student_id
JOIN subjects sub ON m.subject_id = sub.subject_id
WHERE s.student_id = 226;

-- SELECT: Student Academic Performance Report
-- (average final mark per student, best to worst)
SELECT s.student_id, s.first_name, s.last_name,
       ROUND(AVG(m.final_mark), 1) AS average_final_mark
FROM marks m
JOIN student s ON m.student_id = s.student_id
GROUP BY s.student_id, s.first_name, s.last_name
ORDER BY average_final_mark DESC;

-- SELECT: class average per subject
SELECT sub.subject_name, ROUND(AVG(m.final_mark), 1) AS class_average
FROM marks m
JOIN subjects sub ON m.subject_id = sub.subject_id
GROUP BY sub.subject_name
ORDER BY class_average DESC;

-- SELECT: students who failed a subject (final_mark < 50)
SELECT s.first_name, s.last_name, sub.subject_name, m.final_mark
FROM marks m
JOIN student s ON m.student_id = s.student_id
JOIN subjects sub ON m.subject_id = sub.subject_id
WHERE m.final_mark < 50
ORDER BY m.final_mark;

-- UPDATE (correct a mark)
UPDATE marks
SET exam_mark = 48.00, final_mark = test_mark + 48.00
WHERE mark_id = 1;

-- DELETE
DELETE FROM marks
WHERE mark_id = 526;


-- ============================================================
-- 7. ATTENDANCE  (attendance_id, student_id, attendance_status)
-- ============================================================

-- INSERT
INSERT INTO attendance (student_id, attendance_status)
VALUES (226, 'Present');

-- SELECT: full attendance history for a student
SELECT s.first_name, s.last_name, a.attendance_status
FROM attendance a
JOIN student s ON a.student_id = s.student_id
WHERE s.student_id = 226;

-- SELECT: Attendance Report (attendance % per student)
SELECT s.student_id, s.first_name, s.last_name,
       COUNT(*) AS records,
       SUM(CASE WHEN a.attendance_status = 'Present' THEN 1 ELSE 0 END) AS days_present,
       ROUND(SUM(CASE WHEN a.attendance_status = 'Present' THEN 1 ELSE 0 END) / COUNT(*) * 100, 1) AS attendance_percentage
FROM attendance a
JOIN student s ON a.student_id = s.student_id
GROUP BY s.student_id, s.first_name, s.last_name
ORDER BY attendance_percentage ASC;

-- SELECT: everyone currently marked Absent
SELECT s.first_name, s.last_name, c.class_name, c.grade
FROM attendance a
JOIN student s ON a.student_id = s.student_id
JOIN class c ON s.class_id = c.class_id
WHERE a.attendance_status = 'Absent';

-- UPDATE (correct an attendance record)
UPDATE attendance
SET attendance_status = 'Present'
WHERE attendance_id = 3;

-- DELETE
DELETE FROM attendance
WHERE attendance_id = 1;


-- ============================================================
-- REPORT QUERIES (matches the 5 reports required in the brief)
-- ============================================================

-- 1. Student List Report
SELECT student_id, first_name, last_name, class_id
FROM student
ORDER BY last_name, first_name;

-- 2. Student Academic Performance Report (see marks section above)

-- 3. Attendance Report (see attendance section above)

-- 4. Students by Class Report
SELECT c.grade, c.class_name, s.first_name, s.last_name
FROM student s
JOIN class c ON s.class_id = c.class_id
ORDER BY c.grade, c.class_name, s.last_name;

-- 5. Teacher-Subject Report
-- NOTE: there is no teacher_subject / linking table in this schema,
-- so teachers cannot currently be matched to subjects or classes in SQL.
-- Flag this with your Database (MySQL) teammate -- you likely need a
-- small junction table added, e.g.:
--
-- CREATE TABLE teacher_subject (
--   teacher_id INT NOT NULL,
--   subject_id INT NOT NULL,
--   PRIMARY KEY (teacher_id, subject_id),
--   FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id),
--   FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
-- );
--
-- Once that exists, the report query would be:
-- SELECT t.first_name, t.surname, sub.subject_name
-- FROM teacher_subject ts
-- JOIN teacher t ON ts.teacher_id = t.teacher_id
-- JOIN subjects sub ON ts.subject_id = sub.subject_id
-- ORDER BY t.surname;
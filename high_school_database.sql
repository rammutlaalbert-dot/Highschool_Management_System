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
  `attendance_id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `attendence_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `attendance_fk` (`student_id`),
  CONSTRAINT `attendance_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,'Present'),(2,2,'Present'),(3,3,'Absent'),(4,4,'Present'),(5,5,'Late'),(6,6,'Present'),(7,7,'Present'),(8,8,'Absent'),(9,9,'Present'),(10,10,'Present'),(11,11,'Present'),(12,12,'Late'),(13,13,'Present'),(14,14,'Present'),(15,15,'Absent'),(16,16,'Present'),(17,17,'Present'),(18,18,'Late'),(19,19,'Present'),(20,20,'Present'),(21,21,'Absent'),(22,22,'Present'),(23,23,'Present'),(24,24,'Late'),(25,25,'Present'),(26,26,'Present'),(27,27,'Absent'),(28,28,'Present'),(29,29,'Present'),(30,30,'Late'),(31,31,'Present'),(32,32,'Present'),(33,33,'Absent'),(34,34,'Present'),(35,35,'Late'),(36,36,'Present'),(37,37,'Present'),(38,38,'Absent'),(39,39,'Present'),(40,40,'Present'),(41,41,'Present'),(42,42,'Late'),(43,43,'Present'),(44,44,'Absent'),(45,45,'Present'),(46,46,'Present'),(47,47,'Late'),(48,48,'Present'),(49,49,'Present'),(50,50,'Absent'),(51,51,'Present'),(52,52,'Present'),(53,53,'Late'),(54,54,'Present'),(55,55,'Absent'),(56,56,'Present'),(57,57,'Present'),(58,58,'Late'),(59,59,'Present'),(60,60,'Present'),(61,61,'Absent'),(62,62,'Present'),(63,63,'Present'),(64,64,'Late'),(65,65,'Present'),(66,66,'Present'),(67,67,'Absent'),(68,68,'Present'),(69,69,'Late'),(70,70,'Present'),(71,71,'Present'),(72,72,'Absent'),(73,73,'Present'),(74,74,'Present'),(75,75,'Late'),(76,76,'Present'),(77,77,'Present'),(78,78,'Absent'),(79,79,'Present'),(80,80,'Present'),(81,81,'Late'),(82,82,'Present'),(83,83,'Present'),(84,84,'Absent'),(85,85,'Present'),(86,86,'Present'),(87,87,'Late'),(88,88,'Present'),(89,89,'Present'),(90,90,'Absent'),(91,91,'Present'),(92,92,'Present'),(93,93,'Absent'),(94,94,'Late'),(95,95,'Present'),(96,96,'Present'),(97,97,'Present'),(98,98,'Absent'),(99,99,'Present'),(100,100,'Late'),(101,101,'Present'),(102,102,'Absent'),(103,103,'Present'),(104,104,'Present'),(105,105,'Late'),(106,106,'Present'),(107,107,'Present'),(108,108,'Absent'),(109,109,'Present'),(110,110,'Present'),(111,111,'Late'),(112,112,'Present'),(113,113,'Present'),(114,114,'Absent'),(115,115,'Present'),(116,116,'Present'),(117,117,'Late'),(118,118,'Present'),(119,119,'Absent'),(120,120,'Present'),(121,121,'Present'),(122,122,'Absent'),(123,123,'Present'),(124,124,'Late'),(125,125,'Present'),(126,126,'Present'),(127,127,'Absent'),(128,128,'Present'),(129,129,'Present'),(130,130,'Late'),(131,131,'Present'),(132,132,'Present'),(133,133,'Absent'),(134,134,'Present'),(135,135,'Late'),(136,136,'Present'),(137,137,'Present'),(138,138,'Absent'),(139,139,'Present'),(140,140,'Present'),(141,141,'Late'),(142,142,'Present'),(143,143,'Absent'),(144,144,'Present'),(145,145,'Present'),(146,146,'Late'),(147,147,'Present'),(148,148,'Absent'),(149,149,'Present'),(150,150,'Present');
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
  `class_name` varchar(20) DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `current_year` int DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'8A',8,2026),(2,'8B',8,2026),(3,'8C',8,2026),(4,'9A',9,2026),(5,'9B',9,2026),(6,'9C',9,2026),(7,'10A',10,2026),(8,'10B',10,2026),(9,'10C',10,2026),(10,'11A',11,2026),(11,'11B',11,2026),(12,'11C',11,2026),(13,'12A',12,2026),(14,'12B',12,2026),(15,'12C',12,2026);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollement`
--

DROP TABLE IF EXISTS `enrollement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollement` (
  `enrollment_id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  PRIMARY KEY (`enrollment_id`),
  KEY `enrollement_fk` (`student_id`),
  KEY `enrollement_f` (`subject_id`),
  CONSTRAINT `enrollement_f` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  CONSTRAINT `enrollement_fk` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollement`
--

LOCK TABLES `enrollement` WRITE;
/*!40000 ALTER TABLE `enrollement` DISABLE KEYS */;
/*!40000 ALTER TABLE `enrollement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marks` (
  `mark_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
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
  `first_name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `class_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `student_fk` (`class_id`),
  CONSTRAINT `student_fk` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Sipho','Mthembu','2012-02-15','Male',1),(2,'Amahle','Dlamini','2012-04-21','Female',1),(3,'Thando','Ndlovu','2012-06-10','Male',1),(4,'Lerato','Mkhize','2012-08-05','Female',1),(5,'Siyabonga','Zulu','2012-09-17','Male',1),(6,'Nokuthula','Khumalo','2012-10-23','Female',1),(7,'Bongani','Cele','2012-11-12','Male',1),(8,'Zanele','Ngcobo','2012-12-03','Female',1),(9,'Andile','Mthethwa','2012-03-19','Male',1),(10,'Precious','Sithole','2012-07-27','Female',1),(11,'Lungelo','Buthelezi','2012-01-14','Male',2),(12,'Nandi','Mkhwanazi','2012-03-22','Female',2),(13,'Sanele','Ntuli','2012-05-18','Male',2),(14,'Busisiwe','Gumede','2012-07-09','Female',2),(15,'Mandla','Shange','2012-09-25','Male',2),(16,'Ayanda','Hadebe','2012-10-16','Female',2),(17,'Vusi','Mthembu','2012-11-08','Male',2),(18,'Thandiwe','Ndlovu','2012-12-19','Female',2),(19,'Sphamandla','Dube','2012-02-28','Male',2),(20,'Nomvula','Zulu','2012-06-14','Female',2),(21,'Muzi','Dlamini','2012-01-11','Male',3),(22,'Khanyisile','Mkhize','2012-02-20','Female',3),(23,'Nkosi','Ndlovu','2012-04-15','Male',3),(24,'Nompumelelo','Khumalo','2012-05-24','Female',3),(25,'Bhekizizwe','Cele','2012-07-13','Male',3),(26,'Zinhle','Ngcobo','2012-08-29','Female',3),(27,'Sibusiso','Mthethwa','2012-09-18','Male',3),(28,'Nokwazi','Sithole','2012-10-07','Female',3),(29,'Thulani','Buthelezi','2012-11-21','Male',3),(30,'Lindiwe','Mkhwanazi','2012-12-15','Female',3),(31,'Siyanda','Mthembu','2011-01-17','Male',4),(32,'Ntombifuthi','Dlamini','2011-03-12','Female',4),(33,'Bonginkosi','Ndlovu','2011-04-26','Male',4),(34,'Zodwa','Mkhize','2011-05-19','Female',4),(35,'Thamsanqa','Zulu','2011-07-08','Male',4),(36,'Nosipho','Khumalo','2011-08-23','Female',4),(37,'Mthokozisi','Cele','2011-09-14','Male',4),(38,'Nokuthula','Ngcobo','2011-10-29','Female',4),(39,'Sifiso','Mthethwa','2011-11-16','Male',4),(40,'Thembeka','Sithole','2011-12-05','Female',4),(41,'Mlungisi','Buthelezi','2011-02-11','Male',5),(42,'Asanda','Mkhwanazi','2011-03-28','Female',5),(43,'Nkosinathi','Ntuli','2011-05-17','Male',5),(44,'Buhle','Gumede','2011-06-22','Female',5),(45,'Sakhile','Shange','2011-08-13','Male',5),(46,'Nokwanda','Hadebe','2011-09-27','Female',5),(47,'Vuyani','Mthembu','2011-10-18','Male',5),(48,'Thulisile','Ndlovu','2011-11-09','Female',5),(49,'Siyabonga','Dube','2011-12-21','Male',5),(50,'Nomcebo','Zulu','2011-04-07','Female',5),(51,'Lwazi','Dlamini','2011-01-25','Male',6),(52,'Snenhlanhla','Mkhize','2011-02-14','Female',6),(53,'Mzwandile','Ndlovu','2011-04-09','Male',6),(54,'Nokuthula','Khumalo','2011-05-31','Female',6),(55,'Sibusiso','Cele','2011-06-18','Male',6),(56,'Thandeka','Ngcobo','2011-07-26','Female',6),(57,'Bongani','Mthethwa','2011-08-15','Male',6),(58,'Zanele','Sithole','2011-09-22','Female',6),(59,'Sanele','Buthelezi','2011-10-11','Male',6),(60,'Nandi','Mkhwanazi','2011-12-02','Female',6),(61,'Siyabonga','Mthembu','2010-01-13','Male',7),(62,'Nomsa','Dlamini','2010-02-24','Female',7),(63,'Thabo','Molefe','2010-04-16','Male',7),(64,'Lerato','Mogale','2010-05-28','Female',7),(65,'Kagiso','Molefe','2010-07-12','Male',7),(66,'Boitumelo','Mogale','2010-08-19','Female',7),(67,'Sibusiso','Ndlovu','2010-09-07','Male',7),(68,'Zinhle','Mkhize','2010-10-21','Female',7),(69,'Andile','Zulu','2010-11-15','Male',7),(70,'Nokuthula','Khumalo','2010-12-04','Female',7),(71,'Tshepo','Molefe','2010-01-18','Male',8),(72,'Karabo','Mogale','2010-03-23','Female',8),(73,'Siyanda','Dlamini','2010-04-11','Male',8),(74,'Nompumelelo','Mkhize','2010-05-29','Female',8),(75,'Mpho','Molefe','2010-06-17','Male',8),(76,'Kelebogile','Mogale','2010-08-26','Female',8),(77,'Bongani','Ndlovu','2010-09-14','Male',8),(78,'Ayanda','Zulu','2010-10-08','Female',8),(79,'Sanele','Mthembu','2010-11-22','Male',8),(80,'Lindiwe','Khumalo','2010-12-13','Female',8),(81,'Thabang','Molefe','2010-02-09','Male',9),(82,'Reitumetse','Mogale','2010-03-17','Female',9),(83,'Sibusiso','Dlamini','2010-04-25','Male',9),(84,'Zanele','Ndlovu','2010-06-12','Female',9),(85,'Mandla','Mkhize','2010-07-21','Male',9),(86,'Nokuthula','Zulu','2010-08-30','Female',9),(87,'Bonginkosi','Mthembu','2010-09-16','Male',9),(88,'Thandeka','Khumalo','2010-10-24','Female',9),(89,'Siyabonga','Cele','2010-11-10','Male',9),(90,'Busisiwe','Ngcobo','2010-12-19','Female',9),(91,'Siyabonga','Mthethwa','2009-01-15','Male',10),(92,'Nokuthula','Dlamini','2009-02-27','Female',10),(93,'Thabo','Molefe','2009-04-13','Male',10),(94,'Lerato','Mogale','2009-05-22','Female',10),(95,'Kagiso','Molefe','2009-06-18','Male',10),(96,'Zinhle','Mkhize','2009-07-29','Female',10),(97,'Andile','Ndlovu','2009-09-11','Male',10),(98,'Nomsa','Zulu','2009-10-20','Female',10),(99,'Sibusiso','Khumalo','2009-11-14','Male',10),(100,'Thandiwe','Cele','2009-12-06','Female',10),(101,'Tshepo','Mogale','2009-01-19','Male',11),(102,'Boitumelo','Molefe','2009-03-26','Female',11),(103,'Mpho','Molefe','2009-04-17','Male',11),(104,'Kelebogile','Mogale','2009-05-31','Female',11),(105,'Siyanda','Dlamini','2009-07-09','Male',11),(106,'Nompumelelo','Mkhize','2009-08-18','Female',11),(107,'Bongani','Ndlovu','2009-09-27','Male',11),(108,'Ayanda','Zulu','2009-10-13','Female',11),(109,'Sanele','Mthembu','2009-11-22','Male',11),(110,'Lindiwe','Khumalo','2009-12-15','Female',11),(111,'Thabang','Molefe','2009-02-12','Male',12),(112,'Reitumetse','Mogale','2009-03-21','Female',12),(113,'Sibusiso','Dlamini','2009-04-29','Male',12),(114,'Zanele','Ndlovu','2009-06-16','Female',12),(115,'Mandla','Mkhize','2009-07-25','Male',12),(116,'Nokuthula','Zulu','2009-08-14','Female',12),(117,'Bonginkosi','Mthembu','2009-09-23','Male',12),(118,'Thandeka','Khumalo','2009-10-07','Female',12),(119,'Siyabonga','Cele','2009-11-19','Male',12),(120,'Busisiwe','Ngcobo','2009-12-28','Female',12),(121,'Sibusiso','Mthembu','2008-01-16','Male',13),(122,'Nomsa','Dlamini','2008-02-25','Female',13),(123,'Thabo','Molefe','2008-04-18','Male',13),(124,'Lerato','Mogale','2008-05-27','Female',13),(125,'Kagiso','Molefe','2008-06-13','Male',13),(126,'Boitumelo','Mogale','2008-08-22','Female',13),(127,'Siyabonga','Ndlovu','2008-09-15','Male',13),(128,'Zinhle','Mkhize','2008-10-24','Female',13),(129,'Andile','Zulu','2008-11-11','Male',13),(130,'Nokuthula','Khumalo','2008-12-19','Female',13),(131,'Tshepo','Molefe','2008-01-23','Male',14),(132,'Karabo','Mogale','2008-03-14','Female',14),(133,'Mpho','Molefe','2008-04-26','Male',14),(134,'Kelebogile','Mogale','2008-05-17','Female',14),(135,'Siyanda','Dlamini','2008-07-08','Male',14),(136,'Nompumelelo','Mkhize','2008-08-29','Female',14),(137,'Bongani','Ndlovu','2008-09-18','Male',14),(138,'Ayanda','Zulu','2008-10-12','Female',14),(139,'Sanele','Mthembu','2008-11-21','Male',14),(140,'Lindiwe','Khumalo','2008-12-05','Female',14),(141,'Thabang','Molefe','2008-02-11','Male',15),(142,'Reitumetse','Mogale','2008-03-28','Female',15),(143,'Sibusiso','Dlamini','2008-04-15','Male',15),(144,'Zanele','Ndlovu','2008-06-22','Female',15),(145,'Mandla','Mkhize','2008-07-13','Male',15),(146,'Nokuthula','Zulu','2008-08-24','Female',15),(147,'Bonginkosi','Mthembu','2008-09-17','Male',15),(148,'Thandeka','Khumalo','2008-10-29','Female',15),(149,'Siyabonga','Cele','2008-11-16','Male',15),(150,'Busisiwe','Ngcobo','2008-12-09','Female',15);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subject_id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(100) DEFAULT NULL,
  `grade` int NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'English',8),(2,'Mathematics',8),(3,'Social Sciences',8),(4,'Natural Sciences',8),(5,'Creative Arts',8),(6,'Economic and Management Sciences',8),(7,'Life Orientation',8),(8,'English',9),(9,'Mathematics',9),(10,'Social Sciences',9),(11,'Natural Sciences',9),(12,'Creative Arts',9),(13,'Economic and Management Sciences',9),(14,'Life Orientation',9),(15,'English',10),(16,'Mathematics',10),(17,'zulu',10),(18,'Life Orientation',10),(19,'physical science',10),(20,'Graphic Design',10),(21,'Life Orientation',10),(22,'English',11),(23,'Mathematics',11),(24,'zulu',11),(25,'Life Orientation',11),(26,'physical science',11),(27,'Graphic Design',11),(28,'Life Orientation',11),(29,'English',12),(30,'Mathematics',12),(31,'zulu',12),(32,'Life Orientation',12),(33,'physical science',12),(34,'Graphic Design',12),(35,'Life Orientation',12),(36,'English',12),(37,'Mathematics',12),(38,'zulu',12),(39,'Life Orientation',12),(40,'physical science',12),(41,'Graphic Design',12),(42,'Life Orientation',12);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Sibusiso','Mthembu','0712345678','sibusiso.mthembu@school.com'),(2,'Nomsa','Zulu','0723456789','nomsa.zulu@school.com'),(3,'Thandeka','Ndlovu','0734567890','thandeka.ndlovu@school.com'),(4,'Bongani','Dlamini','0745678901','bongani.dlamini@school.com'),(5,'Zanele','Mkhize','0756789012','zanele.mkhize@school.com'),(6,'Siyabonga','Buthelezi','0767890123','siyabonga.buthelezi@school.com'),(7,'Lindiwe','Ngcobo','0778901234','lindiwe.ngcobo@school.com'),(8,'Themba','Cele','0789012345','themba.cele@school.com'),(9,'Nokuthula','Khumalo','0790123456','nokuthula.khumalo@school.com'),(10,'Andile','Mthethwa','0701234567','andile.mthethwa@school.com'),(11,'Karabo','Molefe','0713456789','karabo.molefe@school.com'),(12,'Tshepo','Motswana','0724567890','tshepo.motswana@school.com'),(13,'Boitumelo','Mogale','0735678901','boitumelo.mogale@school.com'),(14,'Kagiso','Molefe','0746789012','kagiso.molefe@school.com'),(15,'Nompumelelo','Sithole','0757890123','nompumelelo.sithole@school.com'),(16,'Mandla','Shange','0768901234','mandla.shange@school.com'),(17,'Ayanda','Ntuli','0779012345','ayanda.ntuli@school.com'),(18,'Buhle','Hadebe','0780123456','buhle.hadebe@school.com'),(19,'Lungile','Gumede','0791234567','lungile.gumede@school.com'),(20,'Khanyisile','Mkhwanazi','0702345678','khanyisile.mkhwanazi@school.com');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_position` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2026-08-27 20:43:52

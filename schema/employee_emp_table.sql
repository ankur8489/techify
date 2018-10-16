CREATE DATABASE  IF NOT EXISTS `employee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `employee`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `emp_table`
--

DROP TABLE IF EXISTS `emp_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `emp_table` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(45) DEFAULT NULL,
  `emp_city` varchar(45) DEFAULT NULL,
  `emp_email` varchar(45) NOT NULL,
  `emp_password` varchar(45) DEFAULT NULL,
  `emp_role` varchar(45) DEFAULT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_doj` date DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_email_UNIQUE` (`emp_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_table`
--

LOCK TABLES `emp_table` WRITE;
/*!40000 ALTER TABLE `emp_table` DISABLE KEYS */;
INSERT INTO `emp_table` VALUES (1,'Ankur','Ahmedabad','ankur.gandhi@techify.com','Ankur@15102018','admin','1989-04-08','2016-11-17'),(2,'Neeraj','Mumbai','neeraj.punjabi@techify.com','Neeraj@1510','editor','1989-11-18','2008-04-12'),(3,'Sania','Delhi','sania.khan@techify.com','Sania@1498','editor','1994-12-01','2017-11-12'),(4,'Pavithra','Bangalore','pavithra.krishnamurthy@techify.com','Pavithra@1994','editor','1992-02-23','2015-04-16'),(5,'Vishal','Delhi','vishal.pathak@techify.com','Vishal@1608','admin','1992-02-23','1992-02-23');
/*!40000 ALTER TABLE `emp_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-16 22:55:08

CREATE DATABASE  IF NOT EXISTS `P06_darshandb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `P06_darshandb`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: darshandb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `accomodation`
--

DROP TABLE IF EXISTS `accomodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accomodation` (
  `AID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Availability` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accomodation`
--


--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `BID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Age` int NOT NULL,
  `Gender` char(2) NOT NULL,
  `DID` int NOT NULL,
  `SID` int NOT NULL,
  `PayID` varchar(255) NOT NULL,
  `BDate` datetime NOT NULL,
  `BType` char(2) NOT NULL,
  PRIMARY KEY (`BID`),
  KEY `DID4_idx` (`DID`),
  KEY `SID2_idx` (`SID`),
  KEY `PayID3_idx` (`PayID`),
  CONSTRAINT `DID4` FOREIGN KEY (`DID`) REFERENCES `devotee` (`DID`),
  CONSTRAINT `PayID3` FOREIGN KEY (`PayID`) REFERENCES `payment` (`PayID`),
  CONSTRAINT `SID2` FOREIGN KEY (`SID`) REFERENCES `slot` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devotee`
--

DROP TABLE IF EXISTS `devotee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devotee` (
  `DID` int NOT NULL,
  `Age` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Contactno` varchar(45) NOT NULL,
  `UID` int DEFAULT NULL,
  PRIMARY KEY (`DID`),
  KEY `UID_idx` (`UID`),
  CONSTRAINT `UID` FOREIGN KEY (`UID`) REFERENCES `user` (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devotee`
--

 
--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `donid` int NOT NULL AUTO_INCREMENT,
  `purpose` varchar(255) NOT NULL,
  `payid` varchar(255) NOT NULL,
  `did` int NOT NULL,
  PRIMARY KEY (`donid`,`purpose`),
  KEY `PayId_idx` (`payid`),
  KEY `DID3_idx` (`did`),
  CONSTRAINT `DID3` FOREIGN KEY (`did`) REFERENCES `devotee` (`DID`),
  CONSTRAINT `PayId` FOREIGN KEY (`payid`) REFERENCES `payment` (`PayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PayID` varchar(255) NOT NULL,
  `Date` datetime NOT NULL,
  `Type` varchar(45) NOT NULL,
  `DID` int DEFAULT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`PayID`),
  KEY `DID2_idx` (`DID`),
  CONSTRAINT `DID2` FOREIGN KEY (`DID`) REFERENCES `devotee` (`DID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slot` (
  `SID` int NOT NULL,
  `sname` varchar(255) NOT NULL,
  `type` char(1) NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slot`
--

 
--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UID` int NOT NULL AUTO_INCREMENT,
  `Uname` varchar(45) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(45) NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

   
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-06 11:09:35

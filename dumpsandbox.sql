-- MySQL dump 10.13  Distrib 5.6.21, for osx10.6 (x86_64)
--
-- Host: localhost    Database: sandbox
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `Bezirk`
--

DROP TABLE IF EXISTS `Bezirk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bezirk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `kantonId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bezirk`
--

LOCK TABLES `Bezirk` WRITE;
/*!40000 ALTER TABLE `Bezirk` DISABLE KEYS */;
INSERT INTO `Bezirk` VALUES (1,'uster',1),(2,'buelach',1),(3,'lugano',3),(4,'bellinzona',3),(5,'locarno',3);
/*!40000 ALTER TABLE `Bezirk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kanton`
--

DROP TABLE IF EXISTS `Kanton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kanton` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `landId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kanton`
--

LOCK TABLES `Kanton` WRITE;
/*!40000 ALTER TABLE `Kanton` DISABLE KEYS */;
INSERT INTO `Kanton` VALUES (1,'zuerich',1),(2,'bern',1),(3,'tessin',1);
/*!40000 ALTER TABLE `Kanton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Land`
--

DROP TABLE IF EXISTS `Land`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Land` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Land`
--

LOCK TABLES `Land` WRITE;
/*!40000 ALTER TABLE `Land` DISABLE KEYS */;
INSERT INTO `Land` VALUES (1,'schweiz'),(2,'deutschland'),(3,'usa');
/*!40000 ALTER TABLE `Land` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ort`
--

DROP TABLE IF EXISTS `Ort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `bezirkId` int(11) NOT NULL,
  `einwohner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ort`
--

LOCK TABLES `Ort` WRITE;
/*!40000 ALTER TABLE `Ort` DISABLE KEYS */;
INSERT INTO `Ort` VALUES (1,'volketswil',1,12000),(2,'stadel',2,2000),(3,'gubiasco',4,6000),(4,'barbengo',3,1000),(5,'paradiso',3,5000);
/*!40000 ALTER TABLE `Ort` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-01 16:15:43

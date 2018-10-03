-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: valdivia
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `desplazarse`
--

DROP TABLE IF EXISTS `desplazarse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desplazarse` (
  `pk_RUT` varchar(20) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `latitud` float NOT NULL,
  `longitud` float NOT NULL,
  KEY `pk_RUT` (`pk_RUT`),
  CONSTRAINT `desplazarse_ibfk_1` FOREIGN KEY (`pk_RUT`) REFERENCES `persona` (`pk_RUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desplazarse`
--

LOCK TABLES `desplazarse` WRITE;
/*!40000 ALTER TABLE `desplazarse` DISABLE KEYS */;
INSERT INTO `desplazarse` VALUES ('18957998-5','12 octubre 2018',0.43,7.44),('14354634-k','12 septiembre 2018',23.54,125.562),('17562346-0','12 enero 2017',123.35,54.532),('21443654-5','12 abril 2018',24.5,13.4),('19463462-3','12 diciembre 2017',26,63.2);
/*!40000 ALTER TABLE `desplazarse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lugar_de_interes`
--

DROP TABLE IF EXISTS `lugar_de_interes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lugar_de_interes` (
  `pk_lugar` int(3) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(70) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `latitud` float NOT NULL,
  `longitud` float NOT NULL,
  PRIMARY KEY (`pk_lugar`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lugar_de_interes`
--

LOCK TABLES `lugar_de_interes` WRITE;
/*!40000 ALTER TABLE `lugar_de_interes` DISABLE KEYS */;
INSERT INTO `lugar_de_interes` VALUES (1,'corona','local',0.23,7.45),(2,'austral','universidad',23.34,125.512),(3,'austral miraflores','universidad',123.35,54.512),(4,'falabella','local',23.5,23.4),(5,'ripley','local',25,65.2);
/*!40000 ALTER TABLE `lugar_de_interes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `pk_RUT` varchar(20) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `edad` int(2) NOT NULL,
  PRIMARY KEY (`pk_RUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('14354634-k','Pedro',23),('17562346-0','Gabriela',23),('18957998-5','Miguel',23),('19463462-3','Zabala',23),('21443654-5','Camila',23);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-03 12:05:05

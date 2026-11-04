-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydbristorante
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `elementoordine`
--

DROP TABLE IF EXISTS `elementoordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elementoordine` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idOrdinazione` int DEFAULT NULL,
  `idProdotto` int DEFAULT NULL,
  `completato` tinyint(1) DEFAULT NULL,
  `sequenza` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idOrdinazione` (`idOrdinazione`),
  KEY `idProdotto` (`idProdotto`),
  CONSTRAINT `elementoordine_ibfk_1` FOREIGN KEY (`idOrdinazione`) REFERENCES `ordinazione` (`id`),
  CONSTRAINT `elementoordine_ibfk_2` FOREIGN KEY (`idProdotto`) REFERENCES `prodottomenu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementoordine`
--

LOCK TABLES `elementoordine` WRITE;
/*!40000 ALTER TABLE `elementoordine` DISABLE KEYS */;
INSERT INTO `elementoordine` VALUES (107,9,0,0,0),(108,9,0,0,0),(110,9,2,0,1),(116,9,3,0,1),(117,9,3,0,1),(118,9,1,0,1),(119,9,4,0,1),(121,10,0,1,0),(122,10,0,1,0),(128,10,2,0,1),(129,11,1,0,0),(130,12,4,0,1),(131,13,2,0,0),(132,14,1,0,0),(133,15,1,0,0),(134,15,2,0,0),(135,16,1,0,0),(136,17,1,1,0),(137,17,2,1,0),(138,17,3,1,0),(139,17,3,1,1),(140,17,2,1,1),(141,18,4,0,1),(142,18,4,0,1),(143,19,0,1,0),(144,19,1,1,1),(145,19,2,1,2),(146,19,4,1,3),(147,19,3,1,4),(148,19,3,1,5),(149,19,3,1,6),(150,19,4,1,7),(151,19,2,1,8),(152,19,3,1,8),(153,20,0,1,0),(154,20,0,1,0),(155,20,1,1,1),(156,20,1,1,1),(157,21,0,1,0),(158,21,0,1,0),(159,21,2,0,1),(160,22,0,1,0),(161,22,0,1,0),(162,22,4,1,1),(163,23,0,1,0),(164,23,0,1,0),(165,23,0,1,0),(166,23,4,0,1),(167,23,4,0,1),(168,23,1,0,1),(169,24,0,1,0),(170,25,3,1,1),(171,25,4,1,1),(172,25,3,1,1),(173,25,3,1,1),(174,25,3,1,1),(175,25,3,1,1),(176,25,3,1,1),(177,25,4,1,1),(178,25,4,1,1),(179,25,2,1,1),(180,25,1,1,1),(181,26,4,1,1),(182,26,3,1,1),(183,27,4,1,1),(184,27,4,1,1),(185,28,2,1,1),(186,28,3,1,1),(187,22,3,0,2),(188,29,1,1,1),(189,29,2,1,1),(190,29,3,1,1),(191,30,3,1,1),(192,31,2,1,1),(193,31,3,1,1),(194,32,3,1,1),(198,33,4,1,1),(199,33,3,1,1),(204,33,0,1,0),(205,33,0,1,0),(206,33,4,0,2),(207,26,2,1,2),(208,26,3,1,2),(209,28,2,1,2),(210,28,3,1,2);
/*!40000 ALTER TABLE `elementoordine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 11:47:53

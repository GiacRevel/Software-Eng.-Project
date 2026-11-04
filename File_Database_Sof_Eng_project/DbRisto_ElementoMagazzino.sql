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
-- Table structure for table `elementomagazzino`
--

DROP TABLE IF EXISTS `elementomagazzino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elementomagazzino` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idNomeElemento` int DEFAULT NULL,
  `Prezzo` float DEFAULT NULL,
  `Quantita` float DEFAULT NULL,
  `Scadenza` date DEFAULT NULL,
  `Fornitore` varchar(45) DEFAULT NULL,
  `Piccante` tinyint DEFAULT NULL,
  `Vegano` tinyint DEFAULT NULL,
  `Intolleranze` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idNomeElemento` (`idNomeElemento`),
  CONSTRAINT `elementomagazzino_ibfk_1` FOREIGN KEY (`idNomeElemento`) REFERENCES `nomeelemento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementomagazzino`
--

LOCK TABLES `elementomagazzino` WRITE;
/*!40000 ALTER TABLE `elementomagazzino` DISABLE KEYS */;
INSERT INTO `elementomagazzino` VALUES (17,2,1.4,300,'2024-12-30',NULL,0,1,'Glutine'),(18,2,1.2,150,'2024-12-15',NULL,0,1,'Glutine'),(19,1,6.2,75,'2024-05-12',NULL,0,0,''),(20,3,10.5,250,'2024-05-09',NULL,0,0,NULL),(21,4,0.75,1000,'2025-03-21',NULL,0,0,NULL),(22,5,4.48,250,'2024-05-15',NULL,0,1,NULL),(23,6,9.15,50,'2024-05-07',NULL,0,0,NULL),(24,7,1.15,100,'2024-05-06',NULL,0,1,''),(25,10,1,250,'2024-05-06',NULL,1,1,NULL),(26,8,1.3,200,'2024-05-06',NULL,0,1,NULL),(27,9,1.9,300,'2024-05-06',NULL,0,0,'Lattosio');
/*!40000 ALTER TABLE `elementomagazzino` ENABLE KEYS */;
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

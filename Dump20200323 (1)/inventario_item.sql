-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: inventario
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `codigoItem` int NOT NULL,
  `tipoRefinado` varchar(45) DEFAULT NULL,
  `cantidadItem` int DEFAULT NULL,
  `ClienteID` int DEFAULT NULL,
  `MateriaPrimaID` int DEFAULT NULL,
  PRIMARY KEY (`codigoItem`),
  KEY `ClienteID` (`ClienteID`),
  KEY `MateriaPrimaID` (`MateriaPrimaID`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `cliente` (`codigoCliente`),
  CONSTRAINT `item_ibfk_2` FOREIGN KEY (`MateriaPrimaID`) REFERENCES `materiaprima` (`CodigoMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'fino',1,5,101),(2,'laminado',2,3,102),(3,'pilotes',3,7,103),(4,'angular',4,8,104),(5,'fino',5,25,105),(6,'troncas',6,33,106),(7,'artesanal',7,40,107),(8,'laminado',8,7,108),(9,'angular',9,9,109),(10,'pilotes',12,16,110),(11,'troncas',13,17,111),(12,'artesanal',14,26,112),(13,'fino',16,29,113),(14,'externo',17,32,105),(15,'angular',18,6,106),(16,'pilotes',19,49,107),(17,'angular',21,5,108),(18,'laminado',22,7,109),(19,'fino',23,4,110),(20,'troncas',29,12,111),(21,'pilotes',31,11,112),(22,'artesanal',33,16,113),(23,'angular',39,20,111),(24,'fino',45,15,112),(25,'externo',51,8,113);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-23 13:48:02

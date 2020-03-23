CREATE DATABASE  IF NOT EXISTS `inventario20` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventario20`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: inventario20
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
-- Table structure for table `almacenaje`
--

DROP TABLE IF EXISTS `almacenaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacenaje` (
  `IDalmacenaje` int NOT NULL,
  `fechaEntrada` date DEFAULT NULL,
  `fechaSalida` date DEFAULT NULL,
  `ItemID` int DEFAULT NULL,
  PRIMARY KEY (`IDalmacenaje`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `almacenaje_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `item` (`codigoItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenaje`
--

LOCK TABLES `almacenaje` WRITE;
/*!40000 ALTER TABLE `almacenaje` DISABLE KEYS */;
INSERT INTO `almacenaje` VALUES (1,'2018-01-05','2018-01-07',1),(2,'2018-02-06','0000-02-11',2),(3,'2018-03-09','2018-03-13',3),(4,'2018-04-01','2018-04-05',4),(5,'2018-04-09','2018-04-20',5),(6,'2018-05-10','2018-05-13',6),(7,'2018-05-15','2018-05-17',7),(8,'2018-05-27','2018-05-31',8),(9,'2018-06-06','2018-06-09',9),(10,'2018-06-12','2018-06-16',10),(11,'2018-07-09','2018-07-14',11),(12,'2018-07-17','2018-07-21',12),(13,'2018-08-06','2018-08-09',13),(14,'2018-08-13','2018-08-15',14),(15,'2018-09-15','2018-09-20',15),(16,'2018-09-21','2018-09-27',16),(17,'2018-10-07','2018-10-11',17),(18,'2018-10-13','2018-10-15',18),(19,'2018-10-29','2018-10-31',19),(20,'2018-10-31','2018-11-03',20),(21,'2018-11-04','2018-11-00',21),(22,'2018-11-16','2018-11-22',22),(23,'2018-12-03','2018-12-06',23),(24,'2018-12-12','2018-12-15',24),(25,'2018-12-28','2018-12-31',25);
/*!40000 ALTER TABLE `almacenaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codigoCliente` int NOT NULL AUTO_INCREMENT,
  `PersonaID` int DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  PRIMARY KEY (`codigoCliente`),
  KEY `PersonaID` (`PersonaID`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`PersonaID`) REFERENCES `persona` (`CI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datospedido`
--

DROP TABLE IF EXISTS `datospedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datospedido` (
  `IDdatosPedido` int NOT NULL,
  `formaPago` varchar(45) DEFAULT NULL,
  `AlmacenjeID` int DEFAULT NULL,
  `FacturaID` int DEFAULT NULL,
  PRIMARY KEY (`IDdatosPedido`),
  KEY `AlmacenjeID` (`AlmacenjeID`),
  KEY `FacturaID` (`FacturaID`),
  CONSTRAINT `datospedido_ibfk_1` FOREIGN KEY (`AlmacenjeID`) REFERENCES `almacenaje` (`IDalmacenaje`),
  CONSTRAINT `datospedido_ibfk_2` FOREIGN KEY (`FacturaID`) REFERENCES `factura` (`IDfactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datospedido`
--

LOCK TABLES `datospedido` WRITE;
/*!40000 ALTER TABLE `datospedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `datospedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Sueldo` int DEFAULT NULL,
  `PersonaID` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PersonaID` (`PersonaID`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`PersonaID`) REFERENCES `persona` (`CI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `IDfactura` int NOT NULL,
  `NIT` varchar(45) DEFAULT NULL,
  `razonSocial` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDfactura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `item` VALUES (1,'fino',1,5,710),(2,'laminado',2,3,800),(3,'pilotes',3,7,610),(4,'angular',4,8,750),(5,'fino',5,25,690),(6,'troncas',6,33,760),(7,'artesanal',7,40,510),(8,'laminado',8,7,610),(9,'angular',9,9,450),(10,'pilotes',12,16,680),(11,'troncas',13,17,510),(12,'artesanal',14,26,810),(13,'fino',16,29,650),(14,'externo',17,32,690),(15,'angular',18,6,760),(16,'pilotes',19,49,510),(17,'angular',21,5,610),(18,'laminado',22,7,450),(19,'fino',23,4,680),(20,'troncas',29,12,510),(21,'pilotes',31,11,810),(22,'artesanal',33,16,650),(23,'angular',39,20,510),(24,'fino',45,15,810),(25,'externo',51,8,650);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiaprima`
--

DROP TABLE IF EXISTS `materiaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materiaprima` (
  `CodigoMP` int NOT NULL,
  `tipoMadera` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `ProveedorID` int DEFAULT NULL,
  PRIMARY KEY (`CodigoMP`),
  KEY `ProveedorID` (`ProveedorID`),
  CONSTRAINT `materiaprima_ibfk_1` FOREIGN KEY (`ProveedorID`) REFERENCES `proveedor` (`IDproveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiaprima`
--

LOCK TABLES `materiaprima` WRITE;
/*!40000 ALTER TABLE `materiaprima` DISABLE KEYS */;
/*!40000 ALTER TABLE `materiaprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `CI` int NOT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `direccion` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`CI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `IDproveedor` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDproveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'GREEMAP','Av. vasquez , Numero 8'),(2,'PROMACO','achachicala, Numero 64'),(3,'MADERERA','Av. ferroviaria , Numero 37'),(4,'IMPERIO','Calle chapare, Numero 12'),(5,'APEX','Av, grigota, Numero 58'),(6,'CIMAL','Avenida Mariscal santa cruz , Numero 26'),(7,'MADEBOL','Av. del pagador , Numero 92'),(8,'SYNERGY','Calle aguairenda, Portal 55'),(9,'MIREMM','Av. 6 de marzo, S/N'),(10,'GRAVIBOL','Calle 24 de septiembre, Nro 46');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'inventario20'
--

--
-- Dumping routines for database 'inventario20'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 21:18:53

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
INSERT INTO `datospedido` VALUES (1001,'Efectivo',1,16),(1002,'Efectivo',2,17),(1003,'Tarjeta',3,18),(1004,'Efectivo',4,46),(1005,'Tarjeta',5,1),(1006,'Tarjeta',6,2),(1007,'Tarjeta',6,3),(1008,'Tarjeta',8,4),(1009,'Tarjeta',9,5),(1010,'Tarjeta',10,6),(1011,'Efectivo',11,7),(1012,'Efectivo',12,8),(1013,'Tarjeta',13,9),(1014,'Efectivo',14,10),(1015,'Tarjeta',15,11),(1016,'Tarjeta',16,12),(1017,'Tarjeta',17,13),(1018,'	Efectivo',18,14),(1019,'Efectivo',19,15),(1020,'Tarjeta',20,19),(1021,'Efectivo',21,20),(1022,'Tarjeta',22,21),(1023,'Efectivo',23,22),(1024,'Efectivo',24,23),(1025,'Tarjeta',25,24),(1026,'Efectivo',38,25),(1027,'Tarjeta',26,26),(1028,'Tarjeta',27,27),(1029,'Tarjeta',28,28),(1030,'Tarjeta',29,29),(1031,'Tarjeta',30,30),(1032,'Efectivo',31,31),(1033,'Efectivo',32,32),(1034,'Tarjeta',33,33),(1035,'Tarjeta',34,34),(1036,'Tarjeta',35,35),(1037,'Tarjeta',36,36),(1038,'Tarjeta',37,37),(1039,'Efectivo',38,38),(1040,'Tarjeta',39,39),(1041,'Efectivo',40,40),(1042,'Tarjeta',41,41),(1043,'Tarjeta',42,42),(1044,'Tarjeta',43,43),(1045,'Tarjeta',44,44),(1046,'Efectivo',45,45),(1047,'Tarjeta',46,46),(1048,'Efectivo',47,47),(1049,'Tarjeta',48,48),(1050,'Efectivo',49,49),(1051,'Tarjeta',50,50),(1052,'Tarjeta',51,51),(1053,'Tarjeta',52,52),(1054,'Efectivo',53,53),(1055,'Tarjeta',54,54),(1056,'Tarjeta',55,55),(1057,'Tarjeta',56,56),(1058,'Tarjeta',57,57),(1059,'Tarjeta',58,48),(1060,'Tarjeta',59,59);
/*!40000 ALTER TABLE `datospedido` ENABLE KEYS */;
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

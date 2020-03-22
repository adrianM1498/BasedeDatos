-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: inventariomaderas
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
  `codigoItem` int DEFAULT NULL,
  PRIMARY KEY (`IDalmacenaje`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almacenaje`
--

LOCK TABLES `almacenaje` WRITE;
/*!40000 ALTER TABLE `almacenaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `almacenaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codigoCliente` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigoCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan','Ballivian',76544433,'Calle Rene Moreno, Nro 98'),(2,'Maria','Ayala',79865423,'Calle Pichincha, Nro 634'),(3,'Jose','Vidania ',66548909,'Calle Jaen, Nro 233'),(4,'Ricardo','Cuestas',76543290,'Calle Ladislao Cabrera, Nro 322'),(5,'Antonio','Gomez',67896663,'Calle Ballivian, Nro 654'),(6,'Eduardo','Suarez',69988765,'Avenida Montes , Nro 34'),(7,'Paola','Jimenez',78934522,'Avenida Busch, Nro 76'),(8,'Mateo','Riva',67589888,'Calle Pagador, Nro 89'),(9,'Gabriela','Arce',68876543,'Avenida 23 de Marzo, Nro 5'),(10,'Ramiro','Aramayo',66673452,'Avenida Las America, Nro 4'),(11,'Paul','Rodriguez',68953426,'Calle L. de la Vega, Nro 987'),(12,'Misael','Villarroel',67589099,'Calle Eduardo Lopez, Nro 345'),(13,'Leandro','Flores',76544433,'Calle Nery, Nro 348'),(14,'Jhon','Castillo',79865423,'Avenida Jorge Carrasco, Nro 777'),(15,'Alexia','Andrada ',66548909,'Calle Sensao, Nro 65'),(16,'Daniel','Fontana',77765444,'Calle Rene Franco, Nro 876'),(17,'Sergio','Gonsalez',76453780,'Calle Ponce, Nro 699'),(18,'Mariana','Aliaga',62333456,'Calle Gonsalez, Nro 25'),(19,'Pablo','Quiroz',79865437,'Calle Carreras, Nro 343'),(20,'Carla','Espinoza',69987654,'Calle Bolivia, Nro 699'),(21,'Francisco','Candia',67653345,'Avenida Illimani , Nro 340'),(22,'David','Marcone',780987667,'Avenida Beijing, Nro 446'),(23,'Adriana','Rojas',67589800,'Calle Inglaterra, Nro 609'),(24,'Samuel','Carrasco',68876566,'Avenida 3 Pasos, Nro 500'),(25,'Alex','Teran',66673499,'Avenida Los Angeles, Nro 400'),(26,'Rafaela','Maceda',68953422,'Calle Santa Cruz, Nro 370'),(27,'Dayana','Guerrero',69877777,'Calle Pio XII, Nro 349'),(28,'Mischel','Martinez',79833378,'Calle Genaro Sanjinez, Nro 240'),(29,'Takefusa','Kubo',75566700,'Avenida Panoramica, Nro 770'),(30,'Roberto','Palacios',60988933,'Calle Petrolera, Nro 650'),(31,'Carmen','Aguilar',76655433,'Calle Rojas, Nro 879'),(32,'Aurora','Gongora',76453700,'Calle Antonio, Nro 608'),(33,'Ulises','Pizarro',62333400,'Calle Flores, Nro 251'),(34,'Leonela','Blanc',79869000,'Calle Cespedes, Nro 349'),(35,'Dario','Tejada',69987611,'Avenida Hernando Siles, Nro 41'),(36,'Yordy','Correa',67653322,'Avenida Virgen de Lujan , Nro 390'),(37,'Martin','Mina',78099922,'Avenida Bustos, Nro 426'),(38,'Andre','Ibañez',67500022,'Calle Bustillos, Nro 619'),(39,'Ovidio','Cordero',68876502,'Avenida San Pedro, Nro 530'),(40,'Ariel','Tonalli',66673411,'Avenida Capinota, Nro 470'),(41,'Isaac','Montillo',68953430,'Calle Caceres, Nro 310'),(42,'Esteban','Guado',69877703,'Calle Innominada, Nro 509'),(43,'Rosario','Munguia',79833399,'Calle Sucre, Nro 940'),(44,'Jimena','Caceres',75588888,'Avenida Raul Salmon, Nro 270'),(45,'Sadio','Mane',60117356,'Calle Pinilla, Nro 693'),(46,'Valerio','Zambrano',70087654,'Calle Valle Azul, Nro 822'),(47,'Grace','Mella',60677895,'Calle Pedro Antelo, Nro 430'),(48,'Ninosca','Tesillo',65113608,'Avenida Pasoskanki, Nro 201'),(49,'Javier','Villaboa',70512316,'Calle 16 de Julio, Nro 505'),(50,'Braulio','Telles',70117355,'Avenida Principal, Nro 707'),(51,'Astid','Ganzo',78440006,'Avenida Los Sargentos, Nro 694'),(52,'Clemente','Alcantara',70765442,'Avenida Ceja, Nro 401'),(53,'Teresa','Robredo',69987654,'Calle Claudio Aliaga, Nro 602'),(54,'Leticia','Porcel',76201344,'Avenida Mariscal Santa Cruz, Nro 521'),(55,'Naomi','Loza',77234563,'Avenida Beni , Nro 408'),(56,'Gustavo','Monasterios',75883881,'Calle Rafael Pabon, Nro 395'),(57,'Hernan','Salgado',78660991,'Calle Tablas, Nro 549'),(58,'Israel','Moya',70612311,'Calle Libertad, Nro 356'),(59,'Soraya','Colina',74562344,'Avenida 20 de Octubre, Nro 145'),(60,'Adriel','Guevara',65672443,'Avenida Argentina, Nro 903');
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
  `cantidadPedido` int DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `codigoCliente` varchar(45) DEFAULT NULL,
  `codigoItem` varchar(45) DEFAULT NULL,
  `IDFactura` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDdatosPedido`)
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
  `IDempleado` int NOT NULL,
  `carnet` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `sueldo` int DEFAULT NULL,
  PRIMARY KEY (`IDempleado`)
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
  `fecha` date DEFAULT NULL,
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
  `tipoMadera` varchar(45) DEFAULT NULL,
  `tipoRefinado` varchar(45) DEFAULT NULL,
  `destinatario` varchar(45) DEFAULT NULL,
  `cantidadItem` int DEFAULT NULL,
  `codigoMP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigoItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia prima`
--

DROP TABLE IF EXISTS `materia prima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materia prima` (
  `CodigoMP` int NOT NULL,
  `tipoMadera` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`CodigoMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia prima`
--

LOCK TABLES `materia prima` WRITE;
/*!40000 ALTER TABLE `materia prima` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia prima` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'inventariomaderas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 15:10:26

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,34232442,76544433),(2,61563765,79865423),(3,8764532,66548909),(4,837465,76543290),(5,6145378,67896663),(6,5637285,69988765),(7,4356278,78934522),(8,6378946,67589888),(9,9326372,68876543),(10,2635908,66673452),(11,63547846,68953426),(12,83746524,67589099),(13,43526474,76544433),(14,26352132,79865423),(15,2948453,66548909),(19,9873425,79865437),(20,7643251,69987654),(21,3220980,67653345),(22,3225346,780987667),(23,3425568,67589800),(24,6345098,68876566),(25,6145887,66673499),(26,2364573,68953422),(27,3256798,69877777),(28,15678932,79833378),(29,6783452,75566700),(30,3214578,60988933),(31,7654324,76655433),(32,3467854,76453700),(33,6123400,62333400),(34,3267090,79869000),(35,6165090,69987611),(36,3433242,67653322),(37,6145773,78099922),(38,5678432,67500022),(39,5412309,68876502),(40,9876540,66673411),(41,3120987,68953430),(42,4123245,69877703),(43,6123086,79833399),(44,5678234,75588888),(45,6233400,60117356),(47,4326789,60677895),(48,7843210,65113608),(49,56783240,70512316),(50,3452113,70117355),(51,4890654,78440006),(52,5439007,70765442),(53,6783221,69987654),(54,7812345,76201344),(55,4456009,77234563),(56,4532178,75883881),(57,12480240,78660991),(58,4567321,70612311),(59,9876534,74562344),(60,3421176,65672443);
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
INSERT INTO `datospedido` VALUES (1001,'Efectivo',1,16),(1002,'Efectivo',2,17),(1003,'Tarjeta',3,18),(1004,'Efectivo',4,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=1037 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1001,2150,223457),(1002,2150,267383),(1003,2300,277289),(1004,2150,267889),(1005,2200,277378),(1006,2450,289657),(1007,2460,289547),(1008,2250,297432),(1009,2300,272829),(1010,2150,262829),(1011,2300,628299),(1012,2150,346838),(1013,2200,392922),(1014,2300,452627),(1015,2150,229299),(1016,2200,292992),(1017,2300,299282),(1018,2500,388493),(1019,2750,366368),(1020,2850,393993),(1021,2350,526377),(1022,2350,536738),(1023,2250,826222),(1024,2450,927732),(1025,2300,424562),(1026,2700,727282),(1027,2250,282822),(1028,2250,636373),(1029,2400,872838),(1030,2350,632673),(1031,2450,328832),(1032,2350,288328),(1033,2500,328822),(1034,2250,737732),(1035,2300,929222),(1036,2450,737873);
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
INSERT INTO `factura` VALUES (16,'9283645','77765444'),(17,'7863542','76453780'),(18,'6342235','62333456'),(46,'5123487','70087654');
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
INSERT INTO `materiaprima` VALUES (101,'Cerezo',1,710,2),(102,'Roble',1,800,4),(103,'Castaño',1,610,1),(104,'Caoba',1,750,3),(105,'Teca',1,690,4),(106,'Pino',1,760,5),(107,'Nogal',1,510,9),(108,'Olivo',1,610,7),(109,'Olmo',1,450,6),(110,'Haya',1,680,10),(111,'Ebano',1,510,9),(112,'Cedro',1,810,8),(113,'Alamo',1,650,5);
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
INSERT INTO `persona` VALUES (223457,'Camilo','Valverde','Av. 16 de Julio Esq. Loayza Nº 777'),(229299,'Valeria','Iriarte','Av. 20 de Octubre Nº 386'),(262829,'Leonardo','Palacios','Av. 16 de Julio Esq. Campero Nº 456'),(267383,'Carlos','Cordero','Av. Max Paredes Esq. Adolfo Ortega Nº 23'),(267889,'Roberto','Aguilar','Av. Jorge Salinas  Nº 123'),(272829,'Joaquin','Castellon','Av. Jorge Munoz Nº 1238'),(277289,'Sergio','Marnriguez','Av. del Maestro Esq. Pedro Salazar Nº 897'),(277378,'Juan','Aramayo','Calle José María Achá N° 29'),(282822,'Ernesto','Fernadez','Av. Tumusla Esq. Buenos Aires Nº 545'),(288328,'Josue','Gonzales','Av. Busch Esq. Panama Nº 945'),(289547,'Marcos','Lopez','Av. del Maestro Esq. Salazar '),(289657,'Mateo','Arce',' Av. Panorámica Nº 123 '),(292992,'Alejandra','Lujan','Av. 20 de Octubre Cap Castrillo Nº 78'),(297432,'Camila','Belmonte','Av. Illimani Nº 1973'),(299282,'Jhonatan','Mendez','Av. Villazon J.J. Perez Nº 28'),(328822,'Pedro','Morales','Av. Ballivian Calle 18 Nº678'),(328832,'Belen','Pozo','Av. Tumusla Esq. Eloy Salmon Nº 6745'),(346838,'Enrique','Palacios','Av. 16 de Julio Esq. Colon Nº 46'),(366368,'Micaela','Pinell','Av. del Ejercito Esq. Zapata Nº 324'),(388493,'Ernesto','Bustillos','Capitan Ravelo Nº 747'),(392922,'Cesar','Garcia','Av. Santa Cruz Calle Colon Nº 89'),(393993,'Hugo','Garcia',' Calle Federico Suazo Esq. Campero Nº 1245'),(424562,'Maria','Trujillo','Av. Camacho Esq.Loayza  Nº 3445'),(452627,'Fernando','Rivas','Av. 16 de Julio calle Bueno Nº 63'),(526377,'Marcos','Gonzales','Av. del Ejercito Nº 1345'),(536738,'Carlos','Perez','Av. Camacho Esq. Bueno Nº 675'),(628299,'Patricia','Mendoza','Calle 9 de Calacoto Esq. Campero Nº 61'),(632673,'Erick','Lopez','Av. Camacho Calle Oruro Nº 7845'),(636373,'Hugo','Gironda','Av. Ballivian Calle 12 Nº 345'),(727282,'Alvaro','Duran','Av. America Esq. Pando Nº 1245'),(737732,'Adrian','Villa',' Av. Tumusla Esq. Max Paredes Nº 645'),(737873,'Eduardo','Trujillo','6 de Agosto Esq. Pedro Salazar Nº 145'),(826222,'Ana','Beltran','Av. Hernando Siles Nº 345'),(837465,'Ricardo','Cuestas','Calle Ladislao Cabrera, Nro 322'),(872838,'Natalia','Limachi','Av. Busch Esq. Pasoskanki Nº 265'),(927732,'Fernando','Escobar','Av. Manco KapacEsq. Nº 885'),(929222,'Miguel','Reyes','Av. Busch Esq. Panama Nº 395'),(2364573,'Rafaela','Maceda','Calle Santa Cruz, Nro 370'),(2635908,'Ramiro','Aramayo','Avenida Las America, Nro 4'),(2948453,'Alexia','Andrada ','Calle Sensao, Nro 65'),(3120987,'Isaac','Montillo','Calle Caceres, Nro 310'),(3214578,'Roberto','Palacios','Calle Petrolera, Nro 650'),(3220980,'Francisco','Candia','Avenida Illimani , Nro 340'),(3256798,'Dayana','Guerrero','Calle Pio XII, Nro 349'),(3267090,'Leonela','Blanc','Calle Cespedes, Nro 349'),(3421176,'Adriel','Guevara','Avenida Argentina, Nro 903'),(3425568,'Adriana','Rojas','Calle Inglaterra, Nro 609'),(3433242,'Yordy','Correa','Avenida Virgen de Lujan , Nro 390'),(3452113,'Braulio','Telles','Avenida Principal, Nro 707'),(3467854,'Aurora','Gongora','Calle Antonio, Nro 608'),(4123245,'Esteban','Guado','Calle Innominada, Nro 509'),(4326789,'Grace','Mella','Calle Pedro Antelo, Nro 430'),(4356278,'Paola','Jimenez','Avenida Busch, Nro 76'),(4456009,'Naomi','Loza','Avenida Beni , Nro 408'),(4532178,'Gustavo','Monasterios','Calle Rafael Pabon, Nro 395'),(4567321,'Israel','Moya','Calle Libertad, Nro 356'),(4890654,'Astid','Ganzo','Avenida Los Sargentos, Nro 694'),(5123487,'Valerio','Zambrano','Calle Valle Azul, Nro 822'),(5412309,'Ovidio','Cordero','Avenida San Pedro, Nro 530'),(5439007,'Clemente','Alcantara','Avenida Ceja, Nro 401'),(5637285,'Eduardo','Suarez','Avenida Montes , Nro 34'),(5678234,'Jimena','Caceres','Avenida Raul Salmon, Nro 270'),(5678432,'Andre','Ibañez','Calle Bustillos, Nro 619'),(6123086,'Rosario','Munguia','Calle Sucre, Nro 940'),(6123400,'Ulises','Pizarro','Calle Flores, Nro 251'),(6145378,'Antonio','Gomez','Calle Ballivian, Nro 654'),(6145773,'Martin','Mina','Avenida Bustos, Nro 426'),(6145887,'Alex','Teran','Avenida Los Angeles, Nro 400'),(6165090,'Dario','Tejada','Avenida Hernando Siles, Nro 41'),(6233400,'Sadio','Mane','Calle Pinilla, Nro 693'),(6342235,'Mariana','Aliaga','Calle Gonsalez, Nro 25'),(6345098,'Samuel','Carrasco','Avenida 3 Pasos, Nro 500'),(6378946,'Mateo','Riva','Calle Pagador, Nro 89'),(6783221,'Teresa','Robredo','Calle Claudio Aliaga, Nro 602'),(6783452,'Takefusa','Kubo','Avenida Panoramica, Nro 770'),(7643251,'Carla','Espinoza','Calle Bolivia, Nro 699'),(7654324,'Carmen','Aguilar','Calle Rojas, Nro 879'),(7812345,'Leticia','Porcel','Avenida Mariscal Santa Cruz, Nro 521'),(7843210,'Ninosca','Tesillo','Avenida Pasoskanki, Nro 201'),(7863542,'Sergio','Gonsalez','Calle Ponce, Nro 699'),(8764532,'Jose','Vidania ','Calle Jaen, Nro 233'),(9283645,'Daniel','Fontana','Calle Rene Franco, Nro 876'),(9326372,'Gabriela','Arce','Avenida 23 de Marzo, Nro 5'),(9873425,'Pablo','Quiroz','Calle Carreras, Nro 343'),(9876534,'Soraya','Colina','Avenida 20 de Octubre, Nro 145'),(9876540,'Ariel','Tonalli','Avenida Capinota, Nro 470'),(12480240,'Hernan','Salgado','Calle Tablas, Nro 549'),(15678932,'Mischel','Martinez','Calle Genaro Sanjinez, Nro 240'),(26352132,'Jhon','Castillo','Avenida Jorge Carrasco, Nro 777'),(34232442,'Juan','Ballivian','Calle Rene Moreno, Nro 98'),(43526474,'Leandro','Flores','Calle Nery, Nro 348'),(56783240,'Javier','Villaboa','Calle 16 de Julio, Nro 505'),(61563765,'Maria','Ayala','Calle Pichincha, Nro 634'),(63547846,'Paul','Rodriguez','Calle L. de la Vega, Nro 987'),(83746524,'Misael','Villarroel','Calle Eduardo Lopez, Nro 345');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 23:11:53

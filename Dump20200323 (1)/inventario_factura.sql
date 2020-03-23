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
INSERT INTO `factura` VALUES (1,'34232442','Ballivian'),(2,'21134567','Ayala'),(3,'8764532','Vidania '),(4,'837465','Cuestas'),(5,'6145378','Gomez'),(6,'5637285','Suarez'),(7,'144356278','Jimenez'),(8,'6378946','Riva'),(9,'109326372','Arce'),(10,'2635908','Aramayo'),(11,'1063547846','Rodriguez'),(12,'83746524','Villarroel'),(13,'1043526474','Flores'),(14,'26352132','Castillo'),(15,'2948453','Andrada '),(16,'9283645','Fontana'),(17,'7863542','Gonsalez'),(18,'6342235','Aliaga'),(19,'9873425','Quiroz'),(20,'107643251','Espinoza'),(21,'3220980','Candia'),(22,'3225346','Marcone'),(23,'103425568','Rojas'),(24,'6345098','Carrasco'),(25,'6145887','Teran'),(26,'2364573','Maceda'),(27,'3256798','Guerrero'),(28,'1015678932','Martinez'),(29,'106783452','Kubo'),(30,'3214578','Palacios'),(31,'7654324','Aguilar'),(32,'3467854','Gongora'),(33,'6123400','Pizarro'),(34,'103267090','Blanc'),(35,'106165090','Tejada'),(36,'3433242','Correa'),(37,'6145773','Mina'),(38,'5678432','Ibañez'),(39,'5412309','Cordero'),(40,'9876540','Tonalli'),(41,'103120987','Montillo'),(42,'4123245','Guado'),(43,'6123086','Munguia'),(44,'105678234','Caceres'),(45,'6233400','Mane'),(46,'5123487','Zambrano'),(47,'104326789','Mella'),(48,'7843210','Tesillo'),(49,'56783240','Villaboa'),(50,'103452113','Telles'),(51,'4890654','Ganzo'),(52,'5439007','Alcantara'),(53,'106783221','Robredo'),(54,'7812345','Porcel'),(55,'104456009','Loza'),(56,'4532178','Monasterios'),(57,'12480240','Salgado'),(58,'104567321','Moya'),(59,'9876534','Colina'),(60,'3421176','Guevara');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
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

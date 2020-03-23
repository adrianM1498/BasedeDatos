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
INSERT INTO `persona` VALUES (223457,'Camilo','Valverde','Av. 16 de Julio Esq. Loayza Nº 777'),(229299,'Valeria','Iriarte','Av. 20 de Octubre Nº 386'),(262829,'Leonardo','Palacios','Av. 16 de Julio Esq. Campero Nº 456'),(267383,'Carlos','Cordero','Av. Max Paredes Esq. Adolfo Ortega Nº 23'),(267889,'Roberto','Aguilar','Av. Jorge Salinas  Nº 123'),(272829,'Joaquin','Castellon','Av. Jorge Munoz Nº 1238'),(277289,'Sergio','Marnriguez','Av. del Maestro Esq. Pedro Salazar Nº 897'),(277378,'Juan','Aramayo','Calle José María Achá N° 29'),(282822,'Ernesto','Fernadez','Av. Tumusla Esq. Buenos Aires Nº 545'),(288328,'Josue','Gonzales','Av. Busch Esq. Panama Nº 945'),(289547,'Marcos','Lopez','Av. del Maestro Esq. Salazar '),(289657,'Mateo','Arce',' Av. Panorámica Nº 123 '),(292992,'Alejandra','Lujan','Av. 20 de Octubre Cap Castrillo Nº 78'),(297432,'Camila','Belmonte','Av. Illimani Nº 1973'),(299282,'Jhonatan','Mendez','Av. Villazon J.J. Perez Nº 28'),(328822,'Pedro','Morales','Av. Ballivian Calle 18 Nº678'),(328832,'Belen','Pozo','Av. Tumusla Esq. Eloy Salmon Nº 6745'),(346838,'Enrique','Palacios','Av. 16 de Julio Esq. Colon Nº 46'),(366368,'Micaela','Pinell','Av. del Ejercito Esq. Zapata Nº 324'),(388493,'Ernesto','Bustillos','Capitan Ravelo Nº 747'),(392922,'Cesar','Garcia','Av. Santa Cruz Calle Colon Nº 89'),(393993,'Hugo','Garcia',' Calle Federico Suazo Esq. Campero Nº 1245'),(424562,'Maria','Trujillo','Av. Camacho Esq.Loayza  Nº 3445'),(452627,'Fernando','Rivas','Av. 16 de Julio calle Bueno Nº 63'),(526377,'Marcos','Gonzales','Av. del Ejercito Nº 1345'),(536738,'Carlos','Perez','Av. Camacho Esq. Bueno Nº 675'),(628299,'Patricia','Mendoza','Calle 9 de Calacoto Esq. Campero Nº 61'),(632673,'Erick','Lopez','Av. Camacho Calle Oruro Nº 7845'),(636373,'Hugo','Gironda','Av. Ballivian Calle 12 Nº 345'),(727282,'Alvaro','Duran','Av. America Esq. Pando Nº 1245'),(737732,'Adrian','Villa',' Av. Tumusla Esq. Max Paredes Nº 645'),(737873,'Eduardo','Trujillo','6 de Agosto Esq. Pedro Salazar Nº 145'),(826222,'Ana','Beltran','Av. Hernando Siles Nº 345'),(837465,'Ricardo','Cuestas','Calle Ladislao Cabrera, Nro 322'),(872838,'Natalia','Limachi','Av. Busch Esq. Pasoskanki Nº 265'),(927732,'Fernando','Escobar','Av. Manco KapacEsq. Nº 885'),(929222,'Miguel','Reyes','Av. Busch Esq. Panama Nº 395'),(2364573,'Rafaela','Maceda','Calle Santa Cruz, Nro 370'),(2635908,'Ramiro','Aramayo','Avenida Las America, Nro 4'),(2948453,'Alexia','Andrada ','Calle Sensao, Nro 65'),(3120987,'Isaac','Montillo','Calle Caceres, Nro 310'),(3214578,'Roberto','Palacios','Calle Petrolera, Nro 650'),(3220980,'Francisco','Candia','Avenida Illimani , Nro 340'),(3225346,'David','Marcone','Avenida Beijing, Nro 446'),(3256798,'Dayana','Guerrero','Calle Pio XII, Nro 349'),(3267090,'Leonela','Blanc','Calle Cespedes, Nro 349'),(3421176,'Adriel','Guevara','Avenida Argentina, Nro 903'),(3425568,'Adriana','Rojas','Calle Inglaterra, Nro 609'),(3433242,'Yordy','Correa','Avenida Virgen de Lujan , Nro 390'),(3452113,'Braulio','Telles','Avenida Principal, Nro 707'),(3467854,'Aurora','Gongora','Calle Antonio, Nro 608'),(4123245,'Esteban','Guado','Calle Innominada, Nro 509'),(4326789,'Grace','Mella','Calle Pedro Antelo, Nro 430'),(4356278,'Paola','Jimenez','Avenida Busch, Nro 76'),(4456009,'Naomi','Loza','Avenida Beni , Nro 408'),(4532178,'Gustavo','Monasterios','Calle Rafael Pabon, Nro 395'),(4567321,'Israel','Moya','Calle Libertad, Nro 356'),(4890654,'Astid','Ganzo','Avenida Los Sargentos, Nro 694'),(5123487,'Valerio','Zambrano','Calle Valle Azul, Nro 822'),(5412309,'Ovidio','Cordero','Avenida San Pedro, Nro 530'),(5439007,'Clemente','Alcantara','Avenida Ceja, Nro 401'),(5637285,'Eduardo','Suarez','Avenida Montes , Nro 34'),(5678234,'Jimena','Caceres','Avenida Raul Salmon, Nro 270'),(5678432,'Andre','Ibañez','Calle Bustillos, Nro 619'),(6123086,'Rosario','Munguia','Calle Sucre, Nro 940'),(6123400,'Ulises','Pizarro','Calle Flores, Nro 251'),(6145378,'Antonio','Gomez','Calle Ballivian, Nro 654'),(6145773,'Martin','Mina','Avenida Bustos, Nro 426'),(6145887,'Alex','Teran','Avenida Los Angeles, Nro 400'),(6165090,'Dario','Tejada','Avenida Hernando Siles, Nro 41'),(6233400,'Sadio','Mane','Calle Pinilla, Nro 693'),(6342235,'Mariana','Aliaga','Calle Gonsalez, Nro 25'),(6345098,'Samuel','Carrasco','Avenida 3 Pasos, Nro 500'),(6378946,'Mateo','Riva','Calle Pagador, Nro 89'),(6783221,'Teresa','Robredo','Calle Claudio Aliaga, Nro 602'),(6783452,'Takefusa','Kubo','Avenida Panoramica, Nro 770'),(7643251,'Carla','Espinoza','Calle Bolivia, Nro 699'),(7654324,'Carmen','Aguilar','Calle Rojas, Nro 879'),(7812345,'Leticia','Porcel','Avenida Mariscal Santa Cruz, Nro 521'),(7843210,'Ninosca','Tesillo','Avenida Pasoskanki, Nro 201'),(7863542,'Sergio','Gonsalez','Calle Ponce, Nro 699'),(8764532,'Jose','Vidania ','Calle Jaen, Nro 233'),(9283645,'Daniel','Fontana','Calle Rene Franco, Nro 876'),(9326372,'Gabriela','Arce','Avenida 23 de Marzo, Nro 5'),(9873425,'Pablo','Quiroz','Calle Carreras, Nro 343'),(9876534,'Soraya','Colina','Avenida 20 de Octubre, Nro 145'),(9876540,'Ariel','Tonalli','Avenida Capinota, Nro 470'),(12480240,'Hernan','Salgado','Calle Tablas, Nro 549'),(15678932,'Mischel','Martinez','Calle Genaro Sanjinez, Nro 240'),(26352132,'Jhon','Castillo','Avenida Jorge Carrasco, Nro 777'),(34232442,'Juan','Ballivian','Calle Rene Moreno, Nro 98'),(43526474,'Leandro','Flores','Calle Nery, Nro 348'),(56783240,'Javier','Villaboa','Calle 16 de Julio, Nro 505'),(61563765,'Maria','Ayala','Calle Pichincha, Nro 634'),(63547846,'Paul','Rodriguez','Calle L. de la Vega, Nro 987'),(83746524,'Misael','Villarroel','Calle Eduardo Lopez, Nro 345');
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

-- Dump completed on 2020-03-23 13:48:01

-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: notas
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.20-MariaDB

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
-- Table structure for table `categnotas`
--

DROP TABLE IF EXISTS `categnotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categnotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notes_id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categnotas_FK` (`notes_id`),
  KEY `categnotas_FK_1` (`categorias_id`),
  CONSTRAINT `categnotas_FK` FOREIGN KEY (`notes_id`) REFERENCES `notes` (`id`),
  CONSTRAINT `categnotas_FK_1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categnotas`
--

LOCK TABLES `categnotas` WRITE;
/*!40000 ALTER TABLE `categnotas` DISABLE KEYS */;
INSERT INTO `categnotas` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,9,9),(9,8,8),(10,10,10);
/*!40000 ALTER TABLE `categnotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'musica'),(2,'literatura'),(3,'geografia'),(4,'historia'),(5,'cinematografia'),(6,'deportes'),(7,'noticias'),(8,'astronomia'),(9,'cocina'),(10,'economia');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `creada` timestamp NOT NULL DEFAULT current_timestamp(),
  `modificada` timestamp NOT NULL DEFAULT current_timestamp(),
  `eliminada` tinyint(4) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_FK` (`usuarios_id`),
  CONSTRAINT `notes_FK` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,'title1','descrip1','2021-09-09 04:23:30','2021-09-09 04:23:30',0,2),(2,'title2','descrp2','2021-09-09 04:23:30','2021-09-09 04:23:30',1,3),(3,'title4','descrip4','2021-09-09 04:23:30','2021-09-09 04:23:30',0,4),(4,'title5','descrip5','2021-09-09 04:23:30','2021-09-09 04:23:30',1,5),(5,'title6','descrip6','2021-09-09 04:23:30','2021-09-09 04:23:30',0,7),(6,'title7','descrip7','2021-09-09 04:23:30','2021-09-09 04:23:30',1,8),(7,'title8','descrip8','2021-09-09 04:23:30','2021-09-09 04:23:30',1,9),(8,'title9','descrip9','2021-09-09 04:23:30','2021-09-09 04:23:30',0,1),(9,'title10','descrip10','2021-09-09 04:23:30','2021-09-09 04:23:30',0,6),(10,'title3','descrip3','2021-09-09 04:23:30','2021-09-09 04:23:30',1,10);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Stefano','stefano@gmail.com'),(2,'Sofia','sofia@yahoo.com'),(3,'Fabrizzio','fabrizzio@hotmail.com'),(4,'Erica','erica@gmail.com'),(5,'Pepe','pepito@hotmail.com'),(6,'Gustavo','gustavo@hispavista.com'),(7,'Juan','juancito@diez.com'),(8,'Monica','moni@cariño.com'),(9,'Veronica','vero@sola.com'),(10,'Michael','michael@hotmail.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-08 18:41:06

CREATE DATABASE  IF NOT EXISTS `techstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `techstore`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: techstore
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `detalles_ordenes`
--

DROP TABLE IF EXISTS `detalles_ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_ordenes` (
  `detalle_id` int NOT NULL AUTO_INCREMENT,
  `orden_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`detalle_id`),
  KEY `orden_id` (`orden_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `detalles_ordenes_ibfk_1` FOREIGN KEY (`orden_id`) REFERENCES `ordenes` (`orden_id`),
  CONSTRAINT `detalles_ordenes_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_ordenes`
--

LOCK TABLES `detalles_ordenes` WRITE;
/*!40000 ALTER TABLE `detalles_ordenes` DISABLE KEYS */;
INSERT INTO `detalles_ordenes` VALUES (1,1,1,1,3500.00),(2,1,2,1,4200.00),(3,2,3,1,1200.00);
/*!40000 ALTER TABLE `detalles_ordenes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-09 23:26:54

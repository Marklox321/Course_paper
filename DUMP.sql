CREATE DATABASE  IF NOT EXISTS `fastfood_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fastfood_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: fastfood_db
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
-- Table structure for table `change_logs`
--

DROP TABLE IF EXISTS `change_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `change_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  `change_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `emploees_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `products_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_change_logs_emploees2_idx1` (`emploees_id`),
  KEY `fk_change_logs_products1_idx` (`products_id`),
  CONSTRAINT `fk_change_logs_emploees2` FOREIGN KEY (`emploees_id`) REFERENCES `emploees` (`id`),
  CONSTRAINT `fk_change_logs_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_logs`
--

LOCK TABLES `change_logs` WRITE;
/*!40000 ALTER TABLE `change_logs` DISABLE KEYS */;
INSERT INTO `change_logs` VALUES (35,'Заказ в процессе','Продан за 500.00 руб.','2025-06-06 12:32:51',1,5,3),(36,'Заказ в процессе','Продан за 500.00 руб.','2025-06-06 12:36:00',1,5,1),(45,'Заказ в процессе','Продан за 1500.00 руб.','2025-06-06 18:03:55',6,30,3),(46,'Заказ в процессе','Продан за 5000.00 руб.','2025-06-06 18:04:27',6,20,1),(47,'Заказ в процессе','Продан за 30000.00 руб.','2025-06-06 18:04:38',6,100,2),(48,'Заказ в процессе','Продан за 2500.00 руб.','2025-06-06 18:11:34',6,25,1),(49,'Заявка отправлена','Купленно за 2500.00 руб.','2025-06-11 10:52:25',1,25,1),(50,'Заявка отправлена','Купленно за 2500.00 руб.','2025-06-11 10:54:01',1,25,1),(51,'Заявка отправлена','Купленно за 2500.00 руб.','2025-06-11 10:56:12',1,25,1),(52,'Заявка отправлена','Купленно за 2500.00 руб.','2025-06-11 10:56:35',1,25,1),(53,'Заявка отправлена','Купленно за 2500.00 руб.','2025-06-11 10:57:25',1,25,1),(54,'Заказ в процессе','Продан за 2500.00 руб.','2025-06-11 10:58:14',1,25,1),(55,'Заказ в процессе','Продан за 2500.00 руб.','2025-06-11 10:59:40',1,25,1),(56,'Заявка отправлена','Купленно за 500.00 руб.','2025-06-11 16:01:37',1,5,1),(57,'Заявка отправлена','Купленно за 1000.00 руб.','2025-06-11 16:09:09',1,10,1),(58,'Заявка отправлена','Купленно за 1500.00 руб.','2025-06-11 16:10:14',1,5,2),(59,'Заявка отправлена','Купленно за 15000.00 руб.','2025-06-11 17:23:01',4,50,2),(60,'Заявка отправлена','Купленно за 1000.00 руб.','2025-06-19 17:44:10',1,10,1),(61,'Заявка отправлена','Купленно за 15000.00 руб.','2025-06-21 10:12:56',1,50,2),(62,'Заявка отправлена','Купленно за 1000.00 руб.','2025-06-21 10:30:52',1,10,1),(63,'Заявка отправлена','Купленно за 1000.00 руб.','2025-06-24 11:38:09',1,10,1),(64,'Заявка отправлена','Купленно за 900.00 руб.','2025-06-24 11:54:00',1,9,1),(65,'Старая цена: 300.00 руб.','Новая цена: 240.00 руб.','2025-12-15 12:59:17',NULL,NULL,2),(66,'Старая цена: 100.00 руб.','Новая цена: 80.00 руб.','2025-12-15 12:59:17',NULL,NULL,1),(67,'Старая цена: 50.00 руб.','Новая цена: 500.00 руб.','2025-12-15 12:59:46',NULL,NULL,3),(68,'Старая цена: 240.00 руб.','Новая цена: 192.00 руб.','2025-12-15 13:01:27',NULL,NULL,2),(69,'Старая цена: 80.00 руб.','Новая цена: 64.00 руб.','2025-12-15 13:01:27',NULL,NULL,1),(70,'Старая цена: 192.00 руб.','Новая цена: 153.60 руб.','2025-12-15 13:02:01',NULL,NULL,2),(71,'Старая цена: 64.00 руб.','Новая цена: 51.20 руб.','2025-12-15 13:02:01',NULL,NULL,1),(72,'Старая цена: 153.60 руб.','Новая цена: 123.20 руб.','2025-12-15 13:02:37',NULL,NULL,2),(73,'Старая цена: 51.20 руб.','Новая цена: 40.80 руб.','2025-12-15 13:02:37',NULL,NULL,1),(74,'Старая цена: 123.20 руб.','Новая цена: 98.40 руб.','2025-12-15 13:04:12',NULL,NULL,2),(75,'Старая цена: 40.80 руб.','Новая цена: 32.80 руб.','2025-12-15 13:04:12',NULL,NULL,1),(76,'Старая цена: 98.40 руб.','Новая цена: 78.40 руб.','2025-12-15 15:01:16',NULL,NULL,2),(77,'Старая цена: 32.80 руб.','Новая цена: 26.40 руб.','2025-12-15 15:01:16',NULL,NULL,1),(78,'Старая цена: 78.40 руб.','Новая цена: 62.40 руб.','2025-12-15 15:01:48',NULL,NULL,2),(79,'Старая цена: 26.40 руб.','Новая цена: 20.80 руб.','2025-12-15 15:01:48',NULL,NULL,1),(80,'Старая цена: 62.40 руб.','Новая цена: 49.60 руб.','2025-12-15 15:01:49',NULL,NULL,2),(81,'Старая цена: 20.80 руб.','Новая цена: 16.80 руб.','2025-12-15 15:01:49',NULL,NULL,1),(82,'Старая цена: 49.60 руб.','Новая цена: 40.00 руб.','2025-12-15 15:01:49',NULL,NULL,2),(83,'Старая цена: 16.80 руб.','Новая цена: 13.60 руб.','2025-12-15 15:01:49',NULL,NULL,1),(84,'Старая цена: 40.00 руб.','Новая цена: 32.00 руб.','2025-12-15 15:01:49',NULL,NULL,2),(85,'Старая цена: 13.60 руб.','Новая цена: 11.20 руб.','2025-12-15 15:01:49',NULL,NULL,1),(86,'Старая цена: 32.00 руб.','Новая цена: 25.60 руб.','2025-12-15 15:01:50',NULL,NULL,2),(87,'Старая цена: 11.20 руб.','Новая цена: 8.80 руб.','2025-12-15 15:01:50',NULL,NULL,1),(88,'Старая цена: 25.60 руб.','Новая цена: 20.80 руб.','2025-12-15 15:01:50',NULL,NULL,2),(89,'Старая цена: 8.80 руб.','Новая цена: 7.20 руб.','2025-12-15 15:01:50',NULL,NULL,1),(90,'Старая цена: 20.80 руб.','Новая цена: 16.80 руб.','2025-12-15 15:01:51',NULL,NULL,2),(91,'Старая цена: 7.20 руб.','Новая цена: 5.60 руб.','2025-12-15 15:01:51',NULL,NULL,1),(92,'Старая цена: 16.80 руб.','Новая цена: 13.60 руб.','2025-12-15 15:01:51',NULL,NULL,2),(93,'Старая цена: 5.60 руб.','Новая цена: 4.80 руб.','2025-12-15 15:01:51',NULL,NULL,1),(94,'Старая цена: 13.60 руб.','Новая цена: 11.20 руб.','2025-12-15 15:01:52',NULL,NULL,2),(95,'Старая цена: 4.80 руб.','Новая цена: 4.00 руб.','2025-12-15 15:01:52',NULL,NULL,1),(96,'Старая цена: 11.20 руб.','Новая цена: 8.80 руб.','2025-12-15 15:01:53',NULL,NULL,2),(97,'Старая цена: 4.00 руб.','Новая цена: 3.20 руб.','2025-12-15 15:01:53',NULL,NULL,1),(98,'Старая цена: 8.80 руб.','Новая цена: 7.20 руб.','2025-12-15 15:01:53',NULL,NULL,2),(99,'Старая цена: 3.20 руб.','Новая цена: 2.40 руб.','2025-12-15 15:01:53',NULL,NULL,1),(100,'Старая цена: 7.20 руб.','Новая цена: 5.60 руб.','2025-12-15 15:01:54',NULL,NULL,2),(101,'Старая цена: 2.40 руб.','Новая цена: 1.60 руб.','2025-12-15 15:01:54',NULL,NULL,1),(102,'Старая цена: 5.60 руб.','Новая цена: 4.80 руб.','2025-12-15 15:01:55',NULL,NULL,2),(103,'Старая цена: 4.80 руб.','Новая цена: 4.00 руб.','2025-12-15 15:01:55',NULL,NULL,2),(104,'Старая цена: 4.00 руб.','Новая цена: 3.20 руб.','2025-12-15 15:01:56',NULL,NULL,2),(105,'Старая цена: 3.20 руб.','Новая цена: 2.40 руб.','2025-12-15 15:01:56',NULL,NULL,2),(106,'Старая цена: 2.40 руб.','Новая цена: 1.60 руб.','2025-12-15 15:01:57',NULL,NULL,2),(107,'Старая цена: 1.60 руб.','Новая цена: 300.00 руб.','2025-12-15 15:02:22',NULL,NULL,1),(108,'Старая цена: 1.60 руб.','Новая цена: 100.00 руб.','2025-12-15 15:02:22',NULL,NULL,2),(109,'Старая цена: 100.00 руб.','Новая цена: 80.00 руб.','2025-12-15 15:02:51',NULL,NULL,2),(110,'Старая цена: 300.00 руб.','Новая цена: 240.00 руб.','2025-12-15 15:02:51',NULL,NULL,1),(111,'Старая цена: 240.00 руб.','Новая цена: 300.00 руб.','2025-12-15 15:04:36',NULL,NULL,1),(112,'Старая цена: 80.00 руб.','Новая цена: 100.00 руб.','2025-12-15 15:04:36',NULL,NULL,2),(113,'Старая цена: 100.00 руб.','Новая цена: 80.00 руб.','2025-12-15 15:05:03',NULL,NULL,2),(114,'Старая цена: 300.00 руб.','Новая цена: 240.00 руб.','2025-12-15 15:05:03',NULL,NULL,1),(115,'Старая цена: 80.00 руб.','Новая цена: 64.00 руб.','2025-12-15 15:05:04',NULL,NULL,2),(116,'Старая цена: 240.00 руб.','Новая цена: 192.00 руб.','2025-12-15 15:05:04',NULL,NULL,1),(117,'Старая цена: 64.00 руб.','Новая цена: 51.20 руб.','2025-12-15 15:05:05',NULL,NULL,2),(118,'Старая цена: 192.00 руб.','Новая цена: 153.60 руб.','2025-12-15 15:05:05',NULL,NULL,1),(119,'Старая цена: 51.20 руб.','Новая цена: 40.80 руб.','2025-12-15 15:05:05',NULL,NULL,2),(120,'Старая цена: 153.60 руб.','Новая цена: 123.20 руб.','2025-12-15 15:05:05',NULL,NULL,1),(121,'Старая цена: 40.80 руб.','Новая цена: 32.80 руб.','2025-12-15 15:05:06',NULL,NULL,2),(122,'Старая цена: 123.20 руб.','Новая цена: 98.40 руб.','2025-12-15 15:05:06',NULL,NULL,1),(123,'Старая цена: 32.80 руб.','Новая цена: 26.40 руб.','2025-12-15 15:05:06',NULL,NULL,2),(124,'Старая цена: 98.40 руб.','Новая цена: 78.40 руб.','2025-12-15 15:05:06',NULL,NULL,1),(125,'Старая цена: 26.40 руб.','Новая цена: 20.80 руб.','2025-12-15 15:05:07',NULL,NULL,2),(126,'Старая цена: 78.40 руб.','Новая цена: 62.40 руб.','2025-12-15 15:05:07',NULL,NULL,1),(127,'Старая цена: 20.80 руб.','Новая цена: 16.80 руб.','2025-12-15 15:05:08',NULL,NULL,2),(128,'Старая цена: 62.40 руб.','Новая цена: 49.60 руб.','2025-12-15 15:05:08',NULL,NULL,1),(129,'Старая цена: 16.80 руб.','Новая цена: 13.60 руб.','2025-12-15 15:05:09',NULL,NULL,2),(130,'Старая цена: 49.60 руб.','Новая цена: 40.00 руб.','2025-12-15 15:05:09',NULL,NULL,1),(131,'Старая цена: 13.60 руб.','Новая цена: 11.20 руб.','2025-12-15 15:05:10',NULL,NULL,2),(132,'Старая цена: 40.00 руб.','Новая цена: 32.00 руб.','2025-12-15 15:05:10',NULL,NULL,1),(133,'Старая цена: 11.20 руб.','Новая цена: 8.80 руб.','2025-12-15 15:05:11',NULL,NULL,2),(134,'Старая цена: 32.00 руб.','Новая цена: 25.60 руб.','2025-12-15 15:05:11',NULL,NULL,1),(135,'Старая цена: 8.80 руб.','Новая цена: 7.20 руб.','2025-12-15 15:05:12',NULL,NULL,2),(136,'Старая цена: 25.60 руб.','Новая цена: 20.80 руб.','2025-12-15 15:05:12',NULL,NULL,1),(137,'Старая цена: 7.20 руб.','Новая цена: 5.60 руб.','2025-12-15 15:05:14',NULL,NULL,2),(138,'Старая цена: 20.80 руб.','Новая цена: 16.80 руб.','2025-12-15 15:05:14',NULL,NULL,1),(139,'Старая цена: 16.80 руб.','Новая цена: 300.00 руб.','2025-12-15 15:05:44',NULL,NULL,1),(140,'Старая цена: 5.60 руб.','Новая цена: 100.00 руб.','2025-12-15 15:05:44',NULL,NULL,2),(141,'Старая цена: 100.00 руб.','Новая цена: 80.00 руб.','2025-12-15 15:11:03',NULL,NULL,2),(142,'Старая цена: 300.00 руб.','Новая цена: 240.00 руб.','2025-12-15 15:11:03',NULL,NULL,1),(143,'Старая цена: 240.00 руб.','Новая цена: 300.00 руб.','2025-12-15 15:12:07',NULL,NULL,1),(144,'Старая цена: 80.00 руб.','Новая цена: 100.00 руб.','2025-12-15 15:12:07',NULL,NULL,2),(145,'Старая цена: 100.00 руб.','Новая цена: 80.00 руб.','2025-12-15 15:12:38',NULL,NULL,2),(146,'Старая цена: 300.00 руб.','Новая цена: 240.00 руб.','2025-12-15 15:12:38',NULL,NULL,1),(147,'Заявка отправлена','Купленно за 12000.00 руб.','2025-06-23 17:33:41',1,50,1),(148,'Заявка отправлена','Купленно за 2400.00 руб.','2025-06-23 17:35:27',1,10,1),(149,'Заявка отправлена','Купленно за 4000.00 руб.','2025-06-23 17:35:55',1,50,2),(150,'Заявка отправлена','Купленно за 1440.00 руб.','2025-06-23 17:41:49',1,6,1),(151,'Заявка отправлена','Купленно за 4000.00 руб.','2025-06-23 17:45:14',1,50,2),(152,'Заявка отправлена','Купленно за 30000.00 руб.','2025-06-23 17:46:43',1,60,3),(153,'Заявка отправлена','Купленно за 400.00 руб.','2025-06-23 17:48:01',1,5,2),(154,'Заявка отправлена','Купленно за 2400.00 руб.','2025-06-24 14:34:16',1,10,1),(155,'Заявка отправлена','Купленно за 1600.00 руб.','2025-06-24 14:34:27',1,20,2),(156,'Заявка отправлена','Купленно за 5000.00 руб.','2025-06-24 14:34:36',1,10,3),(157,'Старая цена: 240.00 руб.','Новая цена: 192.00 руб.','2025-06-24 14:38:19',NULL,NULL,1),(158,'Старая цена: 80.00 руб.','Новая цена: 64.00 руб.','2025-06-24 14:38:19',NULL,NULL,2),(159,'Заявка отправлена','Купленно за 1920.00 руб.','2025-06-24 16:51:15',1,10,1);
/*!40000 ALTER TABLE `change_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `current_month_revenue`
--

DROP TABLE IF EXISTS `current_month_revenue`;
/*!50001 DROP VIEW IF EXISTS `current_month_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `current_month_revenue` AS SELECT 
 1 AS `total_revenue`,
 1 AS `month_year`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `emploees`
--

DROP TABLE IF EXISTS `emploees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emploees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `post` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emploees`
--

LOCK TABLES `emploees` WRITE;
/*!40000 ALTER TABLE `emploees` DISABLE KEYS */;
INSERT INTO `emploees` VALUES (1,'Билли','Херинктон',10.00,'Сотрудик'),(4,'Марк','Фулдер',500.00,'Админстратор'),(10,'Богдан','Булфорд',5.00,'Сотрудник');
/*!40000 ALTER TABLE `emploees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expirations`
--

DROP TABLE IF EXISTS `expirations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expirations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `was_order` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `dey_deleys` int DEFAULT NULL,
  `price_was` int DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `price_become` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_expiration_date_stock1_idx` (`stock_id`),
  CONSTRAINT `fk_expiration_date_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expirations`
--

LOCK TABLES `expirations` WRITE;
/*!40000 ALTER TABLE `expirations` DISABLE KEYS */;
INSERT INTO `expirations` VALUES (18,1,10,'2025-06-24','2025-12-24',183,192,20,192),(19,1,10,'2025-06-24','2025-12-24',183,192,20,192),(20,2,20,'2025-06-24','2025-12-24',183,64,20,64),(22,1,10,'2025-06-24','2025-12-24',183,192,NULL,NULL);
/*!40000 ALTER TABLE `expirations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `supplier_id` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Бургер',1,192.00),(2,'Картошка',2,64.00),(3,'Напиток',3,500.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `products_before_update` BEFORE UPDATE ON `products` FOR EACH ROW BEGIN
    -- Объявляем все переменные в начале
    DECLARE old_supplier_name VARCHAR(100);
    DECLARE new_supplier_name VARCHAR(100);
    
    -- Изменение цены
    IF NEW.price != OLD.price THEN
        INSERT INTO change_logs (old_value, new_value, change_time, products_id)
        VALUES (
            CONCAT('Старая цена: ', OLD.price, ' руб.'),
            CONCAT('Новая цена: ', NEW.price, ' руб.'),
            NOW(),
            NEW.id
        );
    END IF;
    
    -- Изменение названия
    IF NEW.name != OLD.name THEN
        INSERT INTO change_logs (old_value, new_value, change_time, products_id)
        VALUES (
            CONCAT('Старое название: ', OLD.name),
            CONCAT('Новое название: ', NEW.name),
            NOW(),
            NEW.id
        );
    END IF;
    
    -- Изменение поставщика
    IF NEW.supplier_id != OLD.supplier_id THEN
        -- Получаем имена поставщиков
        SELECT name INTO old_supplier_name FROM suppliers WHERE id = OLD.supplier_id;
        SELECT name INTO new_supplier_name FROM suppliers WHERE id = NEW.supplier_id;
        
        INSERT INTO change_logs (old_value, new_value, change_time, products_id)
        VALUES (
            CONCAT('Старый поставщик: ', IFNULL(old_supplier_name, 'не указан')),
            CONCAT('Новый поставщик: ', IFNULL(new_supplier_name, 'не указан')),
            NOW(),
            NEW.id
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `amount` int DEFAULT NULL,
  `products_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_products1_idx` (`products_id`),
  CONSTRAINT `fk_stock_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'Бургер',254,1),(2,'Картошка',220,2),(3,'Напиток',410,3);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'OOO \"Бургер\"','Марк','890199990'),(2,'OOO \"Картофель\"','Билли','8901732837'),(3,'OOO \"Пить\"','Томас','8901732837');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fastfood_db'
--

--
-- Dumping routines for database 'fastfood_db'
--
/*!50003 DROP FUNCTION IF EXISTS `get_product_price_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_product_price_by_id`(product_id INT) RETURNS decimal(10,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE product_price DECIMAL(10,2);
    
    SELECT price INTO product_price 
    FROM products 
    WHERE id = product_id;
    
    RETURN product_price;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_quantity_products` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Mark`@`localhost` PROCEDURE `add_quantity_products`(
	in p_employee_id INT,
	in p_product_id INT,
	in p_amount INT
)
BEGIN

 DECLARE v_stock_amount INT;
DECLARE v_product_name VARCHAR(255);
 DECLARE v_product_price DECIMAL(10,2); -- Добавляем переменную для цены
    DECLARE v_total_price DECIMAL(10,2); -- Переменная для общей суммы
DECLARE v_expiration_date date; -- Переменная для общей суммы
declare v_deleys_day int;

start transaction;
SET SQL_SAFE_UPDATES = 0;
SELECT s.amount, p.name, p.price 
    INTO v_stock_amount, v_product_name, v_product_price
    FROM stock s
    JOIN products p ON s.products_id = p.id
    WHERE s.products_id = p_product_id;


	-- Получаем текущее количество товара на складе и его название
    SELECT name, amount INTO v_product_name, v_stock_amount 
    FROM stock
    WHERE stock.id = p_product_id;
    
    IF NOT EXISTS (SELECT 1 FROM emploees WHERE emploees.id = p_employee_id) THEN
    select 'Несуществует такого работника для принятие поставки!';
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Несуществует такого работника!';
END IF;

IF NOT EXISTS (SELECT 1 FROM products WHERE products.id = p_product_id) THEN
    select 'Несуществует такого товара у поставщика!';
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Несуществует такого товара!';
END IF;
    
	update stock
    set amount = amount + p_amount
    where stock.products_id = p_product_id;
    
    SET v_total_price = v_product_price * p_amount;
    
    SET v_expiration_date = NOW() + INTERVAL 6 MONTH;
    
    set v_deleys_day = DATEDIFF(v_expiration_date, NOW());
    
    
    insert into expirations (stock_id, quantity, was_order, expiration_date, dey_deleys)
		values(p_product_id, p_amount, NOW(),  v_expiration_date, v_deleys_day);
		
        UPDATE expirations 
		join stock on stock_id = stock.id
		join products on stock.products_id = products.id
		SET expirations.price_was = products.price;
    
    INSERT INTO change_logs (old_value, new_value, change_time, products_id, emploees_id, amount)
        VALUES ('Заявка отправлена', CONCAT('Купленно за ', v_total_price, ' руб.'), NOW(), p_product_id, p_employee_id, p_amount);
        
select 'Поставка принята успешно, обшая сумма: ' + v_total_price as 'Поставка принята успешно, обшая сумма: ';


commit;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `discount_products` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Mark`@`localhost` PROCEDURE `discount_products`()
BEGIN

UPDATE expirations 
		join stock on stock_id = stock.id
		join products on stock.products_id = products.id
		SET expirations.price_was = products.price;

	UPDATE expirations
	SET dey_deleys = DATEDIFF(expiration_date, CURDATE())
	WHERE id > 0;
 
 update expirations
join stock on stock_id = stock.id
join products on stock.products_id = products.id
 set discount = 20,
     price_become = price_was * (1 - 20 / 100),
     products.price = price_was * (1 - 20 / 100)
 where dey_deleys <= 7 and expirations.stock_id = products.id and discount is null;
 
SELECT * FROM fastfood_db.expirations;

 
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procces_sales_food` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `procces_sales_food`(
	in p_employee_id INT,
	in p_product_id INT,
	in p_amount INT
)
BEGIN

 DECLARE v_stock_amount INT;
DECLARE v_product_name VARCHAR(255);
 DECLARE v_product_price DECIMAL(10,2); -- Добавляем переменную для цены
    DECLARE v_total_price DECIMAL(10,2); -- Переменная для общей суммы

start transaction;

SELECT s.amount, p.name, p.price 
    INTO v_stock_amount, v_product_name, v_product_price
    FROM stock s
    JOIN products p ON s.products_id = p.id
    WHERE s.products_id = p_product_id;


	-- Получаем текущее количество товара на складе и его название
    SELECT name, amount INTO v_product_name, v_stock_amount 
    FROM stock
    WHERE stock.id = p_product_id;
    
    
    
    
	if v_stock_amount < p_amount then
    select 'Недостаточно товара на складе';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Недостаточно товара на складе';
	end if;
    
    IF NOT EXISTS (SELECT 1 FROM emploees WHERE emploees.id = p_employee_id) THEN
    select 'Несуществует такого работника!';
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Несуществует такого работника!';
END IF;

IF NOT EXISTS (SELECT 1 FROM products WHERE products.id = p_product_id) THEN
    select 'Несуществует такого товара!';
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Несуществует такого товара!';
END IF;
    
	update stock
    set amount = amount - p_amount
    where stock.products_id = p_product_id;
    
    SET v_total_price = v_product_price * p_amount;
    
    
    INSERT INTO change_logs (old_value, new_value, change_time, products_id, emploees_id, amount)
        VALUES ('Заказ в процессе', CONCAT('Продан за ', v_total_price, ' руб.'), NOW(), p_product_id, p_employee_id, p_amount);

select 'Ваш заказ успешно оформлен, к оплате: ' + v_total_price as 'Ваш заказ успешно оформлен, к оплате: ';


commit;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `process_expired_items_simple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Mark`@`localhost` PROCEDURE `process_expired_items_simple`()
BEGIN
SET SQL_SAFE_UPDATES = 0;
    -- Начало транзакции
    START TRANSACTION;
    
    -- Сначала обновляем складские остатки
    UPDATE stock s
    JOIN expirations e ON s.id = e.stock_id
    SET s.amount = s.amount - e.quantity
    WHERE e.dey_deleys = 0;
    
    -- Затем удаляем просроченные записи
    DELETE FROM expirations WHERE dey_deleys = 0;
    
    -- Фиксация транзакции
    COMMIT;
    
    SELECT CONCAT('Товары успешно списаны!') AS result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `current_month_revenue`
--

/*!50001 DROP VIEW IF EXISTS `current_month_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `current_month_revenue` AS select sum((`p`.`price` * `cl`.`amount`)) AS `total_revenue`,date_format(`cl`.`change_time`,'%Y-%m') AS `month_year` from (`change_logs` `cl` join `products` `p` on((`cl`.`products_id` = `p`.`id`))) where ((`cl`.`new_value` like 'Продан за%') and (date_format(`cl`.`change_time`,'%Y-%m') = date_format(curdate(),'%Y-%m'))) group by date_format(`cl`.`change_time`,'%Y-%m') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-24 20:04:38

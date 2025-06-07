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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change_logs`
--

LOCK TABLES `change_logs` WRITE;
/*!40000 ALTER TABLE `change_logs` DISABLE KEYS */;
INSERT INTO `change_logs` VALUES (35,'Заказ в процессе','Продан за 500.00 руб.','2025-06-06 12:32:51',1,5,3),(36,'Заказ в процессе','Продан за 500.00 руб.','2025-06-06 12:36:00',1,5,1),(45,'Заказ в процессе','Продан за 1500.00 руб.','2025-06-06 18:03:55',6,30,3),(46,'Заказ в процессе','Продан за 5000.00 руб.','2025-06-06 18:04:27',6,20,1),(47,'Заказ в процессе','Продан за 30000.00 руб.','2025-06-06 18:04:38',6,100,2),(48,'Заказ в процессе','Продан за 2500.00 руб.','2025-06-06 18:11:34',6,25,1);
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
INSERT INTO `products` VALUES (1,'Бургер',1,100.00),(2,'Картошка',2,300.00),(3,'Напиток',3,50.00);
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
INSERT INTO `stock` VALUES (1,'Бургер',75,1),(2,'Картошка',100,2),(3,'Напиток',450,3);
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



commit;


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

-- Dump completed on 2025-06-07 22:29:35

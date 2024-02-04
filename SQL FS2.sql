-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: foodstop
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `CustomerID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  KEY `CustomerID_idx` (`CustomerID`),
  KEY `productcart_idx` (`ProductID`),
  CONSTRAINT `Customercart` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `productcart` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,142,5),(61,199,1),(68,181,4),(68,181,1),(71,142,1),(71,151,1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FName` varchar(255) DEFAULT NULL,
  `LName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phoneno` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Coins` int DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `Email` (`Email`,`Phoneno`),
  UNIQUE KEY `Phoneno` (`Phoneno`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Asad','Shahab','asad@abc.com',NULL,'03308242424',0,'$2a$10$Qc8F.JJItvjeYWu.2ciyfehuMk6AfeUL7HjIAp4jWcdYMwtGFyQTK'),(2,'Asad','Shahab','asad@abc.com','03308242424','abcdsds',0,'$2a$10$WXYQthkgnfnxRr9s6rSTF.MtbF/y9nEooskkc4I9BPUU33GW6wyuy'),(13,'Asad','Shahab','asad@abc.com','0330823232','Khipcha 108',0,'$2a$10$3Xsvxf6i2aSb/UlLOMnwGud7bMKfinX/aMkwSA4JaBfbQKEyN.vgq'),(31,'Asad','Shahab','asad1@abc.com','03308242423','Khipcha 108',0,'$2a$10$MFMeobZXcmxXZEUKaxg1UOHZHJ9v7UnkPVgq/31nblsQoyblzkTO2'),(59,'muhammad','ali','dbms@eval','323434','pak',0,'$2a$10$CMBIk4B50bNJLZCABI2rVuWB0H38ItkZsKoppqTqkdSCjs/p3Ev5K'),(61,'ff','ggg','daf@fs','78876766','pki',0,'$2a$10$8YNr9gtMSkbzFCV03GufO.loaTlUbfxvMH6x8A6n9sU7n0w4Uyfn.'),(64,'ali','akhter','aliakhter@ned.com','031232332','ned university karachi',0,'$2a$10$T0XttX20dskJxJ80Gby9jeNVR49GnSRBEs0E9tLkG4AlyUvi00.7W'),(65,'muhammad ','asad','asad@gmail.com','0322333483','ned university karachi ',0,'$2a$10$A/gdRfE6l76HKzThgub6beLq/x3vRIGQ499ttvgTI/ROSJ9xgwFiy'),(66,'muhammad','ali','ali@gmail.com','323234233','ned uni karachi\n',0,'$2a$10$ogB9.E78byCwdSbR5YOIv.K4XBpo.KQjwKy7etSM89lKcD2vmyiJy'),(67,'muhammad','ali','ali@yahoo.com','212121212','ned uni karachi',0,'$2a$10$ayaPVWa3iNXU3sAWCCRU4.zylzxaoAdjNGAKvCrruAKstVnN6VhSu'),(68,'my','name','hehe@gmail.com','0232234243','ned uni karachi',0,'$2a$10$aJiJl3wiTc3l3xiWkWrWZuMCrrqh4Hs0TAsb.IxHVRqhMUGtrTakW'),(69,'muhammad','ali','seeval@ned.com','03181137787','karachi pakistan',0,'$2a$10$qtXbCSshMkY0duvL86nw5eMLI9DDzOQU/nDheYkRtJXSm.wo3odHm'),(70,'1','1','eee@ee','343434','lk',0,'$2a$10$IgQf.LFM07rvz/Jn8RYhh.AH60ubykbR8xGgNkE2t4ug7zNvzWTYm'),(71,'f','d','ee@ee','123444','fdf',0,'$2a$10$hHUiKNfrCoQdf.5LCi4/xeluINA4TQqsLkUbDJHzyIh7inGpt8Coa');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  KEY `productorder_idx` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (4,186,4,480.00),(4,248,1,139.00),(4,228,3,927.00),(4,185,3,1050.00),(5,237,2,218.00),(5,185,3,1050.00),(5,186,2,240.00),(6,142,4,2196.00),(6,237,1,109.00),(6,235,3,387.00),(6,181,3,660.00),(7,181,3,660.00),(7,182,3,750.00),(7,242,3,177.00),(8,188,2,360.00),(9,265,1,150.00),(9,182,2,500.00),(9,181,2,440.00),(9,147,4,5596.00),(10,255,4,636.00),(11,191,2,598.00),(11,159,2,2798.00),(12,181,1,220.00),(12,202,1,465.00),(12,203,2,918.00),(13,188,2,360.00),(14,191,3,897.00),(15,144,2,2798.00),(18,181,3,660.00),(19,181,5,1100.00),(19,142,1,549.00),(19,273,1,450.00),(19,237,1,109.00),(19,242,1,59.00),(19,281,3,90.00),(20,230,3,573.00),(20,142,2,1098.00),(21,181,1,220.00),(21,182,1,250.00),(21,255,3,573.00),(22,237,1,191.00),(22,191,3,897.00),(22,282,3,60.00),(22,181,2,440.00),(22,230,2,382.00),(23,181,1,220.00),(23,142,3,1647.00),(24,186,3,360.00),(24,230,1,191.00),(24,151,1,549.00),(25,230,3,573.00),(25,265,1,150.00),(25,181,1,220.00),(25,183,1,300.00),(25,142,1,549.00),(26,237,1,191.00),(26,142,1,549.00),(27,181,4,880.00),(28,142,3,1647.00),(28,181,1,220.00),(28,181,1,220.00),(28,183,1,300.00),(29,184,1,320.00),(29,182,4,1000.00),(29,181,1,220.00),(31,267,1,180.00),(31,273,3,1350.00),(32,265,1,150.00),(32,204,1,358.00),(33,181,1,220.00),(33,265,1,150.00);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `Payment_Method` varchar(255) DEFAULT NULL,
  `OrderStatus` enum('Placed','Queue','Ready','On way') DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID_idx` (`CustomerID`),
  KEY `CustomerID_idx1` (`CustomerID`),
  CONSTRAINT `customerorder` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,59,2596.00,'2024-01-17','card','Placed'),(5,59,1508.00,'2024-01-17','credit card','Placed'),(6,59,3352.00,'2024-01-17','credit card','Placed'),(7,59,1587.00,'2024-01-17','credit card','Placed'),(8,59,360.00,'2024-01-17','credit card','Placed'),(9,59,6686.00,'2024-01-17','credit card','Placed'),(10,59,636.00,'2024-01-17','credit card','Placed'),(11,64,3396.00,'2024-01-17','credit card','Placed'),(12,64,1603.00,'2024-01-17','credit card','Placed'),(13,64,360.00,'2024-01-17','credit card','Placed'),(14,59,897.00,'2024-01-17','credit card','Placed'),(15,59,2798.00,'2024-01-18','credit card','Placed'),(16,59,NULL,'2024-01-18','credit card','Placed'),(17,59,NULL,'2024-01-18','credit card','Placed'),(18,59,660.00,'2024-01-18','credit card','Placed'),(19,65,2357.00,'2024-01-18','credit card','Placed'),(20,67,1671.00,'2024-01-18','credit card','Placed'),(21,67,1043.00,'2024-01-18','credit card','Placed'),(22,67,1970.00,'2024-01-18','credit card','Placed'),(23,67,1867.00,'2024-01-18','credit card','Placed'),(24,67,1100.00,'2024-01-18','credit card','Placed'),(25,67,1792.00,'2024-01-18','credit card','Placed'),(26,67,740.00,'2024-01-18','credit card','Placed'),(27,67,880.00,'2024-01-18','credit card','Placed'),(28,70,2387.00,'2024-01-18','credit card','Placed'),(29,67,1540.00,'2024-01-18','credit card','Placed'),(30,67,NULL,'2024-01-18','credit card','Placed'),(31,67,1530.00,'2024-01-18','credit card','Placed'),(32,67,508.00,'2024-01-18','credit card','Placed'),(33,67,370.00,'2024-01-18','credit card','Placed');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `SellerID` int NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ProductDescription` text,
  `Images` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `STATUS` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`ProductID`),
  KEY `sellerproduct_idx` (`SellerID`),
  CONSTRAINT `sellerproduct` FOREIGN KEY (`SellerID`) REFERENCES `seller` (`SellerID`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (142,17,'Chicken Supreme Pizza (Small)','Tender chicken pieces, black olives, jalapeños, green chilies, onions, and green peppers on a delicious tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-LoadedChicken800x550_variant_0-2023-02-02151455.webp','Pizza',549.00,1),(143,17,'Chicken Supreme Pizza (Medium)','Tender chicken pieces, black olives, jalapeños, green chilies, onions, and green peppers on a delicious tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-LoadedChicken800x550_variant_0-2023-02-02151455.webp','Pizza',899.00,1),(144,17,'Chicken Supreme Pizza (Large)','Tender chicken pieces, black olives, jalapeños, green chilies, onions, and green peppers on a delicious tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-LoadedChicken800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00,1),(145,17,'Peri Peri Chicken Pizza (Small)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Peri-Peri800x550_variant_0-2023-02-02151455.webp','Pizza',549.00,1),(146,17,'Peri Peri Chicken Pizza (Medium)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Peri-Peri800x550_variant_0-2023-02-02151455.webp','Pizza',549.00,1),(147,17,'Peri Peri Chicken Pizza (Large)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Peri-Peri800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00,1),(148,17,'Chicken Fajita Pizza (Small)','Tender chicken pieces, bell peppers, onions, and a sprinkle of Mexican spices on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Fajita800x550_variant_0-2023-02-02151455.webp','Pizza',549.00,1),(149,17,'Chicken Fajita Pizza (Medium)','Tender chicken pieces, bell peppers, onions, and a sprinkle of Mexican spices on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Fajita800x550_variant_0-2023-02-02151455.webp','Pizza',899.00,1),(150,17,'Chicken Fajita Pizza (Large)','Tender chicken pieces, bell peppers, onions, and a sprinkle of Mexican spices on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Fajita800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00,1),(151,17,'Chicken Tikka Pizza (Small)','Marinated chicken tikka pieces, onions, and green peppers on a creamy white sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Tikka800x550_variant_0-2023-02-02151455.webp','Pizza',549.00,1),(152,17,'Chicken Tikka Pizza (Medium)','Marinated chicken tikka pieces, onions, and green peppers on a creamy white sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Tikka800x550_variant_0-2023-02-02151455.webp','Pizza',899.00,1),(153,17,'Chicken Tikka Pizza (Large)','Marinated chicken tikka pieces, onions, and green peppers on a creamy white sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Tikka800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00,1),(154,17,'Pepperoni Passion Pizza (Small)','Classic pepperoni slices and melted mozzarella cheese on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Pepperoni800x550_variant_0-2023-02-02151455.webp','Pizza',499.00,1),(155,17,'Pepperoni Passion Pizza (Medium)','Classic pepperoni slices and melted mozzarella cheese on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Pepperoni800x550_variant_0-2023-02-02151455.webp','Pizza',799.00,1),(156,17,'Pepperoni Passion Pizza (Large)','Classic pepperoni slices and melted mozzarella cheese on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Pepperoni800x550_variant_0-2023-02-02151455.webp','Pizza',1249.00,1),(157,17,'Spicy BBQ Chicken Pizza (Small)','Tender chicken pieces tossed in a spicy BBQ sauce, with red onions and green peppers on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-BBQ-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',549.00,1),(158,17,'Spicy BBQ Chicken Pizza (Medium)','Tender chicken pieces tossed in a spicy BBQ sauce, with red onions and green peppers on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-BBQ-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',899.00,1),(159,17,'Spicy BBQ Chicken Pizza (Large)','Tender chicken pieces tossed in a spicy BBQ sauce, with red onions and green peppers on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-BBQ-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00,1),(160,17,'Veggie Supreme Pizza (Small)','A combination of green peppers, onions, mushrooms, black olives, and cherry tomatoes on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-veggie800x550_variant_0-2023-02-02151455.webp','Pizza',549.00,1),(161,17,'Veggie Supreme Pizza (Medium)','A combination of green peppers, onions, mushrooms, black olives, and cherry tomatoes on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-veggie800x550_variant_0-2023-02-02151455.webp','Pizza',899.00,1),(162,17,'Veggie Supreme Pizza (Large)','A combination of green peppers, onions, mushrooms, black olives, and cherry tomatoes on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-veggie800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00,1),(163,17,'Hawaiian Pizza (Small)','Chicken and pineapple pieces on a creamy white sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Hawaiian-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',549.00,1),(164,17,'Hawaiian Pizza (Medium)','Chicken and pineapple pieces on a creamy white sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Hawaiian-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',899.00,1),(165,17,'Hawaiian Pizza (Large)','Chicken and pineapple pieces on a creamy white sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-Hawaiian-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00,1),(166,17,'Creamy Peri Peri Pizza (Small)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','91ed1620-b36b-11ed-8768-a5a0f7bcc2a4-Creamy-Peri-Peri_variant_0-2023-02-23111650.webp','Pizza',549.00,1),(167,17,'Creamy Peri Peri Pizza (Medium)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','91ed1620-b36b-11ed-8768-a5a0f7bcc2a4-Creamy-Peri-Peri_variant_0-2023-02-23111650.webp','Pizza',899.00,1),(168,17,'Creamy Peri Peri Pizza (Large)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','91ed1620-b36b-11ed-8768-a5a0f7bcc2a4-Creamy-Peri-Peri_variant_0-2023-02-23111650.webp','Pizza',1399.00,1),(169,17,'Beef Deluxe Pizza (Small)','Tender beef strips, green peppers, onions, mushrooms, and black olives on a tomato sauce base.','6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Beef-Deluxe800x550_variant_0-2023-02-07082840.webp','Pizza',599.00,1),(170,17,'Beef Deluxe Pizza (Medium)','Tender beef strips, green peppers, onions, mushrooms, and black olives on a tomato sauce base.','6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Beef-Deluxe800x550_variant_0-2023-02-07082840.webp','Pizza',949.00,1),(171,17,'Beef Deluxe Pizza (Large)','Tender beef strips, green peppers, onions, mushrooms, and black olives on a tomato sauce base.','6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Beef-Deluxe800x550_variant_0-2023-02-07082840.webp','Pizza',1499.00,1),(172,17,'Italiano Pizza (Small)','Ham, salami, pepperoni, and Italian sausage on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-italiano800x550_variant_0-2023-02-02151455.webp','Pizza',599.00,1),(173,17,'Italiano Pizza (Medium)','Ham, salami, pepperoni, and Italian sausage on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-italiano800x550_variant_0-2023-02-02151455.webp','Pizza',949.00,1),(174,17,'Italiano Pizza (Large)','Ham, salami, pepperoni, and Italian sausage on a tomato sauce base.','5979c140-a30c-11ed-95b9-9d812326bef5-italiano800x550_variant_0-2023-02-02151455.webp','Pizza',1499.00,1),(175,17,'Tex Mex Pizza (Small)','Spicy Tex-Mex chicken, a zesty blend of onions, green peppers, and jalapenos, topped with black olives for a fiesta of flavors on a tomato sauce base.','6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Tex-Mex800x550_variant_0-2023-02-07082840.webp','Pizza',599.00,1),(176,17,'Tex Mex Pizza (Medium)','Spicy Tex-Mex chicken, a zesty blend of onions, green peppers, and jalapenos, topped with black olives for a fiesta of flavors on a tomato sauce base.','6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Tex-Mex800x550_variant_0-2023-02-07082840.webp','Pizza',949.00,1),(177,17,'Tex Mex Pizza (Large)','Spicy Tex-Mex chicken, a zesty blend of onions, green peppers, and jalapenos, topped with black olives for a fiesta of flavors on a tomato sauce base.','6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Tex-Mex800x550_variant_0-2023-02-07082840.webp','Pizza',1499.00,1),(178,17,'Legend Ranch Pizza (Small)','Tangy BBQ sauce base topped with tender chicken, bacon, red onions, and a creamy ranch drizzle for a legendary combination.','5979c140-a30c-11ed-95b9-9d812326bef5-Legend-Ranch800x550_variant_0-2023-02-02151455.webp','Pizza',599.00,1),(179,17,'Legend Ranch Pizza (Medium)','Tangy BBQ sauce base topped with tender chicken, bacon, red onions, and a creamy ranch drizzle for a legendary combination.','5979c140-a30c-11ed-95b9-9d812326bef5-Legend-Ranch800x550_variant_0-2023-02-02151455.webp','Pizza',949.00,1),(180,17,'Legend Ranch Pizza (Large)','Tangy BBQ sauce base topped with tender chicken, bacon, red onions, and a creamy ranch drizzle for a legendary combination.','5979c140-a30c-11ed-95b9-9d812326bef5-Legend-Ranch800x550_variant_0-2023-02-02151455.webp','Pizza',1499.00,1),(181,16,'Krunch Burger','Crispy chicken fillet in a soft bun with spicy mayo and lettuce.','43a9fb50-ffaa-11ed-8180-812e571998fe-krunch_variant_0-2023-05-31115706.png','Burger',220.00,1),(182,16,'Zinger Burger','Spicy chicken with lettuce in a sesame seed bun.','6249b820-0513-11ee-9e45-cb0ed000d4a6-Zinger_variant_0-2023-06-07091210.png','Burger',250.00,1),(183,16,'Mighty Zinger Burger','Two Zinger fillets with spicy mayo, cheese, and lettuce.','33685b40-0461-11ee-911c-497570899609-Mighty_variant_0-2023-06-06115641.png','Burger',300.00,1),(184,16,'Zinger Stacker','Double krunch fillet, jalapenos, spicy mayo, lettuce and cheese with Vietnamese sauce.','33685b40-0461-11ee-911c-497570899609-Stacker_variant_0-2023-06-06115641.png','Burger',320.00,1),(185,16,'Kentucky Burger','Zinger fillet layered with beef pepperoni, crispy fried onions, cheese and smokey BBQ sauce.','332ab600-0461-11ee-8f91-addd12cf7fa1-Kentucky_variant_0-2023-06-06115641.png','Burger',350.00,1),(186,16,'Hot & Crispy Chicken (Piece)','Crispy and juicy chicken piece in Original Recipe, Zinger, or Hot Wings flavor.','43aa4970-ffaa-11ed-9c55-3705f003c528-3pc-Chikcen_variant_0-2023-05-31115706.png','Fried Chicken',120.00,1),(187,16,'Hot & Crispy Chicken (Bucket)','10 pieces of Hot & Crispy chicken in Original Recipe, Zinger, or Hot Wings flavor.','43a95f10-ffaa-11ed-b673-4121381f04c6-value-Bucket-2023-05-31115706.png','Fried Chicken',500.00,1),(188,16,'Boneless Strips (Original Recipe)','Tender chicken strips in Original Recipe coating.','4e9ce970-05c0-11ee-b3d4-cde32594fefb-Snack-Bucket-2023-06-08055000.png','Fried Chicken',180.00,1),(189,16,'Boneless Strips (Zinger)','Tender chicken strips in spicy Zinger coating.','4e9ce970-05c0-11ee-b3d4-cde32594fefb-Snack-Bucket-2023-06-08055000.png','Fried Chicken',200.00,1),(190,16,'Twister','Tender boneless strips, black pepper mayo, diced tomatoes, and lettuce wrapped in a tortilla.','337af8e0-0461-11ee-a89a-612c84c58a93-twister_variant_0-2023-06-06115641.png','Fried Chicken',160.00,1),(191,14,'Omelette McMuffin Meal','A warm, fluffy McMuffin with a savory omelette and cheese.','Omelette-McMufﬁn-178x178.png','Breakfast',299.00,1),(192,14,'Chicken Sausage McMuffin w/Egg Meal','A classic breakfast sandwich with a savory sausage patty, a slice of cheese, and egg on a toasted English muffin.','Chicken-Sausage-McMufﬁnTM-with-Egg-1-178x178.png','Breakfast',225.00,1),(193,14,'Chicken Sausage McMuffin Meal','A classic breakfast sandwich with a savory sausage patty and a slice of cheese on a toasted English muffin.','Chicken-Sausage-McMufﬁnTM-1-178x178.png','Breakfast',210.00,1),(194,14,'Egg McMuffin Meal','A simple and satisfying breakfast sandwich with egg, cheese, and Canadian bacon on a toasted English muffin.','Egg-McMufﬁnTM-2-178x178.png','Breakfast',220.00,1),(195,14,'Chicken Muffin Meal','A simple and satisfying breakfast sandwich with a piece of chicken with iceberg lettuce on a toasted English muffin.','Chicken-Muffin-3-178x178.png','Breakfast',195.00,1),(196,14,'Egg & Cheese McMuffin Meal','A simple and satisfying breakfast sandwich with egg and cheese on a toasted English muffin.','Egg-n-Cheese-McMufﬁnTM-2-178x178.png','Breakfast',240.00,1),(197,14,'Hot Cakes','Three fluffy hotcakes served with a side of butter and maple syrup.','Hot-Cakes-1-178x178.png','Breakfast',159.00,1),(198,14,'Big Breakfast','Two fluffy scrambled eggs, savory chicken sausage, a crispy golden hash brown, and hot toasted English muffin.','Big-Breakfast-2-178x178.png','Breakfast',349.00,1),(199,14,'Egg N\' Sausage Wrap','Scrambled eggs and savory sausage patty wrapped in a warm tortilla with melty cheese.','Egg-N-Sausage-178x178.png','Breakfast',259.00,1),(200,14,'Egg N\' Hashbrowns Wrap','Scrambled eggs and a crispy golden hash brown wrapped in a warm tortilla with melty cheese.','Egg-Mash-178x178.png','Breakfast',239.00,1),(201,14,'Omelette N\' Tomato Wrap','A fluffy omelette with fresh tomato slices and melty cheese wrapped in a warm tortilla.','Omelette-N-Tomato-178x178.png','Breakfast',249.00,1),(202,14,'Big Mac','Two 100% beef patties, special sauce, lettuce, cheese, pickles, onions on a sesame seed bun.','01-Bigmac-178x178.png','Burger',465.00,1),(203,14,'McRoyale','A quarter pound* of 100% flame-grilled beef, a slice of melty cheese, onions, pickles, and a zesty sauce on a sesame seed bun.','02-McRoyale-178x178.png','Burger',459.00,1),(204,14,'Double Cheese Burger','Two 100% beef patties, two slices of melty cheese, tangy pickles, minced onions, ketchup, and mustard on a soft, toasted bun.','04-Double-Cheese-Burger-178x178.png','Burger',358.00,1),(205,14,'Cheese Burger','A 100% beef patty, a slice of melty cheese, tangy pickles, minced onions, ketchup, and mustard on a soft, toasted bun.','05-Cheese-Burger-178x178.png','Burger',259.00,1),(206,14,'Quarter Pounder with Cheese','A quarter pound* of 100% beef, two slices of melty cheese, slivered onions, and tangy pickles on a sesame seed bun.','010-QTR-Pounder-with-cheese-178x178.png','Burger',440.00,1),(207,14,' Happy Meal Cheese Burger	','A savory 100% beef patty with cheese, pickle, and ketchup on a soft bun.','cheese-burger-1-178x178.png','Burger',209.00,1),(208,14,'Hot N\' Crispy','A crispy chicken patty with a spicy kick, topped with lettuce, mayo, and cheese on a toasted bun.','Hot-N-Crispy-1-178x178.png','Burger',349.00,1),(209,14,'McChicken','A juicy chicken patty served with mayo and lettuce on a soft, toasted bun.','03-McChicken-178x178.png','Burger',279.00,1),(210,14,'Spicy McCrispy','A crispy chicken patty with a spicy mayo sauce, lettuce, and cheese on a toasted bun.','06-McCrispy-178x178.png','Burger',349.00,1),(211,14,'Spicy Chicken Burger','A savory chicken patty seasoned with a spicy blend, topped with lettuce, mayo, and cheese on a toasted bun.','07-Spicy-chicken-Burger-178x178.png','Burger',299.00,1),(212,14,'Filet-o-Fish','A crispy fish fillet topped with tangy tartar sauce on a toasted bun.','011-Fof-178x178.png','Burger',329.00,1),(213,14,'McArabia','Marinated grilled chicken, creamy garlic mayo, chopped onions, and crunchy lettuce wrapped in a warm Arabic flatbread.','012-McArabia-178x178.png','Breakfast',349.00,1),(214,14,'Chicken Mac','Marinated grilled chicken breast strips tossed in creamy cheese sauce and served on a bed of fluffy rice with a side of tortilla chips.','chicken-mac-178x178.png','Burger',369.00,1),(215,14,'Mini McArabia','Marinated grilled chicken, creamy garlic mayo, chopped onions, and crunchy lettuce wrapped in a warm Arabic flatbread.','013-Mini-McArabia-178x178.png','Breakfast',249.00,1),(216,14,'Hamburger Happy Meal','A classic 100% beef patty with cheese, pickle, and ketchup on a soft bun, with fries, apple slices, and a choice of beverage.','Beef-Burger-178x178.png','Burger',347.00,1),(217,14,'Cheeseburger Happy Meal','A savory 100% beef patty with cheese, pickle, and ketchup on a soft bun, with fries, apple slices, and a choice of beverage.','cheese-burger-1-178x178 (1).png','Burger',191.00,1),(218,14,'Chicken Burger Happy Meal','A juicy chicken patty with cheese, lettuce, and mayo on a soft bun, with fries, apple slices, and a choice of beverage.','Chicken-Burger-1-178x178.png','Burger',191.00,1),(219,14,'Chicken McNuggets Happy Meal','Four pieces of bite-sized, crispy chicken nuggets, with fries, apple slices, and a choice of beverage.','Nuggets-178x178.png','Fried Chicken',191.00,1),(220,14,'2 Pieces Crispy Chicken','Two pieces of our juicy, crispy chicken, perfect for on-the-go snacking.','17-2Pcs-BIC-178x178.png','Fried Chicken',191.00,1),(221,14,'3 Pieces Crispy Chicken','Three pieces of our juicy, crispy chicken, ideal for sharing or satisfying a bigger appetite.','16-3pcs-BIC-178x178.png','Fried Chicken',249.00,1),(222,14,'10 Pieces Crispy Chicken','Ten pieces of our juicy, crispy chicken, a feast for yourself or your friends.','014-2pcs-BIC.png','Fried Chicken',191.00,1),(223,14,'Double McChicken Meal','Two McChicken sandwiches, regular fries, and a medium drink.','04-Double-McChicken-178x178.png','Burger',191.00,1),(224,14,'Double Spicy McCrispy Meal','Two Spicy McCrispy sandwiches, regular fries, and a medium drink.','06-Double-McCrispy-178x178.png','Burger',191.00,1),(225,14,'Double Quarter Pounder Meal','Two Quarter Pounder with Cheese sandwiches, regular fries, and a medium drink.','07-Double-QTR-Pounder-178x178.png','Burger',191.00,1),(226,14,'Double Filet-o-Fish Meal','Two Filet-o-Fish sandwiches, regular fries, and a medium drink.','08-Double-FOF-178x178.png','Burger',191.00,1),(227,14,'9 Pieces Chicken McNuggets Meal','Nine pieces of Chicken McNuggets, regular fries, and a medium drink.','18-9Pcs-Nuggets-178x178.png','Fried Chicken',191.00,1),(228,14,'6 Pieces Chicken McNuggets Meal','Six pieces of Chicken McNuggets, regular fries, and a medium drink.','19-6Pcs-NUggets-178x178.png','Fried Chicken',191.00,1),(229,14,'Spicy Chicken Burger with Cheese Meal','A Spicy Chicken Burger with Cheese, regular fries, and a small drink.','mcd-bigbreakfast-uae-new-178x178.png','Burger',191.00,1),(230,14,'Chocolate Sundae','A classic sundae with creamy vanilla soft serve ice cream topped with rich chocolate sauce.','Hot-Fudge-Sundae-178x178.png','Ice Cream',191.00,1),(231,14,'Hot Fudge Sundae','A classic sundae with creamy vanilla soft serve ice cream topped with warm hot fudge sauce.','Hot-Fudge-Sundae-178x178.png','Ice Cream',191.00,1),(232,14,'Strawberry Sundae','A refreshing sundae with creamy vanilla soft serve ice cream topped with sweet strawberry sauce.','Strawberry-Sundae-178x178.png','Ice Cream',191.00,1),(233,14,'McFlurry with Oreo','Vanilla soft serve ice cream blended with Oreo cookie pieces and topped with whipped cream.','Oreo-McFlurry-178x178.png','Ice Cream',191.00,1),(234,14,'McFlurry with M&M\'s','Vanilla soft serve ice cream blended with colorful M&M\'s candies and topped with whipped cream.','cate-thumb-640-McFlurry-MM-Minis.png','Ice Cream',191.00,1),(235,14,'McFlurry Fudge Brownie','Vanilla soft serve ice cream blended with fudge brownies.','mcflurry-fudge-brownie-178x178.png','Ice Cream',191.00,1),(236,14,'McFlurry Caramel Brownie','Vanilla soft serve ice cream blended with caramel and fudge brownies.','mcflurrycaramel-Brownie-178x178.png','Ice Cream',191.00,1),(237,14,'Chocolate Shake','A thick and creamy chocolate milkshake made with real milk and ice cream.','Chocolate-Shake-1-178x178.png','Drinks',191.00,1),(238,14,'Strawberry Shake','A refreshing strawberry milkshake made with real milk and ice cream.','Strawberry-Shake-2-178x178.png','Drinks',191.00,1),(239,14,'Vanilla Cone','A crisp and creamy vanilla soft serve ice cream cone in a classic waffle cone.','Vanilla-Cone-1-178x178.png','Ice Cream',191.00,1),(240,14,'Choco Cone','A crisp and creamy vanilla soft serve ice cream cone topped with rich chocolate in a classic waffle cone.','Choco-Cone-1-178x178.png','Ice Cream',191.00,1),(241,14,'Chocolate Chip Cookie','A warm and chewy chocolate chip cookie perfect for a sweet treat.','Double-Chocolate-178x178.png','Desserts',191.00,1),(242,14,'Coca-Cola','A classic carbonated beverage with the refreshing taste of Coca-Cola.','Coke-1-178x178.png','Drinks',191.00,1),(243,14,'Diet Coke','The sugar-free version of Coca-Cola, for those seeking a refreshing taste without the calories.','Coke-Zero-1-178x178.png','Drinks',191.00,1),(244,14,'Sprite','A clear, lemon-lime flavored soda with a crisp and refreshing taste.','Sprite-1-178x178.png','Drinks',191.00,1),(245,14,'Fanta Orange','A bubbly orange soda with a sweet and tangy citrus flavor.','Fanta-1-178x178.png','Drinks',191.00,1),(246,14,'Minute Maid Orange Juice','100% pure orange juice for a healthy and delicious drink.','Juice-178x178.png','Drinks',191.00,1),(247,14,'Latte (Hot/Iced)','Espresso and steamed milk, available in hot or iced options.','Latte-2-178x178.png','Drinks',191.00,1),(248,14,'Cappuccino (Hot/Iced)','Espresso, steamed milk, and foamed milk, available in hot or iced options.','Cappuccino-2-178x178.png','Drinks',191.00,1),(249,14,'Mochaccino (Hot/Iced)','Espresso, steamed milk, and chocolate syrup, available in hot or iced options.','Mocha-1-178x178.png','Drinks',191.00,1),(250,14,'Americano','Espresso diluted with hot water for a stronger coffee taste.','americano-178x178.png','Drinks',191.00,1),(251,14,'Espresso','A concentrated shot of coffee for a quick and intense caffeine boost.','Espresso-1-178x178.png','Drinks',191.00,1),(252,14,'Caramel Macchiato','Espresso, steamed milk, vanilla syrup, and caramel drizzle.','Caramel-Iced-Latte-178x178.png','Drinks',191.00,1),(253,14,'Vanilla Latte','Latte with added vanilla syrup for a sweet and creamy flavor.','Vanilla-Frappe-178x178 (1).png','Drinks',191.00,0),(254,14,'Hazelnut Iced Latte','Iced Latte with added hazelnut syrup for a nutty and warm flavor.','Hazlenut-Iced-Latte.png','Drinks',191.00,1),(255,14,'Caramel Frappuccino Blended Coffee','Blended coffee with caramel syrup, milk, and ice.','caramel-frappe-178x178.png','Drinks',191.00,1),(256,14,'Chocolate Frappuccino Blended Coffee','Blended coffee with chocolate syrup, milk, and ice.','Chocolate-Frappe-178x178.png','Drinks',191.00,1),(257,14,'Mocha Frappuccino Blended Coffee','Blended coffee with mocha sauce, milk, and ice.','Mocha-Frappe-178x178.png','Drinks',191.00,1),(258,14,'Vanilla Frappuccino Blended Coffee','Blended coffee with vanilla syrup, milk, and ice.','Vanilla-Frappe-178x178.png','Drinks',191.00,1),(259,14,'Chocolate Frappuccino Blended Creme','Blended creme with chocolate syrup, milk, and ice.','Chocolate-Frappe-178x178.png','Drinks',191.00,1),(260,14,'Vanilla Frappuccino Blended Creme','Blended creme with vanilla syrup, milk, and ice.','Vanilla-Frappe-178x178.png','Drinks',191.00,1),(261,14,'Peach Iced Tea','A refreshing iced tea with a sweet and juicy peach flavor.','Peach-Iced-Tea-178x178.png','Drinks',191.00,1),(262,14,'Mango Iced Tea','A refreshing iced tea with a sweet and tangy mango flavor.','Mango-Iced-Tea-178x178.png','Drinks',191.00,1),(263,14,'Raspberry Iced Tea','A refreshing iced tea with a sweet and tart raspberry flavor.','Raspberry-Iced-Tea-178x178.png','Drinks',191.00,1),(264,14,'Lemon Iced Tea','A classic iced tea with a bright and refreshing lemon flavor.','Lemon-Iced-Tea-178x178.png','Drinks',191.00,1),(265,15,'Nihari (Single)','Slow-cooked stew of tender beef shank in a rich masala gravy, ideal for solo dining.','3593415.jpg','Pan Asian',150.00,1),(266,15,'Nihari (Half)','Double the portion of our savory Nihari stew, ideal for sharing or a hearty appetite.','3593415.jpg','Pan Asian',250.00,1),(267,15,'Beef Dhaga Kabab','Minced beef skewers flavored with spices and grilled to perfection, a juicy and flavorful choice.','11366571.jpg','Pan Asian',180.00,1),(268,15,'Beef Fry Kabab','Tender beef cubes marinated in spices and pan-fried for a crispy exterior and savory interior.','11366635.jpg','Pan Asian',200.00,1),(269,15,'Puri Paratha','Flaky and crispy flatbread, perfect for scooping up your favorite BBQ dishes.','7595948.jpg','Roti/Tandoor',20.00,1),(270,15,'Kheer','Traditional rice pudding infused with cardamom and almonds, a sweet and creamy finale to your meal.',' vecteezy_badami-kheer-in-a-ceramic-bowl-ai-generated_24490767.png','Deserts',80.00,1),(271,15,'Cold Drink','Choice of your favorite soft drink, refreshing accompaniment to your meal.',' Coke-1-178x178.png','Drinks',50.00,1),(272,15,'Barbeque Karahi (Full)','A large clay pot dish filled with slow-cooked tender chicken or lamb pieces in a rich, spice-infused tomato and yogurt gravy. Typically shared between 2-3 people.','pngegg.png','Pan Asian',500.00,1),(273,15,'Barbeque Brain Karahi','A spicy and flavorful twist on the traditional Karahi, featuring tender pieces of brain along with meat, cooked in a similar spiced tomato-based gravy.','pngegg.png','Pan Asian',450.00,1),(274,15,'Beef Boti','Tender beef cubes marinated in spices and yogurt, grilled on skewers until juicy and flavorful.','3593421.jpg','Pan Asian',220.00,1),(275,15,'Beef Kheri','A thick and rich stew made with slow-cooked bone marrow, beef chunks, and spices, ideal for a hearty meal.','4690517.jpg','Pan Asian',300.00,1),(276,15,'Chicken Spicy Boti','Grilled chicken skewers marinated in a fiery spice blend, offering a kick for those who love heat.','16119855.jpg','Pan Asian',250.00,1),(277,15,'Chicken Tikka (Chest)','Boneless chicken breast pieces marinated in yogurt and spices, grilled or tandoori-cooked for a smoky and slightly charred flavor.','16119852.jpg','Pan Asian',180.00,1),(278,15,'Chicken Tikka (Leg)','Boneless chicken leg pieces marinated in yogurt and spices, grilled or tandoori-cooked for a smoky and slightly charred flavor.','16119852.jpg','Pan Asian',160.00,1),(279,15,'Chicken Behari Tikka (4 pcs)','Minced chicken patties mixed with aromatic spices and grilled, served in sets of 4 pieces.','16119852.jpg','Pan Asian',200.00,1),(280,15,'Chicken Behari Tikka (8 pcs)','Minced chicken patties mixed with aromatic spices and grilled, served in sets of 8 pieces.','16119852.jpg','Pan Asian',350.00,1),(281,15,'Naan','Fluffy and soft flatbread, traditionally baked in a tandoor oven, perfect for scooping up curries and stews.','3593535.jpg','Roti/Tandoor',30.00,1),(282,15,'Chapati','Thin and unleavened flatbread, cooked on a griddle, a versatile accompaniment to any meal.','7595950.jpg','Roti/Tandoor',20.00,1),(283,14,'w','www','ww','ww',191.00,0),(284,14,'wee','www','ww','ww',191.00,0),(285,14,'ew','ewewe','ewe','ewee',191.00,0),(286,14,'www','www','ww','www',191.00,0),(287,14,'22333tt','fdfa','fr','burger',191.00,0),(288,15,'ee','eee','323fdf','fd',424.00,0),(289,15,'biryani','khale bhia','fff','dd',23.00,1),(290,14,'biryani','yes achi','biryanii.jpg','pan asian',250.00,0),(291,14,'biryani','karachi best','biryani.jpg','desi',150.00,0),(292,14,'aloo','khayega','alo.jpg','sabzi',12.00,0),(293,16,'tet','te','43','43',34.00,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `SellerID` int NOT NULL AUTO_INCREMENT,
  `BusinessName` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `StoreName` varchar(255) DEFAULT NULL,
  `NTN` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Revenue` decimal(10,2) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SellerID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Phone` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (14,'McDonald\'s','mcdonals@gmail.com','McDonald\'s Jauhar','123456','021121212',239242.00,'$2a$10$u5wGlDNd/usQZSrCe0lHE.92pPqiHGB07aD2Td3G37CUQyg34lzYe'),(15,'Waheed\'s Kabab House','waheed@gmail.com','Waheed Kabab House Gulshan','322223','02123344',124474.00,'$2a$10$jacGcUEZkbvS4Fv0GyjWiOFbonvTXO0hX5fGjPhsVAR7DJQBt.2Gy'),(16,'KFC','kfc@gmail.com','KFC Gulshan','23232','021344444',237785.00,'$2a$10$iF0uIhgBvfcg03LNNKhUD.48Bi8i8MA50jPh75J3hnWpKY16TmoGW'),(17,'Domino\'s','dominos@gmail.com','Domino\'s Gulshan','323233','0213444432',154505.00,'$2a$10$uxvGHL5ZZQ7sLI6hH0wDP.VZbw3OtX9tEuLLkyUvylmLrjT94Pj5O');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'foodstop'
--

--
-- Dumping routines for database 'foodstop'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddToCart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddToCart`(
	IN p_custID INT,
    IN p_productID INT
 
)
BEGIN
	DECLARE quantity INT DEFAULT 1;
    
    INSERT INTO cart(CustomerID, ProductID, Quantity) VALUES (p_custID, p_productID, quantity);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteProduct`(in seller_id int, in product_id int)
BEGIN
	update product set STATUS = FALSE WHERE ProductID = product_id and SellerID = seller_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `EditPrice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `EditPrice`(in product_id int, in productPrice DECIMAL (10,2))
BEGIN
	UPDATE product SET Price = productPrice WHERE ProductID = product_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllSellerOrders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllSellerOrders`(IN seller_id INT)
BEGIN
    -- Get orders for the specified seller
    SELECT
        o.OrderID,
        o.TotalAmount,
        o.OrderDate,
        o.Payment_Method,
        o.OrderStatus,
        c.Address AS CustomerAddress
    FROM
        orders o
    JOIN
        customer c ON o.CustomerID = c.CustomerID
    JOIN
        orderdetail od ON o.OrderID = od.OrderID
    JOIN
        product p ON od.ProductID = p.ProductID
    WHERE
        p.SellerID = seller_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCartByCustomerID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCartByCustomerID`(
    IN p_custID INT
)
BEGIN
    -- Create a temporary table to store results
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_result (
        ProductID INT,
        ProductTitle VARCHAR(255),
        Quantity INT,
        ProductPrice DECIMAL(10, 2),
        Images VARCHAR(255)
    );
    
    -- Insert product details into temporary table
    INSERT INTO temp_result (ProductID, ProductTitle, Quantity, ProductPrice, Images)
    SELECT p.ProductID, p.Title, c.Quantity, p.Price, p.Images
    FROM product p
    JOIN cart c ON p.ProductID = c.ProductID
    WHERE c.CustomerID = p_custID;

    -- Select the final result
    SELECT * FROM temp_result;

    -- Drop the temporary table
    DROP TEMPORARY TABLE IF EXISTS temp_result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetCustomerByEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCustomerByEmail`(IN email_param VARCHAR(255))
BEGIN
    SELECT CustomerID, FName, LName, Email, Phoneno, Address, Coins, Password
    FROM customer
    WHERE Email = email_param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductByCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductByCategory`(
	IN p_category VARCHAR(255)
)
BEGIN
	SELECT * FROM product WHERE category = p_category AND STATUS = TRUE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetProductsBySeller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetProductsBySeller`(in seller_id int)
BEGIN
	SELECT * FROM product WHERE SellerID = seller_id AND STATUS = TRUE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSellerByEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSellerByEmail`(IN email_param VARCHAR(255))
BEGIN
    SELECT SellerID, BusinessName, Email, StoreName, NTN, Phone,Revenue, Password
    FROM seller
    WHERE Email = email_param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HighestRevenueHotProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `HighestRevenueHotProducts`()
BEGIN
	SELECT p.ProductID, p.Title, p.ProductDescription, p.Images, p.Category, p.Price, SUM(p.Price * o.Quantity)  as revenue from
    product p JOIN orderdetail o on p.ProductID = o.productID WHERE p.STATUS = True GROUP BY p.ProductID order by revenue DESC LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertProducts`(
    IN seller_id int,
    in product_title varchar(255),
    in product_description text,
    in images varchar(255),
    in category varchar(255),
    in price decimal(10,2)
)
BEGIN
	INSERT INTO product(SellerID, Title, ProductDescription, Images, Category, Price) VALUES(seller_id,
    product_title, product_description, images, category, price);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PlaceOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PlaceOrder`(
  IN custID INT,
    IN payment_method VARCHAR(255)
)
BEGIN
    DECLARE total_price DECIMAL(10, 2);
    DECLARE order_date DATE DEFAULT NOW();
    DECLARE order_status VARCHAR(255) DEFAULT 'Placed';
    DECLARE new_order_id INT;

    -- Start the transaction
    START TRANSACTION;

    -- Calculate the total price
    SELECT SUM(p.Price * c.Quantity) INTO total_price
    FROM cart c
    JOIN product p ON c.ProductID = p.ProductID
    WHERE c.CustomerID = custID;

    -- Insert the order
    INSERT INTO orders(CustomerID, TotalAmount, OrderDate, Payment_Method, OrderStatus)
    VALUES (custID, total_price, order_date, payment_method, order_status);
    
    -- Retrieve the auto-incremented order ID
    SET new_order_id = LAST_INSERT_ID();

    -- Insert into orderdetail with the new OrderID
    INSERT INTO orderdetail(OrderID, ProductID, Quantity, Subtotal)
    SELECT
        new_order_id,
        c.ProductID,
        c.Quantity,
        p.Price * c.Quantity AS Subtotal
    FROM cart c
    JOIN product p ON c.ProductID = p.ProductID
    WHERE c.CustomerID = custID;

	-- Update seller's revenue
    UPDATE seller s
    JOIN product p ON s.SellerID = p.SellerID
    JOIN cart c ON p.ProductID = c.ProductID
    SET s.Revenue = s.Revenue + (p.Price * c.Quantity)
    WHERE c.CustomerID = custID;
    
	DELETE FROM cart WHERE CustomerID = custID;
	
    -- Commit the transaction
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RegisterCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegisterCustomer`(
    IN p_FName VARCHAR(255),
    IN p_LName VARCHAR(255),
    IN p_Email VARCHAR(255),
    IN p_Phoneno VARCHAR(255),
    IN p_Address VARCHAR(255),
    IN p_Password VARCHAR(255)
)
BEGIN
    -- If Coins is not provided, set it to zero by default
    DECLARE Coins INT DEFAULT 0;

    INSERT INTO customer (FName, LName, Email, Phoneno, Address, Coins, Password)
    VALUES (p_FName, p_LName, p_Email, p_Phoneno, p_Address, Coins, p_Password);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RegisterSeller` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegisterSeller`(
    IN p_BusinessName VARCHAR(255),
    IN p_StoreName VARCHAR(255),
    IN p_Email VARCHAR(255),
    IN p_Phone VARCHAR(255),
    IN p_NTN VARCHAR(255),
    IN p_Password VARCHAR(255)
)
BEGIN
    -- If Coins is not provided, set it to zero by default
    DECLARE Revenue INT DEFAULT 0;

    INSERT INTO seller (BusinessName, StoreName, Email, Phone, NTN, Revenue, Password)
    VALUES (p_BusinessName, p_StoreName, p_Email, p_Phone, p_NTN, Revenue, p_Password);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchProductsByKeyword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchProductsByKeyword`(IN keyword VARCHAR(255))
BEGIN
      SELECT * FROM product WHERE Title LIKE CONCAT('%', keyword, '%') AND STATUS = TRUE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShowSellerOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowSellerOrder`(in seller_id int)
BEGIN
	select count(*) as order_count from orderdetail where orderdetail.ProductID in (SELECT ProductID from product WHERE product.SellerID = seller_id and product.STATUS = TRUE);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShowSellerProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowSellerProduct`(in seller_id int)
BEGIN
	SELECT COUNT(*) as product_count FROM product WHERE SellerID = seller_id AND STATUS = TRUE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ShowSellerRevenue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowSellerRevenue`(in seller_id int)
BEGIN
	SELECT Revenue from seller WHERE SellerID = seller_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SimpleHotProducts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SimpleHotProducts`()
BEGIN
	SELECT *
FROM product
ORDER BY Price ASC
LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateCart` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateCart`(
    IN quantity INT,
    IN product_id INT,
    IN cust_id INT
)
BEGIN
    IF quantity = 0 THEN
        -- If quantity is zero, delete the row
        DELETE FROM cart WHERE ProductID = product_id AND CustomerID = cust_id;
    ELSE
        -- If quantity is not zero, update the quantity
        UPDATE cart SET Quantity = quantity WHERE ProductID = product_id AND CustomerID = cust_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-03 14:13:42

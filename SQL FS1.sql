CREATE DATABASE  IF NOT EXISTS `foodstop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `foodstop`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: foodstop
-- ------------------------------------------------------
-- Server version	8.2.0

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Asad','Shahab','asad@abc.com',NULL,'03308242424',0,'$2a$10$Qc8F.JJItvjeYWu.2ciyfehuMk6AfeUL7HjIAp4jWcdYMwtGFyQTK'),(2,'Asad','Shahab','asad@abc.com','03308242424','abcdsds',0,'$2a$10$WXYQthkgnfnxRr9s6rSTF.MtbF/y9nEooskkc4I9BPUU33GW6wyuy'),(13,'Asad','Shahab','asad@abc.com','0330823232','Khipcha 108',0,'$2a$10$3Xsvxf6i2aSb/UlLOMnwGud7bMKfinX/aMkwSA4JaBfbQKEyN.vgq'),(31,'Asad','Shahab','asad1@abc.com','03308242423','Khipcha 108',0,'$2a$10$MFMeobZXcmxXZEUKaxg1UOHZHJ9v7UnkPVgq/31nblsQoyblzkTO2'),(32,NULL,NULL,'asad@abcd.com',NULL,NULL,0,'$2a$10$NWQjL7U2B9vCoDGu.7dUD.w0pflUR8s..K9WKAH.9nLvfl9OTYRYy');
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
  PRIMARY KEY (`OrderID`),
  KEY `productorder_idx` (`ProductID`),
  CONSTRAINT `productorder` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
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
  PRIMARY KEY (`ProductID`),
  KEY `sellerproduct_idx` (`SellerID`),
  CONSTRAINT `sellerproduct` FOREIGN KEY (`SellerID`) REFERENCES `seller` (`SellerID`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'Omelette McMuffin Meal','A warm, fluffy McMuffin with a savory omelette and cheese.','Pics for webOmelette-McMufﬁn-178x178.png','Breakfast',299.00),(2,1,'Chicken Sausage McMuffin w/Egg Meal','A classic breakfast sandwich with a savory sausage patty, a slice of cheese, and egg on a toasted English muffin.','Pics for webChicken-Sausage-McMufﬁnTM-with-Egg-1-178x178.png','Breakfast',225.00),(3,1,'Chicken Sausage McMuffin Meal','A classic breakfast sandwich with a savory sausage patty and a slice of cheese on a toasted English muffin.','Pics for webChicken-Sausage-McMufﬁnTM-1-178x178.png','Breakfast',210.00),(4,1,'Egg McMuffin Meal','A simple and satisfying breakfast sandwich with egg, cheese, and Canadian bacon on a toasted English muffin.','Pics for webEgg-McMufﬁnTM-2-178x178.png','Breakfast',195.00),(5,1,'Chicken Muffin Meal','A simple and satisfying breakfast sandwich with a piece of chicken with iceberg lettuce on a toasted English muffin.','Pics for webChicken-Muffin-3-178x178.png','Breakfast',195.00),(6,1,'Egg & Cheese McMuffin Meal','A simple and satisfying breakfast sandwich with egg and cheese on a toasted English muffin.','Pics for webEgg-n-Cheese-McMufﬁnTM-2-178x178.png','Breakfast',220.00),(7,1,'Hot Cakes','Three fluffy hotcakes served with a side of butter and maple syrup.','Pics for webHot-Cakes-1-178x178.png','Breakfast',159.00),(8,1,'Big Breakfast','Two fluffy scrambled eggs, savory chicken sausage, a crispy golden hash brown, and hot toasted English muffin.','Pics for webBig-Breakfast-2-178x178.png','Breakfast',349.00),(9,1,'Egg N\' Sausage Wrap','Scrambled eggs and savory sausage patty wrapped in a warm tortilla with melty cheese.',' Pics for webEgg-N-Sausage-178x178.png','Breakfast',259.00),(10,1,'Egg N\' Hashbrowns Wrap','Scrambled eggs and a crispy golden hash brown wrapped in a warm tortilla with melty cheese.',' Pics for webEgg-Mash-178x178.png','Breakfast',239.00),(11,1,'Omelette N\' Tomato Wrap','A fluffy omelette with fresh tomato slices and melty cheese wrapped in a warm tortilla.','Pics for webOmelette-N-Tomato-178x178.png','Breakfast',249.00),(12,1,'Big Mac','Two 100% beef patties, special sauce, lettuce, cheese, pickles, onions on a sesame seed bun.','Pics for web\01-Bigmac-178x178.png','Burger',465.00),(13,1,'McRoyale','A quarter pound* of 100% flame-grilled beef, a slice of melty cheese, onions, pickles, and a zesty sauce on a sesame seed bun.','Pics for web\02-McRoyale-178x178.png','Burger',459.00),(14,1,'Double Cheese Burger','Two 100% beef patties, two slices of melty cheese, tangy pickles, minced onions, ketchup, and mustard on a soft, toasted bun.','Pics for web\04-Double-Cheese-Burger-178x178.png','Burger',359.00),(15,1,'Cheese Burger','A 100% beef patty, a slice of melty cheese, tangy pickles, minced onions, ketchup, and mustard on a soft, toasted bun.','Pics for web\05-Cheese-Burger-178x178.png','Burger',259.00),(16,1,'Quarter Pounder with Cheese','A quarter pound* of 100% beef, two slices of melty cheese, slivered onions, and tangy pickles on a sesame seed bun.','Pics for web\010-QTR-Pounder-with-cheese-178x178.png','Burger',440.00),(17,1,' Happy Meal Cheese Burger	','A savory 100% beef patty with cheese, pickle, and ketchup on a soft bun.','Pics for webcheese-burger-1-178x178.png','Burger',209.00),(18,1,'Hot N\' Crispy','A crispy chicken patty with a spicy kick, topped with lettuce, mayo, and cheese on a toasted bun.','Pics for webHot-N-Crispy-1-178x178.png','Burger',349.00),(19,1,'McChicken','A juicy chicken patty served with mayo and lettuce on a soft, toasted bun.','Pics for web\03-McChicken-178x178.png','Burger',279.00),(20,1,'Spicy McCrispy','A crispy chicken patty with a spicy mayo sauce, lettuce, and cheese on a toasted bun.','Pics for web\06-McCrispy-178x178.png','Burger',349.00),(21,1,'Spicy Chicken Burger','A savory chicken patty seasoned with a spicy blend, topped with lettuce, mayo, and cheese on a toasted bun.','Pics for web\07-Spicy-chicken-Burger-178x178.png','Burger',299.00),(22,1,'Filet-o-Fish','A crispy fish fillet topped with tangy tartar sauce on a toasted bun.','Pics for web\011-Fof-178x178.png','Burger',329.00),(23,1,'McArabia','Marinated grilled chicken, creamy garlic mayo, chopped onions, and crunchy lettuce wrapped in a warm Arabic flatbread.','Pics for web\012-McArabia-178x178.png','Breakfast',349.00),(24,1,'Chicken Mac','Marinated grilled chicken breast strips tossed in creamy cheese sauce and served on a bed of fluffy rice with a side of tortilla chips.','Pics for webchicken-mac-178x178.png','Burger',369.00),(25,1,'Mini McArabia','Marinated grilled chicken, creamy garlic mayo, chopped onions, and crunchy lettuce wrapped in a warm Arabic flatbread.','Pics for web\013-Mini-McArabia-178x178.png','Breakfast',249.00),(26,1,'Hamburger Happy Meal','A classic 100% beef patty with cheese, pickle, and ketchup on a soft bun, with fries, apple slices, and a choice of beverage.','Pics for webBeef-Burger-178x178.png','Burger',249.00),(27,1,'Cheeseburger Happy Meal','A savory 100% beef patty with cheese, pickle, and ketchup on a soft bun, with fries, apple slices, and a choice of beverage.','Pics for webcheese-burger-1-178x178 (1).png','Burger',229.00),(28,1,'Chicken Burger Happy Meal','A juicy chicken patty with cheese, lettuce, and mayo on a soft bun, with fries, apple slices, and a choice of beverage.','Pics for webChicken-Burger-1-178x178.png','Burger',269.00),(29,1,'Chicken McNuggets Happy Meal','Four pieces of bite-sized, crispy chicken nuggets, with fries, apple slices, and a choice of beverage.','Pics for webNuggets-178x178.png','Fried Chicken',229.00),(30,1,'2 Pieces Crispy Chicken','Two pieces of our juicy, crispy chicken, perfect for on-the-go snacking.','Pics for web17-2Pcs-BIC-178x178.png','Fried Chicken',259.00),(31,1,'3 Pieces Crispy Chicken','Three pieces of our juicy, crispy chicken, ideal for sharing or satisfying a bigger appetite.','Pics for web16-3pcs-BIC-178x178.png','Fried Chicken',319.00),(32,1,'10 Pieces Crispy Chicken','Ten pieces of our juicy, crispy chicken, a feast for yourself or your friends.','Pics for web\014-2pcs-BIC.png','Fried Chicken',599.00),(33,1,'Double McChicken Meal','Two McChicken sandwiches, regular fries, and a medium drink.','Pics for web\04-Double-McChicken-178x178.png','Burger',419.00),(34,1,'Double Spicy McCrispy Meal','Two Spicy McCrispy sandwiches, regular fries, and a medium drink.','Pics for web\06-Double-McCrispy-178x178.png','Burger',489.00),(35,1,'Double Quarter Pounder Meal','Two Quarter Pounder with Cheese sandwiches, regular fries, and a medium drink.','Pics for web\07-Double-QTR-Pounder-178x178.png','Burger',699.00),(36,1,'Double Filet-o-Fish Meal','Two Filet-o-Fish sandwiches, regular fries, and a medium drink.','Pics for web\08-Double-FOF-178x178.png','Burger',559.00),(37,1,'9 Pieces Chicken McNuggets Meal','Nine pieces of Chicken McNuggets, regular fries, and a medium drink.','Pics for web18-9Pcs-Nuggets-178x178.png','Fried Chicken',359.00),(38,1,'6 Pieces Chicken McNuggets Meal','Six pieces of Chicken McNuggets, regular fries, and a medium drink.','Pics for web19-6Pcs-NUggets-178x178.png','Fried Chicken',309.00),(39,1,'Spicy Chicken Burger with Cheese Meal','A Spicy Chicken Burger with Cheese, regular fries, and a small drink.','Pics for webmcd-bigbreakfast-uae-new-178x178.png','Burger',329.00),(40,1,'Chocolate Sundae','A classic sundae with creamy vanilla soft serve ice cream topped with rich chocolate sauce.','C:UsersHomePCDesktopPics for webHot-Fudge-Sundae-178x178.png','Ice Cream',99.00),(41,1,'Hot Fudge Sundae','A classic sundae with creamy vanilla soft serve ice cream topped with warm hot fudge sauce.','C:UsersHomePCDesktopPics for webHot-Fudge-Sundae-178x178.png','Ice Cream',99.00),(42,1,'Strawberry Sundae','A refreshing sundae with creamy vanilla soft serve ice cream topped with sweet strawberry sauce.','C:UsersHomePCDesktopPics for webStrawberry-Sundae-178x178.png','Ice Cream',99.00),(43,1,'McFlurry with Oreo','Vanilla soft serve ice cream blended with Oreo cookie pieces and topped with whipped cream.','C:UsersHomePCDesktopPics for webOreo-McFlurry-178x178.png','Ice Cream',129.00),(44,1,'McFlurry with M&M\'s','Vanilla soft serve ice cream blended with colorful M&M\'s candies and topped with whipped cream.','C:UsersHomePCDesktopPics for webcate-thumb-640-McFlurry-MM-Minis.png','Ice Cream',129.00),(45,1,'McFlurry Fudge Brownie','Vanilla soft serve ice cream blended with fudge brownies.','C:UsersHomePCDesktopPics for webmcflurry-fudge-brownie-178x178.png','Ice Cream',129.00),(46,1,'McFlurry Caramel Brownie','Vanilla soft serve ice cream blended with caramel and fudge brownies.','C:UsersHomePCDesktopPics for webmcflurrycaramel-Brownie-178x178.png','Ice Cream',129.00),(47,1,'Chocolate Shake','A thick and creamy chocolate milkshake made with real milk and ice cream.','C:UsersHomePCDesktopPics for webChocolate-Shake-1-178x178.png','Drinks',109.00),(48,1,'Strawberry Shake','A refreshing strawberry milkshake made with real milk and ice cream.','C:UsersHomePCDesktopPics for webStrawberry-Shake-2-178x178.png','Drinks',109.00),(49,1,'Vanilla Cone','A crisp and creamy vanilla soft serve ice cream cone in a classic waffle cone.','C:UsersHomePCDesktopPics for webVanilla-Cone-1-178x178.png','Ice Cream',79.00),(50,1,'Choco Cone','A crisp and creamy vanilla soft serve ice cream cone topped with rich chocolate in a classic waffle cone.','C:UsersHomePCDesktopPics for webChoco-Cone-1-178x178.png','Ice Cream',89.00),(51,1,'Chocolate Chip Cookie','A warm and chewy chocolate chip cookie perfect for a sweet treat.','C:UsersHomePCDesktopPics for webDouble-Chocolate-178x178.png','Desserts',69.00),(52,1,'Coca-Cola','A classic carbonated beverage with the refreshing taste of Coca-Cola.','C:UsersHomePCDesktopPics for webCoke-1-178x178.png','Drinks',59.00),(53,1,'Diet Coke','The sugar-free version of Coca-Cola, for those seeking a refreshing taste without the calories.','C:UsersHomePCDesktopPics for webCoke-Zero-1-178x178.png','Drinks',59.00),(54,1,'Sprite','A clear, lemon-lime flavored soda with a crisp and refreshing taste.','C:UsersHomePCDesktopPics for webSprite-1-178x178.png','Drinks',59.00),(55,1,'Fanta Orange','A bubbly orange soda with a sweet and tangy citrus flavor.','C:UsersHomePCDesktopPics for webFanta-1-178x178.png','Drinks',59.00),(56,1,'Minute Maid Orange Juice','100% pure orange juice for a healthy and delicious drink.','C:UsersHomePCDesktopPics for webJuice-178x178.png','Drinks',69.00),(57,1,'Latte (Hot/Iced)','Espresso and steamed milk, available in hot or iced options.','C:UsersHomePCDesktopPics for webLatte-2-178x178.png','Drinks',129.00),(58,1,'Cappuccino (Hot/Iced)','Espresso, steamed milk, and foamed milk, available in hot or iced options.','C:UsersHomePCDesktopPics for webCappuccino-2-178x178.png','Drinks',139.00),(59,1,'Mochaccino (Hot/Iced)','Espresso, steamed milk, and chocolate syrup, available in hot or iced options.','C:UsersHomePCDesktopPics for webMocha-1-178x178.png','Drinks',139.00),(60,1,'Americano','Espresso diluted with hot water for a stronger coffee taste.','C:UsersHomePCDesktopPics for webamericano-178x178.png','Drinks',119.00),(61,1,'Espresso','A concentrated shot of coffee for a quick and intense caffeine boost.','C:UsersHomePCDesktopPics for webEspresso-1-178x178.png','Drinks',99.00),(62,1,'Caramel Macchiato','Espresso, steamed milk, vanilla syrup, and caramel drizzle.','C:UsersHomePCDesktopPics for webCaramel-Iced-Latte-178x178.png','Drinks',149.00),(63,1,'Vanilla Latte','Latte with added vanilla syrup for a sweet and creamy flavor.','C:UsersHomePCDesktopPics for webVanilla-Frappe-178x178 (1).png','Drinks',139.00),(64,1,'Hazelnut Iced Latte','Iced Latte with added hazelnut syrup for a nutty and warm flavor.','C:UsersHomePCDesktopPics for webHazlenut-Iced-Latte.png','Drinks',139.00),(65,1,'Caramel Frappuccino Blended Coffee','Blended coffee with caramel syrup, milk, and ice.','C:UsersHomePCDesktopPics for webcaramel-frappe-178x178.png','Drinks',159.00),(66,1,'Chocolate Frappuccino Blended Coffee','Blended coffee with chocolate syrup, milk, and ice.','C:UsersHomePCDesktopPics for webChocolate-Frappe-178x178.png','Drinks',159.00),(67,1,'Mocha Frappuccino Blended Coffee','Blended coffee with mocha sauce, milk, and ice.','C:UsersHomePCDesktopPics for webMocha-Frappe-178x178.png','Drinks',159.00),(68,1,'Vanilla Frappuccino Blended Coffee','Blended coffee with vanilla syrup, milk, and ice.','C:UsersHomePCDesktopPics for webVanilla-Frappe-178x178.png','Drinks',159.00),(69,1,'Chocolate Frappuccino Blended Creme','Blended creme with chocolate syrup, milk, and ice.','C:UsersHomePCDesktopPics for webChocolate-Frappe-178x178.png','Drinks',159.00),(70,1,'Vanilla Frappuccino Blended Creme','Blended creme with vanilla syrup, milk, and ice.','C:UsersHomePCDesktopPics for webVanilla-Frappe-178x178.png','Drinks',159.00),(71,1,'Peach Iced Tea','A refreshing iced tea with a sweet and juicy peach flavor.','C:UsersHomePCDesktopPics for webPeach-Iced-Tea-178x178.png','Drinks',119.00),(72,1,'Mango Iced Tea','A refreshing iced tea with a sweet and tangy mango flavor.','C:UsersHomePCDesktopPics for webMango-Iced-Tea-178x178.png','Drinks',119.00),(73,1,'Raspberry Iced Tea','A refreshing iced tea with a sweet and tart raspberry flavor.','C:UsersHomePCDesktopPics for webRaspberry-Iced-Tea-178x178.png','Drinks',119.00),(74,1,'Lemon Iced Tea','A classic iced tea with a bright and refreshing lemon flavor.','C:UsersHomePCDesktopPics for webLemon-Iced-Tea-178x178.png','Drinks',119.00),(75,2,'Chicken Supreme (Small)','Tender chicken pieces, black olives, jalapeños, green chilies, onions, and green peppers on a delicious tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-LoadedChicken800x550_variant_0-2023-02-02151455.webp','Pizza',549.00),(76,2,'Chicken Supreme (Medium)','Tender chicken pieces, black olives, jalapeños, green chilies, onions, and green peppers on a delicious tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-LoadedChicken800x550_variant_0-2023-02-02151455.webp','Pizza',899.00),(77,2,'Chicken Supreme (Large)','Tender chicken pieces, black olives, jalapeños, green chilies, onions, and green peppers on a delicious tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-LoadedChicken800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00),(78,2,'Peri Peri Chicken (Small)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Peri-Peri800x550_variant_0-2023-02-02151455.webp','Pizza',549.00),(79,2,'Peri Peri Chicken (Small)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Peri-Peri800x550_variant_0-2023-02-02151455.webp','Pizza',549.00),(80,2,'Peri Peri Chicken (Large)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Peri-Peri800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00),(81,2,'Chicken Fajita (Small)','Tender chicken pieces, bell peppers, onions, and a sprinkle of Mexican spices on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Fajita800x550_variant_0-2023-02-02151455.webp','Pizza',549.00),(82,2,'Chicken Fajita (Medium)','Tender chicken pieces, bell peppers, onions, and a sprinkle of Mexican spices on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Fajita800x550_variant_0-2023-02-02151455.webp','Pizza',899.00),(83,2,'Chicken Fajita (Large)','Tender chicken pieces, bell peppers, onions, and a sprinkle of Mexican spices on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Fajita800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00),(84,2,'Chicken Tikka (Small)','Marinated chicken tikka pieces, onions, and green peppers on a creamy white sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Tikka800x550_variant_0-2023-02-02151455.webp','Pizza',549.00),(85,2,'Chicken Tikka (Medium)','Marinated chicken tikka pieces, onions, and green peppers on a creamy white sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Tikka800x550_variant_0-2023-02-02151455.webp','Pizza',899.00),(86,2,'Chicken Tikka (Large)','Marinated chicken tikka pieces, onions, and green peppers on a creamy white sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Chicken-Tikka800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00),(87,2,'Pepperoni Passion (Small)','Classic pepperoni slices and melted mozzarella cheese on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Pepperoni800x550_variant_0-2023-02-02151455.webp','Pizza',499.00),(88,2,'Pepperoni Passion (Medium)','Classic pepperoni slices and melted mozzarella cheese on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Pepperoni800x550_variant_0-2023-02-02151455.webp','Pizza',799.00),(89,2,'Pepperoni Passion (Large)','Classic pepperoni slices and melted mozzarella cheese on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Pepperoni800x550_variant_0-2023-02-02151455.webp','Pizza',1249.00),(90,2,'Spicy BBQ Chicken (Small)','Tender chicken pieces tossed in a spicy BBQ sauce, with red onions and green peppers on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-BBQ-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',549.00),(91,2,'Spicy BBQ Chicken (Medium)','Tender chicken pieces tossed in a spicy BBQ sauce, with red onions and green peppers on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-BBQ-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',899.00),(92,2,'Spicy BBQ Chicken (Large)','Tender chicken pieces tossed in a spicy BBQ sauce, with red onions and green peppers on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-BBQ-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00),(93,2,'Veggie Supreme (Small)','A combination of green peppers, onions, mushrooms, black olives, and cherry tomatoes on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-veggie800x550_variant_0-2023-02-02151455.webp','Pizza',549.00),(94,2,'Veggie Supreme (Medium)','A combination of green peppers, onions, mushrooms, black olives, and cherry tomatoes on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-veggie800x550_variant_0-2023-02-02151455.webp','Pizza',899.00),(95,2,'Veggie Supreme (Large)','A combination of green peppers, onions, mushrooms, black olives, and cherry tomatoes on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-veggie800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00),(96,2,'Hawaiian (Small)','Chicken and pineapple pieces on a creamy white sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Hawaiian-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',549.00),(97,2,'Hawaiian (Medium)','Chicken and pineapple pieces on a creamy white sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Hawaiian-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',899.00),(98,2,'Hawaiian (Large)','Chicken and pineapple pieces on a creamy white sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Hawaiian-Chicken800x550_variant_0-2023-02-02151455.webp','Pizza',1399.00),(99,2,'Creamy Peri Peri (Small)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','Pics for web91ed1620-b36b-11ed-8768-a5a0f7bcc2a4-Creamy-Peri-Peri_variant_0-2023-02-23111650.webp','Pizza',549.00),(100,2,'Creamy Peri Peri (Medium)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','Pics for web91ed1620-b36b-11ed-8768-a5a0f7bcc2a4-Creamy-Peri-Peri_variant_0-2023-02-23111650.webp','Pizza',899.00),(101,2,'Creamy Peri Peri (Large)','Spicy peri peri chicken chunks, black olives, onions, and green peppers on a creamy white sauce base.','Pics for web91ed1620-b36b-11ed-8768-a5a0f7bcc2a4-Creamy-Peri-Peri_variant_0-2023-02-23111650.webp','Pizza',1399.00),(102,2,'Beef Deluxe (Small)','Tender beef strips, green peppers, onions, mushrooms, and black olives on a tomato sauce base.','Pics for web6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Beef-Deluxe800x550_variant_0-2023-02-07082840.webp','Pizza',599.00),(103,2,'Beef Deluxe (Medium)','Tender beef strips, green peppers, onions, mushrooms, and black olives on a tomato sauce base.','Pics for web6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Beef-Deluxe800x550_variant_0-2023-02-07082840.webp','Pizza',949.00),(104,2,'Beef Deluxe (Large)','Tender beef strips, green peppers, onions, mushrooms, and black olives on a tomato sauce base.','Pics for web6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Beef-Deluxe800x550_variant_0-2023-02-07082840.webp','Pizza',1499.00),(105,2,'Italiano (Small)','Ham, salami, pepperoni, and Italian sausage on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-italiano800x550_variant_0-2023-02-02151455.webp','Pizza',599.00),(106,2,'Italiano (Medium)','Ham, salami, pepperoni, and Italian sausage on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-italiano800x550_variant_0-2023-02-02151455.webp','Pizza',949.00),(107,2,'Italiano (Large)','Ham, salami, pepperoni, and Italian sausage on a tomato sauce base.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-italiano800x550_variant_0-2023-02-02151455.webp','Pizza',1499.00),(108,2,'Tex Mex (Small)','Spicy Tex-Mex chicken, a zesty blend of onions, green peppers, and jalapenos, topped with black olives for a fiesta of flavors on a tomato sauce base.','Pics for web6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Tex-Mex800x550_variant_0-2023-02-07082840.webp','Pizza',599.00),(109,2,'Tex Mex (Medium)','Spicy Tex-Mex chicken, a zesty blend of onions, green peppers, and jalapenos, topped with black olives for a fiesta of flavors on a tomato sauce base.','Pics for web6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Tex-Mex800x550_variant_0-2023-02-07082840.webp','Pizza',949.00),(110,2,'Tex Mex (Large)','Spicy Tex-Mex chicken, a zesty blend of onions, green peppers, and jalapenos, topped with black olives for a fiesta of flavors on a tomato sauce base.','Pics for web6d2f2aa0-a6c1-11ed-be00-1b26968ea32f-Tex-Mex800x550_variant_0-2023-02-07082840.webp','Pizza',1499.00),(111,2,'Legend Ranch (Small)','Tangy BBQ sauce base topped with tender chicken, bacon, red onions, and a creamy ranch drizzle for a legendary combination.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Legend-Ranch800x550_variant_0-2023-02-02151455.webp','Pizza',599.00),(112,2,'Legend Ranch (Medium)','Tangy BBQ sauce base topped with tender chicken, bacon, red onions, and a creamy ranch drizzle for a legendary combination.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Legend-Ranch800x550_variant_0-2023-02-02151455.webp','Pizza',949.00),(113,2,'Legend Ranch (Large)','Tangy BBQ sauce base topped with tender chicken, bacon, red onions, and a creamy ranch drizzle for a legendary combination.','Pics for web5979c140-a30c-11ed-95b9-9d812326bef5-Legend-Ranch800x550_variant_0-2023-02-02151455.webp','Pizza',1499.00),(114,3,'Krunch Burger','Crispy chicken fillet in a soft bun with spicy mayo and lettuce.','Pics for web43a9fb50-ffaa-11ed-8180-812e571998fe-krunch_variant_0-2023-05-31115706.png','Burger',220.00),(115,3,'Zinger Burger','Spicy chicken with lettuce in a sesame seed bun.','Pics for web6249b820-0513-11ee-9e45-cb0ed000d4a6-Zinger_variant_0-2023-06-07091210.png','Burger',250.00),(116,3,'Mighty Zinger Burger','Two Zinger fillets with spicy mayo, cheese, and lettuce.','Pics for web33685b40-0461-11ee-911c-497570899609-Mighty_variant_0-2023-06-06115641.png','Burger',300.00),(117,3,'Zinger Stacker','Double krunch fillet, jalapenos, spicy mayo, lettuce and cheese with Vietnamese sauce.','Pics for web33685b40-0461-11ee-911c-497570899609-Stacker_variant_0-2023-06-06115641.png','Burger',320.00),(118,3,'Kentucky Burger','Zinger fillet layered with beef pepperoni, crispy fried onions, cheese and smokey BBQ sauce.','Pics for web332ab600-0461-11ee-8f91-addd12cf7fa1-Kentucky_variant_0-2023-06-06115641.png','Burger',350.00),(119,3,'Hot & Crispy Chicken (Piece)','Crispy and juicy chicken piece in Original Recipe, Zinger, or Hot Wings flavor.','Pics for web43aa4970-ffaa-11ed-9c55-3705f003c528-3pc-Chikcen_variant_0-2023-05-31115706.png','Fried Chicken',120.00),(120,3,'Hot & Crispy Chicken (Bucket)','10 pieces of Hot & Crispy chicken in Original Recipe, Zinger, or Hot Wings flavor.','Pics for web43a95f10-ffaa-11ed-b673-4121381f04c6-value-Bucket-2023-05-31115706.png','Fried Chicken',500.00),(121,3,'Boneless Strips (Original Recipe)','Tender chicken strips in Original Recipe coating.','Pics for web4e9ce970-05c0-11ee-b3d4-cde32594fefb-Snack-Bucket-2023-06-08055000.png','Fried Chicken',180.00),(122,3,'Boneless Strips (Zinger)','Tender chicken strips in spicy Zinger coating.','Pics for web4e9ce970-05c0-11ee-b3d4-cde32594fefb-Snack-Bucket-2023-06-08055000.png','Fried Chicken',200.00),(123,3,'Twister','Tender boneless strips, black pepper mayo, diced tomatoes, and lettuce wrapped in a tortilla.','Pics for web337af8e0-0461-11ee-a89a-612c84c58a93-twister_variant_0-2023-06-06115641.png','Fried Chicken',140.00),(124,4,'Nihari (Single)','Slow-cooked stew of tender beef shank in a rich masala gravy, ideal for solo dining.','Pics for web3593415.jpg','Pan Asian',150.00),(125,4,'Nihari (Half)','Double the portion of our savory Nihari stew, ideal for sharing or a hearty appetite.','Pics for web3593415.jpg','Pan Asian',250.00),(126,4,'Beef Dhaga Kabab','Minced beef skewers flavored with spices and grilled to perfection, a juicy and flavorful choice.','Pics for web11366571.jpg','Pan Asian',180.00),(127,4,'Beef Fry Kabab','Tender beef cubes marinated in spices and pan-fried for a crispy exterior and savory interior.','Pics for web11366635.jpg','Pan Asian',200.00),(128,4,'Puri Paratha','Flaky and crispy flatbread, perfect for scooping up your favorite BBQ dishes.','Pics for web7595948.jpg','Roti/Tandoor',20.00),(129,4,'Kheer','Traditional rice pudding infused with cardamom and almonds, a sweet and creamy finale to your meal.',' Pics for webvecteezy_badami-kheer-in-a-ceramic-bowl-ai-generated_24490767.png','Deserts',80.00),(130,4,'Cold Drink','Choice of your favorite soft drink, refreshing accompaniment to your meal.',' Pics for webCoke-1-178x178.png','Drinks',50.00),(131,4,'Barbeque Karahi (Full)','A large clay pot dish filled with slow-cooked tender chicken or lamb pieces in a rich, spice-infused tomato and yogurt gravy. Typically shared between 2-3 people.','Pics for webpngegg.png','Pan Asian',500.00),(132,4,'Barbeque Brain Karahi','A spicy and flavorful twist on the traditional Karahi, featuring tender pieces of brain along with meat, cooked in a similar spiced tomato-based gravy.','Pics for webpngegg.png','Pan Asian',450.00),(133,4,'Beef Boti','Tender beef cubes marinated in spices and yogurt, grilled on skewers until juicy and flavorful.','Pics for web3593421.jpg','Pan Asian',220.00),(134,4,'Beef Kheri','A thick and rich stew made with slow-cooked bone marrow, beef chunks, and spices, ideal for a hearty meal.','Pics for web4690517.jpg','Pan Asian',300.00),(135,4,'Chicken Spicy Boti','Grilled chicken skewers marinated in a fiery spice blend, offering a kick for those who love heat.','Pics for web16119855.jpg','Pan Asian',250.00),(136,4,'Chicken Tikka (Chest)','Boneless chicken breast pieces marinated in yogurt and spices, grilled or tandoori-cooked for a smoky and slightly charred flavor.','Pics for web16119852.jpg','Pan Asian',180.00),(137,4,'Chicken Tikka (Leg)','Boneless chicken leg pieces marinated in yogurt and spices, grilled or tandoori-cooked for a smoky and slightly charred flavor.','Pics for web16119852.jpg','Pan Asian',160.00),(138,4,'Chicken Behari Tikka (4 pcs)','Minced chicken patties mixed with aromatic spices and grilled, served in sets of 4 pieces.','Pics for web16119852.jpg','Pan Asian',200.00),(139,4,'Chicken Behari Tikka (8 pcs)','Minced chicken patties mixed with aromatic spices and grilled, served in sets of 8 pieces.','Pics for web16119852.jpg','Pan Asian',350.00),(140,4,'Naan','Fluffy and soft flatbread, traditionally baked in a tandoor oven, perfect for scooping up curries and stews.','Pics for web3593535.jpg','Roti/Tandoor',30.00),(141,4,'Chapati','Thin and unleavened flatbread, cooked on a griddle, a versatile accompaniment to any meal.','Pics for web7595950.jpg','Roti/Tandoor',20.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'McDonald\'s','mcdonals@gmail.com','McDonald\'s Jauhar','123456','021_12345678',234523.00,'1111'),(2,'Domino\'s','dominos@gmail.com','Domino\'s Gulshan','123456','021-2345678',142321.00,'1111'),(3,'KFC','kfc@gmail.com','KFC Gulshan','123456','021-11124462',232345.00,'1111'),(4,'Waheed\'s Kabab House','waheed@gmail.com','Waheed Kabab House Gulshan','123456','021-45454545',123423.00,'1111');
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
	DECLARE quantity INT DEFAULT 0;
    
    INSERT INTO cart(CustomerID, ProductID, Quantity) VALUES (p_custID, p_productID, quantity);
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
    -- Declare variables for cursor
    DECLARE done INT DEFAULT FALSE;
    DECLARE product_id INT;
    DECLARE quantity INT;
    
    -- Declare cursor for fetching product IDs and quantities
    DECLARE product_cursor CURSOR FOR 
        SELECT ProductID, Quantity FROM cart WHERE CustomerID = p_custID;
    
    -- Declare continue handler for cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    -- Create a temporary table to store results
    CREATE TEMPORARY TABLE IF NOT EXISTS temp_result (
        ProductTitle VARCHAR(255),
        Quantity INT
    );
    
    -- Open the cursor
    OPEN product_cursor;
    
    -- Start fetching and processing
    read_loop: LOOP
        FETCH product_cursor INTO product_id, quantity;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        -- Insert product details into temporary table
        INSERT INTO temp_result (ProductTitle, Quantity)
        SELECT p.Title, quantity
        FROM products p
        WHERE p.ProductID = product_id;
    END LOOP;
    
    -- Close the cursor
    CLOSE product_cursor;
    
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

-- Dump completed on 2024-01-15 22:01:19

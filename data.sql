-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bill_detail_1_idx` (`bill_id`),
  KEY `fk_bill_detail_2_idx` (`product_id`),
  CONSTRAINT `fk_bill_detail_1` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_bill_detail_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail`
--

LOCK TABLES `bill_detail` WRITE;
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image_url` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_1_idx` (`category_id`),
  CONSTRAINT `fk_category_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Làm đẹp môi',NULL,NULL,1,NULL),(2,'Làm đẹp mắt',NULL,NULL,1,NULL),(3,'Làm đẹp da',NULL,NULL,1,NULL),(4,'Tẩy trang',NULL,NULL,1,NULL),(5,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_price` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_product_1_idx` (`category_id`),
  KEY `fk_product_2_idx` (`supplier_id`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_product_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'This is the name','this is the description','AOA-2213_large.jpg','400000','400000',100,3,2,1),(2,'This is the name','this is the description','AOA-2205_large.jpg','300000','300000',100,3,4,1),(3,'This is the name','this is the description','AOA-2017_AOA-2417_large.jpg','200000','200000',100,1,2,1),(4,'This is the name','this is the description','AOA-2016_AOA-2416_large.jpg','400000','400000',100,5,2,1),(5,'This is the name','this is the description','BEAUTY-142-0_large.jpg','200000','200000',100,3,4,1),(6,'This is the name','this is the description','swatch_Glitter_Diamond_grande_be1c63b3-caf0-40c8-90b6-77be59a0964e_large.jpg','400000','400000',100,3,2,1),(7,'This is the name','this is the description','COS-795-3_large.jpg','500000','500000',100,4,4,1),(8,'This is the name','this is the description','COS-791-3_large.jpg','100000','100000',100,4,1,1),(9,'This is the name','this is the description','LA-202-3_60819f7c-2358-4dd2-977e-d91a2c4727a0_large.jpg','500000','500000',100,5,4,1),(10,'This is the name','this is the description','COS-462_N_large.jpg','300000','300000',100,4,3,1),(11,'This is the name','this is the description','COS-799-NAME_large.jpg','500000','500000',100,1,3,1),(12,'This is the name','this is the description','Swatches_LM_13_large.jpg','200000','200000',100,3,1,1),(13,'This is the name','this is the description','AOA-2003_AOA-2403_large.jpg','300000','300000',100,5,4,1),(14,'This is the name','this is the description','swatch_BUNDLE-101_large.jpg','200000','200000',100,1,2,1),(15,'This is the name','this is the description','AOA-1534-Elizabeth_large.jpg','200000','200000',100,4,2,1),(16,'This is the name','this is the description','COS-785-NAME-1_large.jpg','500000','500000',100,2,2,1),(17,'This is the name','this is the description','Wild_Swatches_c5810670-11fa-488f-81c3-e62812fbfde7_large.jpg','200000','200000',100,5,4,1),(18,'This is the name','this is the description','Wild_Swatches_c67b7270-53a4-454f-a707-305b78c3c546_large.jpg','400000','400000',100,2,2,1),(19,'This is the name','this is the description','COS-429-NO_large.jpg','100000','100000',100,3,2,1),(20,'This is the name','this is the description','Eyelashes-702-5_large.jpg','400000','400000',100,4,1,1),(21,'This is the name','this is the description','AOA-1516-Rita_large.jpg','100000','100000',100,2,2,1),(22,'This is the name','this is the description','COS-797-NAME_large.jpg','500000','500000',100,4,2,1),(23,'This is the name','this is the description','LA-172-4_db3d70e4-5a73-471b-8422-b277c98b4cdd_large.jpg','300000','300000',100,5,1,1),(24,'This is the name','this is the description','COS-756-NAME_large.jpg','400000','400000',100,4,1,1),(25,'This is the name','this is the description','AOA-2019_AOA-2419_large.jpg','300000','300000',100,3,2,1),(26,'This is the name','this is the description','LA-234-4_large.jpg','500000','500000',100,4,4,1),(27,'This is the name','this is the description','COS-814-NAME-1_large.jpg','200000','200000',100,3,2,1),(28,'This is the name','this is the description','AOA-3012_AOA-3013_DETAIL_large.jpg','100000','100000',100,3,2,1),(29,'This is the name','this is the description','LA-214-4_large.jpg','300000','300000',100,3,1,1),(30,'This is the name','this is the description','LA-248-6_large.jpg','400000','400000',100,4,4,1),(31,'This is the name','this is the description','COS-619_NAME-1_845336ad-bf9f-47a6-b6f4-d4153f11c7ba_large.jpg','300000','300000',100,4,4,1),(32,'This is the name','this is the description','COS-815-NAME_large.jpg','100000','100000',100,4,4,1),(33,'This is the name','this is the description','LA-220-2_fc64b704-58aa-4078-b14b-d41dcaae25a5_large.jpg','500000','500000',100,4,2,1),(34,'This is the name','this is the description','LA-094-1_large.jpg','200000','200000',100,3,4,1),(35,'This is the name','this is the description','Eyelashes-113-6_large.jpg','200000','200000',100,5,4,1),(36,'This is the name','this is the description','AOA-1532-Stella_large.jpg','300000','300000',100,4,1,1),(37,'This is the name','this is the description','COS-794_EXTRA-2_large.jpg','400000','400000',100,4,4,1),(38,'This is the name','this is the description','COS-788-NAME_large.jpg','400000','400000',100,3,4,1),(39,'This is the name','this is the description','COS-796-8_large.jpg','200000','200000',100,4,3,1),(40,'This is the name','this is the description','AOA-1523-Madelynn_large.jpg','300000','300000',100,1,2,1),(41,'This is the name','this is the description','LA-195-4_large.jpg','400000','400000',100,2,3,1),(42,'This is the name 42','this is the description','Wild_Swatches_large.jpg','450.000đ','450.000đ',100,5,3,1),(43,'This is the name 43','this is the description','Nude_Swatches_4a9e986f-02e8-47a8-be49-0cfb08adcf43_large.jpg','400.000đ','300.000đ',100,1,2,1),(44,'This is the name 44','this is the description','AOA-1537-Violet_large.jpg','350.000đ','250.000đ',100,4,3,1),(45,'This is the name 45','this is the description','AOA-067_AOA-068_bc11bf28-0441-4296-9a46-707847545f0f_large.jpg','250.000đ','150.000đ',100,3,4,1),(46,'This is the name 46','this is the description','BUNDLE-069_4_17e8321e-bb82-44e1-a7ad-467a30903ccb_large.jpg','300.000đ','150.000đ',100,5,1,1),(47,'This is the name 47','this is the description','AOA-067-6_large.jpg','100.000đ','50.000đ',100,2,3,1),(48,'This is the name 48','this is the description','Mattes_Diamond_Swatches12_large.jpg','300.000đ','250.000đ',100,2,1,1),(49,'This is the name 49','this is the description','COS-668-3_large.jpg','200.000đ','150.000đ',100,3,4,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_detail`
--

DROP TABLE IF EXISTS `promotion_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_detail` (
  `promotion_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`product_id`),
  KEY `fk_promotion_detail_1_idx` (`product_id`),
  CONSTRAINT `fk_promotion_detail_1` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_promotion_detail_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_detail`
--

LOCK TABLES `promotion_detail` WRITE;
/*!40000 ALTER TABLE `promotion_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Lancome',NULL,'Đây là thương hiệu thuộc sở hữu của tập đoàn L’Oreal, có nguồn gốc từ Pháp. Thương hiệu Lancome có rất nhiều sản phẩm có chất lượng tốt.\nLancome không chỉ chú trọng đầu tư một mảng nào, mà tập trung phát triển cả hai mảng sản phẩm mỹ phẩm trang điểm, và sản phẩm chăm sóc da.',1),(2,'Shiseido',NULL,'Shiseido là một thương hiệu đến từ Nhật Bản. Shiseido là thương hiệu vừa có sự kết hợp của công nghệ phương Tây, vừa có sự tinh túy của các công thức làm đẹp truyền thống, bí quyết của phụ nữ Nhật Bản. Chính vì vậy, các sản phẩm của Shiseido vừa có vẻ hiện đại vừa có các thành phần, nguyên liệu truyền thống yêu thích. Shiseido đã trở thành các tên yêu thích không chỉ riêng của phụ nữ Nhật Bản mà còn của rất nhiều phụ nữ trên thế giới.',1),(3,'Kiehl’s',NULL,'Kiehl’s là một thương hiệu mỹ phẩm thiên nhiên nổi tiếng, với các thành phần chiết xuất từ tự nhiên.\nKiehl’s chuyên về các sản phẩm chăm sóc da, sản phẩm của hãng rất thân thiên, làn tính, an toàn với làn da. Kiehl’s có nhiều dòng sản phẩm, trị liệu từng vấn đề của da, cung như phục vụ mọi nhu cầu của mọi người.',1),(4,'Andalou','','Đây cũng là một thương hiệu mỹ phẩm thiên nhiên khá nổi tiếng tại Mỹ. Các sản phẩm của thương hiệu Andalou rất an toàn, thân thiện với mọi làn da, dùng được cho cả các mẹ đang mang thai.\nAndalou có rất nhiều dòng sản phẩm phong phú đa dạng, nên có thể đáp ứng được nhu cầu, sở thích của từng loại da.',1),(5,'Body Shop','','Nếu bạn chưa từng nghe đến dòng sản phẩm dưỡng thể của The Body Shop thì đùng là một sai sót lớn. The Body Shop chuyên về các dòng sản phẩm chăm sóc da mặt, và chăm sóc da cơ thể một cách toàn diện. Từ các sản phẩm sữa tắm, đến body lotion, body butter,…. The Body Shop đều có đủ cả và rất phong phú.',1);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_user_1_idx` (`role_id`),
  CONSTRAINT `fk_user_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-22 21:33:46

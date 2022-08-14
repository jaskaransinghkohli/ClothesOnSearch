/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.21-log : Database - clothes_on_search
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`clothes_on_search` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `clothes_on_search`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cartId` bigint(20) NOT NULL,
  `cart_creation_date` datetime DEFAULT NULL,
  `cart_status` int(11) DEFAULT NULL,
  `customer_order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  KEY `FKi9bmy2iyx73hjvec7d2un7doi` (`customer_order_id`),
  CONSTRAINT `FKi9bmy2iyx73hjvec7d2un7doi` FOREIGN KEY (`customer_order_id`) REFERENCES `customer_order` (`customerOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cart` */

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` bigint(20) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `user_state` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKionsr8lanptfl7myuh0iueik6` (`user_state`),
  CONSTRAINT `FKionsr8lanptfl7myuh0iueik6` FOREIGN KEY (`user_state`) REFERENCES `state` (`stateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

/*Table structure for table `customer_address` */

DROP TABLE IF EXISTS `customer_address`;

CREATE TABLE `customer_address` (
  `customerAddressId` bigint(20) NOT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_pin_code` varchar(255) DEFAULT NULL,
  `customer_city` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`customerAddressId`),
  KEY `FK5wtbllgr1w937ei0fc04af6w5` (`customer_city`),
  KEY `FKpy58noel8ql8j3o11usek3tay` (`customer_id`),
  CONSTRAINT `FK5wtbllgr1w937ei0fc04af6w5` FOREIGN KEY (`customer_city`) REFERENCES `city` (`id`),
  CONSTRAINT `FKpy58noel8ql8j3o11usek3tay` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_address` */

/*Table structure for table `customer_billing_status` */

DROP TABLE IF EXISTS `customer_billing_status`;

CREATE TABLE `customer_billing_status` (
  `customerBillId` bigint(20) NOT NULL,
  `customer_order_delivery_detail_id` bigint(20) DEFAULT NULL,
  `user_document_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`customerBillId`),
  KEY `FKflq294bps1oc8axb00ge9trvy` (`customer_order_delivery_detail_id`),
  KEY `FKoy6iw3fra2laq5myjx4vc29ma` (`user_document_id`),
  CONSTRAINT `FKflq294bps1oc8axb00ge9trvy` FOREIGN KEY (`customer_order_delivery_detail_id`) REFERENCES `customer_order_delivery_details` (`CustomerOrderDeliveryDetailId`),
  CONSTRAINT `FKoy6iw3fra2laq5myjx4vc29ma` FOREIGN KEY (`user_document_id`) REFERENCES `user_documents` (`userDocumentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_billing_status` */

/*Table structure for table `customer_details` */

DROP TABLE IF EXISTS `customer_details`;

CREATE TABLE `customer_details` (
  `customerId` bigint(20) NOT NULL,
  `customer_mobile_number` bigint(20) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_password` varchar(255) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_details` */

insert  into `customer_details`(`customerId`,`customer_mobile_number`,`customer_email`,`customer_name`,`customer_password`,`created_on`) values (1,9856745213,'sonu@customer.com','Sonu Sharma','sonu@customer.com',NULL),(3,8585998988,'k@gmail.com','karan','a,a','2018-07-21 16:00:53'),(78,9876333141,'jaskarans880@mail.com','jaskaran singh','jassie123,jassie123','2018-09-09 01:47:34');

/*Table structure for table `customer_order` */

DROP TABLE IF EXISTS `customer_order`;

CREATE TABLE `customer_order` (
  `customerOrderId` bigint(20) NOT NULL,
  `customer_product_booking_date` datetime DEFAULT NULL,
  `customer_product_colour` varchar(255) DEFAULT NULL,
  `customer_product_quantity` int(11) DEFAULT NULL,
  `customer_product_size` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `user_product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`customerOrderId`),
  KEY `FKt9v2ful9hxng3g72l0y6a6f7f` (`customer_id`),
  KEY `FKai50newd634m40uan2lleef25` (`user_product_id`),
  CONSTRAINT `FKai50newd634m40uan2lleef25` FOREIGN KEY (`user_product_id`) REFERENCES `userproducts` (`userProductId`),
  CONSTRAINT `FKt9v2ful9hxng3g72l0y6a6f7f` FOREIGN KEY (`customer_id`) REFERENCES `customer_details` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_order` */

/*Table structure for table `customer_order_delivery_details` */

DROP TABLE IF EXISTS `customer_order_delivery_details`;

CREATE TABLE `customer_order_delivery_details` (
  `CustomerOrderDeliveryDetailId` bigint(20) NOT NULL,
  `order_delievered_date` datetime DEFAULT NULL,
  `order_delivery_date` datetime DEFAULT NULL,
  `order_delivery_status` int(11) DEFAULT NULL,
  `customer_address_id` bigint(20) DEFAULT NULL,
  `customer_order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CustomerOrderDeliveryDetailId`),
  KEY `FKn7r0hqhy3ipvnt3cckt71xbg0` (`customer_address_id`),
  KEY `FK5vycp9jctahybiwxe64dtgp6k` (`customer_order_id`),
  CONSTRAINT `FK5vycp9jctahybiwxe64dtgp6k` FOREIGN KEY (`customer_order_id`) REFERENCES `customer_order` (`customerOrderId`),
  CONSTRAINT `FKn7r0hqhy3ipvnt3cckt71xbg0` FOREIGN KEY (`customer_address_id`) REFERENCES `customer_address` (`customerAddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_order_delivery_details` */

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (79);

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `productCategoryId` bigint(20) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `product_gender` int(11) DEFAULT NULL,
  PRIMARY KEY (`productCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product_category` */

insert  into `product_category`(`productCategoryId`,`category_name`,`product_gender`) values (1,'Upper Wear',1),(2,'Upper Wear',2),(3,'Upper Wear',3);

/*Table structure for table `product_sub_category` */

DROP TABLE IF EXISTS `product_sub_category`;

CREATE TABLE `product_sub_category` (
  `subCategoryId` bigint(20) NOT NULL,
  `sub_category_name` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`subCategoryId`),
  KEY `FKm39c42pvoesgjjwsiu80k5q4r` (`product_id`),
  CONSTRAINT `FKm39c42pvoesgjjwsiu80k5q4r` FOREIGN KEY (`product_id`) REFERENCES `product_category` (`productCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product_sub_category` */

insert  into `product_sub_category`(`subCategoryId`,`sub_category_name`,`product_id`) values (1,'T-Shirts',1),(2,'Payjama\'s',1),(4,'Casuals',1),(5,'Graphic T\'s',1),(6,'Shirts',1),(7,'Shirts',2),(8,'Tops',2),(9,'Jeans',2),(10,'Casuals',2),(11,'Leggings',2),(12,'Kurtas',2),(13,'Suits',2),(14,'Sarees',2),(15,'T-Shirts',3),(16,'Shirts',3),(17,'Jeans',3),(18,'Trousers',3),(19,'TrackPants',3),(20,'Payjamas',3);

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `stateId` bigint(20) NOT NULL,
  `state_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `state` */

/*Table structure for table `user_bank_and_tax_details` */

DROP TABLE IF EXISTS `user_bank_and_tax_details`;

CREATE TABLE `user_bank_and_tax_details` (
  `userBankAndTaxDetailsId` bigint(20) NOT NULL,
  `user_account_holder_name` varchar(255) DEFAULT NULL,
  `user_account_number` varchar(255) DEFAULT NULL,
  `user_account_type` varchar(255) DEFAULT NULL,
  `user_bank_ifsc` varchar(255) DEFAULT NULL,
  `user_bank_name` varchar(255) DEFAULT NULL,
  `user_gst_number` varchar(255) DEFAULT NULL,
  `user_gst_tax_ptc` varchar(255) DEFAULT NULL,
  `user_pan_number` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userBankAndTaxDetailsId`),
  KEY `FK77rslf45mwvy5t6bp8pafldei` (`user_id`),
  CONSTRAINT `FK77rslf45mwvy5t6bp8pafldei` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_bank_and_tax_details` */

insert  into `user_bank_and_tax_details`(`userBankAndTaxDetailsId`,`user_account_holder_name`,`user_account_number`,`user_account_type`,`user_bank_ifsc`,`user_bank_name`,`user_gst_number`,`user_gst_tax_ptc`,`user_pan_number`,`user_id`) values (41,NULL,NULL,NULL,NULL,NULL,'77777777',NULL,'3105315',39),(44,NULL,NULL,NULL,NULL,NULL,'777',NULL,'95',42),(45,NULL,NULL,NULL,NULL,NULL,'2134',NULL,'',42),(46,NULL,NULL,NULL,NULL,NULL,'2134',NULL,'',42),(47,NULL,NULL,NULL,NULL,NULL,'',NULL,'',42),(48,NULL,NULL,NULL,NULL,NULL,'45',NULL,'745',42),(51,NULL,NULL,NULL,NULL,NULL,'596',NULL,'541',49),(57,NULL,NULL,NULL,NULL,NULL,'75825',NULL,'225..60056',55),(62,NULL,NULL,NULL,NULL,NULL,'465+',NULL,'56',60),(65,NULL,NULL,NULL,NULL,NULL,'54320',NULL,'95623.0',63),(68,NULL,NULL,NULL,NULL,NULL,'48951',NULL,'8956',66),(71,NULL,NULL,NULL,NULL,NULL,'+-963962',NULL,'9+562',69),(74,NULL,NULL,NULL,NULL,NULL,'522212121',NULL,'11321315',72),(77,NULL,NULL,NULL,NULL,NULL,'888888558',NULL,'78452',75);

/*Table structure for table `user_documents` */

DROP TABLE IF EXISTS `user_documents`;

CREATE TABLE `user_documents` (
  `userDocumentId` bigint(20) NOT NULL,
  `user_signature_path` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userDocumentId`),
  KEY `FK1r7rd4k83lt1yes6jdvq92hah` (`user_id`),
  CONSTRAINT `FK1r7rd4k83lt1yes6jdvq92hah` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_documents` */

/*Table structure for table `user_selling_category` */

DROP TABLE IF EXISTS `user_selling_category`;

CREATE TABLE `user_selling_category` (
  `userSellingProductId` bigint(20) NOT NULL,
  `sub_category_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userSellingProductId`),
  KEY `FKku5wkxucy5d8kbcflf6jg1t2b` (`sub_category_id`),
  KEY `FKe26kxashwr00bgh4o2gyn47yf` (`user_id`),
  CONSTRAINT `FKe26kxashwr00bgh4o2gyn47yf` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`),
  CONSTRAINT `FKku5wkxucy5d8kbcflf6jg1t2b` FOREIGN KEY (`sub_category_id`) REFERENCES `product_sub_category` (`subCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_selling_category` */

insert  into `user_selling_category`(`userSellingProductId`,`sub_category_id`,`user_id`) values (52,NULL,NULL),(53,NULL,NULL),(54,NULL,NULL),(58,NULL,55),(59,NULL,55);

/*Table structure for table `useraddress` */

DROP TABLE IF EXISTS `useraddress`;

CREATE TABLE `useraddress` (
  `userAddressId` bigint(20) NOT NULL,
  `user_address_line_1` varchar(255) DEFAULT NULL,
  `user_address_line_2` varchar(255) DEFAULT NULL,
  `user_pin_code` int(11) DEFAULT NULL,
  `user_city` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userAddressId`),
  KEY `FKl71a18yb1pk06gobo37qb7io2` (`user_city`),
  KEY `FKpva9euvasslcinx73f636efpt` (`user_id`),
  CONSTRAINT `FKl71a18yb1pk06gobo37qb7io2` FOREIGN KEY (`user_city`) REFERENCES `city` (`id`),
  CONSTRAINT `FKpva9euvasslcinx73f636efpt` FOREIGN KEY (`user_id`) REFERENCES `users` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `useraddress` */

insert  into `useraddress`(`userAddressId`,`user_address_line_1`,`user_address_line_2`,`user_pin_code`,`user_city`,`user_id`) values (30,'sdcf','',111111,NULL,NULL),(31,'sdcf','',111111,NULL,NULL),(32,'sdcf','',111111,NULL,NULL),(34,'sasd','',111111,NULL,NULL),(35,'sasd','',111111,NULL,NULL),(37,'sad','',111111,NULL,36),(38,'sad','',110087,NULL,36),(40,'w','',110087,NULL,39),(43,'rt45tr','',110087,NULL,42),(50,'sad','',110087,NULL,49),(56,'c xhx xch sk','',111415,NULL,55),(61,'+21a','',3,NULL,60),(64,'23','',110087,NULL,63),(67,'3w454rt','',110087,NULL,66),(70,'vghbjk','gvjbhkkm',411,NULL,69),(73,'asdvf','',110088,NULL,72),(76,'41','',5,NULL,75);

/*Table structure for table `userproducts` */

DROP TABLE IF EXISTS `userproducts`;

CREATE TABLE `userproducts` (
  `userProductId` bigint(20) NOT NULL,
  `product_active_status` int(11) DEFAULT NULL,
  `product_colour` varchar(255) DEFAULT NULL,
  `product_cost` varchar(255) DEFAULT NULL,
  `product_creation_date` datetime DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `user_products` varchar(255) DEFAULT NULL,
  `user_selling_product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userProductId`),
  KEY `FKhn6xvnpy5cic7ryjxk128y41v` (`user_selling_product_id`),
  CONSTRAINT `FKhn6xvnpy5cic7ryjxk128y41v` FOREIGN KEY (`user_selling_product_id`) REFERENCES `user_selling_category` (`userSellingProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `userproducts` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userId` bigint(20) NOT NULL,
  `annual_income` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `user_mobile_number` bigint(20) DEFAULT NULL,
  `number_of_sales` varchar(255) DEFAULT NULL,
  `production_type` varchar(255) DEFAULT NULL,
  `seller_name` varchar(255) DEFAULT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `user_role` int(11) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `user_creation_date` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`userId`,`annual_income`,`company_name`,`user_mobile_number`,`number_of_sales`,`production_type`,`seller_name`,`store_name`,`user_email`,`userPassword`,`user_role`,`website_url`,`user_creation_date`) values (27,NULL,NULL,445,NULL,NULL,'jaskaran',NULL,'hujn@g.com','7',0,NULL,'2018-07-25 12:57:07'),(28,NULL,NULL,9999999999,NULL,NULL,'sonu',NULL,'govind@c.com','123',0,NULL,'2018-07-25 13:00:12'),(29,NULL,NULL,9999999999,NULL,NULL,'jsk',NULL,'jasan@c.com','222',0,NULL,'2018-07-25 13:12:07'),(33,NULL,NULL,123,NULL,NULL,'as',NULL,'as@as.com','2',0,NULL,'2018-07-25 13:25:27'),(36,NULL,NULL,8888,NULL,NULL,'sonu','q','jasan@c.com','1',0,NULL,'2018-07-25 13:27:49'),(39,NULL,NULL,NULL,NULL,NULL,'jsk','qq','jasan@c.com','12',0,NULL,'2018-07-25 13:35:29'),(42,NULL,NULL,233,NULL,NULL,'kiran','hj','d@g.com','a',0,NULL,'2018-07-25 14:47:33'),(49,NULL,NULL,NULL,NULL,NULL,'1212','sonustore','wea@dwef.com','1',0,NULL,'2018-07-25 15:29:30'),(55,NULL,NULL,987762862,NULL,NULL,'new user','store1','newuser@gmail.com','123',0,NULL,'2018-07-25 18:29:15'),(60,NULL,NULL,4568312,NULL,NULL,'sds','wrerr','wsdfsdd@cdf.com','1',0,NULL,'2018-07-25 18:47:44'),(63,NULL,NULL,954322,NULL,NULL,'jasiv','jasiv','jasiv@h.com','1',0,NULL,'2018-07-25 19:18:45'),(66,NULL,NULL,75,NULL,NULL,'sdwegrhfj','jasss','wq@f.c','1',0,NULL,'2018-07-25 19:57:43'),(69,NULL,NULL,995548,NULL,NULL,'ass','sonustore1','wdfs@fd.c','7',0,NULL,'2018-07-26 17:57:06'),(72,NULL,NULL,7051130337,NULL,NULL,'amitoj','ammy123','ammy123life@gmail.com','ammy',0,NULL,'2018-07-31 23:22:06'),(75,NULL,NULL,6335656,NULL,NULL,'jaskaran','qq','jsk@gmal.com','a',0,NULL,'2018-08-22 02:00:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

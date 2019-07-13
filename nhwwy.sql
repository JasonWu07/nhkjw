/*
SQLyog Ultimate v8.32 
MySQL - 5.5.5-10.1.34-MariaDB : Database - vuemy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vuemy` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vuemy`;

/*Table structure for table `vue-admin` */

DROP TABLE IF EXISTS `vue-admin`;

CREATE TABLE `vue-admin` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `adminName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `adminPwd` varchar(255) CHARACTER SET utf8 NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `vue-admin` */

insert  into `vue-admin`(`id`,`adminName`,`adminPwd`) values (1,'郑柏林','52d5b5e885b21331cfd2304be571de0b'),(2,'梁文滔','123456'),(3,'李柯','123456'),(4,'admin','52d5b5e885b21331cfd2304be571de0b');

/*Table structure for table `vue-commoditydata` */

DROP TABLE IF EXISTS `vue-commoditydata`;

CREATE TABLE `vue-commoditydata` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `productID` int(255) NOT NULL COMMENT '产品id\r\n',
  `productAttributesID` varchar(255) NOT NULL COMMENT '产品属性id\r\n',
  `provider` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '提供商',
  `productlabel` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品标签\r\n',
  `ProductSpecifications` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品规格\r\n',
  `SpecificationsPrice` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '规格价格',
  `productMirrortIMG` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '镜像图片',
  `productDetails` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品详情',
  PRIMARY KEY (`id`,`productID`,`productAttributesID`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;

/*Data for the table `vue-commoditydata` */

insert  into `vue-commoditydata`(`id`,`productID`,`productAttributesID`,`provider`,`productlabel`,`ProductSpecifications`,`SpecificationsPrice`,`productMirrortIMG`,`productDetails`) values (42,9,'1','南华科技网有限公司','数据智能  应用开发  windows','华东2 可用区 C','180','',''),(43,9,'1','南华科技网有限公司','数据智能  应用开发  windows','华南2 可用区 D','190','',''),(44,9,'1','南华科技网有限公司','数据智能  应用开发  windows','华北1 可用区 A','210','',''),(45,9,'1','南华科技网有限公司','数据智能  应用开发  windows','华东3 可用区 F','422','',''),(46,10,'1','南华科技网有限公司','数据智能  应用开发  windows','华东2 可用区 B','160','',''),(47,10,'1','南华科技网有限公司','数据智能  应用开发  windows','华东3 可用区 C','180','',''),(48,10,'1','南华科技网有限公司','数据智能  应用开发  windows','华南3 可用区 D','190','',''),(49,10,'1','南华科技网有限公司','数据智能  应用开发  windows','华北2 可用区 A','210','',''),(50,10,'1','南华科技网有限公司','数据智能  应用开发  windows','华东4 可用区 F','422','',''),(51,11,'1','南华科技网有限公司','数据智能  应用开发  windows','华东3 可用区 B','160','',''),(52,11,'1','南华科技网有限公司','数据智能  应用开发  windows','华东4 可用区 C','180','',''),(53,11,'1','南华科技网有限公司','数据智能  应用开发  windows','华南4 可用区 D','190','',''),(54,11,'1','南华科技网有限公司','数据智能  应用开发  windows','华北3 可用区 A','210','',''),(55,11,'1','南华科技网有限公司','数据智能  应用开发  windows','华东5 可用区 F','422','',''),(56,12,'1','南华科技网有限公司','数据智能  应用开发  windows','华东4 可用区 B','160','',''),(57,12,'1','南华科技网有限公司','数据智能  应用开发  windows','华东5 可用区 C','180','',''),(58,12,'1','南华科技网有限公司','数据智能  应用开发  windows','华南5 可用区 D','190','',''),(59,12,'1','南华科技网有限公司','数据智能  应用开发  windows','华北4 可用区 A','210','',''),(60,12,'1','南华科技网有限公司','数据智能  应用开发  windows','华东6 可用区 F','422','',''),(61,12,'1','南华科技网有限公司','数据智能  应用开发  windows','华东5 可用区 B','160','',''),(62,13,'1','南华科技网有限公司','数据智能  应用开发  windows','华东6 可用区 C','180','',''),(63,13,'1','南华科技网有限公司','数据智能  应用开发  windows','华南6 可用区 D','190','',''),(64,13,'1','南华科技网有限公司','数据智能  应用开发  windows','华北5 可用区 A','210','',''),(65,13,'1','南华科技网有限公司','数据智能  应用开发  windows','华东7 可用区 F','422','',''),(66,13,'1','南华科技网有限公司','数据智能  应用开发  windows','华东6 可用区 B','160','',''),(67,14,'1','南华科技网有限公司','数据智能  应用开发  windows','华东7 可用区 C','180','',''),(68,14,'1','南华科技网有限公司','数据智能  应用开发  windows','华南7 可用区 D','190','',''),(69,14,'1','南华科技网有限公司','数据智能  应用开发  windows','华北6 可用区 A','210','',''),(70,14,'1','南华科技网有限公司','数据智能  应用开发  windows','华东8 可用区 F','422','',''),(71,14,'1','南华科技网有限公司','数据智能  应用开发  windows','华东7 可用区 B','160','',''),(72,15,'1','南华科技网有限公司','数据智能  应用开发  windows','华东8 可用区 C','180','',''),(73,15,'1','南华科技网有限公司','数据智能  应用开发  windows','华南8 可用区 D','190','',''),(74,15,'1','南华科技网有限公司','数据智能  应用开发  windows','华北7 可用区 A','210','',''),(75,15,'1','南华科技网有限公司','数据智能  应用开发  windows','华东9 可用区 F','422','',''),(76,15,'1','南华科技网有限公司','数据智能  应用开发  windows','华东8 可用区 B','160','',''),(77,15,'1','南华科技网有限公司','数据智能  应用开发  windows','华东9 可用区 C','180','',''),(78,16,'1','南华科技网有限公司','数据智能  应用开发  windows','华南9 可用区 D','190','',''),(79,16,'1','南华科技网有限公司','数据智能  应用开发  windows','华北8 可用区 A','210','',''),(80,16,'1','南华科技网有限公司','数据智能  应用开发  windows','华东10 可用区 F','422','',''),(81,16,'1','南华科技网有限公司','数据智能  应用开发  windows','华东9 可用区 B','160','',''),(82,16,'1','南华科技网有限公司','数据智能  应用开发  windows','华东10 可用区 C','180','',''),(83,17,'1','南华科技网有限公司','数据智能  应用开发  windows','华南10 可用区 D','190','',''),(84,17,'1','南华科技网有限公司','数据智能  应用开发  windows','华北9 可用区 A','210','',''),(85,17,'1','南华科技网有限公司','数据智能  应用开发  windows','华东11 可用区 F','422','',''),(86,17,'1','南华科技网有限公司','数据智能  应用开发  windows','华东10 可用区 B','160','',''),(87,17,'1','南华科技网有限公司','数据智能  应用开发  windows','华东11 可用区 C','180','',''),(88,18,'1','南华科技网有限公司','数据智能  应用开发  windows','华南11 可用区 D','190','',''),(89,18,'1','南华科技网有限公司','数据智能  应用开发  windows','华北10 可用区 A','210','',''),(90,18,'1','南华科技网有限公司','数据智能  应用开发  windows','华东12 可用区 F','422','',''),(91,18,'1','南华科技网有限公司','数据智能  应用开发  windows','华东11 可用区 B','160','',''),(92,18,'1','南华科技网有限公司','数据智能  应用开发  windows','华东12 可用区 C','180','',''),(93,18,'1','南华科技网有限公司','数据智能  应用开发  windows','华南12 可用区 D','190','',''),(94,19,'1','南华科技网有限公司','数据智能  应用开发  windows','华北11 可用区 A','210','',''),(95,19,'1','南华科技网有限公司','数据智能  应用开发  windows','华东13 可用区 F','422','',''),(96,19,'1','南华科技网有限公司','数据智能  应用开发  windows','华东12 可用区 B','160','',''),(97,19,'1','南华科技网有限公司','数据智能  应用开发  windows','华东13 可用区 C','180','',''),(98,19,'1','南华科技网有限公司','数据智能  应用开发  windows','华南13 可用区 D','190','',''),(99,20,'1','南华科技网有限公司','数据智能  应用开发  windows','华北12 可用区 A','210','',''),(100,20,'1','南华科技网有限公司','数据智能  应用开发  windows','华东14 可用区 F','422','',''),(101,20,'1','南华科技网有限公司','数据智能  应用开发  windows','华东13 可用区 B','160','',''),(102,20,'1','南华科技网有限公司','数据智能  应用开发  windows','华东14 可用区 C','180','',''),(103,20,'1','南华科技网有限公司','数据智能  应用开发  windows','华南14 可用区 D','190','',''),(104,21,'1','南华科技网有限公司','数据智能  应用开发  windows','华北13 可用区 A','210','',''),(105,21,'1','南华科技网有限公司','数据智能  应用开发  windows','华东15 可用区 F','422','',''),(106,21,'1','南华科技网有限公司','数据智能  应用开发  windows','华东14 可用区 B','160','',''),(107,21,'1','南华科技网有限公司','数据智能  应用开发  windows','华东15 可用区 C','180','',''),(108,21,'1','南华科技网有限公司','数据智能  应用开发  windows','华南15 可用区 D','190','',''),(109,21,'1','南华科技网有限公司','数据智能  应用开发  windows','华北14 可用区 A','210','',''),(110,22,'1','南华科技网有限公司','数据智能  应用开发  windows','华东16 可用区 F','422','',''),(111,22,'1','南华科技网有限公司','数据智能  应用开发  windows','华东15 可用区 B','160','',''),(112,22,'1','南华科技网有限公司','数据智能  应用开发  windows','华东16 可用区 C','180','',''),(113,22,'1','南华科技网有限公司','数据智能  应用开发  windows','华南16 可用区 D','190','',''),(114,22,'1','南华科技网有限公司','数据智能  应用开发  windows','华北15 可用区 A','210','',''),(115,23,'1','南华科技网有限公司','数据智能  应用开发  windows','华东17 可用区 F','422','',''),(116,23,'1','南华科技网有限公司','数据智能  应用开发  windows','华东16 可用区 B','160','',''),(117,23,'1','南华科技网有限公司','数据智能  应用开发  windows','华东17 可用区 C','180','',''),(118,23,'1','南华科技网有限公司','数据智能  应用开发  windows','华南17 可用区 D','190','',''),(119,23,'1','南华科技网有限公司','数据智能  应用开发  windows','华北16 可用区 A','210','',''),(120,24,'1','南华科技网有限公司','数据智能  应用开发  windows','华东18 可用区 F','422','',''),(121,24,'1','南华科技网有限公司','数据智能  应用开发  windows','华东17 可用区 B','160','',''),(122,24,'1','南华科技网有限公司','数据智能  应用开发  windows','华东18 可用区 C','180','',''),(123,24,'1','南华科技网有限公司','数据智能  应用开发  windows','华南18 可用区 D','190','',''),(124,24,'1','南华科技网有限公司','数据智能  应用开发  windows','华北17 可用区 A','210','',''),(125,25,'1','南华科技网有限公司','数据智能  应用开发  windows','华东19 可用区 F','422','',''),(126,25,'1','南华科技网有限公司','数据智能  应用开发  windows','华东18 可用区 B','160','',''),(127,25,'1','南华科技网有限公司','数据智能  应用开发  windows','华东19 可用区 C','180','',''),(128,25,'1','南华科技网有限公司','数据智能  应用开发  windows','华南19 可用区 D','190','',''),(129,25,'1','南华科技网有限公司','数据智能  应用开发  windows','华北18 可用区 A','210','',''),(130,25,'1','南华科技网有限公司','数据智能  应用开发  windows','华东20 可用区 F','422','',''),(131,26,'1','南华科技网有限公司','数据智能  应用开发  windows','华东19 可用区 B','160','',''),(132,26,'1','南华科技网有限公司','数据智能  应用开发  windows','华东20 可用区 C','180','',''),(133,26,'1','南华科技网有限公司','数据智能  应用开发  windows','华南20 可用区 D','190','',''),(134,26,'1','南华科技网有限公司','数据智能  应用开发  windows','华北19 可用区 A','210','',''),(135,26,'1','南华科技网有限公司','数据智能  应用开发  windows','华东21 可用区 F','422','',''),(136,27,'1','南华科技网有限公司','数据智能  应用开发  windows','华东20 可用区 B','160','',''),(137,27,'1','南华科技网有限公司','数据智能  应用开发  windows','华东21 可用区 C','180','',''),(138,27,'1','南华科技网有限公司','数据智能  应用开发  windows','华南21 可用区 D','190','',''),(139,27,'1','南华科技网有限公司','数据智能  应用开发  windows','华北20 可用区 A','210','',''),(140,27,'1','南华科技网有限公司','数据智能  应用开发  windows','华东22 可用区 F','422','',''),(141,28,'1','南华科技网有限公司','数据智能  应用开发  windows','华东21 可用区 B','160','',''),(142,28,'1','南华科技网有限公司','数据智能  应用开发  windows','华东22 可用区 C','180','',''),(143,28,'1','南华科技网有限公司','数据智能  应用开发  windows','华南22 可用区 D','190','',''),(144,28,'1','南华科技网有限公司','数据智能  应用开发  windows','华北21 可用区 A','210','',''),(145,28,'1','南华科技网有限公司','数据智能  应用开发  windows','华东23 可用区 F','422','',''),(146,28,'1','南华科技网有限公司','数据智能  应用开发  windows','华东22 可用区 B','160','',''),(147,29,'1','南华科技网有限公司','数据智能  应用开发  windows','华东23 可用区 C','180','',''),(148,29,'1','南华科技网有限公司','数据智能  应用开发  windows','华南23 可用区 D','190','',''),(149,29,'1','南华科技网有限公司','数据智能  应用开发  windows','华北22 可用区 A','210','',''),(150,29,'1','南华科技网有限公司','数据智能  应用开发  windows','华东24 可用区 F','422','',''),(151,29,'1','南华科技网有限公司','数据智能  应用开发  windows','华东23 可用区 B','160','',''),(152,30,'1','南华科技网有限公司','数据智能  应用开发  windows','华东24 可用区 C','180','',''),(153,30,'1','南华科技网有限公司','数据智能  应用开发  windows','华南24 可用区 D','190','',''),(154,30,'1','南华科技网有限公司','数据智能  应用开发  windows','华北23 可用区 A','210','',''),(155,30,'1','南华科技网有限公司','数据智能  应用开发  windows','华东25 可用区 F','422','',''),(156,30,'1','南华科技网有限公司','数据智能  应用开发  windows','华东24 可用区 B','160','',''),(157,31,'1','南华科技网有限公司','数据智能  应用开发  windows','华东25 可用区 C','180','',''),(158,31,'1','南华科技网有限公司','数据智能  应用开发  windows','华南25 可用区 D','190','',''),(159,31,'1','南华科技网有限公司','数据智能  应用开发  windows','华北24 可用区 A','210','',''),(160,31,'1','南华科技网有限公司','数据智能  应用开发  windows','华东26 可用区 F','422','',''),(161,31,'1','南华科技网有限公司','数据智能  应用开发  windows','华东25 可用区 B','160','',''),(162,31,'1','南华科技网有限公司','数据智能  应用开发  windows','华东26 可用区 C','180','',''),(163,32,'1','南华科技网有限公司','数据智能  应用开发  windows','华南26 可用区 D','190','',''),(164,32,'1','南华科技网有限公司','数据智能  应用开发  windows','华北25 可用区 A','210','',''),(165,32,'1','南华科技网有限公司','数据智能  应用开发  windows','华东27 可用区 F','422','',''),(166,32,'1','南华科技网有限公司','数据智能  应用开发  windows','华东26 可用区 B','160','',''),(167,32,'1','南华科技网有限公司','数据智能  应用开发  windows','华东27 可用区 C','180','',''),(168,33,'1','南华科技网有限公司','数据智能  应用开发  windows','华南27 可用区 D','190','',''),(169,33,'1','南华科技网有限公司','数据智能  应用开发  windows','华北26 可用区 A','210','',''),(170,33,'1','南华科技网有限公司','数据智能  应用开发  windows','华东28 可用区 F','422','',''),(171,33,'1','南华科技网有限公司','数据智能  应用开发  windows','华东27 可用区 B','160','',''),(172,33,'1','南华科技网有限公司','数据智能  应用开发  windows','华东28 可用区 C','180','',''),(173,34,'1','南华科技网有限公司','数据智能  应用开发  windows','华南28 可用区 D','190','',''),(174,34,'1','南华科技网有限公司','数据智能  应用开发  windows','华北27 可用区 A','210','',''),(175,34,'1','南华科技网有限公司','数据智能  应用开发  windows','华东29 可用区 F','422','',''),(176,34,'1','南华科技网有限公司','数据智能  应用开发  windows','华东28 可用区 B','160','',''),(177,34,'1','南华科技网有限公司','数据智能  应用开发  windows','华东29 可用区 C','180','',''),(178,34,'1','南华科技网有限公司','数据智能  应用开发  windows','华南29 可用区 D','190','',''),(179,35,'1','南华科技网有限公司','数据智能  应用开发  windows','华北28 可用区 A','210','',''),(180,35,'1','南华科技网有限公司','数据智能  应用开发  windows','华东30 可用区 F','422','',''),(181,35,'1','南华科技网有限公司','数据智能  应用开发  windows','华东29 可用区 B','160','',''),(182,35,'1','南华科技网有限公司','数据智能  应用开发  windows','华东30 可用区 C','180','',''),(183,35,'1','南华科技网有限公司','数据智能  应用开发  windows','华南30 可用区 D','190','',''),(184,36,'1','南华科技网有限公司','数据智能  应用开发  windows','华北29 可用区 A','210','',''),(185,36,'1','南华科技网有限公司','数据智能  应用开发  windows','华东31 可用区 F','422','',''),(186,36,'1','南华科技网有限公司','数据智能  应用开发  windows','华东30 可用区 B','160','',''),(187,36,'1','南华科技网有限公司','数据智能  应用开发  windows','华东31 可用区 C','180','',''),(188,36,'1','南华科技网有限公司','数据智能  应用开发  windows','华南31 可用区 D','190','',''),(189,37,'1','南华科技网有限公司','数据智能  应用开发  windows','华北30 可用区 A','210','',''),(190,37,'1','南华科技网有限公司','数据智能  应用开发  windows','华东32 可用区 F','422','',''),(191,37,'1','南华科技网有限公司','数据智能  应用开发  windows','华东31 可用区 B','160','',''),(192,37,'1','南华科技网有限公司','数据智能  应用开发  windows','华东32 可用区 C','180','',''),(193,37,'1','南华科技网有限公司','数据智能  应用开发  windows','华南32 可用区 D','190','',''),(194,37,'1','南华科技网有限公司','数据智能  应用开发  windows','华北31 可用区 A','210','',''),(195,38,'1','南华科技网有限公司','数据智能  应用开发  windows','华东33 可用区 F','422','',''),(196,38,'1','南华科技网有限公司','数据智能  应用开发  windows','华东32 可用区 B','160','',''),(197,38,'1','南华科技网有限公司','数据智能  应用开发  windows','华东33 可用区 C','180','',''),(198,38,'1','南华科技网有限公司','数据智能  应用开发  windows','华南33 可用区 D','190','',''),(199,38,'1','南华科技网有限公司','数据智能  应用开发  windows','华北32 可用区 A','210','',''),(200,39,'1','南华科技网有限公司','数据智能  应用开发  windows','华东34 可用区 F','422','',''),(201,39,'1','南华科技网有限公司','数据智能  应用开发  windows','华东33 可用区 B','160','',''),(202,39,'1','南华科技网有限公司','数据智能  应用开发  windows','华东34 可用区 C','180','',''),(203,39,'1','南华科技网有限公司','数据智能  应用开发  windows','华南34 可用区 D','190','',''),(204,39,'1','南华科技网有限公司','数据智能  应用开发  windows','华北33 可用区 A','210','',''),(205,40,'1','南华科技网有限公司','数据智能  应用开发  windows','华东35 可用区 F','422','',''),(206,40,'1','南华科技网有限公司','数据智能  应用开发  windows','华东34 可用区 B','160','',''),(207,40,'1','南华科技网有限公司','数据智能  应用开发  windows','华东35 可用区 C','180','',''),(208,40,'1','南华科技网有限公司','数据智能  应用开发  windows','华南35 可用区 D','190','',''),(209,40,'1','南华科技网有限公司','数据智能  应用开发  windows','华北34 可用区 A','210','',''),(210,40,'1','南华科技网有限公司','数据智能  应用开发  windows','华东36 可用区 F','422','',''),(211,41,'1','南华科技网有限公司','数据智能  应用开发  windows','华东36 可用区 F','423','',''),(212,41,'1','南华科技网有限公司','数据智能  应用开发  windows','华东35 可用区 B','424','',''),(213,41,'1','南华科技网有限公司','数据智能  应用开发  windows','华东36 可用区 C','425','',''),(214,41,'1','南华科技网有限公司','数据智能  应用开发  windows','华南36 可用区 D','426','',''),(215,41,'1','南华科技网有限公司','数据智能  应用开发  windows','华北35 可用区 A','427','',''),(216,42,'1','南华科技网有限公司','数据智能  应用开发  windows','华东37 可用区 F','428','',''),(217,42,'1','南华科技网有限公司','数据智能  应用开发  windows','华东37 可用区 F','429','',''),(218,42,'1','南华科技网有限公司','数据智能  应用开发  windows','华东36 可用区 B','430','',''),(219,42,'1','南华科技网有限公司','数据智能  应用开发  windows','华东37 可用区 C','431','',''),(220,42,'1','南华科技网有限公司','数据智能  应用开发  windows','华南37 可用区 D','432','','');

/*Table structure for table `vue-productlist` */

DROP TABLE IF EXISTS `vue-productlist`;

CREATE TABLE `vue-productlist` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cpuMemory` varchar(255) CHARACTER SET utf8 NOT NULL,
  `publicNetworkIP` varchar(255) CHARACTER SET utf8 NOT NULL,
  `systemDisk` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tips` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `vue-productlist` */

insert  into `vue-productlist`(`id`,`productName`,`remark`,`cpuMemory`,`publicNetworkIP`,`systemDisk`,`price`,`Tips`) values (1,'云服务器 CVM','适用于轻量级个人网站及web应用','1核1G','1M','40GB','70元/月','新人专享-9.9元限时抢购'),(2,'GPU 云服务器','适用于中小型企业官网及简单APP应用','2核2G','2M','60GB','155元/月','更可享受年付8.3折、2年7折'),(3,'FPGA云服务器','适用于中量级企业业务及数据处理','2核4G','3M','80GB','199元/月','更可享受年付8.3折、2年7折'),(4,'专属服务器 DCC','适用于高并发和高数据要求的场景','4核4G','4M','100GB','299元/月','更可享受年付8.3折、2年7折');

/*Table structure for table `vue-serverproduct` */

DROP TABLE IF EXISTS `vue-serverproduct`;

CREATE TABLE `vue-serverproduct` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '产品名字\r\n',
  `productID` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '产品id\r\n',
  `productIntroduction` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '产品介绍\r\n',
  `productRenewalfee` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '是否续费',
  `selected` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '是否选中',
  `Introduction` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品介绍',
  `classification` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品分类',
  `productIMG` varchar(255) NOT NULL COMMENT '商品图片',
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `productID` (`productID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `vue-serverproduct` */

insert  into `vue-serverproduct`(`id`,`productName`,`productID`,`productIntroduction`,`productRenewalfee`,`selected`,`Introduction`,`classification`,`productIMG`) values (1,'云服务器 CVM','1','NEW','续费','选择','云服务器CVM 为您提供安全可靠的弹性计算服务','服务器','./Public/Uploads/20181129/renzheng02.png'),(2,'GPU 云服务器','2','HOT','','','GPU 云服务器，具有实时高速的并行计算和浮点计算','服务器','./Public/Uploads/20181129/renzheng02.png'),(8,'FPGA云服务器','3','NEW','','','FPGA 云服务器 您可以在FPGA实例上编程','服务器','./Public/Uploads/20181129/renzheng02.png'),(9,'专属服务器 DCC','4','HOT','','','提供性能可控、物理资源隔离的专属云计算服务','服务器','./Public/Uploads/20181129/renzheng02.png'),(11,'物理服务器BBC','5','NEW','','','云环境中独享的高性能物理服务器','服务器','./Public/Uploads/20181129/renzheng02.png'),(12,'专属服务器 DCC','6','NEW','','','提供性能可控、物理资源隔离的专属云计算服务','服务器','./Public/Uploads/20181129/renzheng02.png'),(13,'服务器CPM','7','HOT','','','服务器供应及运维工作交由腾讯云，您可专注于业务创新','服务器','./Public/Uploads/20181129/renzheng02.png'),(15,'专用宿主机 CDH','8','HOT','','','资源独享、物理隔离的云端计算服务，满足您资源独享、安全、合规的需求','服务器','./Public/Uploads/20181129/renzheng02.png'),(16,'弹性高性能计算E-HPC','9','五折特惠','','','为用户提供一站式公共云HPC服务，面向教育科研，企事业单位和个人，提供快捷','数据处理','./Public/Uploads/20181129/cloudmarket.png'),(21,'实时计算','10','热卖','','','高性能实时大数据处理平台，广泛应用于流式数据处理、离线数据处理、DataLake计算等场景','数据处理','./Public/Uploads/20181129/cloudmarket.png'),(22,'超级计算集群','11','热卖','','','使用高速RDMA网络互联的CPU以及GPU等异构加速设备，','数据处理','./Public/Uploads/20181129/cloudmarket.png'),(23,'弹性高性能计算E-HPC','13','八折特惠','','','为用户提供一站式公共云HPC服务，面向教育科研，企事业单位和个人，提供快捷，弹性','数据处理','./Public/Uploads/20181129/cloudmarket.png'),(24,'批量计算','14','NEW','','','批量计算（BatchCompute）是一种适用于大规模并行批处理作业的分布式云服务','数据处理','./Public/Uploads/20181129/cloudmarket.png'),(25,'弹性计算','15','HOT','','','实现公网IP和ECS、NAT网关、SLB的解耦，满足灵活管理的要求','数据处理','./Public/Uploads/20181129/cloudmarket.png'),(26,'负载均衡 SLB','16','HOT','','','对多台云服务器进行流量分发的负载均衡服务，可以通过流量分发扩展应用系统对外的服务能力','数据处理','./Public/Uploads/20181129/cloudmarket.png'),(27,'云解析 PrivateZone','17','热卖','','','环境的私有域名解析和管理服务。可以在自定义的一个或多个专有网络中快速构建DNS系统，实现私有域名映射到IP资源地址。','数据处理','./Public/Uploads/20181129/cloudmarket.png'),(28,'南华-代码托管 ','18','八折特惠','','','南华-代码托管为企业和个人开发者提供安全、高速、便捷的Git库托管服务','云服务','./Public/Uploads/20181129/cloudmarket5.png'),(29,'南华-Maven公共仓库','19','热卖','','','公共仓库提供了maven central、jcenter、google、spring等常用maven制品仓库的镜像功能。','云服务','./Public/Uploads/20181129/cloudmarket5.png'),(30,'容器镜像服务','20','HOT','','','供安全的镜像托管能力，稳定的国内外镜像构建服务，便捷的镜像授权功能，方便用户进行镜像全生命周期管理。','云服务','./Public/Uploads/20181129/cloudmarket5.png'),(31,'南华-制品仓库','21','HOT','','','制品仓库提供基于maven、helm的企业级私有仓库服务，用于管理企业级依赖托管','云服务','./Public/Uploads/20181129/cloudmarket5.png'),(32,'企业级分布式服务 EDAS','22','NEW','','','EDAS 是一个围绕应用和微服务的PaaS平台，提供多样的应用发布和轻量级微服务解决方案','云服务','./Public/Uploads/20181129/cloudmarket5.png'),(33,'业务实时监控服务 ARMS','23','HOT','','','业务实时监控服务 (Application Real-Time Monitoring Service, 简称ARMS) 是一款APM类的监控产品。','云服务','./Public/Uploads/20181129/cloudmarket5.png'),(34,'应用高可用服务','24','HOT','','','应用高可用服务（Application High Availability Service）是一款专注于提高应用高可用能力的SaaS产品，提供应用架构自动探测','云服务','./Public/Uploads/20181129/cloudmarket5.png'),(35,'日志服务 LOG','25','HOT','','','提供日志类数据采集、智能查询分析、消费与投递等功能，全面提升海量日志处理/分析能力。','云服务','./Public/Uploads/20181129/cloudmarket5.png'),(36,'云数据库 MySQL 版 ','26','HOT','','','作为开源软件组合 LAMP（Linux + Apache + MySQL + Perl/PHP/Python）中的重要一环，','云数据库','./Public/Uploads/20181129/cloudmarket4.png'),(37,'云数据库 MariaDB 版','27','HOT','','','基于MariaDB企业版全球独家合作认证，提供Oracle兼容性及众多企业级数据库特性。','云数据库','./Public/Uploads/20181129/cloudmarket4.png'),(38,'分布式关系型数据库','28','HOT','','','DRDS 专注于解决单机关系型数据库扩展性问题，具备轻量(无状态)、灵活、稳定、高效等特性','云数据库','./Public/Uploads/20181129/cloudmarket4.png'),(39,'云数据库POLARDB','29','NEW','','','MySQL 100% 兼容，存储容量最高可达 100T，性能最高提升至 MySQL 的 6 倍，单库最多可扩展到 16 个节点','云数据库','./Public/Uploads/20181129/cloudmarket4.png'),(40,'云数据库 Redis 版','30','NEW','','','高可靠双机热备架构及可无缝扩展的集群架构，满足高读写性能场景及容量需弹性变配的业务需求。','云数据库','./Public/Uploads/20181129/cloudmarket4.png'),(41,'RDS SQL Server 版','31','HOT','','','SQL Server支持复杂的SQL查询，性能优秀，对基于Windows平台具有完美的支持。','云数据库','./Public/Uploads/20181129/cloudmarket4.png'),(43,'RDS PostgreSQL 版','32','HOT','','','PostgreSQL，面向企业复杂SQL的OLTP业务场景，支持NoSQL数据类型','云数据库','./Public/Uploads/20181129/cloudmarket4.png'),(44,'HybridDB for MySQL','33','HOT','','','云数据库HybridDB for MySQL （原名PetaData关系型数据库。','云数据库','./Public/Uploads/20181129/cloudmarket4.png'),(45,'对象存储 OSS','34','HOT','','','海量、安全、低成本、高可靠的云存储服务，提供99.999999999%的数据可靠性。','存储','./Public/Uploads/20181129/cloudmarket1.png'),(46,'文件存储 NAS','35','HOT','','','，弹性扩展，高可靠，高性能的分布式文件系统。它基于 POSIX 文件接口','存储','./Public/Uploads/20181129/cloudmarket1.png'),(47,'智能云硬盘','36','HOT','','','提供影像文件存储、管理等基础功能以外，还支持对影像内容进行分类打标','存储','./Public/Uploads/20181129/cloudmarket1.png'),(48,'智能媒体管理','37','NEW','','','提供一站式数据处理、分析、检索等管控体验。针对不同的业务场景，封装整合完整的处理能力，让数据快速流转。','存储','./Public/Uploads/20181129/cloudmarket1.png'),(49,'混合云备份','38','NEW','','','混合云备份（简称HBR）是一种简单易用且高性价比的在线备份服务','存储','./Public/Uploads/20181129/cloudmarket1.png'),(50,'混合云容灾服务','39','NEW','','','混合云容灾（Hybrid Disaster Recovery， 简称HDR) 是一个为企业应用提供云+本地双备份与云容灾的服务。','存储','./Public/Uploads/20181129/cloudmarket1.png'),(51,'云存储网关 ','40','NEW','','','云存储网关是一款可在线下和云上部署的软网关，','存储','./Public/Uploads/20181129/cloudmarket1.png'),(52,'混合云存储阵列','41','NEW','','','混合云存储阵列和云存储服务相结合提供了一种经济高效，易于管理的混合云存储解决方案','存储','./Public/Uploads/20181129/cloudmarket1.png'),(53,'','','','','','','','');

/*Table structure for table `vue-serverproductattributes` */

DROP TABLE IF EXISTS `vue-serverproductattributes`;

CREATE TABLE `vue-serverproductattributes` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `productID` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '产品id\r\n',
  `productAttributesID` varchar(255) NOT NULL COMMENT '产品属性id\r\n',
  `productmodel` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '产品机型\r\n',
  `productMirror` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '产品镜像\r\n',
  `Clouddisk` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '云盘',
  `PRODUCTmodeltips` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '机型简介',
  `mirrortips` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL COMMENT '镜像简介',
  `modelprice` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '机型价格\r\n',
  `mirrorprice` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '镜像价格',
  `cloudprice` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '云盘价格',
  `productMirrortIMG` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '镜像图片',
  PRIMARY KEY (`id`,`productID`,`productAttributesID`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `vue-serverproductattributes` */

insert  into `vue-serverproductattributes`(`id`,`productID`,`productAttributesID`,`productmodel`,`productMirror`,`Clouddisk`,`PRODUCTmodeltips`,`mirrortips`,`modelprice`,`mirrorprice`,`cloudprice`,`productMirrortIMG`) values (1,'1','1','入门配置（1核1GB）','Windows Server 2012 R2 数据中心版 64位中文版','SSD云盘','适用于起步阶段的个人网站','','100','110','110','./Public/Uploads/20181129/25220_152135_8502.png'),(2,'1','1','基础配置（1核2GB）','Windows 2008 R2 SP1 64位 ','高效云盘','有一定访问量的网站或APP','','200','120','120','./Public/Uploads/20181129/25220_152135_8502.png'),(3,'1','3','普及配置（2核4GB）','Ubuntu Server 16.04.1 LTS 64位','混合云盘','并发适中的APP或普通数据处理	','','300','130','130','./Public/Uploads/20181129/25220_152156_3465.png'),(4,'1','4','专业配置（4核8GB）','CentOS 7.2 64位','','适用于并发要求较高的APP	','','400','140','140','./Public/Uploads/20181129/25220_152156_3465.png'),(5,'2','1','入门配置（1核1GB）','Windows Server 2012 R2 数据中心版 64位中文版','SSD云盘','适用于起步阶段的个人网站','','150','160','160','./Public/Uploads/20181129/25220_152135_8502.png'),(7,'2','2','基础配置（1核2GB）','Windows 2008 R2 SP1 64位','高效云盘','有一定访问量的网站或APP','','210','180','190','./Public/Uploads/20181129/25220_152135_8502.png'),(9,'2','3','普及配置（2核4GB）','CentOS 7.2 64位','混合云盘','并发适中的APP或普通数据处理	','','320','220','310','./Public/Uploads/20181129/25220_152156_3465.png'),(10,'2','4','专业配置（4核8GB）','Ubuntu Server 16.04.1 LTS 64位','','适用于并发要求较高的APP	','','420','170','','./Public/Uploads/20181129/25220_152156_3465.png'),(11,'3','1','入门配置（1核1GB）','Windows Server 2012 R2 数据中心版 64位中文版','SSD云盘','适用于起步阶段的个人网站','','420','170','310','./Public/Uploads/20181129/25220_152135_8502.png'),(12,'3','2','基础配置（1核2GB）','Windows 2008 R2 SP1 64位','高效云盘','有一定访问量的网站或APP','','210','220','210','./Public/Uploads/20181129/25220_152135_8502.png'),(13,'3','3','普及配置（2核4GB）','CentOS 7.2 64位','混合云盘','并发适中的APP或普通数据处理','','320','170','200','./Public/Uploads/20181129/25220_152156_3465.png'),(14,'3','4','专业配置（4核8GB','Ubuntu Server 16.04.1 LTS 64位','','适用于并发要求较高的APP','','270','170','210','./Public/Uploads/20181129/25220_152156_3465.png'),(15,'4','1','入门配置（1核1GB）','Windows Server 2012 R2 数据中心版 64位中文版','SSD云盘','适用于起步阶段的个人网站','','160','180','180','./Public/Uploads/20181129/25220_152135_8502.png'),(16,'4','2','基础配置（1核2GB）','Windows 2008 R2 SP1 64位','高效云盘','有一定访问量的网站或APP','','230','230','320','./Public/Uploads/20181129/25220_152135_8502.png'),(17,'4','3','普及配置（2核4GB）','CentOS 7.2 64位','混合云盘','并发适中的APP或普通数据处理','','270','250','300','./Public/Uploads/20181129/25220_152156_3465.png'),(18,'4','4','专业配置（4核8GB）','Ubuntu Server 16.04.1 LTS 64位','','适用于并发要求较高的APP','','280','290','','./Public/Uploads/20181129/25220_152156_3465.png'),(19,'5','1','入门配置（1核1GB）','Windows Server 2012 R2 数据中心版 64位中文版','混合云盘','适用于起步阶段的个人网站','','210','150','160','./Public/Uploads/20181129/25220_152135_8502.png'),(20,'5','2','基础配置（1核2GB）','Windows 2008 R2 SP1 64位','高效云盘','有一定访问量的网站或APP','','230','210','170','./Public/Uploads/20181129/25220_152135_8502.png'),(21,'5','3','普及配置（2核4GB）','CentOS 7.2 64位','SSD云盘','并发适中的APP或普通数据处理','','250','190','170','./Public/Uploads/20181129/25220_152156_3465.png'),(22,'5','4','专业配置（4核8GB）','Ubuntu Server 16.04.1 LTS 64位','','适用于并发要求较高的APP','','350','210','','./Public/Uploads/20181129/25220_152156_3465.png'),(23,'6','1','入门配置（1核1GB）','Windows Server 2012 R2 数据中心版 64位中文版','SSD云盘','适用于起步阶段的个人网站','','130','150','160','./Public/Uploads/20181129/25220_152135_8502.png'),(24,'6','2','基础配置（1核2GB）','Windows 2008 R2 SP1 64位','高效云盘	','有一定访问量的网站或APP','','210','160','190','./Public/Uploads/20181129/25220_152135_8502.png'),(25,'6','3','普及配置（2核4GB）','CentOS 7.2 64位','混合云盘','	并发适中的APP或普通数据处理','','320','220','290','./Public/Uploads/20181129/25220_152156_3465.png'),(26,'6','4','专业配置（4核8GB）','Ubuntu Server 16.04.1 LTS 64位','','适用于并发要求较高的APP	','','220','320','','./Public/Uploads/20181129/25220_152156_3465.png'),(27,'7','1','入门配置（1核1GB）','Windows Server 2012 R2 数据中心版 64位中文版','高效云盘','适用于起步阶段的个人网站','','150','180','180','./Public/Uploads/20181129/25220_152135_8502.png'),(28,'7','2','基础配置（1核2GB）','Windows 2008 R2 SP1 64位','SSD云盘','有一定访问量的网站或APP','','200','280','300','./Public/Uploads/20181129/25220_152135_8502.png'),(29,'7','3','普及配置（2核4GB）','CentOS 7.2 64位','混合云盘','有一定访问量的网站或APP	','','330','380','160','./Public/Uploads/20181129/25220_152156_3465.png'),(30,'7','4','专业配置（4核8GB)','Ubuntu Server 16.04.1 LTS 64位	','','适用于并发要求较高的APP	','','380','280','','./Public/Uploads/20181129/25220_152156_3465.png'),(31,'8','1','入门配置（1核1GB）','Windows Server 2012 R2 数据中心版 64位中文版','高效云盘','适用于起步阶段的个人网站','','200','200','100','./Public/Uploads/20181129/25220_152135_8502.png'),(32,'8','2','基础配置（1核2GB）	','Windows 2008 R2 SP1 64位','SSD云盘','有一定访问量的网站或APP	','','250','240','333','./Public/Uploads/20181129/25220_152135_8502.png'),(33,'8','3','普及配置（2核4GB）	','CentOS 7.2 64位	','混合云盘	','并发适中的APP或普通数据处理	','','300','300','200','./Public/Uploads/20181129/25220_152156_3465.png'),(34,'8','4','专业配置（4核8GB	)	','Ubuntu Server 16.04.1 LTS 64位	','','适用于并发要求较高的APP	','','350','320','','./Public/Uploads/20181129/25220_152156_3465.png'),(35,'','','','','','','','','','','');

/*Table structure for table `vue-serverproductdateattribute` */

DROP TABLE IF EXISTS `vue-serverproductdateattribute`;

CREATE TABLE `vue-serverproductdateattribute` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `productID` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '产品id\r\n',
  `productarea` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '地域',
  `ctareaprice` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '地域价格',
  `Duration` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '时长',
  `Durationprice` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '时长价格\r\n',
  PRIMARY KEY (`id`,`productID`,`productarea`) USING BTREE,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `vue-serverproductdateattribute` */

insert  into `vue-serverproductdateattribute`(`id`,`productID`,`productarea`,`ctareaprice`,`Duration`,`Durationprice`) values (1,'1','广州','100','1个月','100'),(2,'1','上海 ','120','2个月','200'),(3,'1','北京','150','3个月','300'),(4,'1','成都','130','半年','600'),(5,'1','重庆','135','1年','1200'),(6,'1','香港','155','2年','2400'),(7,'1','新加坡','145','3年','3000'),(8,'1','曼谷','145','4年','4000');

/*Table structure for table `vue-shopingcart` */

DROP TABLE IF EXISTS `vue-shopingcart`;

CREATE TABLE `vue-shopingcart` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'id\r\n',
  `userid` int(255) NOT NULL COMMENT '用户id',
  `userName` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '用户名字',
  `productid` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品id',
  `productName` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品名字',
  `cycle` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品时长',
  `Quantity` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品数量',
  `Configuration` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '配置信息',
  `price` decimal(65,2) NOT NULL COMMENT '价格',
  `paymentMethod` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '支付方式',
  `unitprice` decimal(65,2) NOT NULL COMMENT '单价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

/*Data for the table `vue-shopingcart` */

insert  into `vue-shopingcart`(`id`,`userid`,`userName`,`productid`,`productName`,`cycle`,`Quantity`,`Configuration`,`price`,`paymentMethod`,`unitprice`) values (82,1,'123','1','云服务器 CVM','1个月','8','地域 :广州机型 :1核1G镜像 :Windows Server 2012 R2 数据中心版 64位中文版','3280.00','在线支付','410.00'),(84,1,'123','1','云服务器 CVM','1个月','1','地域 :广州机型 :1核1G镜像 :Windows Server 2012 R2 数据中心版 64位中文版','410.00','在线支付','410.00'),(85,18,'张六','1','云服务器 CVM','半年','1','地域 :广州机型 :入门配置（1核1GB）镜像 :CentOS 7.2 64位','940.00','在线支付','940.00'),(86,18,'张六','2','GPU 云服务器','1个月','1','地域 :广州机型 :入门配置（1核1GB）镜像 :Windows Server 2012 R2 数据中心版 64位中文版','510.00','在线支付','510.00'),(87,19,'12399','1','云服务器 CVM','1个月','1','地域 :广州机型 :入门配置（1核1GB）镜像 :Windows Server 2012 R2 数据中心版 64位中文版','410.00','在线支付','410.00'),(88,20,'admin','2','GPU 云服务器','1个月','1','地域 :广州机型 :入门配置（1核1GB）镜像 :Windows Server 2012 R2 数据中心版 64位中文版','510.00','在线支付','510.00'),(89,20,'admin','2','GPU 云服务器','3年','1','地域 :香港机型 :专业配置（4核8GB）镜像 :Ubuntu Server 16.04.1 LTS 64位','3745.00','在线支付','3745.00'),(90,20,'admin','8','专用宿主机 CDH','3年','1','地域 :广州机型 :入门配置（1核1GB）镜像 :Ubuntu Server 16.04.1 LTS 64位	','3620.00','在线支付','3620.00');

/*Table structure for table `vue-software` */

DROP TABLE IF EXISTS `vue-software`;

CREATE TABLE `vue-software` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `genus` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `softwareName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `softwareExplain` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `softwarePrice` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `softwareTitle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `softwarePicture` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `vue-software` */

insert  into `vue-software`(`id`,`genus`,`softwareName`,`softwareExplain`,`softwarePrice`,`softwareTitle`,`softwarePicture`) values (2,'精选服务','耐思云虚拟主机(ASP/.NET)','基于南华云架构，易收录易推广','128元/年','热门','./Public/Uploads/2018-10-28/5bd54ab2cbc6c.png'),(3,'精选服务','ShopEx电子商务系统Nginx版','一键部署电子商务网站','0元/年','免费','./Public/Uploads/2018-10-28/5bd54aba8c5fe.jpg'),(4,'精选服务','云堡垒机_云匣子（20资产）','保障企业运维安全的“瑞士军刀”','180元/年','热门','./Public/Uploads/2018-10-28/5bd54ac4367aa.jpg'),(5,'精选服务','百度云主机 (主机_建站宝盒_域名)','建站系统一套，立刻开始制作网站','299元/年','热门','./Public/Uploads/2018-10-28/5bd54ad099a82.png'),(6,'初创型企业','ecshop(BCH主机模板)','B2C独立网店系统','0元/年','新品','./Public/Uploads/2018-10-28/5bd54cf891f9f.jpg'),(7,'初创型企业','一站式企业管理saas平台 daydao','核心企业云应用，一站式工作平台','0元/年','新品','./Public/Uploads/2018-10-28/5bd54cff3db6e.jpg'),(8,'初创型企业','建站宝盒基础版','定制开发的一款自助建站系统','0元/年','免费','./Public/Uploads/2018-10-28/5bd54d0a4e181.jpg'),(9,'初创型企业','云 速成美站（2018版 含主机空间）','建站，1个域名，就全部搞定','198元/年','热门','./Public/Uploads/2018-10-28/5bd54d122d200.jpg'),(10,'互联网企业','DiscuzX论坛系统Apache版','DiscuzX3.3论坛系统镜像','0元/年','免费','./Public/Uploads/2018-10-28/5bd54dab86ab7.jpg'),(11,'互联网企业','新网互联迅邮（百度版）','针对高端企业用户的商务邮局','480元/年','新品','./Public/Uploads/2018-10-28/5bd54db297a31.png'),(12,'互联网企业','耐思云虚拟主机(PHP)全能版','操作简单，功能强大，稳定可靠','520元/年','热门','./Public/Uploads/2018-10-28/5bd54dc0405c1.png'),(13,'互联网企业','站叔叔云企业官网百度版','云计算智能建站平台','820元/年','新品','./Public/Uploads/2018-10-28/5bd54dc858bf8.jpg'),(14,'传统企业','云速成模板','超快速建设网站，会打字即可建站','198元/年','新品','./Public/Uploads/2018-10-28/5bd54f227c982.jpg'),(15,'传统企业','PHP5_6 运行环境（LNMP）','专业的云镜像部署和服务','0元/年','免费','./Public/Uploads/2018-10-28/5bd54f2870a6b.png'),(16,'传统企业','程序漏洞修复木马清除(A5)','保障网站正常运行','500元/年','新品','./Public/Uploads/2018-10-28/5bd54f2e1c139.jpg'),(17,'传统企业','258商务卫士','企业互联网一站式解决方案','1989元/年','热门','./Public/Uploads/2018-10-28/5bd54f357831f.jpg'),(18,'开发者','硬盘数据恢复救援','可用于无镜像无备份硬盘损坏等','1989元/年','热门','./Public/Uploads/2018-10-28/5bd54fc5280e8.jpg'),(19,'开发者','Drupal(BCH主机模板)','基于PHP语言著名的WEB应用程序','0元/年','免费','./Public/Uploads/2018-10-28/5bd54fcddccf6.jpg'),(20,'开发者','LNMP_PHP多版本共存','LNMP运行环境,支持多版本共存','0元/年','免费','./Public/Uploads/2018-10-28/5bd54fd7d6372.jpg'),(21,'开发者','网站伪静态设置','针对通用程序设置伪静态','89元/年','热门','./Public/Uploads/2018-10-28/5bd54fde4b8b8.jpg'),(23,'外包','云堡垒机_云匣子（50资产）','支持手机运维，保障企业运维安全','198元/年','热门','./Public/Uploads/2018-10-28/5bd550650784e.png'),(24,'外包','安全狗云安全系统_Win2008_64位','集系统加固、网站及系统保护于一体','0元/年','免费','./Public/Uploads/2018-10-28/5bd5506c91c91.png'),(25,'外包','Discuz  BCH主机模板','以社区为基础的专业建站平台','0元/年','热门','./Public/Uploads/2018-10-28/5bd55073ec214.jpg'),(26,'外包','Wordpress安装与配置服务','与WordPress相关的全面按需服务','198元/年','热门','./Public/Uploads/2018-10-28/5bd550805b6ac.png');

/*Table structure for table `vue-user` */

DROP TABLE IF EXISTS `vue-user`;

CREATE TABLE `vue-user` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `userPwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `userPhone` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `userMail` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `userPhoto` varchar(50) CHARACTER SET utf8 DEFAULT './Public/Uploads/20181129/25220_215108_3296.png',
  `userProductPwd` int(6) DEFAULT '123456',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPRESSED;

/*Data for the table `vue-user` */

insert  into `vue-user`(`id`,`userName`,`userPwd`,`userPhone`,`userMail`,`userPhoto`,`userProductPwd`) values (20,'admin','21232f297a57a5a743894a0e4a801fc3','99999999999','166@qq.com','./Public/Uploads/20181129/25220_215108_3296.png',123456),(21,'zhangsan123','e10adc3949ba59abbe56e057f20f883e','99999998888','1611@qq.co','./Public/Uploads/20181129/25220_215108_3296.png',123456),(22,'123456','e10adc3949ba59abbe56e057f20f883e','21212121212','160@qq.co','./Public/Uploads/20181129/25220_215108_3296.png',123456);

/*Table structure for table `vue-userorder` */

DROP TABLE IF EXISTS `vue-userorder`;

CREATE TABLE `vue-userorder` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'id\r\n',
  `userid` int(255) NOT NULL COMMENT '用户id',
  `userName` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '用户名字',
  `data` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '订单号',
  `productName` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品名字',
  `cycle` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品时长',
  `Quantity` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品数量',
  `Configuration` varchar(1000) CHARACTER SET utf8 NOT NULL COMMENT '配置信息',
  `price` decimal(65,2) NOT NULL COMMENT '价格',
  `time` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=latin1;

/*Data for the table `vue-userorder` */

insert  into `vue-userorder`(`id`,`userid`,`userName`,`data`,`productName`,`cycle`,`Quantity`,`Configuration`,`price`,`time`) values (424,1,'123','15818703346187515433886211441','FPGA云服务器','1年','1','地域 :广州,机型 :入门配置（1核1GB）,镜像 :Windows Server 2012 R2 数据中心版 64位中文版,','1890.00','2018/11/28 下午3:03:41'),(425,1,'123','615048612068749315433886597341','数据处理','2年','1','规格 :华东10 可用区 B,周期 :2年,','2560.00','2018/11/28 下午3:04:19'),(426,1,'123','60127087446155815433888202381','弹性高性能计算E-HPC','4年','1','规格 :华东3 可用区 F,周期 :4年,','4422.00','2018/11/28 下午3:07:00'),(427,1,'123','98074135921354915434108065221','南华-制品仓库','1个月','1','规格 :华北13 可用区 A,周期 :1个月,','310.00','2018/11/28 下午9:13:26');

/*Table structure for table `vue-product` */

DROP TABLE IF EXISTS `vue-product`;

/*!50001 DROP VIEW IF EXISTS `vue-product` */;
/*!50001 DROP TABLE IF EXISTS `vue-product` */;

/*!50001 CREATE TABLE  `vue-product`(
 `modelprice` varchar(50) ,
 `productID` varchar(255) ,
 `productName` varchar(255) ,
 `productIntroduction` varchar(255) ,
 `productAttributesID` varchar(255) ,
 `productmodel` varchar(255) ,
 `productMirror` varchar(255) ,
 `Clouddisk` varchar(255) ,
 `PRODUCTmodeltips` varchar(255) ,
 `mirrortips` varchar(255) ,
 `productMirrortIMG` varchar(255) ,
 `cloudprice` varchar(50) ,
 `mirrorprice` varchar(50) 
)*/;

/*Table structure for table `vue-producttwo` */

DROP TABLE IF EXISTS `vue-producttwo`;

/*!50001 DROP VIEW IF EXISTS `vue-producttwo` */;
/*!50001 DROP TABLE IF EXISTS `vue-producttwo` */;

/*!50001 CREATE TABLE  `vue-producttwo`(
 `classification` varchar(255) ,
 `Introduction` varchar(255) ,
 `selected` varchar(255) ,
 `productRenewalfee` varchar(255) ,
 `productID` varchar(255) ,
 `productIntroduction` varchar(255) ,
 `productName` varchar(255) ,
 `productAttributesID` varchar(255) ,
 `Provider` varchar(255) ,
 `ProductLabel` varchar(255) ,
 `ProductSpecifications` varchar(255) ,
 `SpecificationsPrice` varchar(50) ,
 `productMirrortIMG` varchar(255) ,
 `productDetails` varchar(255) 
)*/;

/*View structure for view vue-product */

/*!50001 DROP TABLE IF EXISTS `vue-product` */;
/*!50001 DROP VIEW IF EXISTS `vue-product` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue-product` AS select `vue-serverproductattributes`.`modelprice` AS `modelprice`,`vue-serverproduct`.`productID` AS `productID`,`vue-serverproduct`.`productName` AS `productName`,`vue-serverproduct`.`productIntroduction` AS `productIntroduction`,`vue-serverproductattributes`.`productAttributesID` AS `productAttributesID`,`vue-serverproductattributes`.`productmodel` AS `productmodel`,`vue-serverproductattributes`.`productMirror` AS `productMirror`,`vue-serverproductattributes`.`Clouddisk` AS `Clouddisk`,`vue-serverproductattributes`.`PRODUCTmodeltips` AS `PRODUCTmodeltips`,`vue-serverproductattributes`.`mirrortips` AS `mirrortips`,`vue-serverproductattributes`.`productMirrortIMG` AS `productMirrortIMG`,`vue-serverproductattributes`.`cloudprice` AS `cloudprice`,`vue-serverproductattributes`.`mirrorprice` AS `mirrorprice` from (`vue-serverproduct` join `vue-serverproductattributes`) where (`vue-serverproduct`.`productID` = `vue-serverproductattributes`.`productID`) */;

/*View structure for view vue-producttwo */

/*!50001 DROP TABLE IF EXISTS `vue-producttwo` */;
/*!50001 DROP VIEW IF EXISTS `vue-producttwo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vue-producttwo` AS select `vue-serverproduct`.`classification` AS `classification`,`vue-serverproduct`.`Introduction` AS `Introduction`,`vue-serverproduct`.`selected` AS `selected`,`vue-serverproduct`.`productRenewalfee` AS `productRenewalfee`,`vue-serverproduct`.`productID` AS `productID`,`vue-serverproduct`.`productIntroduction` AS `productIntroduction`,`vue-serverproduct`.`productName` AS `productName`,`vue-commoditydata`.`productAttributesID` AS `productAttributesID`,`vue-commoditydata`.`provider` AS `Provider`,`vue-commoditydata`.`productlabel` AS `ProductLabel`,`vue-commoditydata`.`ProductSpecifications` AS `ProductSpecifications`,`vue-commoditydata`.`SpecificationsPrice` AS `SpecificationsPrice`,`vue-commoditydata`.`productMirrortIMG` AS `productMirrortIMG`,`vue-commoditydata`.`productDetails` AS `productDetails` from (`vue-commoditydata` join `vue-serverproduct`) where (`vue-commoditydata`.`productID` = `vue-serverproduct`.`productID`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

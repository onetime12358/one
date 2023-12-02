/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 8.0.26 : Database - text
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`text` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `text`;

/*Table structure for table `foodtable` */

DROP TABLE IF EXISTS `foodtable`;

CREATE TABLE `foodtable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `breakfast` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '早餐',
  `lunch` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '午餐',
  `dinner` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '晚餐',
  `user-id` int DEFAULT NULL COMMENT '用户id',
  `Dietitian-id` int DEFAULT NULL COMMENT '营养师id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `foodtable` */

insert  into `foodtable`(`id`,`breakfast`,`lunch`,`dinner`,`user-id`,`Dietitian-id`) values (1,'豆浆油条','鱼香肉丝','爆炒青椒',4,3),(2,'面包牛奶','番茄炒鸡蛋','牛肉炒青椒',1,5);

/*Table structure for table `my_table` */

DROP TABLE IF EXISTS `my_table`;

CREATE TABLE `my_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `my_table` */

/*Table structure for table `physicalcondition` */

DROP TABLE IF EXISTS `physicalcondition`;

CREATE TABLE `physicalcondition` (
  `user-id` int NOT NULL COMMENT '用户id',
  `wakeup` time DEFAULT NULL COMMENT '起床时间',
  `bedtime` time DEFAULT NULL COMMENT '睡觉时间',
  `meal-frequency` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '饮食次数',
  `favorite-cuisine` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '喜欢口味',
  `food-allergies` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '食物过敏',
  `food-preferences` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '喜欢的食物',
  `height` double DEFAULT NULL COMMENT '身高',
  `weight` double DEFAULT NULL COMMENT '体重',
  `body` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '身体状况',
  PRIMARY KEY (`user-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `physicalcondition` */

insert  into `physicalcondition`(`user-id`,`wakeup`,`bedtime`,`meal-frequency`,`favorite-cuisine`,`food-allergies`,`food-preferences`,`height`,`weight`,`body`) values (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `recipe` */

DROP TABLE IF EXISTS `recipe`;

CREATE TABLE `recipe` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '食谱id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '食谱名字',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '文本描述',
  `ingredients` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '原材料',
  `instructions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '步骤',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '制作时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `recipe` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`email`) values (1,'2114100713','123456','1067413804@qq.com'),(2,'123456','123456','1067413804@qq.com'),(6,'飞飞飞','123456','1067413804@qq.com'),(7,'测试1','123456','1067413804@qq.com'),(8,'测试2','123456','1067413804@qq.com'),(9,'测试登录','123456','123@qq.com'),(10,'张三','123456','1067413804@qq.com'),(11,'ddsja','123456','1067413804@qq.com'),(15,'未注册账号','123456','123@qq.com'),(16,'12345','123','1067413804@qq.com'),(17,'123455584','123','1067413804@qq.com'),(18,'1067413804','123456','bailihu30639662@126.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

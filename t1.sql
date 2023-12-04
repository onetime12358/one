/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : localhost:3306
 Source Schema         : t1

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : 65001

 Date: 05/06/2021 17:40:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '评价的用户',
  `mt_id` int(11) NOT NULL COMMENT '所属商户',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '评价的内容',
  `create_time` bigint(255) NOT NULL COMMENT '评价时间',
  `good_id` int(11) NOT NULL COMMENT '评价的商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (64, 4, 1, 'qweqweqwe', 1619499287414, 1);
INSERT INTO `comment` VALUES (65, 4, 1, '真不错', 1622773641124, 6);

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mt_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '商户邮箱',
  `mt_pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '商户密码',
  `mt_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL COMMENT '商户名称',
  `create_time` bigint(15) NOT NULL COMMENT '创建时间',
  `mt_ratio` float(10, 2) NOT NULL DEFAULT 0.10 COMMENT '支付比率',
  `mt_head_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_croatian_ci NULL DEFAULT NULL COMMENT '商户头像',
  `mt_status` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0待审核1审核通过2可运营3停用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `mt_name`(`mt_name`) USING BTREE COMMENT '唯一名称',
  UNIQUE INDEX `mt_email`(`mt_email`) USING BTREE COMMENT '唯一邮箱'
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_croatian_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES (1, '806317173@qq.com', '123456', 'DR护肤品', 1620279832992, 0.10, '/img/head/admin.jpg', 1);
INSERT INTO `merchant` VALUES (2, '8@qq.com', '123456', 'DR', 1620279832992, 0.20, '/img/head/admin.jpg', 1);

-- ----------------------------
-- Table structure for rotation
-- ----------------------------
DROP TABLE IF EXISTS `rotation`;
CREATE TABLE `rotation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `r_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rotation
-- ----------------------------
INSERT INTO `rotation` VALUES (1, 'advert1', '/img/advert/advert1.png');
INSERT INTO `rotation` VALUES (2, 'advert2', '/img/advert/advert2.png');

-- ----------------------------
-- Table structure for sys_access
-- ----------------------------
DROP TABLE IF EXISTS `sys_access`;
CREATE TABLE `sys_access`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限对应的地址',
  `status` tinyint(3) NOT NULL DEFAULT 1 COMMENT '1启用 0未启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_access
-- ----------------------------
INSERT INTO `sys_access` VALUES (1, '管理员主页', '/admin/index', 1);
INSERT INTO `sys_access` VALUES (3, '页面广告', '/admin/advert', 1);
INSERT INTO `sys_access` VALUES (4, '用户管理', '/admin/administrator', 1);
INSERT INTO `sys_access` VALUES (5, '角色管理', '/admin/role', 1);
INSERT INTO `sys_access` VALUES (6, '权限管理', '/admin/access', 1);

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mark` int(3) NOT NULL COMMENT '管理员标记',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
INSERT INTO `sys_admin` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '806317173@qq.com', 1);
INSERT INTO `sys_admin` VALUES (9, 'test', 'e10adc3949ba59abbe56e057f20f883e', 'porridge_h@163.com', 1);

-- ----------------------------
-- Table structure for sys_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_role`;
CREATE TABLE `sys_admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1 COMMENT '1启用 0未启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_admin_role
-- ----------------------------
INSERT INTO `sys_admin_role` VALUES (1, 1, 1, 1);
INSERT INTO `sys_admin_role` VALUES (17, 9, 5, 1);

-- ----------------------------
-- Table structure for sys_cart
-- ----------------------------
DROP TABLE IF EXISTS `sys_cart`;
CREATE TABLE `sys_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_goods
-- ----------------------------
DROP TABLE IF EXISTS `sys_goods`;
CREATE TABLE `sys_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `descibe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_merchant` int(11) NOT NULL,
  `stocks` int(11) NULL DEFAULT NULL,
  `state` tinyint(3) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_goods
-- ----------------------------
INSERT INTO `sys_goods` VALUES (1, 'DR护肤品2', '/img/index/迪奥2.jpg', 0.01, '护肤品 迪奥烈艳蓝金唇膏', 1, 30, 1);
INSERT INTO `sys_goods` VALUES (5, 'DR护肤品4', '/img/index/迪奥4.jfif', 0.01, '护肤品 迪奥烈艳蓝金唇膏', 1, 14, 1);
INSERT INTO `sys_goods` VALUES (6, 'DR护肤品5', '/img/index/迪奥5.jfif', 0.01, '护肤品 迪奥烈艳蓝金唇膏', 1, 4, 1);
INSERT INTO `sys_goods` VALUES (7, 'DR护肤品6', '/img/index/迪奥6.jfif', 0.01, '护肤品 迪奥烈艳蓝金唇膏', 1, 1, 1);
INSERT INTO `sys_goods` VALUES (8, 'DR护肤品7', '/img/index/迪奥7.jfif', 0.01, '护肤品 迪奥烈艳蓝金唇膏', 1, 3, 1);
INSERT INTO `sys_goods` VALUES (12, 'DR护肤品1', '/img/index/DR护肤品1.webp', 0.01, '护肤品 迪奥烈艳蓝金唇膏', 1, 2, 1);
INSERT INTO `sys_goods` VALUES (13, 'DR护肤品2', '/img/index/DR护肤品2.webp', 0.01, '护肤品 迪奥烈艳蓝金唇膏', 1, 1, 1);
INSERT INTO `sys_goods` VALUES (14, 'DR护肤品3', '/img/index/迪奥2.webp', 0.01, '护肤品 迪奥烈艳蓝金唇膏', 1, 1, 1);

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(255) NOT NULL COMMENT '0给管理员发送 1 商户  2用户',
  `receive` int(11) NOT NULL COMMENT '接收者的id',
  `create_time` bigint(20) NOT NULL COMMENT '通知发送时间',
  `mt_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (70, 'aaa', 'aaa', 2, 4, 1621351318012, 'DR护肤品');
INSERT INTO `sys_notice` VALUES (99, 'aaa', 'aaa', 2, 1, 1621347297910, 'DR护肤品');
INSERT INTO `sys_notice` VALUES (100, 'aaa', 'aaa', 2, 2, 1621347297917, 'DR护肤品');
INSERT INTO `sys_notice` VALUES (101, 'a', 'a', 2, 1, 1621349192135, 'DR护肤品');
INSERT INTO `sys_notice` VALUES (102, 'a', 'a', 2, 2, 1621349192143, 'DR护肤品');
INSERT INTO `sys_notice` VALUES (103, 'aaa', 'aaa', 2, 4, 1621351318012, 'DR护肤品');
INSERT INTO `sys_notice` VALUES (105, 'a', 'a', 0, 9, 1622015491107, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (106, 'a', 'a', 1, 1, 1622015519079, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (107, 'a', 'a', 1, 2, 1622015519081, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (109, '', '', 0, 9, 1622015563132, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (111, 'aa', 'aa', 0, 9, 1622016299734, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (113, 'aaaa', 'aaaa', 0, 9, 1622019917916, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (114, 'aaaa', 'aaaaa', 0, 9, 1622019923492, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (116, 'aaa', 'aaaa', 2, 6, 1622020124994, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (117, 'aaa', 'aaaa', 2, 4, 1622020124993, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (118, 'aaa', 'aaa ', 0, 1, 1622020697326, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (119, 'aaa', 'aaa ', 0, 9, 1622020697327, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (120, 'a', 'aaa', 0, 1, 1622020705983, '806317173@qq.com');
INSERT INTO `sys_notice` VALUES (121, 'a', 'aaa', 0, 9, 1622020705984, '806317173@qq.com');

-- ----------------------------
-- Table structure for sys_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_order`;
CREATE TABLE `sys_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id',
  `create_time` bigint(19) NOT NULL COMMENT '创建时间',
  `pay_time` bigint(19) NULL DEFAULT NULL COMMENT '支付时间',
  `goods_num` int(11) NOT NULL COMMENT '商品数量',
  `order_state` tinyint(3) NOT NULL DEFAULT 0 COMMENT '1已支付  0未支付',
  `order_mark` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品标记',
  `order_user` int(11) NOT NULL COMMENT '用户id',
  `order_merchant` int(11) NOT NULL COMMENT '商户id',
  `order_price` decimal(10, 2) NOT NULL COMMENT '订单总金额',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `order_notes` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单特殊注释',
  `user_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收件人',
  `user_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话号码',
  `coupon_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠卷代码',
  `pay_way` tinyint(3) NOT NULL COMMENT '1支付宝 0微信支付',
  `pay_code_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付链接',
  `cart_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '批量购买的商品',
  `merchant_ratio` float(11, 1) NOT NULL DEFAULT 1.0 COMMENT '订单创建时商户的费率',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `order_id`(`order_id`) USING BTREE COMMENT '订单号唯一'
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_order
-- ----------------------------
INSERT INTO `sys_order` VALUES (50, '120210602184323679-2076715178', 1622630603679, 1622630618679, 1, 1, '120210602184323673-1906345092', 4, 1, 0.01, 1, '', 'a', 'a', 'a', '', 0, '/img/qrcode/120210602184323673-1906345092.jpg', NULL, 0.1);
INSERT INTO `sys_order` VALUES (59, '120210602203510971730087913', 1622637310971, 1622637327183, 1, 1, '1202106022035109681280300310', 4, 1, 0.01, 1, '', 'a', 'a', 'a', '', 0, '/img/qrcode/1202106022035109681280300310.jpg', NULL, 0.1);
INSERT INTO `sys_order` VALUES (60, '1202106041007225811355007192', 1622772442581, 1622772626328, 1, 1, '120210604100722577-777163599', 4, 1, 0.01, 1, '', 'a', 'a', 'a', '', 0, '/img/qrcode/120210604100722577-777163599.jpg', NULL, 0.1);
INSERT INTO `sys_order` VALUES (61, '12021060410140698-495552438', 1622772846098, 1622772876426, 1, 1, '12021060410140697-1350654622', 4, 1, 0.01, 5, '', 'a', 'a', 'a', '', 0, '/img/qrcode/12021060410140697-1350654622.jpg', '16', 0.1);
INSERT INTO `sys_order` VALUES (62, '120210604101406148-789628907', 1622772846098, 1622772876426, 1, 1, '12021060410140697-1350654622', 4, 1, 0.01, 6, '', 'a', 'a', 'a', '', 0, '/img/qrcode/12021060410140697-1350654622.jpg', '14', 0.1);
INSERT INTO `sys_order` VALUES (66, '120210604174015655184659842', 1622799615655, 1622799629878, 1, 1, '1202106041740156542119737184', 4, 1, 0.01, 1, '', 'aaa', 'aaa', 'aaa', '', 0, '/img/qrcode/1202106041740156542119737184.jpg', NULL, 0.1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名',
  `status` tinyint(3) NOT NULL DEFAULT 1 COMMENT '1已启用 0未启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '站长', 1);
INSERT INTO `sys_role` VALUES (2, '未定义', 1);
INSERT INTO `sys_role` VALUES (5, '管理员', 0);
INSERT INTO `sys_role` VALUES (6, '会员', 1);

-- ----------------------------
-- Table structure for sys_role_access
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_access`;
CREATE TABLE `sys_role_access`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 1 COMMENT '1启用  0未启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 420 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_access
-- ----------------------------
INSERT INTO `sys_role_access` VALUES (239, 6, 1, 1);
INSERT INTO `sys_role_access` VALUES (240, 6, 3, 1);
INSERT INTO `sys_role_access` VALUES (241, 6, 4, 1);
INSERT INTO `sys_role_access` VALUES (399, 1, 1, 1);
INSERT INTO `sys_role_access` VALUES (400, 1, 3, 1);
INSERT INTO `sys_role_access` VALUES (401, 1, 4, 1);
INSERT INTO `sys_role_access` VALUES (402, 1, 5, 1);
INSERT INTO `sys_role_access` VALUES (403, 1, 6, 1);
INSERT INTO `sys_role_access` VALUES (412, 2, 1, 1);
INSERT INTO `sys_role_access` VALUES (413, 2, 3, 1);
INSERT INTO `sys_role_access` VALUES (414, 2, 4, 1);
INSERT INTO `sys_role_access` VALUES (415, 2, 5, 1);
INSERT INTO `sys_role_access` VALUES (416, 2, 6, 1);
INSERT INTO `sys_role_access` VALUES (417, 5, 1, 1);
INSERT INTO `sys_role_access` VALUES (418, 5, 5, 1);
INSERT INTO `sys_role_access` VALUES (419, 5, 6, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` bigint(255) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET ujis COLLATE ujis_japanese_ci NULL DEFAULT '/img/head/test.jpg',
  `mark` int(3) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, 'admin', '123456', '806317173@qq.com', '14778862680', 1621171486516, '/img/head/admin.jpg', 0);
INSERT INTO `user` VALUES (6, 'test', '123456', 'porridge_h@163.com', '14778862680', 1621408821180, '/img/head/test.jpg', 0);

SET FOREIGN_KEY_CHECKS = 1;

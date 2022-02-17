/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3309
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3309
 Source Schema         : hoetl

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 11/12/2021 14:13:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `EO_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_USER_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EO_USER_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EO_USER_ADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EO_CREATE_TIME` datetime NOT NULL,
  `EO_COST` decimal(10, 2) NOT NULL,
  `EO_STATUS` decimal(6, 0) NOT NULL,
  `EO_TYPE` decimal(6, 0) NOT NULL,
  PRIMARY KEY (`EO_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (1, '123123', '123', '上海', '2021-06-02 09:52:29', 100.00, 1, 1);
INSERT INTO `order` VALUES (2, '123123', '123', '北京', '2021-06-02 09:57:40', 484.00, 2, 1);
INSERT INTO `order` VALUES (3, '111', '111', '1', '2021-06-02 16:56:00', 19.00, 1, 1);
INSERT INTO `order` VALUES (4, '123', '123', '天津', '2021-12-09 00:00:34', 14.00, 1, 1);
INSERT INTO `order` VALUES (5, '123', '123', '天津', '2021-12-09 16:19:06', 300.00, 1, 1);
INSERT INTO `order` VALUES (6, '123', '123', '天津', '2021-12-09 16:20:23', 191.00, 1, 1);
INSERT INTO `order` VALUES (7, '123', '123', '天津', '2021-12-09 16:20:42', 191.00, 1, 1);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `EOD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_ID` decimal(10, 0) NOT NULL,
  `EP_ID` decimal(10, 0) NOT NULL,
  `EOD_QUANTITY` decimal(6, 0) NOT NULL,
  `EOD_COST` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`EOD_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 1, 35, 1, 100.00);
INSERT INTO `order_detail` VALUES (2, 2, 30, 11, 484.00);
INSERT INTO `order_detail` VALUES (3, 3, 33, 1, 19.00);
INSERT INTO `order_detail` VALUES (4, 4, 32, 1, 14.00);
INSERT INTO `order_detail` VALUES (5, 5, 34, 1, 300.00);
INSERT INTO `order_detail` VALUES (6, 6, 33, 1, 191.00);
INSERT INTO `order_detail` VALUES (7, 7, 32, 1, 141.00);
INSERT INTO `order_detail` VALUES (8, 7, 33, 1, 191.00);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `EP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EP_NAME` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EP_DESCRIPTION` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EP_PRICE` decimal(10, 2) NOT NULL,
  `EP_STOCK` decimal(10, 0) NOT NULL,
  `EPC_ID` decimal(10, 0) NULL DEFAULT NULL,
  `EPC_CHILD_ID` decimal(10, 0) NULL DEFAULT NULL,
  `EP_FILE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`EP_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (22, '房间10', '房间10', 213.00, 40, 21, 37, '01.jpg');
INSERT INTO `product` VALUES (24, '房间9', '房间9', 321.00, 29, 19, 18, '02.jpg');
INSERT INTO `product` VALUES (25, '房间8', '房间8', 441.00, 316, 33, 37, '03.jpg');
INSERT INTO `product` VALUES (29, '房间7', '房间7', 135.00, 97, 34, 38, '04.jpg');
INSERT INTO `product` VALUES (30, '房间6', '房间6', 441.00, 310, 26, 16, '06.jpg');
INSERT INTO `product` VALUES (31, '房间5', '房间5', 334.00, 30, 34, 36, '05.jpg');
INSERT INTO `product` VALUES (32, '房间4', '房间4', 141.00, 318, 26, 17, '04.jpg');
INSERT INTO `product` VALUES (33, '房间3', '房间3', 191.00, 883, 21, 35, '03.jpg');
INSERT INTO `product` VALUES (34, '房间1', '房间1', 300.00, 299, 19, 39, '02.jpg');
INSERT INTO `product` VALUES (35, '房间11', '房间11', 2411.00, 122, 19, 17, '01.jpg');

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category`  (
  `EPC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EPC_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EPC_PARENT_ID` decimal(10, 0) NOT NULL,
  PRIMARY KEY (`EPC_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES (16, '小时房', 33);
INSERT INTO `product_category` VALUES (17, '豪华大床房', 19);
INSERT INTO `product_category` VALUES (19, '豪华房间', 0);
INSERT INTO `product_category` VALUES (21, '标间', 0);
INSERT INTO `product_category` VALUES (26, '民俗', 0);
INSERT INTO `product_category` VALUES (33, '促销', 0);
INSERT INTO `product_category` VALUES (34, '豪华情侣房', 19);
INSERT INTO `product_category` VALUES (35, '海景房', 19);
INSERT INTO `product_category` VALUES (36, '普通标间', 21);
INSERT INTO `product_category` VALUES (37, '单间', 21);
INSERT INTO `product_category` VALUES (38, '小单间', 33);

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `es_ep_file_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `es_ep_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `es_ep_price` decimal(10, 0) NULL DEFAULT NULL,
  `es_eod_quantity` int(11) NULL DEFAULT NULL,
  `es_ep_stock` int(11) NULL DEFAULT NULL,
  `es_ep_id` int(11) NULL DEFAULT NULL,
  `es_eu_user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `es_valid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`es_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (2, '7.jpg', '炖木耳', 14, 1, 320, 32, '123', 2);
INSERT INTO `shop` VALUES (7, '02.jpg', '房间1', 300, 1, 300, 34, '123', 2);
INSERT INTO `shop` VALUES (8, '03.jpg', '房间3', 191, 1, 885, 33, '123', 2);
INSERT INTO `shop` VALUES (9, '04.jpg', '房间4', 141, 1, 319, 32, '123', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `EU_USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_USER_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_PASSWORD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_SEX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EU_BIRTHDAY` datetime NULL DEFAULT NULL,
  `EU_IDENTITY_CODE` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EU_EMAIL` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EU_MOBILE` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EU_ADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EU_STATUS` decimal(6, 0) NOT NULL,
  PRIMARY KEY (`EU_USER_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '管理员', 'admin', 'T', '2021-12-10 00:00:00', NULL, '123@qq.com', '13666666666', '山西大同', 2);
INSERT INTO `user` VALUES ('admin11111111', '111111111', '111111', 'T', '2021-12-06 00:00:00', NULL, '376383538@qq.com', '17154652864', '17154652864', 1);

SET FOREIGN_KEY_CHECKS = 1;

/*
Navicat MySQL Data Transfer

Source Server         : phpstduy
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : appli

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-01-15 17:37:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `live` int(11) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '吴丽霞', '111', '1', '');
INSERT INTO `users` VALUES ('2', '王程', '111', '1', null);
INSERT INTO `users` VALUES ('3', '温永生', '111', '1', null);
INSERT INTO `users` VALUES ('4', '高洁', '111', '1', null);
INSERT INTO `users` VALUES ('5', '吴春荣', '111', '1', null);
INSERT INTO `users` VALUES ('6', '向巧丽', '111', '1', null);
INSERT INTO `users` VALUES ('7', '王英', '111', '1', null);
INSERT INTO `users` VALUES ('8', '王春丽', '111', '1', null);
INSERT INTO `users` VALUES ('9', '廖家兰', '111', '1', null);
INSERT INTO `users` VALUES ('10', '范丽', '111', '0', null);

/*
Navicat MySQL Data Transfer

Source Server         : phpstduy
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : appli

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-01-15 17:37:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users_role
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role` (
  `users_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`users_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_role_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES ('1', '1', '吴丽霞客服');

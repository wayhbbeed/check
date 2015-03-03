/*
Navicat MySQL Data Transfer

Source Server         : phpstduy
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : appli

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-01-15 17:36:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for role_perm
-- ----------------------------
DROP TABLE IF EXISTS `role_perm`;
CREATE TABLE `role_perm` (
  `role_id` int(11) NOT NULL,
  `perm_id` int(11) NOT NULL,
  `info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`role_id`,`perm_id`),
  KEY `perm_id` (`perm_id`),
  CONSTRAINT `role_perm_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `role_perm_ibfk_2` FOREIGN KEY (`perm_id`) REFERENCES `perm` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_perm
-- ----------------------------
INSERT INTO `role_perm` VALUES ('1', '1', '客服');
INSERT INTO `role_perm` VALUES ('1', '2', null);
INSERT INTO `role_perm` VALUES ('1', '4', null);
INSERT INTO `role_perm` VALUES ('1', '21', null);
INSERT INTO `role_perm` VALUES ('1', '25', null);
INSERT INTO `role_perm` VALUES ('1', '41', null);
INSERT INTO `role_perm` VALUES ('1', '42', null);
INSERT INTO `role_perm` VALUES ('1', '201', null);

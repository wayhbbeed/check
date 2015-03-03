/*
Navicat MySQL Data Transfer

Source Server         : phpstduy
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : appli

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-01-15 17:36:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `position` varchar(50) DEFAULT NULL,
  `info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '业务部门', '客服', null);
INSERT INTO `role` VALUES ('2', '业务部门', '经理', null);
INSERT INTO `role` VALUES ('3', '质量管理部', '经理', null);
INSERT INTO `role` VALUES ('4', '质量管理部', '信息管理员', null);
INSERT INTO `role` VALUES ('5', '财务部门', '发货审核', null);
INSERT INTO `role` VALUES ('6', '财务部门', '财会', null);

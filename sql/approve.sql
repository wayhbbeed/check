/*
Navicat MySQL Data Transfer

Source Server         : phpstduy
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : appli

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-01-15 17:36:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for approve
-- ----------------------------
DROP TABLE IF EXISTS `approve`;
CREATE TABLE `approve` (
  `appid` int(11) NOT NULL AUTO_INCREMENT,
  `appno` varchar(50) DEFAULT NULL,
  `egroup` varchar(50) DEFAULT NULL,
  `eno` varchar(50) DEFAULT NULL,
  `ereason` varchar(100) DEFAULT NULL,
  `ename` varchar(50) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `methodname` varchar(50) DEFAULT NULL,
  `methoddate` date DEFAULT NULL,
  `approve` varchar(100) DEFAULT NULL,
  `approvename` varchar(50) DEFAULT NULL,
  `approvedate` date DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `resultname` varchar(50) DEFAULT NULL,
  `resultdate` date DEFAULT NULL,
  `allstep` int(11) DEFAULT NULL,
  `nowstep` int(11) DEFAULT NULL,
  `ecount` int(11) DEFAULT NULL,
  `info` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`appid`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of approve
-- ----------------------------
INSERT INTO `approve` VALUES ('1', '123456', '业务部门', 'XS-2014-11-21-0041', '因客户需求因客户需求因客户需求因客户需求因客户需求因客户需求因客户需求', '吴丽霞', '2014-12-02', 'fasdfa', '王程', '2014-12-15', '同意', '温永生', '2014-12-15', '', '王程', '2014-12-15', '4', '4', '1', '通过审核');
INSERT INTO `approve` VALUES ('92', '1412171562', '业务部', '8888888', 'sdfasdfasdfasdfasd', '吴丽霞', '2014-12-17', null, null, null, null, null, null, null, null, null, null, '1', '2', null);
INSERT INTO `approve` VALUES ('2', '123456', '业务部门', 'XS-2014-11-21-0041', '因客户需求因客户需求因客户需求因客户需求因客户需求因客户需求因客户需求', '吴丽霞', '2014-12-02', '888', '王程', '2014-12-15', '同意', '温永生', '2014-12-04', '红冲单据：XS-2014-11-21-0041', '王程', '2014-12-05', '4', '2', '3', '通过审核');
INSERT INTO `approve` VALUES ('75', '1412151562', '业务部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', '4', null);
INSERT INTO `approve` VALUES ('71', '1412128125', '质量管理部', '8888888', '没有理由', '吴丽霞', '2014-12-12', '888', '王程', '2014-12-15', null, null, null, null, null, null, null, '2', null, null);
INSERT INTO `approve` VALUES ('70', '1412122031', '业务部', '小乌是瓜的', '小乌是瓜的', '吴丽霞', '2014-12-12', '888', '王程', '2014-12-15', null, null, null, null, null, null, null, '2', null, null);
INSERT INTO `approve` VALUES ('74', '1412152187', '业务部', '', '', '吴丽霞', '2014-12-15', '888', '王程', '2014-12-15', null, null, null, null, null, null, null, '2', null, null);
INSERT INTO `approve` VALUES ('76', '1412155312', '业务部', 'sdgfadsfasdf', '阿斯顿发送到发送到发送到', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('77', '1412151875', '财务部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('78', '1412154218', '财务部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('79', '1412157343', '质量管理部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('80', '1412158281', '财务部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('81', '1412153125', '质量管理部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('82', '1412157656', '财务部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('83', '1412150468', '质量管理部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('84', '1412152343', '业务部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('85', '1412159531', '业务部', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('86', '1412158593', '业务部', 'e', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('87', '1412150937', '', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('88', '1412154375', '', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('89', '1412152656', '业务部', '8888888', 'sdfsd', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('90', '1412154843', '', '', '', '吴丽霞', '2014-12-15', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('91', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('93', '1412196093', '业务部', '1212', '121212', '吴丽霞', '2014-12-19', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('94', '1412297343', '业务部', '0202202', '020202020202', '吴丽霞', '2014-12-29', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('95', '1412312343', '业务部', '15156', '156165165', '吴丽霞', '2014-12-31', null, null, null, null, null, null, null, null, null, null, '1', null, null);
INSERT INTO `approve` VALUES ('96', '1501042968', '业务部', 'fefe', '凤飞飞凤飞飞凤飞飞', '吴丽霞', '2015-01-04', null, null, null, null, null, null, null, null, null, null, '1', null, null);

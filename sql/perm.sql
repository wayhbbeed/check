/*
Navicat MySQL Data Transfer

Source Server         : phpstduy
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : appli

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-01-19 17:26:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for perm
-- ----------------------------
DROP TABLE IF EXISTS `perm`;
CREATE TABLE `perm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `icon` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `info` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of perm
-- ----------------------------
INSERT INTO `perm` VALUES ('1', 'main', '#', '首页', 'icon-home', '0', '0', '模块');
INSERT INTO `perm` VALUES ('2', 'computer', '#', '计算机信息系统修改', 'icon-th-large', '0', '1', '模块');
INSERT INTO `perm` VALUES ('3', 'custom', '#', '客户管理', 'icon-user', '0', '1', '模块');
INSERT INTO `perm` VALUES ('4', 'system', '#', '系统管理', 'icon-tint', '0', '1', '模块');
INSERT INTO `perm` VALUES ('5', 'config', '#', '个人设置', 'icon-star', '0', '1', '模块');
INSERT INTO `perm` VALUES ('21', 'com_shenqing', 'computer/shenqing.php', '填写申请单', '', '2', '2', '菜单');
INSERT INTO `perm` VALUES ('22', 'com_chuli', 'computer/chuli.php', '处理方法', '', '2', '3', '隐藏页面');
INSERT INTO `perm` VALUES ('23', 'com_shenhe', 'computer/shenhe.php', '质管部审核', '', '2', '3', '隐藏页面');
INSERT INTO `perm` VALUES ('24', 'com_jieguo', 'computer/jieguo.php', '处理结果', '', '2', '3', '隐藏页面');
INSERT INTO `perm` VALUES ('25', 'com_renwu', 'computer/renwu.php', '任务查询', '', '2', '2', '菜单');
INSERT INTO `perm` VALUES ('26', 'com_xiangqing', 'computer/xiangqing.php', '详细情况', '', '2', '3', '隐藏页面');
INSERT INTO `perm` VALUES ('27', 'com_lishi', 'computer/lishi.php', '历史情况', '', '2', '3', '隐藏页面');
INSERT INTO `perm` VALUES ('41', 'sys_users', '../view/sys_users.php', '用户管理', '', '4', '2', '菜单');
INSERT INTO `perm` VALUES ('42', 'sys_users_add', '../view/sys_users_add.php', '用户添加', '', '4', '3', '隐藏页面');
INSERT INTO `perm` VALUES ('43', 'sys_role', '../view/sys_role.php', '角色管理', null, '4', '2', '菜单');
INSERT INTO `perm` VALUES ('44', 'sys_role_add', '../view/sys_role_add.php', '角色添加', null, '4', '3', '隐藏页面');
INSERT INTO `perm` VALUES ('201', 'com_chaxunall_menu', 'control.php?cid=renwu_all', '查询全部任务', '', '25', '4', '按钮');
INSERT INTO `perm` VALUES ('202', 'com_tiaojian_menu', 'control.php?cid=renwu_tiaojian', '条件查询', '', '25', '4', '按钮');
INSERT INTO `perm` VALUES ('203', 'com_xiangqing_menu', 'control.php?cid=renwu_xiangqing&appid={$all.appid}', '详情按钮', '', '25', '4', '按钮');

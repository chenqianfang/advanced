/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : yii2_admin

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-03-12 17:39:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'RBPwljILpGpGYo_dlTR9dWQXmVeH9XX4', '$2y$13$KRhpPrF/B33pFz5gZc4e..//gRRJJMjQZvDcd9TjGrgsn8IdgNgZ2', null, 'chenqianfangwen@163.com', '10', '1519267926', '1519268564');

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gets` text COLLATE utf8_unicode_ci,
  `posts` text COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', 'admin/permission/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fpermission%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/permission\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519267993', '1519267993');
INSERT INTO `admin_log` VALUES ('2', 'admin/role/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Frole%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/role\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268004', '1519268004');
INSERT INTO `admin_log` VALUES ('3', 'admin/rule/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Frule%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/rule\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268013', '1519268013');
INSERT INTO `admin_log` VALUES ('4', 'admin/route/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Froute%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/route\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268014', '1519268014');
INSERT INTO `admin_log` VALUES ('5', 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268031', '1519268031');
INSERT INTO `admin_log` VALUES ('6', 'admin/rule/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Frule%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/rule\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268034', '1519268034');
INSERT INTO `admin_log` VALUES ('7', 'admin/menu/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fmenu%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/menu\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268035', '1519268035');
INSERT INTO `admin_log` VALUES ('8', 'admin/menu/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fmenu%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/menu\\/index\"}', '{\"id\":\"0\"}', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268035', '1519268035');
INSERT INTO `admin_log` VALUES ('9', 'admin/log/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Flog%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/log\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268037', '1519268037');
INSERT INTO `admin_log` VALUES ('10', 'admin/menu/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fmenu%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/menu\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268047', '1519268047');
INSERT INTO `admin_log` VALUES ('11', 'admin/menu/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fmenu%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/menu\\/index\"}', '{\"id\":\"0\"}', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268048', '1519268048');
INSERT INTO `admin_log` VALUES ('12', 'admin/menu/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fmenu%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/menu\\/index\"}', '{\"id\":\"1\"}', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268052', '1519268052');
INSERT INTO `admin_log` VALUES ('13', 'admin/rule/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Frule%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/rule\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268058', '1519268058');
INSERT INTO `admin_log` VALUES ('14', 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268060', '1519268060');
INSERT INTO `admin_log` VALUES ('15', 'admin/menu/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fmenu%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/menu\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268061', '1519268061');
INSERT INTO `admin_log` VALUES ('16', 'admin/menu/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fmenu%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/menu\\/index\"}', '{\"id\":\"0\"}', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268061', '1519268061');
INSERT INTO `admin_log` VALUES ('17', 'admin/route/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Froute%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/route\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268062', '1519268062');
INSERT INTO `admin_log` VALUES ('18', 'admin/log/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Flog%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/log\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268531', '1519268531');
INSERT INTO `admin_log` VALUES ('19', 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/index\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268538', '1519268538');
INSERT INTO `admin_log` VALUES ('20', 'admin/assignment/update', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Fupdate&id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/update\",\"id\":\"1\"}', '[]', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268542', '1519268542');
INSERT INTO `admin_log` VALUES ('21', 'admin/assignment/update', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Fupdate&id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/update\",\"id\":\"1\"}', '{\"_csrf\":\"Efx09KYr4R6iSqNGPPbkfxDV0Jw7SKKCAzmnFNJsi5I8jBiw_F6SKJII7itEj9I4PZm3pUs9--dxDctVul7T-w==\",\"AdminModel\":{\"username\":\"admin\",\"email\":\"chenqianfangwen@163.com\",\"password\":\"88888888\"}}', '1', 'liu.lipeng@newsnow.com.cn', '127.0.0.1', '1519268564', '1519268564');
INSERT INTO `admin_log` VALUES ('22', 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/index\"}', '[]', '1', 'chenqianfangwen@163.com', '127.0.0.1', '1519268564', '1519268564');
INSERT INTO `admin_log` VALUES ('23', 'admin/permission/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fpermission%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/permission\\/index\"}', '[]', '1', 'chenqianfangwen@163.com', '127.0.0.1', '1519268625', '1519268625');
INSERT INTO `admin_log` VALUES ('24', 'admin/permission/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fpermission%2Findex&page=2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/permission\\/index\",\"page\":\"2\"}', '[]', '1', 'chenqianfangwen@163.com', '127.0.0.1', '1519268634', '1519268634');
INSERT INTO `admin_log` VALUES ('25', 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/index\"}', '[]', '1', 'chenqianfangwen@163.com', '127.0.0.1', '1519271357', '1519271357');
INSERT INTO `admin_log` VALUES ('26', 'admin/assignment/create', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Fcreate', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/create\"}', '[]', '1', 'chenqianfangwen@163.com', '127.0.0.1', '1519271366', '1519271366');
INSERT INTO `admin_log` VALUES ('27', 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/index\"}', '[]', '1', 'chenqianfangwen@163.com', '127.0.0.1', '1519271375', '1519271375');
INSERT INTO `admin_log` VALUES ('28', 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/index\"}', '[]', '1', 'chenqianfangwen@163.com', '127.0.0.1', '1519271386', '1519271386');
INSERT INTO `admin_log` VALUES ('29', 'admin/assignment/create', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Fcreate', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/create\"}', '[]', '1', 'chenqianfangwen@163.com', '127.0.0.1', '1519281121', '1519281121');
INSERT INTO `admin_log` VALUES ('30', 'admin/assignment/index', 'http://127.0.0.1/advanced/backend/web/index.php?r=admin%2Fassignment%2Findex', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0', '{\"r\":\"admin\\/assignment\\/index\"}', '[]', '1', 'chenqianfangwen@163.com', '127.0.0.1', '1519281124', '1519281124');

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('Admin', '1', '1457092343');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/assignment/create', '2', null, null, null, '1457521995', '1457521995');
INSERT INTO `auth_item` VALUES ('/admin/assignment/delete', '2', null, null, null, '1458010804', '1458010804');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/assignment/search', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/assignment/update', '2', null, null, null, '1458010804', '1458010804');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/log/*', '2', null, null, null, '1468288689', '1468288689');
INSERT INTO `auth_item` VALUES ('/admin/log/index', '2', null, null, null, '1468288689', '1468288689');
INSERT INTO `auth_item` VALUES ('/admin/log/view', '2', null, null, null, '1468288689', '1468288689');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1457948575', '1457948575');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/permission/search', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/role/search', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1457947924', '1457947924');
INSERT INTO `auth_item` VALUES ('/admin/route/search', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1457330826', '1457330826');
INSERT INTO `auth_item` VALUES ('Admin', '1', 'Administrators', null, null, '1457084487', '1457947508');
INSERT INTO `auth_item` VALUES ('修改用户', '2', null, null, null, '1457522051', '1457522051');
INSERT INTO `auth_item` VALUES ('修改菜单', '2', null, null, null, '1457330464', '1457405433');
INSERT INTO `auth_item` VALUES ('删除权限', '2', null, null, null, '1457331320', '1457331320');
INSERT INTO `auth_item` VALUES ('删除菜单', '2', null, null, null, '1457330485', '1457330485');
INSERT INTO `auth_item` VALUES ('删除规则', '2', null, null, null, '1457331677', '1457331677');
INSERT INTO `auth_item` VALUES ('删除角色', '2', null, null, null, '1457331161', '1457331161');
INSERT INTO `auth_item` VALUES ('删除路由', '2', null, null, null, '1457331499', '1457331499');
INSERT INTO `auth_item` VALUES ('操作日志', '2', null, null, null, '1468288713', '1468288713');
INSERT INTO `auth_item` VALUES ('新增权限', '2', null, null, null, '1457331279', '1457331279');
INSERT INTO `auth_item` VALUES ('新增用户', '2', null, null, null, '1457433802', '1457433802');
INSERT INTO `auth_item` VALUES ('新增菜单', '2', null, null, null, '1457330445', '1457330445');
INSERT INTO `auth_item` VALUES ('新增规则', '2', null, null, null, '1457331552', '1457331610');
INSERT INTO `auth_item` VALUES ('新增角色', '2', null, null, null, '1457331075', '1457331075');
INSERT INTO `auth_item` VALUES ('新增路由', '2', null, null, null, '1457331386', '1457331386');
INSERT INTO `auth_item` VALUES ('更新权限', '2', null, null, null, '1457331303', '1457331303');
INSERT INTO `auth_item` VALUES ('更新规则', '2', null, null, null, '1457331647', '1457331647');
INSERT INTO `auth_item` VALUES ('更新角色', '2', null, null, null, '1457331126', '1457331126');
INSERT INTO `auth_item` VALUES ('更新路由', '2', null, null, null, '1457331492', '1457331492');
INSERT INTO `auth_item` VALUES ('权限分配', '2', null, null, null, '1457418746', '1457418746');
INSERT INTO `auth_item` VALUES ('权限管理', '2', null, null, null, '1457331258', '1457331258');
INSERT INTO `auth_item` VALUES ('查看操作日志', '2', null, null, null, '1468294314', '1468294314');
INSERT INTO `auth_item` VALUES ('查看权限', '2', null, null, null, '1457331342', '1457331342');
INSERT INTO `auth_item` VALUES ('查看用户权限', '2', null, null, null, '1457331965', '1457331965');
INSERT INTO `auth_item` VALUES ('查看菜单', '2', null, null, null, '1457330619', '1457330619');
INSERT INTO `auth_item` VALUES ('查看规则', '2', null, null, null, '1457331692', '1457331692');
INSERT INTO `auth_item` VALUES ('查看角色', '2', null, null, null, '1457331191', '1457331191');
INSERT INTO `auth_item` VALUES ('用户权限分配', '2', null, null, null, '1457333258', '1457333258');
INSERT INTO `auth_item` VALUES ('用户管理', '2', null, null, null, '1457079781', '1457331877');
INSERT INTO `auth_item` VALUES ('菜单管理', '2', null, null, null, '1457324314', '1457324314');
INSERT INTO `auth_item` VALUES ('规则管理', '2', null, null, null, '1457331529', '1457331529');
INSERT INTO `auth_item` VALUES ('角色权限分配', '2', null, null, null, '1457333688', '1457333688');
INSERT INTO `auth_item` VALUES ('角色管理', '2', null, null, null, '1457330790', '1457330790');
INSERT INTO `auth_item` VALUES ('路由分配', '2', null, null, null, '1457333742', '1457333742');
INSERT INTO `auth_item` VALUES ('路由管理', '2', null, null, null, '1457331368', '1457331368');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('用户权限分配', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('新增用户', '/admin/assignment/create');
INSERT INTO `auth_item_child` VALUES ('用户管理', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('查看用户权限', '/admin/assignment/search');
INSERT INTO `auth_item_child` VALUES ('修改用户', '/admin/assignment/update');
INSERT INTO `auth_item_child` VALUES ('查看用户权限', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('操作日志', '/admin/log/index');
INSERT INTO `auth_item_child` VALUES ('查看操作日志', '/admin/log/view');
INSERT INTO `auth_item_child` VALUES ('新增菜单', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('删除菜单', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('菜单管理', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('修改菜单', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('查看菜单', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('权限分配', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('新增权限', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('删除权限', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('权限管理', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('查看权限', '/admin/permission/search');
INSERT INTO `auth_item_child` VALUES ('更新权限', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('查看权限', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('角色权限分配', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('新增角色', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('删除角色', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('角色管理', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('查看角色', '/admin/role/search');
INSERT INTO `auth_item_child` VALUES ('更新角色', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('查看角色', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('路由分配', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('新增路由', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('查看规则', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('查看规则', '/admin/route/search');
INSERT INTO `auth_item_child` VALUES ('新增规则', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('删除规则', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('规则管理', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('路由管理', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('更新规则', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('Admin', '修改用户');
INSERT INTO `auth_item_child` VALUES ('Admin', '修改菜单');
INSERT INTO `auth_item_child` VALUES ('Admin', '删除权限');
INSERT INTO `auth_item_child` VALUES ('Admin', '删除菜单');
INSERT INTO `auth_item_child` VALUES ('Admin', '删除规则');
INSERT INTO `auth_item_child` VALUES ('Admin', '删除角色');
INSERT INTO `auth_item_child` VALUES ('Admin', '删除路由');
INSERT INTO `auth_item_child` VALUES ('Admin', '操作日志');
INSERT INTO `auth_item_child` VALUES ('Admin', '新增权限');
INSERT INTO `auth_item_child` VALUES ('Admin', '新增用户');
INSERT INTO `auth_item_child` VALUES ('Admin', '新增菜单');
INSERT INTO `auth_item_child` VALUES ('Admin', '新增规则');
INSERT INTO `auth_item_child` VALUES ('Admin', '新增角色');
INSERT INTO `auth_item_child` VALUES ('Admin', '新增路由');
INSERT INTO `auth_item_child` VALUES ('Admin', '更新权限');
INSERT INTO `auth_item_child` VALUES ('Admin', '更新规则');
INSERT INTO `auth_item_child` VALUES ('Admin', '更新角色');
INSERT INTO `auth_item_child` VALUES ('Admin', '更新路由');
INSERT INTO `auth_item_child` VALUES ('Admin', '权限分配');
INSERT INTO `auth_item_child` VALUES ('Admin', '权限管理');
INSERT INTO `auth_item_child` VALUES ('Admin', '查看操作日志');
INSERT INTO `auth_item_child` VALUES ('Admin', '查看权限');
INSERT INTO `auth_item_child` VALUES ('Admin', '查看用户权限');
INSERT INTO `auth_item_child` VALUES ('Admin', '查看菜单');
INSERT INTO `auth_item_child` VALUES ('Admin', '查看规则');
INSERT INTO `auth_item_child` VALUES ('Admin', '查看角色');
INSERT INTO `auth_item_child` VALUES ('Admin', '用户权限分配');
INSERT INTO `auth_item_child` VALUES ('Admin', '用户管理');
INSERT INTO `auth_item_child` VALUES ('Admin', '菜单管理');
INSERT INTO `auth_item_child` VALUES ('Admin', '规则管理');
INSERT INTO `auth_item_child` VALUES ('Admin', '角色权限分配');
INSERT INTO `auth_item_child` VALUES ('Admin', '角色管理');
INSERT INTO `auth_item_child` VALUES ('Admin', '路由分配');
INSERT INTO `auth_item_child` VALUES ('Admin', '路由管理');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '系统管理', null, null, null, null);
INSERT INTO `menu` VALUES ('2', '用户管理', '1', '/admin/assignment/index', '0', null);
INSERT INTO `menu` VALUES ('3', '菜单管理', '1', '/admin/menu/index', '1', null);
INSERT INTO `menu` VALUES ('4', '权限管理', '1', '/admin/permission/index', null, null);
INSERT INTO `menu` VALUES ('5', '角色管理', '1', '/admin/role/index', null, null);
INSERT INTO `menu` VALUES ('6', '路由管理', '1', '/admin/route/index', null, null);
INSERT INTO `menu` VALUES ('7', '规则管理', '1', '/admin/rule/index', null, null);
INSERT INTO `menu` VALUES ('8', '操作日志', '1', '/admin/log/index', '100', null);

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1519267824');
INSERT INTO `migration` VALUES ('m140506_102106_rbac_init', '1519267843');
INSERT INTO `migration` VALUES ('m170907_052038_rbac_add_index_on_auth_assignment_user_id', '1519267843');
INSERT INTO `migration` VALUES ('m160608_050000_create_admin', '1519267926');
INSERT INTO `migration` VALUES ('m160712_034501_create_admin_log', '1519267926');
INSERT INTO `migration` VALUES ('m160712_111327_create_menu_table', '1519267926');

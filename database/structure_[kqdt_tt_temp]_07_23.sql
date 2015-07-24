/*
Navicat MySQL Data Transfer

Source Server         : JF
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : crawler_muasamcong

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-07-24 07:30:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `kqdt_tt_temp`
-- ----------------------------
DROP TABLE IF EXISTS `kqdt_tt_temp`;
CREATE TABLE `kqdt_tt_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` tinytext,
  `so_tbmt` varchar(100) DEFAULT NULL,
  `kqdt_tt_id` int(11) DEFAULT NULL,
  `done` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kqdt_tt_temp
-- ----------------------------

/*
Navicat MySQL Data Transfer

Source Server         : JF
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : crawler_muasamcong

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-07-04 11:01:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ds_mt`
-- ----------------------------
DROP TABLE IF EXISTS `ds_mt`;
CREATE TABLE `ds_mt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `cat_id` int(11) DEFAULT '0',
  `craw` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_mt
-- ----------------------------

-- ----------------------------
-- Table structure for `ds_nt`
-- ----------------------------
DROP TABLE IF EXISTS `ds_nt`;
CREATE TABLE `ds_nt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `cat_id` int(11) DEFAULT '0',
  `craw` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_nt
-- ----------------------------

-- ----------------------------
-- Table structure for `mt`
-- ----------------------------
DROP TABLE IF EXISTS `mt`;
CREATE TABLE `mt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_temp` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_short` varchar(100) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `dkkd` varchar(20) DEFAULT NULL,
  `pltt` varchar(100) DEFAULT NULL,
  `lhcq` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `htkd` varchar(255) DEFAULT NULL,
  `nn` varchar(255) DEFAULT NULL,
  `mst` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mt
-- ----------------------------

-- ----------------------------
-- Table structure for `nt`
-- ----------------------------
DROP TABLE IF EXISTS `nt`;
CREATE TABLE `nt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_temp` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `dkkd` varchar(20) DEFAULT NULL,
  `dkkd_date` varchar(20) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `lvkd` varchar(100) DEFAULT NULL,
  `pldn` varchar(100) DEFAULT NULL,
  `snv` varchar(10) DEFAULT NULL,
  `vdl` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `ttnn_html` text,
  `ttnn_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nt
-- ----------------------------

-- ----------------------------
-- Table structure for `source`
-- ----------------------------
DROP TABLE IF EXISTS `source`;
CREATE TABLE `source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `type` int(3) NOT NULL DEFAULT '0' COMMENT '1:DS_NT | 2:DS_MT',
  `page` int(11) DEFAULT '0',
  `total_page` int(11) DEFAULT '0',
  `done` int(2) DEFAULT '0',
  `last_time` int(11) DEFAULT '0',
  `new_page` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of source
-- ----------------------------
INSERT INTO `source` VALUES ('1', 'http://muasamcong.mpi.gov.vn:8070/AD/UM_ADJ_ConrA010l1.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `source` VALUES ('2', 'http://muasamcong.mpi.gov.vn:8070/RA/UM_RAJ_GovuC011l1.jsp', '2', '0', '0', '0', '0', '0');

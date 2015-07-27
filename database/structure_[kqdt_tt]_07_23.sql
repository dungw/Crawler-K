/*
Navicat MySQL Data Transfer

Source Server         : JF
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : crawler_muasamcong

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-07-26 23:54:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `kqdt_tt`
-- ----------------------------
DROP TABLE IF EXISTS `kqdt_tt`;
CREATE TABLE `kqdt_tt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ben_mt` varchar(255) DEFAULT NULL,
  `ten_goi_thau` varchar(255) DEFAULT NULL,
  `ly_do_trung_thau` varchar(100) DEFAULT NULL,
  `nt_trung_thau` varchar(255) DEFAULT NULL,
  `gia_trung_thau` varchar(100) DEFAULT NULL,
  `gia_goi_thau` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  `so_tbmt` varchar(255) DEFAULT NULL,
  `ten_du_an` varchar(255) DEFAULT NULL,
  `hinh_thuc_lua_chon` varchar(255) DEFAULT NULL,
  `hinh_thuc_hop_dong` varchar(100) DEFAULT NULL,
  `thoi_gian_thuc_hien` varchar(50) DEFAULT NULL,
  `van_ban_phe_duyet` varchar(255) DEFAULT NULL,
  `thoi_diem_hoan_thanh` varchar(100) DEFAULT NULL,
  `kqdt_tt_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kqdt_tt
-- ----------------------------

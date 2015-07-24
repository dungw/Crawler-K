/*
Navicat MySQL Data Transfer

Source Server         : JF
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : crawler_muasamcong

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-07-24 07:03:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbmt_qt`
-- ----------------------------
DROP TABLE IF EXISTS `tbmt_qt`;
CREATE TABLE `tbmt_qt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `so_tbmt` varchar(50) DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  `loai_tb` varchar(100) DEFAULT NULL,
  `linh_vuc` varchar(100) DEFAULT NULL,
  `hinh_thuc_tb` varchar(100) DEFAULT NULL,
  `goi_thau` tinytext,
  `thuoc_du_an` tinytext,
  `nguon_von` varchar(255) DEFAULT NULL,
  `ben_mt` varchar(255) DEFAULT NULL,
  `hinh_thuc_lua_chon` varchar(255) DEFAULT NULL,
  `tg_ban_hs_tu` varchar(100) DEFAULT NULL,
  `tg_ban_hs_den` varchar(100) DEFAULT NULL,
  `dia_diem` tinytext,
  `gia_ban` varchar(100) DEFAULT NULL,
  `han_cuoi_nhan_hs` varchar(100) DEFAULT NULL,
  `hs_moi_thau` varchar(100) DEFAULT NULL,
  `temp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmt_qt
-- ----------------------------
INSERT INTO `tbmt_qt` VALUES ('1', '20150707061&nbsp;&nbsp; - &nbsp;&nbsp;00', '1', 'Thông báo thực', 'Hàng hóa - Công nghệ cao', 'Đăng lần đầu', 'Hỗ trợ giống dê cái địa phương cho 173 hộ nghèo của 2 20e 1 bản, xã Mường Giàng, huyện Quỳnh Nhai theo Nghị quyết 30a/2008/NQ-CP của Chính phủ, năm 2015', 'Hỗ trợ giống dê cái địa phương cho 173 hộ nghèo của 21 bản, xã Mường Giàng, huyện Quỳnh Nhai theo Nghị quyết 30a/2008/NQ-CP c', 'Vốn hỗ trợ phát triển sản xuất nông lâm nghiệp theo Nghị quyết 30a/2008/NQ-CP của Chính phủ', 'Phòng Nông nghiệp - PTNT huyện Quỳnh Nhai', 'Chào hàng cạnh tranh ( Không sơ tuyển - Chỉ chọn nhà thầu trong nước )', '28/07/2015&nbsp;-&nbsp;08:00', '06/08/2015&nbsp;-&nbsp;08:00', 'Phòng Nông nghiệp - PTNT huyện Quỳnh Nhai, xóm 1, xã Mường Giàng, huyện Quỳnh Nhai, tỉnh Sơn La. Điện thoại: 0223.833.270; Fax: 0223.833.270', '1.000.000 VND', '06/08/2015&nbsp;-&nbsp;08:00', '', null);
INSERT INTO `tbmt_qt` VALUES ('2', '20150707060&nbsp;&nbsp; - &nbsp;&nbsp;00', '1', 'Thông báo thực', 'Hàng hóa - Công nghệ cao', 'Đăng lần đầu', 'Mua bộ vật tư linh kiện điện tử để phục vụ chế tạ 20d o thiết bị đo xa laser tần lặp tích hợp với khí tài quan sát', 'Nghiên cứu thiết kế, chế tạo và tích hợp thiết bị đo xa laser với hệ thống quan sát ngày - đêm IR-150-CT trên tàu Cảnh sát biển Việt Nam', 'Ng�n s�ch SNKH', 'Viện vật lý kỹ thuật/Viện KH-CN Quân sự', 'Chào hàng cạnh tranh ( Không sơ tuyển - Chỉ chọn nhà thầu trong nước )', '28/07/2015&nbsp;-&nbsp;08:00', '04/08/2015&nbsp;-&nbsp;08:30', 'Ban KH-TH/Viện vật lý kỹ thuật/Viện KH_CN Quân sự, số 17 Hoàng Sâm, Cầu Giấy, Hà Nội. Điện thoại: 043.836.1110', '500.000 VND', '04/08/2015&nbsp;-&nbsp;08:30', '', null);
INSERT INTO `tbmt_qt` VALUES ('3', '20150707059 - 00', '1', 'Thông báo thực', 'Hàng hóa - Công nghệ cao', 'Đăng lần đầu', 'Vật tư hóa chất năm 2015', 'Hợp đồng: Hợp đồng nguyên tắc giám định ADN xác định hài cốt liệt sỹ', 'NSNN', 'Viện Công nghệ sinh học', 'Chào hàng cạnh tranh ( Không sơ tuyển - Chỉ chọn nhà thầu trong nước )', '31/07/2015 - 08:00', '07/08/2015 - 08:00', 'P406, B4, Phòng Công nghệ tế báo động vật, Viện Công nghệ sinh học, số 18 Hoàng Quốc Việt, Hà Nội. Điện thoại: 043.8362599', 'Miễn phí', '07/08/2015 - 08:00', null, null);

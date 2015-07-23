/*
Navicat MySQL Data Transfer

Source Server         : JF
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : crawler_muasamcong

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2015-07-23 09:02:20
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
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_mt
-- ----------------------------
INSERT INTO `ds_mt` VALUES ('1', 'Ban quản lý rừng phòng hộ Quỳ Hợp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014477', '2', '0');
INSERT INTO `ds_mt` VALUES ('2', 'Công ty Cổ phần tư vấn thiết kế đầu tư Tân Việt', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014444', '2', '0');
INSERT INTO `ds_mt` VALUES ('3', 'Ủy ban nhân dân xã Vĩnh Quỳnh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014474', '2', '0');
INSERT INTO `ds_mt` VALUES ('4', 'CÔNG TY ĐIỆN LỰC BẮC TỪ LIÊM', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014466', '2', '0');
INSERT INTO `ds_mt` VALUES ('5', 'Đài Truyền thanh Truyền hình huyện Hưng Nguyên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014473', '2', '0');
INSERT INTO `ds_mt` VALUES ('6', 'Đài Truyền thanh truyền hình huyện Nghi Lộc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014470', '2', '0');
INSERT INTO `ds_mt` VALUES ('7', 'Ban quản lý dự án huyện Mường Chà', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013260', '2', '0');
INSERT INTO `ds_mt` VALUES ('8', 'Công ty Điện lực Hậu Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014435', '2', '0');
INSERT INTO `ds_mt` VALUES ('9', 'Sở Kế hoạch và Đầu tư tỉnh Cà Mau', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014410', '2', '0');
INSERT INTO `ds_mt` VALUES ('10', 'Ủy ban nhân dân xã Quang Phục', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014434', '2', '0');
INSERT INTO `ds_mt` VALUES ('11', 'Ủy ban nhân dân xã Cấp Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014433', '2', '0');
INSERT INTO `ds_mt` VALUES ('12', 'Ủy ban nhân dân xã Tiên Thắng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014429', '2', '0');
INSERT INTO `ds_mt` VALUES ('13', 'Ủy ban nhân dân xã Quyết Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014432', '2', '0');
INSERT INTO `ds_mt` VALUES ('14', 'Ủy ban nhân xã Vinh Quang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014431', '2', '0');
INSERT INTO `ds_mt` VALUES ('15', 'Trung tâm phòng chống HIV/AIDS tỉnh Bắc Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014421', '2', '0');
INSERT INTO `ds_mt` VALUES ('16', 'Công ty TNHH một thành viên Ngọc Trang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014427', '2', '0');
INSERT INTO `ds_mt` VALUES ('17', 'Trung tâm y tế quận Cẩm Lệ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014417', '2', '0');
INSERT INTO `ds_mt` VALUES ('18', 'Phòng Dân tộc, huyện Lâm Bình', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014415', '2', '0');
INSERT INTO `ds_mt` VALUES ('19', 'Công ty TNHH Cao ốc Vietcombank 198', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014396', '2', '0');
INSERT INTO `ds_mt` VALUES ('20', 'UBND phường Trung Đô TP Vinh, tỉnh Nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014425', '2', '0');
INSERT INTO `ds_mt` VALUES ('21', 'Công ty cổ phần tư vấn đầu tư và xây dựng Phương Bắc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014418', '2', '0');
INSERT INTO `ds_mt` VALUES ('22', 'công ty TNHH Lập Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014301', '2', '0');
INSERT INTO `ds_mt` VALUES ('23', 'CÔNG TY TNHH THƯƠNG MẠI VÀ XÂY DỰNG SƠN LONG THUẬN', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014408', '2', '0');
INSERT INTO `ds_mt` VALUES ('24', 'Văn phòng Tổng công ty Bưu điện Việt Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014335', '2', '0');
INSERT INTO `ds_mt` VALUES ('25', 'Ủy ban nhân dân xã Nghi Lâm', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014382', '2', '0');
INSERT INTO `ds_mt` VALUES ('26', 'Ủy ban nhân dân xã Đông Phương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014409', '2', '0');
INSERT INTO `ds_mt` VALUES ('27', 'Ủy ban nhân dân xã Tân Trào', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014411', '2', '0');
INSERT INTO `ds_mt` VALUES ('28', 'công ty tnhh mtv tư vấn và thương mại nhân nghĩa', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014327', '2', '0');
INSERT INTO `ds_mt` VALUES ('29', 'Ban quản lý dự án đầu tư và xây dựng công trình thủy lợi', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014413', '2', '0');
INSERT INTO `ds_mt` VALUES ('30', 'Phòng Quản lý đô thị Tp. Điện Biên Phủ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014428', '2', '0');
INSERT INTO `ds_mt` VALUES ('31', 'PHÒNG NÔNG NGHIỆP VÀ PHÁT TRIỂN NÔNG THÔN HUYỆN CHƯ PRÔNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014387', '2', '0');
INSERT INTO `ds_mt` VALUES ('32', 'Bệnh viện Đa khoa tỉnh Quảng Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014394', '2', '0');
INSERT INTO `ds_mt` VALUES ('33', 'UBND xã Thống Nhất', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014404', '2', '0');
INSERT INTO `ds_mt` VALUES ('34', 'Ủy ban nhân dân xã Tả Thanh Oai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014397', '2', '0');
INSERT INTO `ds_mt` VALUES ('35', 'Ủy ban nhân dân xã Duyên Hà', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014395', '2', '0');
INSERT INTO `ds_mt` VALUES ('36', 'Công ty Cổ phần Tư vấn Xây dựng Tân Hưng Phúc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014377', '2', '0');
INSERT INTO `ds_mt` VALUES ('37', 'Ban An toàn giao thông tỉnh Hải Dương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014336', '2', '0');
INSERT INTO `ds_mt` VALUES ('38', 'Viễn thông Bình Định', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014378', '2', '0');
INSERT INTO `ds_mt` VALUES ('39', 'Công ty TNHH MTV tư vấn và thương mại Đức Thiện', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014328', '2', '0');
INSERT INTO `ds_mt` VALUES ('40', 'Cục Thuế tỉnh Cà Mau', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014311', '2', '0');
INSERT INTO `ds_mt` VALUES ('41', 'Phòng kinh tế và Hạ tầng huyện ia Grai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014375', '2', '0');
INSERT INTO `ds_mt` VALUES ('42', 'Chi nhánh Tổng công ty Điện lực Tp. Hồ Chí Minh TNHH. Công ty Điện lực Phú Thọ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014302', '2', '0');
INSERT INTO `ds_mt` VALUES ('43', 'Phòng Hậu cần Kỹ thuật, Công an tỉnh Lâm Đồng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014319', '2', '0');
INSERT INTO `ds_mt` VALUES ('44', 'Văn phòng Tập đoàn Bưu chính Viễn thông Việt Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014308', '2', '0');
INSERT INTO `ds_mt` VALUES ('45', 'Bệnh viện Trẻ em Hải Phòng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014329', '2', '0');
INSERT INTO `ds_mt` VALUES ('46', 'Công ty cổ phần tư vấn tổng hợp số 1', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014330', '2', '0');
INSERT INTO `ds_mt` VALUES ('47', 'Ban quản lý dự án đầu tư và xây dựng xã Tân Liên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014297', '2', '0');
INSERT INTO `ds_mt` VALUES ('48', 'Chi nhánh Ngân hàng Chính sách xã hội tỉnh Quảng Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014300', '2', '0');
INSERT INTO `ds_mt` VALUES ('49', 'Công ty Điện lực Đông Anh Tổng Công ty Điện lực TP Hà Nội', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z003260', '2', '0');
INSERT INTO `ds_mt` VALUES ('50', 'Viện Kiến trúc Quy hoạch thành phố Cần Thơ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014313', '2', '0');
INSERT INTO `ds_mt` VALUES ('51', 'Viện Khoa học và Kỹ thuật Hạt nhân', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014280', '2', '0');
INSERT INTO `ds_mt` VALUES ('52', 'Công ty TNHH Thiết kế Xây dựng Thương mại Dịch vụ Ngô Trần', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014285', '2', '0');
INSERT INTO `ds_mt` VALUES ('53', 'Ban quản lý dự án chuyên ngành Công Thương tỉnh Điện Biên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014304', '2', '0');
INSERT INTO `ds_mt` VALUES ('54', 'Trung tâm Thông tin xúc tiến Du lịch Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014286', '2', '0');
INSERT INTO `ds_mt` VALUES ('55', 'Hội bảo trợ Người khuyết tật và Trẻ mồ côi Tp.Hồ Chí Minh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014293', '2', '0');
INSERT INTO `ds_mt` VALUES ('56', 'Ban quản lý dự án xã Thanh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014289', '2', '0');
INSERT INTO `ds_mt` VALUES ('57', 'Trung tâm Nghiên cứu khoa học và Đào tạo chứng khoán', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014324', '2', '0');
INSERT INTO `ds_mt` VALUES ('58', 'NGÂN HÀNG THƯƠNG MẠI TRÁCH NHIỆM HỮU HẠN MỘT THÀNH VIÊN XÂY  DỰNG VIỆT NAM', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014296', '2', '0');
INSERT INTO `ds_mt` VALUES ('59', 'Công ty cổ phần COMA18', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014290', '2', '0');
INSERT INTO `ds_mt` VALUES ('60', 'Ban quản lý các dự án ĐTXD công trình Thủy lợi Sở Nông nghiệp và PTNT tỉnh Sơn La', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014284', '2', '0');
INSERT INTO `ds_mt` VALUES ('61', 'Ban Quản lý Dự án Phát triển Doanh nghiệp nhỏ và vừa tỉnh Trà Vinh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014281', '2', '0');
INSERT INTO `ds_mt` VALUES ('62', 'Công ty TNHH Ngọc Khánh VT', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014316', '2', '0');
INSERT INTO `ds_mt` VALUES ('63', 'Xí nghiệp Điện Cao Thế, Công ty TNHH MTV Điện Lực Đồng Nai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014231', '2', '0');
INSERT INTO `ds_mt` VALUES ('64', 'Trung tâm Tư vấn và Công nghệ Môi trường', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014291', '2', '0');
INSERT INTO `ds_mt` VALUES ('65', 'CÔNG TY CP ĐẦU TƯ VÀ PHÁT TRIỂN DỊCH VỤ HẠ TẦNG VIỄN THÔNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014287', '2', '0');
INSERT INTO `ds_mt` VALUES ('66', 'Ban quản lý dự án Hỗ trợ xử lý chất thải bệnh viện tỉnh Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014269', '2', '0');
INSERT INTO `ds_mt` VALUES ('67', 'UBND xã Hưng Thắng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014273', '2', '0');
INSERT INTO `ds_mt` VALUES ('68', 'SỞ TÀI NGUYÊN VÀ MÔI TRƯỜNG TỈNH SÓC TRĂNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014142', '2', '0');
INSERT INTO `ds_mt` VALUES ('69', 'Phòng Tài chính Kế hoạch huyện Krông Pa, tỉnh Gia Lai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014263', '2', '0');
INSERT INTO `ds_mt` VALUES ('70', 'Trung tâm chăm sóc sức khỏe sinh sản Nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014275', '2', '0');
INSERT INTO `ds_mt` VALUES ('71', 'TÒA ÁN NHÂN DÂN TỈNH CÀ MAU', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014223', '2', '0');
INSERT INTO `ds_mt` VALUES ('72', 'Ủy ban nhân dân xã Quảng Phước, huyện Quảng Điền', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014239', '2', '0');
INSERT INTO `ds_mt` VALUES ('73', 'Ủy ban nhân dân xã Quảng Công, huyện Quảng Điền', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014241', '2', '0');
INSERT INTO `ds_mt` VALUES ('74', 'Ủy ban nhân dân xã Hải Hưng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014240', '2', '0');
INSERT INTO `ds_mt` VALUES ('75', 'Cục Thống kê tỉnh Tiền Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014238', '2', '0');
INSERT INTO `ds_mt` VALUES ('76', 'Công ty TNHH Một thành viên Điện lực Hải Phòng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014104', '2', '0');
INSERT INTO `ds_mt` VALUES ('77', 'Công ty TNHH Một thành viên Vạn Phúc Đồng Tháp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014230', '2', '0');
INSERT INTO `ds_mt` VALUES ('78', 'Công ty Cổ phần Đầu tư và Xây dựng Hưng Long', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014251', '2', '0');
INSERT INTO `ds_mt` VALUES ('79', 'Bệnh viện Quân y 175/BQP', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014221', '2', '0');
INSERT INTO `ds_mt` VALUES ('80', 'CÔNG TY TNHH MỘT THÀNH VIÊN DỊCH VỤ KỸ THUẬT TRUYỀN THÔNG HTV', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014245', '2', '0');
INSERT INTO `ds_mt` VALUES ('81', 'Phòng Dân tộc huyện Yên Sơn', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014197', '2', '0');
INSERT INTO `ds_mt` VALUES ('82', 'Văn phòng xây dựng nông thôn mới huyện Sóc Sơn', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014259', '2', '0');
INSERT INTO `ds_mt` VALUES ('83', 'Trung tâm phát triển quỹ đất thành phố Pleiku', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014254', '2', '0');
INSERT INTO `ds_mt` VALUES ('84', 'ỦY BAN NHÂN DÂN XÃ SƠN DUNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014247', '2', '0');
INSERT INTO `ds_mt` VALUES ('85', 'Công ty cổ phần Quản lý và Phát triển nhà Dầu khí Miền Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014244', '2', '0');
INSERT INTO `ds_mt` VALUES ('86', 'Công ty Cổ phần Thiết bị điện VINASINO', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014207', '2', '0');
INSERT INTO `ds_mt` VALUES ('87', 'Sở Công Thương Tuyên Quang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014258', '2', '0');
INSERT INTO `ds_mt` VALUES ('88', 'CÔNG TY TNHH MỘT THÀNH VIÊN IN BÁO NHÂN DÂN THÀNH PHỐ HỒ CHÍ MINH', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014255', '2', '0');
INSERT INTO `ds_mt` VALUES ('89', 'Viện Thủy công', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014250', '2', '0');
INSERT INTO `ds_mt` VALUES ('90', 'Ban Quản lý ký túc xá Mỹ Đình', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014102', '2', '0');
INSERT INTO `ds_mt` VALUES ('91', 'Công ty TNHH một thành viên xây dựng và thương mại Tuấn Liên Việt', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014196', '2', '0');
INSERT INTO `ds_mt` VALUES ('92', 'Công ty cổ phần Phân bón và Hóa chất dầu khí Miền Trung', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014124', '2', '0');
INSERT INTO `ds_mt` VALUES ('93', 'Kho bạc Nhà nước Bình Dương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014190', '2', '0');
INSERT INTO `ds_mt` VALUES ('94', 'Trung tâm bồi dưỡng chính trị huyện Krông Bông', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014186', '2', '0');
INSERT INTO `ds_mt` VALUES ('95', 'Trung tâm chăm sóc sức khỏe sinh sản nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014219', '2', '0');
INSERT INTO `ds_mt` VALUES ('96', 'Công ty Xây dựng mỏ hầm lò 1 Vinacomin', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014193', '2', '0');
INSERT INTO `ds_mt` VALUES ('97', 'Ủy ban nhân dân xã Hòa Sơn', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014200', '2', '0');
INSERT INTO `ds_mt` VALUES ('98', 'Kho bạc Nhà nước Tuyên Quang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014214', '2', '0');
INSERT INTO `ds_mt` VALUES ('99', 'Trung tâm phát triển quỹ đất huyện Thanh Oai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014216', '2', '0');
INSERT INTO `ds_mt` VALUES ('100', 'Công ty cổ phần tư vấn đầu tư xây dựng PP', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014090', '2', '0');
INSERT INTO `ds_mt` VALUES ('101', 'Ban quản lý rừng phòng hộ Quỳ Hợp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014477', '2', '0');
INSERT INTO `ds_mt` VALUES ('102', 'Công ty Cổ phần tư vấn thiết kế đầu tư Tân Việt', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014444', '2', '0');
INSERT INTO `ds_mt` VALUES ('103', 'Ủy ban nhân dân xã Vĩnh Quỳnh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014474', '2', '0');
INSERT INTO `ds_mt` VALUES ('104', 'CÔNG TY ĐIỆN LỰC BẮC TỪ LIÊM', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014466', '2', '0');
INSERT INTO `ds_mt` VALUES ('105', 'Đài Truyền thanh Truyền hình huyện Hưng Nguyên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014473', '2', '0');
INSERT INTO `ds_mt` VALUES ('106', 'Đài Truyền thanh truyền hình huyện Nghi Lộc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014470', '2', '0');
INSERT INTO `ds_mt` VALUES ('107', 'Ban quản lý dự án huyện Mường Chà', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013260', '2', '0');
INSERT INTO `ds_mt` VALUES ('108', 'Công ty Điện lực Hậu Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014435', '2', '0');
INSERT INTO `ds_mt` VALUES ('109', 'Sở Kế hoạch và Đầu tư tỉnh Cà Mau', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014410', '2', '0');
INSERT INTO `ds_mt` VALUES ('110', 'Ủy ban nhân dân xã Quang Phục', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014434', '2', '0');
INSERT INTO `ds_mt` VALUES ('111', 'Ban quản lý rừng phòng hộ Quỳ Hợp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014477', '2', '0');
INSERT INTO `ds_mt` VALUES ('112', 'Công ty Cổ phần tư vấn thiết kế đầu tư Tân Việt', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014444', '2', '0');
INSERT INTO `ds_mt` VALUES ('113', 'Ủy ban nhân dân xã Vĩnh Quỳnh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014474', '2', '0');
INSERT INTO `ds_mt` VALUES ('114', 'CÔNG TY ĐIỆN LỰC BẮC TỪ LIÊM', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014466', '2', '0');
INSERT INTO `ds_mt` VALUES ('115', 'Đài Truyền thanh Truyền hình huyện Hưng Nguyên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014473', '2', '0');
INSERT INTO `ds_mt` VALUES ('116', 'Đài Truyền thanh truyền hình huyện Nghi Lộc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014470', '2', '0');
INSERT INTO `ds_mt` VALUES ('117', 'Ban quản lý dự án huyện Mường Chà', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013260', '2', '0');
INSERT INTO `ds_mt` VALUES ('118', 'Công ty Điện lực Hậu Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014435', '2', '0');
INSERT INTO `ds_mt` VALUES ('119', 'Sở Kế hoạch và Đầu tư tỉnh Cà Mau', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014410', '2', '0');
INSERT INTO `ds_mt` VALUES ('120', 'Ủy ban nhân dân xã Quang Phục', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014434', '2', '0');
INSERT INTO `ds_mt` VALUES ('121', 'Ban quản lý rừng phòng hộ Quỳ Hợp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014477', '2', '0');
INSERT INTO `ds_mt` VALUES ('122', 'Công ty Cổ phần tư vấn thiết kế đầu tư Tân Việt', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014444', '2', '0');
INSERT INTO `ds_mt` VALUES ('123', 'Ủy ban nhân dân xã Vĩnh Quỳnh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014474', '2', '0');
INSERT INTO `ds_mt` VALUES ('124', 'CÔNG TY ĐIỆN LỰC BẮC TỪ LIÊM', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014466', '2', '0');
INSERT INTO `ds_mt` VALUES ('125', 'Đài Truyền thanh Truyền hình huyện Hưng Nguyên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014473', '2', '0');
INSERT INTO `ds_mt` VALUES ('126', 'Đài Truyền thanh truyền hình huyện Nghi Lộc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014470', '2', '0');
INSERT INTO `ds_mt` VALUES ('127', 'Ban quản lý dự án huyện Mường Chà', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013260', '2', '0');
INSERT INTO `ds_mt` VALUES ('128', 'Công ty Điện lực Hậu Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014435', '2', '0');
INSERT INTO `ds_mt` VALUES ('129', 'Sở Kế hoạch và Đầu tư tỉnh Cà Mau', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014410', '2', '0');
INSERT INTO `ds_mt` VALUES ('130', 'Ủy ban nhân dân xã Quang Phục', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014434', '2', '0');
INSERT INTO `ds_mt` VALUES ('131', 'Ủy ban nhân dân xã Cấp Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014433', '2', '0');
INSERT INTO `ds_mt` VALUES ('132', 'Ủy ban nhân dân xã Tiên Thắng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014429', '2', '0');
INSERT INTO `ds_mt` VALUES ('133', 'Ủy ban nhân dân xã Quyết Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014432', '2', '0');
INSERT INTO `ds_mt` VALUES ('134', 'Ủy ban nhân xã Vinh Quang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014431', '2', '0');
INSERT INTO `ds_mt` VALUES ('135', 'Trung tâm phòng chống HIV/AIDS tỉnh Bắc Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014421', '2', '0');
INSERT INTO `ds_mt` VALUES ('136', 'Công ty TNHH một thành viên Ngọc Trang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014427', '2', '0');
INSERT INTO `ds_mt` VALUES ('137', 'Trung tâm y tế quận Cẩm Lệ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014417', '2', '0');
INSERT INTO `ds_mt` VALUES ('138', 'Phòng Dân tộc, huyện Lâm Bình', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014415', '2', '0');
INSERT INTO `ds_mt` VALUES ('139', 'Công ty TNHH Cao ốc Vietcombank 198', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014396', '2', '0');
INSERT INTO `ds_mt` VALUES ('140', 'UBND phường Trung Đô TP Vinh, tỉnh Nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014425', '2', '0');
INSERT INTO `ds_mt` VALUES ('141', 'Công ty Điện lực Hậu Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014435', '2', '0');
INSERT INTO `ds_mt` VALUES ('142', 'Sở Kế hoạch và Đầu tư tỉnh Cà Mau', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014410', '2', '0');
INSERT INTO `ds_mt` VALUES ('143', 'Ủy ban nhân dân xã Quang Phục', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014434', '2', '0');
INSERT INTO `ds_mt` VALUES ('144', 'Ủy ban nhân dân xã Cấp Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014433', '2', '0');
INSERT INTO `ds_mt` VALUES ('145', 'Ủy ban nhân dân xã Tiên Thắng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014429', '2', '0');
INSERT INTO `ds_mt` VALUES ('146', 'Ủy ban nhân dân xã Quyết Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014432', '2', '0');
INSERT INTO `ds_mt` VALUES ('147', 'Ủy ban nhân xã Vinh Quang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014431', '2', '0');
INSERT INTO `ds_mt` VALUES ('148', 'Trung tâm phòng chống HIV/AIDS tỉnh Bắc Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014421', '2', '0');
INSERT INTO `ds_mt` VALUES ('149', 'Công ty TNHH một thành viên Ngọc Trang', '/RA/UM_RAJ_GovrA010y.jsp?instit  5b5  u=Z014427', '2', '0');
INSERT INTO `ds_mt` VALUES ('150', 'Trung tâm y tế quận Cẩm Lệ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014417', '2', '0');
INSERT INTO `ds_mt` VALUES ('151', 'Phòng Dân tộc, huyện Lâm Bình', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014415', '2', '0');
INSERT INTO `ds_mt` VALUES ('152', 'Công ty TNHH Cao ốc Vietcombank 198', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014396', '2', '0');
INSERT INTO `ds_mt` VALUES ('153', 'UBND phường Trung Đô TP Vinh, tỉnh Nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014425', '2', '0');
INSERT INTO `ds_mt` VALUES ('154', 'Công ty cổ phần tư vấn đầu tư và xây dựng Phương Bắc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014418', '2', '0');
INSERT INTO `ds_mt` VALUES ('155', 'công ty TNHH Lập Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014301', '2', '0');
INSERT INTO `ds_mt` VALUES ('156', 'CÔNG TY TNHH THƯƠNG MẠI VÀ XÂY DỰNG SƠN LONG THUẬN', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014408', '2', '0');
INSERT INTO `ds_mt` VALUES ('157', 'Văn phòng Tổng công ty Bưu điện Việt Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014335', '2', '0');
INSERT INTO `ds_mt` VALUES ('158', 'Ủy ban nhân dân xã Nghi Lâm', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014382', '2', '0');
INSERT INTO `ds_mt` VALUES ('159', 'Ủy ban nhân dân xã Đông Phương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014409', '2', '0');
INSERT INTO `ds_mt` VALUES ('160', 'Ủy ban nhân dân xã Tân Trào', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014411', '2', '0');
INSERT INTO `ds_mt` VALUES ('161', 'công ty tnhh mtv tư vấn và thương mại nhân nghĩa', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014327', '2', '0');
INSERT INTO `ds_mt` VALUES ('162', 'Ban quản lý dự án đầu tư và xây dựng công trình thủy lợi', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014413', '2', '0');
INSERT INTO `ds_mt` VALUES ('163', 'Phòng Quản lý đô thị Tp. Điện Biên Phủ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014428', '2', '0');
INSERT INTO `ds_mt` VALUES ('164', 'PHÒNG NÔNG NGHIỆP VÀ PHÁT TRIỂN NÔNG THÔN HUYỆN CHƯ PRÔNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014387', '2', '0');
INSERT INTO `ds_mt` VALUES ('165', 'Bệnh viện Đa khoa tỉnh Quảng Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014394', '2', '0');
INSERT INTO `ds_mt` VALUES ('166', 'UBND xã Thống Nhất', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014404', '2', '0');
INSERT INTO `ds_mt` VALUES ('167', 'Ủy ban nhân dân xã Tả Thanh Oai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014397', '2', '0');
INSERT INTO `ds_mt` VALUES ('168', 'Ủy ban nhân dân xã Duyên Hà', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014395', '2', '0');
INSERT INTO `ds_mt` VALUES ('169', 'Công ty Cổ phần Tư vấn Xây dựng Tân Hưng Phúc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014377', '2', '0');
INSERT INTO `ds_mt` VALUES ('170', 'Ban An toàn giao thông tỉnh Hải Dương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014336', '2', '0');
INSERT INTO `ds_mt` VALUES ('171', 'Viễn thông Bình Định', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014378', '2', '0');
INSERT INTO `ds_mt` VALUES ('172', 'Công ty TNHH MTV tư vấn và thương mại Đức Thiện', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014328', '2', '0');
INSERT INTO `ds_mt` VALUES ('173', 'Cục Thuế tỉnh Cà Mau', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014311', '2', '0');
INSERT INTO `ds_mt` VALUES ('174', 'Phòng kinh tế và Hạ tầng huyện ia Grai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014375', '2', '0');
INSERT INTO `ds_mt` VALUES ('175', 'Chi nhánh Tổng công ty Điện lực Tp. Hồ Chí Minh TNHH. Công ty Điện lực Phú Thọ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014302', '2', '0');
INSERT INTO `ds_mt` VALUES ('176', 'Phòng Hậu cần Kỹ thuật, Công an tỉnh Lâm Đồng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014319', '2', '0');
INSERT INTO `ds_mt` VALUES ('177', 'Văn phòng Tập đoàn Bưu chính Viễn thông Việt Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014308', '2', '0');
INSERT INTO `ds_mt` VALUES ('178', 'Bệnh viện Trẻ em Hải Phòng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014329', '2', '0');
INSERT INTO `ds_mt` VALUES ('179', 'Công ty cổ phần tư vấn tổng hợp số 1', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014330', '2', '0');
INSERT INTO `ds_mt` VALUES ('180', 'Ban quản lý dự án đầu tư và xây dựng xã Tân Liên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014297', '2', '0');
INSERT INTO `ds_mt` VALUES ('181', 'Chi nhánh Ngân hàng Chính sách xã hội tỉnh Quảng Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014300', '2', '0');
INSERT INTO `ds_mt` VALUES ('182', 'Công ty Điện lực Đông Anh Tổng Công ty Điện lực TP Hà Nội', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z003260', '2', '0');
INSERT INTO `ds_mt` VALUES ('183', 'Viện Kiến trúc Quy hoạch thành phố Cần Thơ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014313', '2', '0');
INSERT INTO `ds_mt` VALUES ('184', 'Viện Khoa học và Kỹ thuật Hạt nhân', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014280', '2', '0');
INSERT INTO `ds_mt` VALUES ('185', 'Công ty TNHH Thiết kế Xây dựng Thương mại Dịch vụ Ngô Trần', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014285', '2', '0');
INSERT INTO `ds_mt` VALUES ('186', 'Ban quản lý dự án chuyên ngành Công Thương tỉnh Điện Biên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014304', '2', '0');
INSERT INTO `ds_mt` VALUES ('187', 'Trung tâm Thông tin xúc tiến Du lịch Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014286', '2', '0');
INSERT INTO `ds_mt` VALUES ('188', 'Hội bảo trợ Người khuyết tật và Trẻ mồ côi Tp.Hồ Chí Minh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014293', '2', '0');
INSERT INTO `ds_mt` VALUES ('189', 'Trung tâm Nghiên cứu khoa học và Đào tạo chứng khoán', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014324', '2', '0');
INSERT INTO `ds_mt` VALUES ('190', 'NGÂN HÀNG THƯƠNG MẠI TRÁCH NHIỆM HỮU HẠN MỘT THÀNH VIÊN XÂY  DỰNG VIỆT NAM', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014296', '2', '0');
INSERT INTO `ds_mt` VALUES ('191', 'Công ty cổ phần COMA18', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014290', '2', '0');
INSERT INTO `ds_mt` VALUES ('192', 'Ban quản lý các dự án ĐTXD công trình Thủy lợi Sở Nông nghiệp và PTNT tỉnh Sơn La', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014284', '2', '0');
INSERT INTO `ds_mt` VALUES ('193', 'Ban Quản lý Dự án Phát triển Doanh nghiệp nhỏ và vừa tỉnh Trà Vinh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014281', '2', '0');
INSERT INTO `ds_mt` VALUES ('194', 'Công ty TNHH Ngọc Khánh VT', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014316', '2', '0');
INSERT INTO `ds_mt` VALUES ('195', 'Xí nghiệp Điện Cao Thế, Công ty TNHH MTV Điện Lực Đồng Nai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014231', '2', '0');
INSERT INTO `ds_mt` VALUES ('196', 'Trung tâm Tư vấn và Công nghệ Môi trường', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014291', '2', '0');
INSERT INTO `ds_mt` VALUES ('197', 'CÔNG TY CP ĐẦU TƯ VÀ PHÁT TRIỂN DỊCH VỤ HẠ TẦNG VIỄN THÔNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014287', '2', '0');
INSERT INTO `ds_mt` VALUES ('198', 'Ban quản lý dự án Hỗ trợ xử lý chất thải bệnh viện tỉnh Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014269', '2', '0');
INSERT INTO `ds_mt` VALUES ('199', 'UBND xã Hưng Thắng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014273', '2', '0');
INSERT INTO `ds_mt` VALUES ('200', 'SỞ TÀI NGUYÊN VÀ MÔI TRƯỜNG TỈNH SÓC TRĂNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014142', '2', '0');
INSERT INTO `ds_mt` VALUES ('201', 'Phòng Tài chính Kế hoạch huyện Krông Pa, tỉnh Gia Lai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014263', '2', '0');
INSERT INTO `ds_mt` VALUES ('202', 'Trung tâm chăm sóc sức khỏe sinh sản Nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014275', '2', '0');
INSERT INTO `ds_mt` VALUES ('203', 'TÒA ÁN NHÂN DÂN TỈNH CÀ MAU', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014223', '2', '0');
INSERT INTO `ds_mt` VALUES ('204', 'Ủy ban nhân dân xã Quảng Phước, huyện Quảng Điền', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014239', '2', '0');
INSERT INTO `ds_mt` VALUES ('205', 'Ủy ban nhân dân xã Quảng Công, huyện Quảng Điền', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014241', '2', '0');
INSERT INTO `ds_mt` VALUES ('206', 'Ủy ban nhân dân xã Hải Hưng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014240', '2', '0');
INSERT INTO `ds_mt` VALUES ('207', 'Cục Thống kê tỉnh Tiền Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014238', '2', '0');
INSERT INTO `ds_mt` VALUES ('208', 'Công ty TNHH Một thành viên Điện lực Hải Phòng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014104', '2', '0');
INSERT INTO `ds_mt` VALUES ('209', 'Công ty TNHH Một thành viên Vạn Phúc Đồng Tháp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014230', '2', '0');
INSERT INTO `ds_mt` VALUES ('210', 'Công ty Cổ phần Đầu tư và Xây dựng Hưng Long', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014251', '2', '0');
INSERT INTO `ds_mt` VALUES ('211', 'Bệnh viện Quân y 175/BQP', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014221', '2', '0');
INSERT INTO `ds_mt` VALUES ('212', 'CÔNG TY TNHH MỘT THÀNH VIÊN DỊCH VỤ KỸ THUẬT TRUYỀN THÔNG HTV', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014245', '2', '0');
INSERT INTO `ds_mt` VALUES ('213', 'Phòng Dân tộc huyện Yên Sơn', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014197', '2', '0');
INSERT INTO `ds_mt` VALUES ('214', 'Văn phòng xây dựng nông thôn mới huyện Sóc Sơn', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014259', '2', '0');
INSERT INTO `ds_mt` VALUES ('215', 'Trung tâm phát triển quỹ đất thành phố Pleiku', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014254', '2', '0');
INSERT INTO `ds_mt` VALUES ('216', 'ỦY BAN NHÂN DÂN XÃ SƠN DUNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014247', '2', '0');
INSERT INTO `ds_mt` VALUES ('217', 'Công ty cổ phần Quản lý và Phát triển nhà Dầu khí Miền Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014244', '2', '0');
INSERT INTO `ds_mt` VALUES ('218', 'Công ty Cổ phần Thiết bị điện VINASINO', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014207', '2', '0');
INSERT INTO `ds_mt` VALUES ('219', 'Sở Công Thương Tuyên Quang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014258', '2', '0');
INSERT INTO `ds_mt` VALUES ('220', 'CÔNG TY TNHH MỘT THÀNH VIÊN IN BÁO NHÂN DÂN THÀNH PHỐ HỒ CHÍ MINH', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014255', '2', '0');
INSERT INTO `ds_mt` VALUES ('221', 'Viện Thủy công', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014250', '2', '0');
INSERT INTO `ds_mt` VALUES ('222', 'Ban Quản lý ký túc xá Mỹ Đình', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014102', '2', '0');
INSERT INTO `ds_mt` VALUES ('223', 'Công ty TNHH một thành viên xây dựng và thương mại Tuấn Liên Việt', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014196', '2', '0');
INSERT INTO `ds_mt` VALUES ('224', 'Công ty cổ phần Phân bón và Hóa chất dầu khí Miền Trung', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014124', '2', '0');
INSERT INTO `ds_mt` VALUES ('225', 'Kho bạc Nhà nước Bình Dương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014190', '2', '0');
INSERT INTO `ds_mt` VALUES ('226', 'Trung tâm bồi dưỡng chính trị huyện Krông Bông', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014186', '2', '0');
INSERT INTO `ds_mt` VALUES ('227', 'Trung tâm chăm sóc sức khỏe sinh sản nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014219', '2', '0');
INSERT INTO `ds_mt` VALUES ('228', 'Công ty Xây dựng mỏ hầm lò 1 Vinacomin', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014193', '2', '0');
INSERT INTO `ds_mt` VALUES ('229', 'Ủy ban nhân dân xã Hòa Sơn', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014200', '2', '0');
INSERT INTO `ds_mt` VALUES ('230', 'Kho bạc Nhà nước Tuyên Quang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014214', '2', '0');
INSERT INTO `ds_mt` VALUES ('231', 'Trung tâm phát triển quỹ đất huyện Thanh Oai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014216', '2', '0');
INSERT INTO `ds_mt` VALUES ('232', 'Công ty cổ phần tư vấn đầu tư xây dựng PP', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014090', '2', '0');
INSERT INTO `ds_mt` VALUES ('233', 'Ủy ban nhân dân thị trấn Sịa, huyện Quảng Điền', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014229', '2', '0');
INSERT INTO `ds_mt` VALUES ('234', 'Công ty TNHH MTV Điện lực Đồng Nai - Điện lực Long Thành', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014205', '2', '0');
INSERT INTO `ds_mt` VALUES ('235', 'Kho bạc Nhà nước Tây Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014097', '2', '0');
INSERT INTO `ds_mt` VALUES ('236', 'V  47e  ườn ươm Doanh nghiệp Công nghệ cao', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014209', '2', '0');
INSERT INTO `ds_mt` VALUES ('237', 'Trung tâm Y tế huyện An Dương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014218', '2', '0');
INSERT INTO `ds_mt` VALUES ('238', 'Quỹ Bảo vệ môi trường TPHCM', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014227', '2', '0');
INSERT INTO `ds_mt` VALUES ('239', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN TƯ VẤN XÂY DỰNG XD15', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014208', '2', '0');
INSERT INTO `ds_mt` VALUES ('240', 'UBND xã Tự Nhiên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014136', '2', '0');
INSERT INTO `ds_mt` VALUES ('241', 'Trung tâm Y tế huyện An Lão', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014194', '2', '0');
INSERT INTO `ds_mt` VALUES ('242', 'CÔNG TY CỔ PHẦN TƯ VẤN THIẾT KẾ GIÁM SÁT MINH HOÀNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014087', '2', '0');
INSERT INTO `ds_mt` VALUES ('243', 'Trung tâm Kỹ thuật Tiêu chuẩn Đo lường Chất lượng 3', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014096', '2', '0');
INSERT INTO `ds_mt` VALUES ('244', 'Công ty TNHH Đầu tư Tư vấn Xây dựng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014191', '2', '0');
INSERT INTO `ds_mt` VALUES ('245', 'CÔNG TY TNHH THIẾT KẾ XÂY DỰNG TIỀN GIANG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014187', '2', '0');
INSERT INTO `ds_mt` VALUES ('246', 'Phòng Tài chính Kế hoạch huyện Đầm Hà', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014202', '2', '0');
INSERT INTO `ds_mt` VALUES ('247', 'Bưu điện tỉnh Vĩnh Long', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014217', '2', '0');
INSERT INTO `ds_mt` VALUES ('248', 'BAN QUẢN LÝ DỰ ÁN QUẬN BA ĐÌNH', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014212', '2', '0');
INSERT INTO `ds_mt` VALUES ('249', 'Kho bạc Nhà nước Trà Vinh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014121', '2', '0');
INSERT INTO `ds_mt` VALUES ('250', 'Sở Y tế tỉnh Bắc Kạn', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014113', '2', '0');
INSERT INTO `ds_mt` VALUES ('251', 'Cục Hải quan TP Đà Nẵng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014129', '2', '0');
INSERT INTO `ds_mt` VALUES ('252', 'Cục Hải quan TP Đà Nẵng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014130', '2', '0');
INSERT INTO `ds_mt` VALUES ('253', 'UBND phường Hương Vân', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014141', '2', '0');
INSERT INTO `ds_mt` VALUES ('254', 'Ban quản lý dự án \"Hành lang bảo tồn đa dạng sinh học Tiểu vùng Mê Công mở rộng giai đoạn 2\" tỉnh Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014140', '2', '0');
INSERT INTO `ds_mt` VALUES ('255', 'Trung tâm dịch vụ việc làm Tiền Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014123', '2', '0');
INSERT INTO `ds_mt` VALUES ('256', 'Trung tâm Nghiên cứu Triển khai Khu Công nghệ cao', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014105', '2', '0');
INSERT INTO `ds_mt` VALUES ('257', 'Sở Giáo dục và Đào tạo Phú Thọ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014189', '2', '0');
INSERT INTO `ds_mt` VALUES ('258', 'Công ty TNHH Hoàng Longls', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014110', '2', '0');
INSERT INTO `ds_mt` VALUES ('259', 'Ban Quản lý Phát triển đô thị mới Điện Nam Điện Ngọc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014117', '2', '0');
INSERT INTO `ds_mt` VALUES ('260', 'Kho bạc Nhà nước Bạc Liêu', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014100', '2', '0');
INSERT INTO `ds_mt` VALUES ('261', 'XÍ NGHIỆP ĐIỆN CAO THẾ - CÔNG TY TNHH MTV ĐIỆN LỰC ĐỒNG NAI', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014025', '2', '0');
INSERT INTO `ds_mt` VALUES ('262', 'Kho bạc Nhà nước Kiên Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014084', '2', '0');
INSERT INTO `ds_mt` VALUES ('263', 'Công ty TNHH Tư vấn Đầu tư Vạn Xuân', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014079', '2', '0');
INSERT INTO `ds_mt` VALUES ('264', 'Kho bạc Nhà nước Bình Thuận', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014107', '2', '0');
INSERT INTO `ds_mt` VALUES ('265', 'Ban Quản lý dự án Phát triển Điện lực Hà Nội', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014134', '2', '0');
INSERT INTO `ds_mt` VALUES ('266', 'Công ty cổ phần đầu tư nhà và thương mại Hưng Ngân', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014109', '2', '0');
INSERT INTO `ds_mt` VALUES ('267', 'Kho bạc Nhà nước Đăk Nông', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014103', '2', '0');
INSERT INTO `ds_mt` VALUES ('268', 'Ban Quản Lý Dự Án Đầu Tư Xây Dựng Các Công Trình Hạ Tầng Xã Hội Sở Xây Dựng Hà Nội', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014128', '2', '0');
INSERT INTO `ds_mt` VALUES ('269', 'Công ty cổ phần tư vấn thiết kế và đầu tư xây dựng Đông Thịnh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014108', '2', '0');
INSERT INTO `ds_mt` VALUES ('270', 'Công ty TNHH Đầu tư Đường 286', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014114', '2', '0');
INSERT INTO `ds_mt` VALUES ('271', 'KHO BẠC NHÀ NƯỚC HẬU GIANG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014098', '2', '0');
INSERT INTO `ds_mt` VALUES ('272', 'UBND XÃ SƠN DUNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014067', '2', '0');
INSERT INTO `ds_mt` VALUES ('273', 'TRƯỜNG CAO ĐẲNG CÔNG NGHỆ VÀ QUẢN TRỊ SONADEZI', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014086', '2', '0');
INSERT INTO `ds_mt` VALUES ('274', 'Kho bạc Nhà nước Cần Thơ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014088', '2', '0');
INSERT INTO `ds_mt` VALUES ('275', 'Cục Dự trữ Nhà nước khu vực Nam Tây Nguyên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014094', '2', '0');
INSERT INTO `ds_mt` VALUES ('276', 'Kho bạc Nhà nước Cà Mau', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014085', '2', '0');
INSERT INTO `ds_mt` VALUES ('277', 'Công ty TNHH tư vấn đầu tư xây dựng Quảng Đức', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014051', '2', '0');
INSERT INTO `ds_mt` VALUES ('278', 'Ban quản lý dự án \" Quản lý nguồn nước tổng hợp và phát triển đô thị trong mối liên hệ với Biến đổi khí hậu tỉnh Ninh Thuận\"', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013826', '2', '0');
INSERT INTO `ds_mt` VALUES ('279', 'Ban quản lý dự án Hợp phần bồi thường GPMB, di dân, tái định cư công trình thủy lợi thủy điện Bản Mồng, Nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014066', '2', '0');
INSERT INTO `ds_mt` VALUES ('280', 'Ban quản lý dự án xã Hướng Linh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014044', '2', '0');
INSERT INTO `ds_mt` VALUES ('281', 'Ban quản lý dự án xây dựng các công trình xã Bình Chuẩn huyện Con Cuông', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014041', '2', '0');
INSERT INTO `ds_mt` VALUES ('282', 'Bệnh viện Đa khoa Thành phố Cần Thơ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014072', '2', '0');
INSERT INTO `ds_mt` VALUES ('283', 'CÔNG TY CỔ PHẦN THIẾT KẾ VÀ XÂY DỰNG HÀ NỘI', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014078', '2', '0');
INSERT INTO `ds_mt` VALUES ('284', 'Phòng Nông nghiệp và phát triển nông thôn huyện Kế Sách, tỉnh Sóc Trăng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014071', '2', '0');
INSERT INTO `ds_mt` VALUES ('285', 'Công ty trách nhiệm hữu hạn một thành viên Cấp thoát nước Bến Tre', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014070', '2', '0');
INSERT INTO `ds_mt` VALUES ('286', 'Công ty TNHH một thành viên Máy kéo và Máy nông nghiệp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014061', '2', '0');
INSERT INTO `ds_mt` VALUES ('287', 'Ban Quản lý dự án Nông nghiệp và Phát triển Nông thôn Hà Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014081', '2', '0');
INSERT INTO `ds_mt` VALUES ('288', 'Công ty Cổ phần tư vấn đầu tư xây dựng và thương mại SIC', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014083', '2', '0');
INSERT INTO `ds_mt` VALUES ('289', 'Trung tâm Văn hóa Thông tin Thể thao Thành phố Pleiku', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014064', '2', '0');
INSERT INTO `ds_mt` VALUES ('290', 'Ủy ban nhân dân xã Vạn Phúc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014035', '2', '0');
INSERT INTO `ds_mt` VALUES ('291', 'Ủy Ban Nhân Dân Xã Phú Hữu', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014055', '2', '0');
INSERT INTO `ds_mt` VALUES ('292', 'Sở Kế hoạch và Đầu tư tỉnh Thái Nguyên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013909', '2', '0');
INSERT INTO `ds_mt` VALUES ('293', 'Trung tâm Chất lượng Nông Lâm Thủy sản vùng 6', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014057', '2', '0');
INSERT INTO `ds_mt` VALUES ('294', 'Trung tâm phát triển quỹ đất thành phố Tam Kỳ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014058', '2', '0');
INSERT INTO `ds_mt` VALUES ('295', 'Ban quản lý dự án Đầu tư và Xây dựng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013599', '2', '0');
INSERT INTO `ds_mt` VALUES ('296', 'Vườn Quốc   47e  gia Kon Ka Kinh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014043', '2', '0');
INSERT INTO `ds_mt` VALUES ('297', 'Công ty Trách nhiệm hữu hạn Tư vấn Đầu tư Vạn Xuân', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014034', '2', '0');
INSERT INTO `ds_mt` VALUES ('298', 'CÔNG TY CỔ PHẦN ĐẦU TƯ TDIF', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014048', '2', '0');
INSERT INTO `ds_mt` VALUES ('299', 'Ban quản lý các dự án quy hoạch trực thuộc Sở Xây dựng tỉnh Ninh Thuận', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014015', '2', '0');
INSERT INTO `ds_mt` VALUES ('300', 'Ban quản lý chợ Sa Đéc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014013', '2', '0');
INSERT INTO `ds_mt` VALUES ('301', 'CÔNG TY TNHH TƯ VẤN ĐẦU TƯ XÂY DỰNG CÔNG TRÌNH NHƠN PHÚ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013835', '2', '0');
INSERT INTO `ds_mt` VALUES ('302', 'Ban Quản Lý Đầu Tư Xây Dựng Các Công Trình thuộc Sở Giáo Dục và Đào Tạo', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014024', '2', '0');
INSERT INTO `ds_mt` VALUES ('303', 'Ban quản lý Tiểu dự án Phát triển Đô thị Vinh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014012', '2', '0');
INSERT INTO `ds_mt` VALUES ('304', 'Phòng Nông nghiệp và Phát triển nông thôn huyện Tam Nông, tỉnh Đồng Tháp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014022', '2', '0');
INSERT INTO `ds_mt` VALUES ('305', 'Trung tâm Xúc tiến Đầu tư Thương mại Du lịch tỉnh Tiền Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014053', '2', '0');
INSERT INTO `ds_mt` VALUES ('306', 'Sở Thông tin và Truyền thông tỉnh Long An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013996', '2', '0');
INSERT INTO `ds_mt` VALUES ('307', 'UBND xã Hưng Thịnh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014047', '2', '0');
INSERT INTO `ds_mt` VALUES ('308', 'Báo Sức khỏe và Đời sống', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014054', '2', '0');
INSERT INTO `ds_mt` VALUES ('309', 'Công ty Cổ phần Kiến trúc Xây dựng ARCHIPAGE Việt Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014056', '2', '0');
INSERT INTO `ds_mt` VALUES ('310', 'Sở Nông nghiệp và PTNT Lai Châu', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014065', '2', '0');
INSERT INTO `ds_mt` VALUES ('311', 'NGÂN HÀNG NÔNG NGHIỆP VÀ PHẤT TRIỂN NÔNG THÔN VIỆT NAM CHI NHÁNH TIỀN GIANG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014039', '2', '0');
INSERT INTO `ds_mt` VALUES ('312', 'Ban quản lý dự án xã Tân Long', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013963', '2', '0');
INSERT INTO `ds_mt` VALUES ('313', 'Kho bạc Nhà nước Cao Bằng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014001', '2', '0');
INSERT INTO `ds_mt` VALUES ('314', 'Ban quản lý dự án xã Tân Thành', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013976', '2', '0');
INSERT INTO `ds_mt` VALUES ('315', 'Bệnh viện đa khoa Đồng Tháp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013983', '2', '0');
INSERT INTO `ds_mt` VALUES ('316', 'Cục Hải quan tỉnh Hà Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013991', '2', '0');
INSERT INTO `ds_mt` VALUES ('317', 'Công Ty TNHH MTV Cao Su Ea Hleo', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013989', '2', '0');
INSERT INTO `ds_mt` VALUES ('318', 'Công ty TNHH một thành viên cấp nước diễn Châu', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z0140  58a  04', '2', '0');
INSERT INTO `ds_mt` VALUES ('319', 'Chi cục Thi hành án dân sự quận Hà Đông', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014009', '2', '0');
INSERT INTO `ds_mt` VALUES ('320', 'Công ty Cổ Phần Tư Vấn Xây Dựng Hải Linh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014021', '2', '0');
INSERT INTO `ds_mt` VALUES ('321', 'Ban Quản lý dự án đầu tư và xây dựng Thủy lợi Quảng Ngãi', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014020', '2', '0');
INSERT INTO `ds_mt` VALUES ('322', 'Ban quản lý dự án Quản lý rừng bền vững và đa dạng sinh học nhằm giảm phát thải CO2 Trung ương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013999', '2', '0');
INSERT INTO `ds_mt` VALUES ('323', 'CÔNG TY TNHH MỘT THÀNH VIÊN KHAI THÁC THỦY LỢI TÂY NINH', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013988', '2', '0');
INSERT INTO `ds_mt` VALUES ('324', 'Phòng Giáo dục và Đào tạo huyện Krông Bông', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013985', '2', '0');
INSERT INTO `ds_mt` VALUES ('325', 'Ban quản lý các dự án Nam Lào thành phố Đà Nẵng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013993', '2', '0');
INSERT INTO `ds_mt` VALUES ('326', 'Cục Hải quan tỉnh Lào Cai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013968', '2', '0');
INSERT INTO `ds_mt` VALUES ('327', 'Trung tâm phát triển quỹ đất huyện Đakrông, tỉnh Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013992', '2', '0');
INSERT INTO `ds_mt` VALUES ('328', 'Ban Quản lý đầu tư xây dựng công trình quận Bình Thạnh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014003', '2', '0');
INSERT INTO `ds_mt` VALUES ('329', 'Ủy ban nhân dân xã Thanh Cao', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013981', '2', '0');
INSERT INTO `ds_mt` VALUES ('330', 'Trung tâm Y tế dự phòng Hà Nội', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013951', '2', '0');
INSERT INTO `ds_mt` VALUES ('331', 'Công ty Trách nhiêm hữu hạn Tư vấn xây dựng Gia Phú', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013933', '2', '0');
INSERT INTO `ds_mt` VALUES ('332', 'CÔNG TY DỊCH VỤ MOBIFONE KHU VỰC 9_CHI NHÁNH TỔNG CÔNG TY VIỄN THÔNG MOBIFONE', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013906', '2', '0');
INSERT INTO `ds_mt` VALUES ('333', 'BAN QUẢN LÝ ĐIỀU HÀNH CÁC DỰ ÁN, CHI NHÁNH TẬP ĐOÀN VIỄN THÔNG QUÂN ĐỘI', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013795', '2', '0');
INSERT INTO `ds_mt` VALUES ('334', 'Cục Phát thanh, truyền hình và thông tin điện tử', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014000', '2', '0');
INSERT INTO `ds_mt` VALUES ('335', 'NGÂN HÀNG THƯƠNG MẠI CỔ PHẦN NGOẠI THƯƠNG VIỆT NAM - CHI NHÁNH THÀNH PHỐ HỒ CHÍ MINH', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013972', '2', '0');
INSERT INTO `ds_mt` VALUES ('336', 'Chi nhánh Viện Dầu khí Việt Nam (thành phố Hà Nội) - Trung tâm Phân tích Thí nghiệm', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013970', '2', '0');
INSERT INTO `ds_mt` VALUES ('337', 'Công ty Dịch vụ MobiFone khu vực 5 - Chi nhánh Tổng Công ty Viễn thông MobiFone', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013958', '2', '0');
INSERT INTO `ds_mt` VALUES ('338', 'Công ty trách nhiệm hữu hạn Đồng Việt', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013942', '2', '0');
INSERT INTO `ds_mt` VALUES ('339', 'Ban quản lý dự án xây dựng, cải tạo trụ sở làm việc - Bộ Kế hoạch và Đầu tư', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013917', '2', '0');
INSERT INTO `ds_mt` VALUES ('340', 'Phòng Kinh tế và Hạ tầng huyện Krông Búk', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013953', '2', '0');
INSERT INTO `ds_mt` VALUES ('341', 'Trạm Thủy lợi huyện Tịnh Biên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013943', '2', '0');
INSERT INTO `ds_mt` VALUES ('342', 'VIỄN THÔNG CÀ MAU', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013949', '2', '0');
INSERT INTO `ds_mt` VALUES ('343', 'Ngân hàng Nhà nước Việt Nam Chi nhánh Đà Nẵng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013955', '2', '0');
INSERT INTO `ds_mt` VALUES ('344', 'UBND xã Hữu Hòa', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013952', '2', '0');
INSERT INTO `ds_mt` VALUES ('345', 'Công ty CP Tư vấn Thiết kế Xây dựng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013613', '2', '0');
INSERT INTO `ds_mt` VALUES ('346', 'Trung tâm Bồi thường giải phóng mặt bằng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013916', '2', '0');
INSERT INTO `ds_mt` VALUES ('347', 'Ban quản lý các dự án xây dựng hạ tầng đô thị thuộc Sở Xây dựng Ninh Thuận', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013914', '2', '0');
INSERT INTO `ds_mt` VALUES ('348', 'Đoạn Đường sông Hải Dương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013948', '2', '0');
INSERT INTO `ds_mt` VALUES ('349', 'Ban quản lý thực hiện các công trình duy tu bảo dưỡng, sửa chữa, cải tạo và các công trình khác được UBND huyện giao thực hiện', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013925', '2', '0');
INSERT INTO `ds_mt` VALUES ('350', 'CÔNG TY TNHH MỘT THÀNH VIÊN LÂM NGHIỆP SÀI GÒN', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013928', '2', '0');
INSERT INTO `ds_mt` VALUES ('351', 'Công ty Cổ phần Xây dựng 2 Tây Nguyên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013921', '2', '0');
INSERT INTO `ds_mt` VALUES ('352', 'Ban quản lý dự án chương trình mục tiêu quốc gia nước sạch và vệ sinh môi trường nông thôn giai đoạn 2012 đến 2015 đối với các công trình do Sở Nông nghiệp và PTNT Đà Nẵng làm Chủ đầu tư', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013881', '2', '0');
INSERT INTO `ds_mt` VALUES ('353', 'Công ty cổ phần khảo sát thiết kế MEADI.VN', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013912', '2', '0');
INSERT INTO `ds_mt` VALUES ('354', 'Ban Quản lý dự án Sở Y tế Hà Nội', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013945', '2', '0');
INSERT INTO `ds_mt` VALUES ('355', 'Học viện Chính trị khu vực I', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013936', '2', '0');
INSERT INTO `ds_mt` VALUES ('356', 'UBND xã Minh Cường', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013939', '2', '0');
INSERT INTO `ds_mt` VALUES ('357', 'Công ty TNHH một thành viên Muối Việt Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013940', '2', '0');
INSERT INTO `ds_mt` VALUES ('358', 'Ủy ban nhân dân xã Cự Khê', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013894', '2', '0');
INSERT INTO `ds_mt` VALUES ('359', 'Ban Quản lý các bến xe khách Hải Dương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013886', '2', '0');
INSERT INTO `ds_mt` VALUES ('360', 'Công ty TNHH tư vấn xây dựng và thương mại Wina', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013897', '2', '0');
INSERT INTO `ds_mt` VALUES ('361', 'Ban quản lý các dự án đường thủy', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013860', '2', '0');
INSERT INTO `ds_mt` VALUES ('362', 'Uy Ban Nhan dan xa Nghi Van', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013892', '2', '0');
INSERT INTO `ds_mt` VALUES ('363', 'CÔNG TY TNHH MỘT THÀNH VIÊN ĐẦU TƯ PHÁT TRIỂN THỦY LỢI SÔNG ĐÁY', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013927', '2', '0');
INSERT INTO `ds_mt` VALUES ('364', 'Trung tâm quản lý dự án đầu tư và xây dựng công trình thành phố Tây Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013903', '2', '0');
INSERT INTO `ds_mt` VALUES ('365', 'Công ty TNHH MTV Cấp nước và Xây dựng Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013433', '2', '0');
INSERT INTO `ds_mt` VALUES ('366', 'Công ty TNHH MTV Cấp Thoát nước Phú Yên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013857', '2', '0');
INSERT INTO `ds_mt` VALUES ('367', 'UBND xã Tiền Phong', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013859', '2', '0');
INSERT INTO `ds_mt` VALUES ('368', 'Sở Xây dựng Bắc Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013901', '2', '0');
INSERT INTO `ds_mt` VALUES ('369', 'Ban quản lý các dự án đầu tư xây dựng huyện Con Cuông', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013870', '2', '0');
INSERT INTO `ds_mt` VALUES ('370', 'Công ty TNHH Tư vấn Đầu tư Xây dựng Sông Tiền', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013848', '2', '0');
INSERT INTO `ds_mt` VALUES ('371', 'Ban quản lý dự án các công trình xây dựng huyện Phong Điền', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013837', '2', '0');
INSERT INTO `ds_mt` VALUES ('372', 'Trung tâm Đăng kiểm xe cơ giới Hải Dương', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013883', '2', '0');
INSERT INTO `ds_mt` VALUES ('373', 'CÔNG TY CỔ PHẦN SẢN XUẤT ỐNG THÉP DẦU KHÍ VIỆT NAM', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013868', '2', '0');
INSERT INTO `ds_mt` VALUES ('374', 'Phòng Kinh tế và Hạ tầng, huyện Trùng Khánh, tỉnh Cao Bằng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013882', '2', '0');
INSERT INTO `ds_mt` VALUES ('375', 'BAN QUẢN LÝ DỰ ÁN ĐẦU TƯ XÂY DỰNG CÁC CÔNG TRÌNH GIÁO DỤC- ĐÀO TẠO, Y TẾ, VĂN HÓA THÔNG TIN- THẾ THAO VÀ DU LỊCH HUYỆN QUỲ CHÂU', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013856', '2', '0');
INSERT INTO `ds_mt` VALUES ('376', 'Trung tâm Đo kiểm và Sửa chữa thiết bị viễn thông MobiFone Chi nhánh Tổng Công ty Viễn thông MobiFone', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013874', '2', '0');
INSERT INTO `ds_mt` VALUES ('377', 'Sở Kế hoạch và Đầu tư tỉnh Quảng Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013889', '2', '0');
INSERT INTO `ds_mt` VALUES ('378', 'Ban QLDA Di dân, Tái định cư nhà máy Điện hạt nhân Ninh Thuận', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013606', '2', '0');
INSERT INTO `ds_mt` VALUES ('379', 'CÔNG TY TNHH MỘT THÀNH VIÊN HOÀNG PHÚC', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013847', '2', '0');
INSERT INTO `ds_mt` VALUES ('380', 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ XÂY LẮP VIỄN THÔNG THÁI BÌNH DƯƠNG', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013851', '2', '0');
INSERT INTO `ds_mt` VALUES ('381', 'Công Ty Cổ Phần Pin Ắc Quy Miền Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013854', '2', '0');
INSERT INTO `ds_mt` VALUES ('382', 'Trường Trung học phổ thông Nguyễn Hữu Cảnh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013839', '2', '0');
INSERT INTO `ds_mt` VALUES ('383', 'Trường Trung Cấp nghề giao thông vận tải Thái Nguyên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013865', '2', '0');
INSERT INTO `ds_mt` VALUES ('384', 'Công ty trách nhiệm hữu hạn Hoa Mai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013436', '2', '0');
INSERT INTO `ds_mt` VALUES ('385', 'Công ty TNHH Đầu tư Xây dựng và Công nghệ Môi trường Dương Nhật', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013863', '2', '0');
INSERT INTO `ds_mt` VALUES ('386', 'Tổng công ty Hàng hải Việt Nam', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013888', '2', '0');
INSERT INTO `ds_mt` VALUES ('387', 'Công ty TNHH một thành viên Nông Công Nghiệp Tam Đảo', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013825', '2', '0');
INSERT INTO `ds_mt` VALUES ('388', 'Ban quản lý dự án đầu tư xây dựng huyện Cờ Đỏ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013813', '2', '0');
INSERT INTO `ds_mt` VALUES ('389', 'Công ty cổ phần tư vấn kiễm định xây dựng Đồng Tháp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013670', '2', '0');
INSERT INTO `ds_mt` VALUES ('390', 'Trung tâm Truyền hình Việt Nam tại thành phố Hồ Chí Minh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013803', '2', '0');
INSERT INTO `ds_mt` VALUES ('391', 'Viễn thông Bắc Kạn', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013823', '2', '0');
INSERT INTO `ds_mt` VALUES ('392', 'Công ty cổ phần tư vấn đầu tư xây dựng và môi trường Sinh Thái', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013634', '2', '0');
INSERT INTO `ds_mt` VALUES ('393', 'Bệnh viện Phục hồi chức năng Điều trị bệnh nghề nghiệp', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013831', '2', '0');
INSERT INTO `ds_mt` VALUES ('394', 'Điện lực Trị An, Công ty TNHH Một Thành Viên Điện lực Đồng Nai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013810', '2', '0');
INSERT INTO `ds_mt` VALUES ('395', 'Ban Quản lý dự án đầu tư hạ tầng an sinh xã hội', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013834', '2', '0');
INSERT INTO `ds_mt` VALUES ('396', 'Ban Quản lý dự án Đầu tư Xây dựng Sở Văn hóa, Thể thao và Du lịch Hà Nội', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013844', '2', '0');
INSERT INTO `ds_mt` VALUES ('397', 'Ban truyền hình tiếng dân tộc', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013872', '2', '0');
INSERT INTO `ds_mt` VALUES ('398', 'Phòng Văn hóa và Thông tin Thành phố Huế', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z013842', '2', '0');
INSERT INTO `ds_mt` VALUES ('399', 'Phòng Quản lý đô thị thành phố Bắc Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014544', '2', '0');
INSERT INTO `ds_mt` VALUES ('400', 'Ủy ban nhân dân huyện Đồng Hỷ, tỉnh Thái Nguyên', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014493', '2', '0');
INSERT INTO `ds_mt` VALUES ('401', 'CÔNG TY TNHH ĐẦU TƯ XÂY DỰNG VÀ MÔI TRƯỜNG ENVITOP', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014489', '2', '0');
INSERT INTO `ds_mt` VALUES ('402', 'Công ty TNHH tư vấn xây dựng và thương mại Kiến Tạo Việt', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014469', '2', '0');
INSERT INTO `ds_mt` VALUES ('403', 'Ban quản lý dự án \"Hành lang bảo tồn đa dạng sinh học Tiểu vùng Mê Công mở rộng - giai đoạn 2\" tỉnh Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014482', '2', '0');
INSERT INTO `ds_mt` VALUES ('404', 'Ban quản lý các công trình Đầu tư và Xây dựng cơ bản thị xã Sông Cầu', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014135', '2', '0');
INSERT INTO `ds_mt` VALUES ('405', 'Công ty TNHH Tư vấn Xây dựng Thống Nhất T.N', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014401', '2', '0');
INSERT INTO `ds_mt` VALUES ('406', 'Ban quản lý dự án đầu tư và xây dựng thị xã Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014503', '2', '0');
INSERT INTO `ds_mt` VALUES ('407', 'Ban Quản lý khu du lịch suối khoáng Mỹ Lâm', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014504', '2', '0');
INSERT INTO `ds_mt` VALUES ('408', 'Công ty cổ phần đầu tư và xây dựng Kim Ngân', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014491', '2', '0');
INSERT INTO `ds_mt` VALUES ('409', 'Phòng Công thương huyện Hòn Đất', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014495', '2', '0');
INSERT INTO `ds_mt` VALUES ('410', 'Ban quản lý dự án Chương trình đô thị miền núi phía Bắc - Thành phố Điện Biên Phủ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014488', '2', '0');
INSERT INTO `ds_mt` VALUES ('411', 'Trường Cao đẳng Nông nghiệp Nam Bộ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014282', '2', '0');
INSERT INTO `ds_mt` VALUES ('412', 'Công ty cổ phần Sông Đà 11', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014505', '2', '0');
INSERT INTO `ds_mt` VALUES ('413', 'Ủy ban Nhân dân xã Hương Vinh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014496', '2', '0');
INSERT INTO `ds_mt` VALUES ('414', 'Công ty Cổ phần Gang thép Cao Bằng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014523', '2', '0');
INSERT INTO `ds_mt` VALUES ('415', 'Công ty TNHH Mỹ Quang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014499', '2', '0');
INSERT INTO `ds_mt` VALUES ('416', 'Trung tâm Nước sinh hoạt và Vệ sinh môi trường nông thôn Quảng Trị', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014521', '2', '0');
INSERT INTO `ds_mt` VALUES ('417', 'BAN QUẢN LÝ DỰ ÁN HUYỆN KRÔNG ANA TỈNH ĐĂK LĂK', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014451', '2', '0');
INSERT INTO `ds_mt` VALUES ('418', 'Sở Giao thông Vận Tải Lào Cai', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014531', '2', '0');
INSERT INTO `ds_mt` VALUES ('419', 'BỆNH VIỆN SẢN NHI CÀ MAU', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014506', '2', '0');
INSERT INTO `ds_mt` VALUES ('420', 'Ban quản lý Di tích và Danh thắng Nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014481', '2', '0');
INSERT INTO `ds_mt` VALUES ('421', 'Ủy ban nhân dân phường Thượng Cát', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014511', '2', '0');
INSERT INTO `ds_mt` VALUES ('422', 'Trung tâm nghiên cứu và phát triển chăn nuôi gia cầm VIGOVA', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014423', '2', '0');
INSERT INTO `ds_mt` VALUES ('423', 'Công ty Điện lực Thạch Thất', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014517', '2', '0');
INSERT INTO `ds_mt` VALUES ('424', 'Ban QLDA chuyên ngành xây dựng công nghiệp dân dụng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014442', '2', '0');
INSERT INTO `ds_mt` VALUES ('425', 'Uỷ ban nhân dân thị trấn Yên Định', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014483', '2', '0');
INSERT INTO `ds_mt` VALUES ('426', 'Công ty cổ phần đầu tư BOT Hà Nội Bắc Giang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014494', '2', '0');
INSERT INTO `ds_mt` VALUES ('427', 'Ban Quản lý dự án An toàn giao thông – Bộ Giao thông vận tải', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014497', '2', '0');
INSERT INTO `ds_mt` VALUES ('428', 'Công ty cổ phần tư vấn và xây dựng Hoàng Phú', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014456', '2', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=771 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ds_nt
-- ----------------------------
INSERT INTO `ds_nt` VALUES ('201', 'Viện Công Nghệ Viễn Thông Sài Gòn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304393105', '1', '0');
INSERT INTO `ds_nt` VALUES ('202', 'Công ty cổ phần đầu tư  và xây dựng công trình Tam Đảo', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3900417345', '1', '0');
INSERT INTO `ds_nt` VALUES ('203', 'Công ty cổ phần đầu tư  và xây dựng công trình 742', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3900243138', '1', '0');
INSERT INTO `ds_nt` VALUES ('204', 'CÔNG TY CP SÁCH VÀ THIÊT BỊ TRƯỜNG HỌC LONG AN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1100105921', '1', '0');
INSERT INTO `ds_nt` VALUES ('205', 'CÔNG TY CỔ PHẦN TƯ VẤN XÂY DỰNG VÀ THƯƠNG MẠI TOÀN CẦU', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106672065', '1', '0');
INSERT INTO `ds_nt` VALUES ('206', 'CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY DỰNG THƯƠNG MẠI KHANG HUY', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0306200214', '1', '0');
INSERT INTO `ds_nt` VALUES ('207', 'Công ty cổ phần Tư vấn và Đầu tư Xây dựng Thái Hưng Quảng Ninh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5701500507', '1', '0');
INSERT INTO `ds_nt` VALUES ('208', 'CÔNG TY TNHH XÂY DỰNG PHÚ ĐÔNG THÀNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1000898346', '1', '0');
INSERT INTO `ds_nt` VALUES ('209', 'CÔNG TY TNHH XÂY DỰNG VẠN TẤN PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3603274253', '1', '0');
INSERT INTO `ds_nt` VALUES ('210', 'CÔNG TY CỔ PHẦN ĐẦU TƯ GIẢI PHÁP VIỆT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104629441', '1', '0');
INSERT INTO `ds_nt` VALUES ('211', 'Ủy ban nhân dân xã Cấp Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014433', '1', '0');
INSERT INTO `ds_nt` VALUES ('212', 'Ủy ban nhân dân xã Tiên Thắng', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014429', '1', '0');
INSERT INTO `ds_nt` VALUES ('213', 'Ủy ban nhân dân xã Quyết Tiến', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014432', '1', '0');
INSERT INTO `ds_nt` VALUES ('214', 'Ủy ban nhân xã Vinh Quang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014431', '1', '0');
INSERT INTO `ds_nt` VALUES ('215', 'Trung tâm phòng chống HIV/AIDS tỉnh Bắc Ninh', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014421', '1', '0');
INSERT INTO `ds_nt` VALUES ('216', 'Công ty TNHH một thành viên Ngọc Trang', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014427', '1', '0');
INSERT INTO `ds_nt` VALUES ('217', 'Trung tâm y tế quận Cẩm Lệ', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014417', '1', '0');
INSERT INTO `ds_nt` VALUES ('218', 'Phòng Dân tộc, huyện Lâm Bình', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014415', '1', '0');
INSERT INTO `ds_nt` VALUES ('219', 'Công ty TNHH Cao ốc Vietcombank 198', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014396', '1', '0');
INSERT INTO `ds_nt` VALUES ('220', 'UBND phường Trung Đô TP Vinh, tỉnh Nghệ An', '/RA/UM_RAJ_GovrA010y.jsp?institu=Z014425', '1', '0');
INSERT INTO `ds_nt` VALUES ('221', 'Công ty cổ phần đầu tư  và xây dựng công trình 742', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3900243138', '1', '0');
INSERT INTO `ds_nt` VALUES ('222', 'CÔNG TY CP SÁCH VÀ THIÊT BỊ TRƯỜNG HỌC LONG AN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1100105921', '1', '0');
INSERT INTO `ds_nt` VALUES ('223', 'CÔNG TY CỔ PHẦN TƯ VẤN XÂY DỰNG VÀ THƯƠNG MẠI TOÀN CẦU', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106672065', '1', '0');
INSERT INTO `ds_nt` VALUES ('224', 'CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY DỰNG THƯƠNG MẠI KHANG HUY', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0306200214', '1', '0');
INSERT INTO `ds_nt` VALUES ('225', 'Công ty cổ phần Tư vấn và Đầu tư Xây dựng Thái Hưng Quảng Ninh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5701500507', '1', '0');
INSERT INTO `ds_nt` VALUES ('226', 'CÔNG TY TNHH XÂY DỰNG PHÚ ĐÔNG THÀNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1000898346', '1', '0');
INSERT INTO `ds_nt` VALUES ('227', 'CÔNG TY TNHH XÂY DỰNG VẠN TẤN PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3603274253', '1', '0');
INSERT INTO `ds_nt` VALUES ('228', 'CÔNG TY CỔ PHẦN ĐẦU TƯ GIẢI PHÁP VIỆT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104629441', '1', '0');
INSERT INTO `ds_nt` VALUES ('229', 'CÔNG TY TNHH PHÁT TRIỂN CÔNG NGHIỆP HẢI HÙNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0802000229', '1', '0');
INSERT INTO `ds_nt` VALUES ('230', 'Công ty cổ phần tư vấn và xây dựng DRAGON Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106870317', '1', '0');
INSERT INTO `ds_nt` VALUES ('231', 'CÔNG TY TNHH CHIẾU SÁNG, CÂY XANH, ĐÔ THỊ TỪ SƠN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2300464447', '1', '0');
INSERT INTO `ds_nt` VALUES ('232', 'Công ty cổ phần đầu tư xây dựng An Bình', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2500268908', '1', '0');
INSERT INTO `ds_nt` VALUES ('233', 'CÔNG TY TNHH TƯ VẤN  ĐẦU TƯ VÀ XÂY DỰNG NGỌC HUY', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4600776377', '1', '0');
INSERT INTO `ds_nt` VALUES ('234', 'VIỆN SINH THÁI VÀ MÔI TRƯỜNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101362729', '1', '0');
INSERT INTO `ds_nt` VALUES ('235', 'CÔNG TY TNHH TƯ VẤN GIÁM SÁT CÔNG TRÌNH XÂY DỰNG SỐ 3', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3100322013', '1', '0');
INSERT INTO `ds_nt` VALUES ('236', 'Công ty CP tư vấn Đầu tư và xây dựng 2/9', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3100438498', '1', '0');
INSERT INTO `ds_nt` VALUES ('237', 'Công ty TNHH Tư vấn và xây dựng Minh Thức', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1300549258', '1', '0');
INSERT INTO `ds_nt` VALUES ('238', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN TƯ VẤN XÂY DỰNG XD15', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1402011733', '1', '0');
INSERT INTO `ds_nt` VALUES ('239', 'CÔNG TY TNHH XÂY DỰNG VÀ THƯƠNG MẠI DINH MƯỜI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3100314710', '1', '0');
INSERT INTO `ds_nt` VALUES ('240', 'Công ty TNHH 369', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4800733966', '1', '0');
INSERT INTO `ds_nt` VALUES ('241', 'Doanh nghiệp tư nhân Thương mại và xây dựng Hiệp Lạc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4800201961', '1', '0');
INSERT INTO `ds_nt` VALUES ('242', 'CÔNG TY CỔ PHẦN TRUYỀN THÔNG VÀ MÁY TÍNH THÁNH GIÓNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101605749', '1', '0');
INSERT INTO `ds_nt` VALUES ('243', 'CÔNG TY CỔ PHẦN DỊCH VỤ HT VIỆT NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105746500', '1', '0');
INSERT INTO `ds_nt` VALUES ('244', 'Công ty TNHH Đầu tư phát triển Probuy', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106221143', '1', '0');
INSERT INTO `ds_nt` VALUES ('245', 'CÔNG TY TNHH ETECCO', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0313283067', '1', '0');
INSERT INTO `ds_nt` VALUES ('246', 'Công ty Cổ phần Đầu tư Xây dựng Thương Mại và Địa chính Đất Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101606894', '1', '0');
INSERT INTO `ds_nt` VALUES ('247', 'Công ty Cổ phần Tập đoàn Đất Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102828988', '1', '0');
INSERT INTO `ds_nt` VALUES ('248', 'Công ty cổ phần xây lắp vật tư xây dựng 7', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100104027', '1', '0');
INSERT INTO `ds_nt` VALUES ('249', 'Công ty cổ phần quản lý xây dựng và sản xuất Việt Tín', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105774522', '1', '0');
INSERT INTO `ds_nt` VALUES ('250', 'Công ty TNHH xuất nhập khẩu thiết bị công nghệ HTC 1', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106805491', '1', '0');
INSERT INTO `ds_nt` VALUES ('251', 'CÔNG TY TNHH VÂN BẢO ĐỊNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3600770126', '1', '0');
INSERT INTO `ds_nt` VALUES ('252', 'Công ty tnhh phát triển công nghệ và thương mại cic', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2300236634', '1', '0');
INSERT INTO `ds_nt` VALUES ('253', 'CÔNG TY TNHH DỊCH VỤ TRỢ THÍNH QUANG ĐỨC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0302721103', '1', '0');
INSERT INTO `ds_nt` VALUES ('254', 'CÔNG TY LUẬT TNHH LIÊN KẾT THANH DANH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=41070351', '1', '0');
INSERT INTO `ds_nt` VALUES ('255', 'CÔNC TY CỔ PHẦN VIANBICO', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3200595261', '1', '0');
INSERT INTO `ds_nt` VALUES ('256', 'Công Ty Cổ Phần Thương Mại Và Đầu Tư Công Nghệ Viễn Thông Mới', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0306281693', '1', '0');
INSERT INTO `ds_nt` VALUES ('257', 'CÔNG TY CỔ PHẦN XÂY DỰNG VÀ THIẾT BỊ CÔNG NGHIỆP CIE1', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2500303038', '1', '0');
INSERT INTO `ds_nt` VALUES ('258', 'Công Ty TNHH Thương Mại Dịch Vụ Xây Lắp Đại Ngọc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305320798', '1', '0');
INSERT INTO `ds_nt` VALUES ('259', 'Doanh nghiệp tư nhân Xây dựng Thế Công', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3600912885', '1', '0');
INSERT INTO `ds_nt` VALUES ('260', 'CÔNG TY XÂY DỰNG VƯỢNG YẾN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2300245004', '1', '0');
INSERT INTO `ds_nt` VALUES ('261', 'Công ty Cổ Phần Đầu Tư và Thương Mại Ngũ Châu Long', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401447003', '1', '0');
INSERT INTO `ds_nt` VALUES ('262', 'CÔNG TY CỔ PHÀN NỘI THẤT XUÂN HÒA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102321845', '1', '0');
INSERT INTO `ds_nt` VALUES ('263', 'Công ty cổ phần đầu tư và xây dựng Hòa Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0500495424', '1', '0');
INSERT INTO `ds_nt` VALUES ('264', 'Công ty Cổ phần Techport', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104138147', '1', '0');
INSERT INTO `ds_nt` VALUES ('265', 'Công ty cổ phần tư vấn đầu tư xây dựng Đại Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0700441627', '1', '0');
INSERT INTO `ds_nt` VALUES ('266', 'Công ty cổ phần công nghệ xây dựng và tư vấn Delta', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0700522347', '1', '0');
INSERT INTO `ds_nt` VALUES ('267', 'Công ty cổ phần tư vấn đầu tư xây dựng Đông Bắc Bộ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2500295764', '1', '0');
INSERT INTO `ds_nt` VALUES ('268', 'Công ty cổ phần xây dựng Vilai Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105957614', '1', '0');
INSERT INTO `ds_nt` VALUES ('269', 'Công ty Cổ phần Đầu tư và Phát triển Hoàng Phúc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105840630', '1', '0');
INSERT INTO `ds_nt` VALUES ('270', 'CÔNG TY CỔ PHẦN XÂY DỰNG VÀ BẢO TRÌ HẠ TẦNG GIAO THÔNG HOÀNG LONG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105802145', '1', '0');
INSERT INTO `ds_nt` VALUES ('271', 'CÔNG TY TNHH TÂM NHẬT TÂN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401310538', '1', '0');
INSERT INTO `ds_nt` VALUES ('272', 'CÔNG TY CỔ PHẦN TƯ VẤN KIẾN TRÚC QUẢNG NINH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2203000253', '1', '0');
INSERT INTO `ds_nt` VALUES ('273', 'Công ty Cp tư vấn xây dựng và đầu tư phát triển đô thị NB', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2700786382', '1', '0');
INSERT INTO `ds_nt` VALUES ('274', 'Công ty cổ phần tư vấn xây dựng VCG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102282508', '1', '0');
INSERT INTO `ds_nt` VALUES ('275', 'Trung tâm Địa môi trường và Tổ chức Lãnh thổ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102159374', '1', '0');
INSERT INTO `ds_nt` VALUES ('276', 'Công ty TNHH Thương Mại Thiết Kế Đầu Tư Xây Dựng Đức Phát', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303990444', '1', '0');
INSERT INTO `ds_nt` VALUES ('277', 'CÔNG TY TNHH MTV PHƯƠNG LINH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4700192262', '1', '0');
INSERT INTO `ds_nt` VALUES ('278', 'CÔNG TY TNHH XÂY DỰNG VÀ THƯƠNG MẠI OANH TOẢN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2500417010', '1', '0');
INSERT INTO `ds_nt` VALUES ('279', 'CÔNG TY CỔ PHẦN RDGROUP', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103578392', '1', '0');
INSERT INTO `ds_nt` VALUES ('280', 'Công ty Cổ phần Công nghệ và Truyền thông Năm sao', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106653859', '1', '0');
INSERT INTO `ds_nt` VALUES ('281', 'CÔNG TY TNHH MỘT THÀNH VIÊN DỊCH VỤ THƯƠNG MẠI XÂY DỰNG LONG HUY', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1100864598', '1', '0');
INSERT INTO `ds_nt` VALUES ('282', 'Công ty TNHH Xây dựng và Thương mại Tiến Phát', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0702001879', '1', '0');
INSERT INTO `ds_nt` VALUES ('283', 'CÔNG TY CỔ PHẦN TƯ VẤN XÂY DỰNG THƯƠNG MẠI 689', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0600983062', '1', '0');
INSERT INTO `ds_nt` VALUES ('284', 'Công ty Cổ phần Xây dựng Hải Sơn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0600333995', '1', '0');
INSERT INTO `ds_nt` VALUES ('285', 'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ AFE', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1601403157', '1', '0');
INSERT INTO `ds_nt` VALUES ('286', 'Công ty Cổ phần Đầu tư và phát triển công nghệ AT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101600726', '1', '0');
INSERT INTO `ds_nt` VALUES ('287', 'CÔNG TY TNHH XÂY DỰNG ĐIỆN AN THỌ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1600768194', '1', '0');
INSERT INTO `ds_nt` VALUES ('288', 'CÔNG TY TNHH AN TOÀN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1800642671', '1', '0');
INSERT INTO `ds_nt` VALUES ('289', 'Công ty TNHH xây dựng tổng hợp Đức Thắng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3100195189', '1', '0');
INSERT INTO `ds_nt` VALUES ('290', 'CÔNG TY CỔ PHẦN TƯ VẤN ĐẦU TƯ DƯƠNG PHÚ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101807826', '1', '0');
INSERT INTO `ds_nt` VALUES ('291', 'CÔNG TY CỔ PHẦN KIẾN TRÚC VÀ XÂY DỰNG AU', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104567971', '1', '0');
INSERT INTO `ds_nt` VALUES ('292', 'Công ty Cổ phần Viễn thông và Xây dựng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101734060', '1', '0');
INSERT INTO `ds_nt` VALUES ('293', 'CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN VÀ DỊCH VỤ ĐIỆN LỰC HÀ NỘI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103698322', '1', '0');
INSERT INTO `ds_nt` VALUES ('294', 'CÔNG TY TNHH MỘT THÀNH VIÊN THƯƠNG MẠI VÀ DƯỢC PHẨM BẢO TÍN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101467859', '1', '0');
INSERT INTO `ds_nt` VALUES ('295', 'Công ty TNHH Xây dựng Thương mại Thái Tuấn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2500295161', '1', '0');
INSERT INTO `ds_nt` VALUES ('296', 'Công ty TNHH xây dựng  thương mại Sơn Châu', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4000360722', '1', '0');
INSERT INTO `ds_nt` VALUES ('297', 'CÔNG TY TNHH THƯƠNG MẠI KỸ THUẬT VẠN HỘI PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0308293895', '1', '0');
INSERT INTO `ds_nt` VALUES ('298', 'Công ty cổ phần tư vấn xây dựng và dịch vụ thương mại Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104606691', '1', '0');
INSERT INTO `ds_nt` VALUES ('299', 'Công ty cổ phần tư vấn xây dựng Sông Đà Thăng Long', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105976744', '1', '0');
INSERT INTO `ds_nt` VALUES ('300', 'Công ty TNHH Phú Châu', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4000380260', '1', '0');
INSERT INTO `ds_nt` VALUES ('301', 'Trung tâm Quan trắc và Công nghệ Môi trường Thái Nguyên', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4600205990001', '1', '0');
INSERT INTO `ds_nt` VALUES ('302', 'Công ty Cổ phần Quy hoạch và Phát triển Đô thị Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106450922', '1', '0');
INSERT INTO `ds_nt` VALUES ('303', 'Công ty Cổ Phần Viễn Thông Việt Thịnh Phát', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0400589654', '1', '0');
INSERT INTO `ds_nt` VALUES ('304', 'Công ty cổ Phần Gia Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4500242967', '1', '0');
INSERT INTO `ds_nt` VALUES ('305', 'CÔNG TY TNHH TIN HỌC ĐIỆN TỬ VIỄN THÔNG HOÀN MAI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102028182', '1', '0');
INSERT INTO `ds_nt` VALUES ('306', 'Công ty cổ phần tư vấn dự án và giải pháp xây dựng công trình Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102308428', '1', '0');
INSERT INTO `ds_nt` VALUES ('307', 'Công ty TNHH Công Nghệ và Dịch Vụ Minh Phong', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305362332', '1', '0');
INSERT INTO `ds_nt` VALUES ('308', 'CÔNG TY TNHH THƯƠNG MẠI TIN HỌC ĐỨC TÍN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303874832', '1', '0');
INSERT INTO `ds_nt` VALUES ('309', 'Công ty TNHH Thương Mai Tổng Hợp Toàn Kim', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105350428', '1', '0');
INSERT INTO `ds_nt` VALUES ('310', 'Công ty Cổ phần Xây dựng và Thương mại Bắc Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0800455951', '1', '0');
INSERT INTO `ds_nt` VALUES ('311', 'Trung tâm Tích hợp dữ liệu Phú Yên', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4400497224', '1', '0');
INSERT INTO `ds_nt` VALUES ('312', 'Công ty TNHH Thương Mại và Dịch Vụ Ấn Tượng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102009653', '1', '0');
INSERT INTO `ds_nt` VALUES ('313', 'CÔNG TY TNHH XÂY DỰNG VÀ THƯƠNG MẠI ÂU LẠC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2300313286', '1', '0');
INSERT INTO `ds_nt` VALUES ('314', 'Công ty Cổ phần Tư vấn Đầu tư Xây dựng Phú Hà', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102011579', '1', '0');
INSERT INTO `ds_nt` VALUES ('315', 'CÔNG TY CỔ PHẦN THƯƠNG MẠI DỊCH VỤ TIN HỌC TÍN THÀNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103908996', '1', '0');
INSERT INTO `ds_nt` VALUES ('316', 'Công ty Cổ phần Đầu tư An Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102295271', '1', '0');
INSERT INTO `ds_nt` VALUES ('317', 'Công ty TNHH Xây dựng và Thương mại Dịch vụ 262', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105161847', '1', '0');
INSERT INTO `ds_nt` VALUES ('318', 'Công ty cổ phần thiết bị điện Hàn Quốc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101816468', '1', '0');
INSERT INTO `ds_nt` VALUES ('319', 'công ty cổ phần PNT tư vấn đầu tư và xây dựng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102981030', '1', '0');
INSERT INTO `ds_nt` VALUES ('320', 'CÔNG TY TNHH TƯ VẤN THIẾT KẾ VÀ KIỂM ĐỊNH CÔNG TRÌNH XÂY DỰNG TRUNG TÍN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1401988822', '1', '0');
INSERT INTO `ds_nt` VALUES ('321', 'CÔNG TY CỔ PHẦN GIẢI PHÁP DỊCH VỤ PHẦN MỀM CHUYÊN NGHIỆP PSOFT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102396946', '1', '0');
INSERT INTO `ds_nt` VALUES ('322', 'Công ty TNHH Kiểm toán Việt Anh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0200511555', '1', '0');
INSERT INTO `ds_nt` VALUES ('323', 'Công ty cổ phần Thương mại Đầu tư và Dịch vụ Trường Hải', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102641323', '1', '0');
INSERT INTO `ds_nt` VALUES ('324', 'Công ty TNHH một thành viên Đầu tư  xây lắp Ánh Dương', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0601039178', '1', '0');
INSERT INTO `ds_nt` VALUES ('325', 'Công ty TNHH một thành viên Nam Thành Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0601043470', '1', '0');
INSERT INTO `ds_nt` VALUES ('326', 'Công ty TNHH Dược Hanvet', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0900249945', '1', '0');
INSERT INTO `ds_nt` VALUES ('327', 'Trung tâm kinh doanh thương mại Tổng hợp Thái Anh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4800789951', '1', '0');
INSERT INTO `ds_nt` VALUES ('328', 'CÔNG TY CP XÂY LẮP ĐIỆN HÀ NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0700753908', '1', '0');
INSERT INTO `ds_nt` VALUES ('329', 'CÔNG TY CỔ PHẦN TƯ VẤN THIẾT KẾ THỦY LỢI HẢI PHÒNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0201175095', '1', '0');
INSERT INTO `ds_nt` VALUES ('330', 'Doanh nghiệp tư nhân Tiến Nhạn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2500287594', '1', '0');
INSERT INTO `ds_nt` VALUES ('331', 'Công ty TNHH D.C', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6000706276', '1', '0');
INSERT INTO `ds_nt` VALUES ('332', 'Công ty Cổ phần Xây dựng và Trang trí Nội thất Phúc Tấn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0311537333', '1', '0');
INSERT INTO `ds_nt` VALUES ('333', 'CÔNG TY TNHH DƯỢC PHẨM TÂM ĐỨC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304065873', '1', '0');
INSERT INTO `ds_nt` VALUES ('334', 'CÔNG TY TNHH XÂY DỰNG VÀ TƯ VẤN THIẾT KẾ TÍN THUẬN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3600532869', '1', '0');
INSERT INTO `ds_nt` VALUES ('335', 'Công ty Cổ phần tư vấn đầu tư và xây dựng công trình điện', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5701443601', '1', '0');
INSERT INTO `ds_nt` VALUES ('336', 'CÔNG TY CỔ PHẦN VŨ ĐỨC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0307642078', '1', '0');
INSERT INTO `ds_nt` VALUES ('337', 'công ty TNHH một thành viên Vĩnh Hưng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1400787009', '1', '0');
INSERT INTO `ds_nt` VALUES ('338', 'XÍ NGHIỆP TOYOTA ĐÀ NẴNG, CÔNG TY CỔ PHẦN PHÚ TÀI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4100259236006', '1', '0');
INSERT INTO `ds_nt` VALUES ('339', 'CÔNG TY TNHH VÕ AN TÍN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401543349', '1', '0');
INSERT INTO `ds_nt` VALUES ('340', 'CÔNG TY CỔ PHẦN DANA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0400259800', '1', '0');
INSERT INTO `ds_nt` VALUES ('341', 'Trung tâm tin học MSTC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=018012515', '1', '0');
INSERT INTO `ds_nt` VALUES ('342', 'CÔNG TY CỔ PHẦN HMI VIỆT NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105893167', '1', '0');
INSERT INTO `ds_nt` VALUES ('343', 'CÔNG TY TNHH LÊ MINH HUY', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401546854', '1', '0');
INSERT INTO `ds_nt` VALUES ('344', 'Công ty TNHH Dược phẩm An Khang', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0302525081', '1', '0');
INSERT INTO `ds_nt` VALUES ('345', 'Công ty TNHH Điện và Công nghiệp Hà Linh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105592096', '1', '0');
INSERT INTO `ds_nt` VALUES ('346', 'Doanh nghiệp tư nhân Anh Đức', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5101000469', '1', '0');
INSERT INTO `ds_nt` VALUES ('347', 'Công ty Cổ Phần Công Nghệ VILINTEK', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102843457', '1', '0');
INSERT INTO `ds_nt` VALUES ('348', 'Công ty Cổ phần Đầu tư Xây dựng Thương mại HC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103527969', '1', '0');
INSERT INTO `ds_nt` VALUES ('349', 'Công ty TNHH Tư vấn thiết kế và Xây dựng Trung Tiến', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0312330691', '1', '0');
INSERT INTO `ds_nt` VALUES ('350', 'Công ty TNHH Bảo hiểm ACE', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304907505', '1', '0');
INSERT INTO `ds_nt` VALUES ('351', 'CÔNG TY TNHH MỘT THÀNH VIÊN DỊCH VỤ KỸ THUẬT TRUYỀN THÔNG HTV', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0311899774', '1', '0');
INSERT INTO `ds_nt` VALUES ('352', 'Công ty cổ phần tư vấn đầu tư xây dựng Quốc Hưng Phát', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3602501520', '1', '0');
INSERT INTO `ds_nt` VALUES ('353', 'CÔNG TY CỔ PHẦN SẢN XUẤT VÀ THƯƠNG MẠI BIMIVINA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105971087', '1', '0');
INSERT INTO `ds_nt` VALUES ('354', 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ XÂY DỰNG HOÀNG KIM PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305642410', '1', '0');
INSERT INTO `ds_nt` VALUES ('355', 'Công Ty Cổ Phần Hoàng Thái', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4600412757', '1', '0');
INSERT INTO `ds_nt` VALUES ('356', 'CÔNG TY TNHH DƯỢC PHẨM HIỀN MAI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1900336438', '1', '0');
INSERT INTO `ds_nt` VALUES ('357', 'Công ty cổ phần Đầu tư Xây dựng, Tài nguyên và Môi trường Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104541356', '1', '0');
INSERT INTO `ds_nt` VALUES ('358', 'Công ty TNHH tư vấn thiết kế TC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105552223', '1', '0');
INSERT INTO `ds_nt` VALUES ('359', 'Công ty Cổ Phần Đầu tư Phát Triển Phương Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0309870432', '1', '0');
INSERT INTO `ds_nt` VALUES ('360', 'CÔNG TY CỔ PHẦN DƯỢC PHẨM HỒNG THỊNH PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305661572', '1', '0');
INSERT INTO `ds_nt` VALUES ('361', 'Công ty cổ phần Đầu tư Phát triển Phú Xuân', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103019088', '1', '0');
INSERT INTO `ds_nt` VALUES ('362', 'Công ty TNHH Xây dựng hạ tầng kỹ thuật Huy Phong', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104569640', '1', '0');
INSERT INTO `ds_nt` VALUES ('363', 'CÔNG TY CỔ PHẦN CÔNG NGHỆ PHÚC SƠN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106750210', '1', '0');
INSERT INTO `ds_nt` VALUES ('364', 'Công ty TNHH Xuất nhập khẩu Thiết bị công nghệ Điện tử Hàng hải Viễn thông Hoàng Tùng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0400370647', '1', '0');
INSERT INTO `ds_nt` VALUES ('365', 'CÔNG TY CỔ PHẦN XÂY DỰNG VÀ THƯƠNG MẠI PHÚC ĐIỀN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105168176', '1', '0');
INSERT INTO `ds_nt` VALUES ('366', 'Công ty Cổ phần Công Nghệ Hải Âu', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105269671', '1', '0');
INSERT INTO `ds_nt` VALUES ('367', 'Công ty cổ phần tư vấn xây dựng Linh Gia', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102402438', '1', '0');
INSERT INTO `ds_nt` VALUES ('368', 'Công ty TNHH Công nghệ Thắng Lợi', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101505039', '1', '0');
INSERT INTO `ds_nt` VALUES ('369', 'Công ty TNHH Sáng Tạo Quảng Cáo Truyền Thông B', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104008644', '1', '0');
INSERT INTO `ds_nt` VALUES ('370', 'CÔNG TY TNHH TƯ VẤN KHOA HỌC KỸ THUẬT VÀ DỊCH VỤ MÔI TRƯỜNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102027552', '1', '0');
INSERT INTO `ds_nt` VALUES ('371', 'Công ty cổ phần đầu tư và phát triển xây dựng hạ tầng Mỹ Đình', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102739801', '1', '0');
INSERT INTO `ds_nt` VALUES ('372', 'Công ty TNHH Một thành viên Tấn Dũng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1400764932', '1', '0');
INSERT INTO `ds_nt` VALUES ('373', 'CÔNG TY TNHH GIẢI PHÁP VÀ KINH DOANH CÔNG NGHỆ THÔNG TIN VĨ NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0400543794', '1', '0');
INSERT INTO `ds_nt` VALUES ('374', 'CÔNG TY TNHH MỘT THÀNH VIÊN TÂM ĐỨC TÍN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401407963', '1', '0');
INSERT INTO `ds_nt` VALUES ('375', 'Công ty TNHH Việt Nam Đan Mạch VIDAGIS', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=011022001050', '1', '0');
INSERT INTO `ds_nt` VALUES ('376', 'CÔNG TY TNHH THIẾT BỊ Y KHOA ĐỖ THÂN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0300991947', '1', '0');
INSERT INTO `ds_nt` VALUES ('377', 'Công ty TNHH Quốc Tế Quảng Cáo Truyền Thông INCA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102116726', '1', '0');
INSERT INTO `ds_nt` VALUES ('378', 'Viện Quy hoạch và Kiến trúc Đô thị', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102071874004', '1', '0');
INSERT INTO `ds_nt` VALUES ('379', 'Công ty Cổ phần Xuất Nhập Khẩu Phúc Lộc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2700561879', '1', '0');
INSERT INTO `ds_nt` VALUES ('380', 'Công Ty Cổ Phần Công Nghệ Đức Minh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103008995', '1', '0');
INSERT INTO `ds_nt` VALUES ('381', 'CÔNG TY CỔ PHẦN DƯỢC NAM ĐỒNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305483312', '1', '0');
INSERT INTO `ds_nt` VALUES ('382', 'Trung Tâm Công nghệ thông tin tỉnh Bình Thuận', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3400440466', '1', '0');
INSERT INTO `ds_nt` VALUES ('383', 'CÔNG TY TNHH CÔNG NGHIỆP VẠN BẢO', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101984127', '1', '0');
INSERT INTO `ds_nt` VALUES ('384', 'CÔNG TY CỔ PHẦN THIẾT BỊ CÔNG NGHIỆP TÂN GIA LONG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106668728', '1', '0');
INSERT INTO `ds_nt` VALUES ('385', 'CÔNG TY TNHH LIBRA MEDIA VIỆT NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106397108', '1', '0');
INSERT INTO `ds_nt` VALUES ('386', 'CÔNG TY TNHH THƯƠNG MẠI VÀ TƯ VẤN TRANG ANH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106224747', '1', '0');
INSERT INTO `ds_nt` VALUES ('387', 'Công ty TNHH phát triển công nghệ BTK', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101761402', '1', '0');
INSERT INTO `ds_nt` VALUES ('388', 'Công ty TNHH Azbil Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=011043000322', '1', '0');
INSERT INTO `ds_nt` VALUES ('389', 'Công ty TNHH Đầu Tư và Tư Vấn Công nghệ SBD', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103417356', '1', '0');
INSERT INTO `ds_nt` VALUES ('390', 'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ KỸ THUẬT TESCO', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101507773', '1', '0');
INSERT INTO `ds_nt` VALUES ('391', 'Công ty Cổ phần xây dựng Điện VNECO3', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2900576216', '1', '0');
INSERT INTO `ds_nt` VALUES ('392', 'CÔNG TY CP THƯƠNG MẠI XÂY DỰNG CƠ KHÍ ĐIỆN TỰ ĐỘNG HÓA COMEECO', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2900438512', '1', '0');
INSERT INTO `ds_nt` VALUES ('393', 'CÔNG TY CỔ PHẦN THƯƠNG MẠI SẢN XUẤT HÓA CHẤT VÀ THIẾT BỊ HÀ NỘI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102610886', '1', '0');
INSERT INTO `ds_nt` VALUES ('394', 'CÔNG TY CỔ PHẦN THIÊN AN PHÚ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303889035', '1', '0');
INSERT INTO `ds_nt` VALUES ('395', 'Công ty TNHH tư vấn thiết kế và thi công xây dựng Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106753162', '1', '0');
INSERT INTO `ds_nt` VALUES ('396', 'Công ty TNHH MTV Tư Vấn Thiết Kế và Xây Dựng Minh Châu Gia Lai', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5900984429', '1', '0');
INSERT INTO `ds_nt` VALUES ('397', 'CÔNG TY TNHH MỘT THÀNH VIÊN TƯ VẤN VÀ ĐẦU TƯ ECOPROPERTY VIỆT NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0311731203', '1', '0');
INSERT INTO `ds_nt` VALUES ('398', 'Công ty TNHH Dược Phẩm Minh Hạnh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1600700196', '1', '0');
INSERT INTO `ds_nt` VALUES ('399', 'CÔNG TY CỔ PHẦN GIẢI PHÁP CÔNG NGHỆ RỒNG BIỂN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0312660812', '1', '0');
INSERT INTO `ds_nt` VALUES ('400', 'CÔNG TY TNHH THƯƠNG MẠI XÂY DỰNG THANH BÌNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4200661999', '1', '0');
INSERT INTO `ds_nt` VALUES ('401', 'Công Ty TNHH Thiết Bị Trường Học Tuổi Thơ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0312890407', '1', '0');
INSERT INTO `ds_nt` VALUES ('402', 'CÔNG TY TNHH TƯ VẤN XÂY DỰNG DOANH THU', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5800832239', '1', '0');
INSERT INTO `ds_nt` VALUES ('403', 'CÔNG TY TNHH MỘT THÀNH VIÊN THÀNH PHÚ TG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1201471949', '1', '0');
INSERT INTO `ds_nt` VALUES ('404', 'Công ty cổ phần Thiện Xuân Lam Sơn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2801882124', '1', '0');
INSERT INTO `ds_nt` VALUES ('405', 'Công ty Cổ Phần Xây Dựng Môi Trường Sạch', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0309708905', '1', '0');
INSERT INTO `ds_nt` VALUES ('406', 'Công ty TNHH Một Thành Viên Khoa Học Công Nghệ NK', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104778845', '1', '0');
INSERT INTO `ds_nt` VALUES ('407', 'CÔNG TY TNHH CÔNG NGHỆ TƯ VẤN THƯƠNG MẠI ĐÔNG QUÂN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0302338451', '1', '0');
INSERT INTO `ds_nt` VALUES ('408', 'CÔNG TY TNHH MỘT THÀNH VIÊN TRƯỜNG THUẬN TUYẾN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3603220120', '1', '0');
INSERT INTO `ds_nt` VALUES ('409', 'Viễn thông Hải Phòng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0200287977', '1', '0');
INSERT INTO `ds_nt` VALUES ('410', 'CÔNG TY TNHH XÂY DỰNG TRƯỜNG AN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6000436904', '1', '0');
INSERT INTO `ds_nt` VALUES ('411', 'Công ty Cổ phần Truyền thông Nhất Tâm', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104922834', '1', '0');
INSERT INTO `ds_nt` VALUES ('412', 'Công ty TNHH Thương mại Dịch vụ Văn Phong', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4101443492', '1', '0');
INSERT INTO `ds_nt` VALUES ('413', 'Công ty Cổ phần Quy hoạch Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104901640', '1', '0');
INSERT INTO `ds_nt` VALUES ('414', 'Công ty Cổ phần Tư vấn và Đầu tư Sao Đất Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103943334', '1', '0');
INSERT INTO `ds_nt` VALUES ('415', 'Công ty cổ phần Tư vấn đầu tư xây dựng và khoáng sản Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104069493', '1', '0');
INSERT INTO `ds_nt` VALUES ('416', 'Công ty cổ phần Tư vấn xây dựng công trình vật liệu xây dựng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100106095', '1', '0');
INSERT INTO `ds_nt` VALUES ('417', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN THƯƠNG MẠI DƯỢC PHẨM THIÊN KIM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305679347', '1', '0');
INSERT INTO `ds_nt` VALUES ('418', 'HỘ KINH DOANH HUY PHƯƠNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3502212194', '1', '0');
INSERT INTO `ds_nt` VALUES ('419', 'CÔNG TY CỔ PHẦN TƯ VẤN VÀ XÂY DỰNG BÌNH NGUYÊN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2901225637', '1', '0');
INSERT INTO `ds_nt` VALUES ('420', 'Công ty cổ phần thương mại dược phẩm Vĩnh Long', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1500633676', '1', '0');
INSERT INTO `ds_nt` VALUES ('421', 'CÔNG TY CỔ PHẦN KINH DOANH HỒ NGUYỄN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106014588', '1', '0');
INSERT INTO `ds_nt` VALUES ('422', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN XÂY DỰNG THẠCH SƠN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3502279907', '1', '0');
INSERT INTO `ds_nt` VALUES ('423', 'CÔNG TY CỔ PHẦN TƯ VẤN THIẾT KẾ GIÁM SÁT MINH HOÀNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5000803334', '1', '0');
INSERT INTO `ds_nt` VALUES ('424', 'Công ty cổ phần thiết kế xây dựng Trường Tuấn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3501794239', '1', '0');
INSERT INTO `ds_nt` VALUES ('425', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN TƯ VẤN VÀ XÂY DỰNG TÂN SƠN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1201434552', '1', '0');
INSERT INTO `ds_nt` VALUES ('426', 'CÔNG TY CỔ PHẦN PHÁT TRIỂN CÔNG NGHỆ  KINH DOANH THƯƠNG MẠI LIÊN HÀ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104624355', '1', '0');
INSERT INTO `ds_nt` VALUES ('427', 'Công ty Cổ phần Thi công Xây dựng Tổng hợp Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104862039', '1', '0');
INSERT INTO `ds_nt` VALUES ('428', 'CÔNG TY CỔ PHẦN THƯƠNG MẠI KỸ THUẬT HDL', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105017321', '1', '0');
INSERT INTO `ds_nt` VALUES ('429', 'Công Ty Cổ Phần Đầu Tư Xây Dựng Thương Mại Hùng Cường', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303000431', '1', '0');
INSERT INTO `ds_nt` VALUES ('430', 'Công ty Cổ phần Tư vấn Thiết kế và Đầu tư Newline', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102752915', '1', '0');
INSERT INTO `ds_nt` VALUES ('431', 'CÔNG TY CỔ PHẦN DƯỢC PHẨM NHẬT TIẾN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304164232', '1', '0');
INSERT INTO `ds_nt` VALUES ('432', 'Công ty Cổ phần Nhật Dương', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104052299', '1', '0');
INSERT INTO `ds_nt` VALUES ('433', 'CÔNG TY CỔ PHẦN XÂY DỰNG TSC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104772138', '1', '0');
INSERT INTO `ds_nt` VALUES ('434', 'CÔNG TY TNHH PHÁT TRIỂN CÔNG NGHỆ HẢI NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101686441', '1', '0');
INSERT INTO `ds_nt` VALUES ('435', 'Cửa hàng Điện tử viễn thông Hà Thủy', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=018019129', '1', '0');
INSERT INTO `ds_nt` VALUES ('436', 'Cửa hàng Điện tử 26', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=018013673', '1', '0');
INSERT INTO `ds_nt` VALUES ('437', 'Điện máy Cảnh Thịnh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=018021940', '1', '0');
INSERT INTO `ds_nt` VALUES ('438', 'Công ty Cổ phần Tư vấn Đầu tư Thiết kế và Xây dựng Công trình Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104706618', '1', '0');
INSERT INTO `ds_nt` VALUES ('439', 'Công ty Cổ phần Dịch vụ Thương mại và Thông tin Kỹ thuật', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101879394', '1', '0');
INSERT INTO `ds_nt` VALUES ('440', 'Công ty TNHH Thế Khôi', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303754870', '1', '0');
INSERT INTO `ds_nt` VALUES ('441', 'Công ty cổ phần Khảo sát Thiết kế xây dựng công trình', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0500439395', '1', '0');
INSERT INTO `ds_nt` VALUES ('442', 'CÔNG TY TNHH DƯỢC PHẨM FITOPHARMA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3700313652', '1', '0');
INSERT INTO `ds_nt` VALUES ('443', 'CÔNG TY TNHH KỸ THUẬT QTE', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104480008', '1', '0');
INSERT INTO `ds_nt` VALUES ('444', 'Công ty Cổ phần Tư vấn Thiết kế Tổng hợp', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3300361041', '1', '0');
INSERT INTO `ds_nt` VALUES ('445', 'CÔNG TY CỔ PHẦN DƯỢC PHẨM HƯỚNG VIỆT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305638421', '1', '0');
INSERT INTO `ds_nt` VALUES ('446', 'CÔNG TY TNHH DƯỢC PHẨM THÁI TÚ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305205393', '1', '0');
INSERT INTO `ds_nt` VALUES ('447', 'CÔNG TY CỔ PHẦN 715.', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1500342370', '1', '0');
INSERT INTO `ds_nt` VALUES ('448', 'CÔNG TY TNHH XÂY DỰNG CAO PHÚ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106846360', '1', '0');
INSERT INTO `ds_nt` VALUES ('449', 'Công ty Cổ phần Thương mại, Tư vấn và Xây dựng Vĩnh Hưng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102054565', '1', '0');
INSERT INTO `ds_nt` VALUES ('450', 'CÔNG TY TNHH THƯƠNG MẠI ĐẦU TƯ XUẤT NHẬP KHẨU H.P CÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1100707517', '1', '0');
INSERT INTO `ds_nt` VALUES ('451', 'Công ty Cổ phần Liên kết dữ liệu Datalink', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105846544', '1', '0');
INSERT INTO `ds_nt` VALUES ('452', 'Công Ty TNHH Công Nghệ Thương Mại Minh Anh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102013287', '1', '0');
INSERT INTO `ds_nt` VALUES ('453', 'CÔNG TY CỔ PHẦN TƯ VẤN THIẾT KẾ VÀ XÂY DỰNG PHÚC AN ĐỊNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401613074', '1', '0');
INSERT INTO `ds_nt` VALUES ('454', 'Công ty TNHH Dịch vụ Thương mại và Xây lắp Tín Thông', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3600783855', '1', '0');
INSERT INTO `ds_nt` VALUES ('455', 'CÔNG TY TNHH XÂY DỰNG DỊCH VỤ THƯƠNG MẠI NAM THỐNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303382598', '1', '0');
INSERT INTO `ds_nt` VALUES ('456', 'CÔNG TY TNHH XÂY DỰNG KHANG GIA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1801165534', '1', '0');
INSERT INTO `ds_nt` VALUES ('457', 'CÔNG TY TNHH MTV TƯ VẤN KIỂM ĐỊNH THẮNG LỢI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1801189013', '1', '0');
INSERT INTO `ds_nt` VALUES ('458', 'Công ty TNHH Tư vấn xây dựng Hưng Long', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3301026857', '1', '0');
INSERT INTO `ds_nt` VALUES ('459', 'CÔNG TY TNHH ĐẦU TƯ MÔI TRƯỜNG NAM VIỆT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1201478327', '1', '0');
INSERT INTO `ds_nt` VALUES ('460', 'CÔNG TY CỔ PHẦN GIẢI PHÁP CÔNG NGHỆ THÔNG TIN LỘ TRÌNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303099245', '1', '0');
INSERT INTO `ds_nt` VALUES ('461', 'Công ty cổ phần Việt Thịnh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0200462643', '1', '0');
INSERT INTO `ds_nt` VALUES ('462', 'Công ty TNHH Ngọc Khánh VT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5700803629', '1', '0');
INSERT INTO `ds_nt` VALUES ('463', 'Công ty TNHH SX  TM Gia Khang', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5900389998', '1', '0');
INSERT INTO `ds_nt` VALUES ('464', 'PHÂN VIỆN KINH TẾ XÂY DỰNG MIỀN NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100531251002', '1', '0');
INSERT INTO `ds_nt` VALUES ('465', 'Viện Thủy văn, Môi trường và Biến đổi khí hậu trực thuộc Trường Đại học Thủy Lợi', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100731243', '1', '0');
INSERT INTO `ds_nt` VALUES ('466', 'CÔNG TY TNHH KIẾN MINH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0400625609', '1', '0');
INSERT INTO `ds_nt` VALUES ('467', 'CÔNG TY TNHH SẢN XUẤT DÂY CÁP VIỄN THÔNG TRƯỜNG THÀNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0900885901', '1', '0');
INSERT INTO `ds_nt` VALUES ('468', 'CÔNG TY TNHH VẬT TƯ THƯƠNG MẠI VIỆT PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0201305717', '1', '0');
INSERT INTO `ds_nt` VALUES ('469', 'Công ty TNHH MTV Tư vấn và Thương mại Đức Thiện', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6001498075', '1', '0');
INSERT INTO `ds_nt` VALUES ('470', 'Công ty trách nhiệm hữu hạn một thành viên Tân Minh Hà Giang', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5100413793', '1', '0');
INSERT INTO `ds_nt` VALUES ('471', 'Công ty trách nhiệm hữu hạn một thành viên Vũ Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5100314834', '1', '0');
INSERT INTO `ds_nt` VALUES ('472', 'Công ty Cổ phần Kỹ thuật Môi trường Xanh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103035792', '1', '0');
INSERT INTO `ds_nt` VALUES ('473', 'Công ty Cổ phần Công nghệ và thiết bị truyền thông', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102048152', '1', '0');
INSERT INTO `ds_nt` VALUES ('474', 'Co6ng ty TNHH Đầu Tư và Tư vấn Xây dựng Việt Phi Long', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0400636946', '1', '0');
INSERT INTO `ds_nt` VALUES ('475', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN XÂY DỰNG 1/5', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0200447638', '1', '0');
INSERT INTO `ds_nt` VALUES ('476', 'Công ty TNHH Xây dựng Nguyên Thảo', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3100839203', '1', '0');
INSERT INTO `ds_nt` VALUES ('477', 'Công Ty Cổ Phần Thương Mại Đông Dương', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2901287425', '1', '0');
INSERT INTO `ds_nt` VALUES ('478', 'Công ty tnhh thương mại và xây lắp công nghiệp phú cát lợi', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401432416', '1', '0');
INSERT INTO `ds_nt` VALUES ('479', 'Công ty TNHH Hoàng Long LS', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4900252046', '1', '0');
INSERT INTO `ds_nt` VALUES ('480', 'Công ty Cổ phần tư vấn xây dựng giao thông Trường Phú', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303000665', '1', '0');
INSERT INTO `ds_nt` VALUES ('481', 'Công ty Cổ phần Thương mại Hà Phan', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303899555', '1', '0');
INSERT INTO `ds_nt` VALUES ('482', 'CÔNG TY CỔ PHẦN KIẾN TRÚC XÂY DỰNG THÍCH ỨNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103947635', '1', '0');
INSERT INTO `ds_nt` VALUES ('483', 'CÔNG TY CỔ PHẦN HAMEEI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102637729', '1', '0');
INSERT INTO `ds_nt` VALUES ('484', 'Công ty cổ phần đầu tư thương mại phát triển công nghiệp và năng lượng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104556056', '1', '0');
INSERT INTO `ds_nt` VALUES ('485', 'CÔNG TY CỔ PHẦN VẬT LIỆU VÀ CÔNG NGHỆ MỚI VIỆT NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104213316', '1', '0');
INSERT INTO `ds_nt` VALUES ('486', 'Công ty cổ phần thiết kế và xây dựng INPOS', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105859511', '1', '0');
INSERT INTO `ds_nt` VALUES ('487', 'Công ty cổ phần đầu tư và xây dựng Minh Hưng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2901361615', '1', '0');
INSERT INTO `ds_nt` VALUES ('488', 'CÔNG TY CỔ PHẦN TƯ VẤN ĐỊA CHẤT CT ĐÀ NẴNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401428716', '1', '0');
INSERT INTO `ds_nt` VALUES ('489', 'Công ty Cổ phần Kỹ thuật Công nghệ Việt Toàn Cầu', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4103004834', '1', '0');
INSERT INTO `ds_nt` VALUES ('490', 'Công ty Cổ phần Tư vấn Đầu tư và Công Nghệ Suntech Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106808647', '1', '0');
INSERT INTO `ds_nt` VALUES ('491', 'Công ty Cổ phần Tư vấn Xây dựng Vinh anh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106184075', '1', '0');
INSERT INTO `ds_nt` VALUES ('492', 'CÔNG TY CỔ PHẦN SẢN XUẤT VÀ THƯƠNG MẠI THIẾT BỊ Y TẾ ĐỨC THƯỢNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103652085', '1', '0');
INSERT INTO `ds_nt` VALUES ('493', 'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ TỊNH THÀNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0311698877', '1', '0');
INSERT INTO `ds_nt` VALUES ('494', 'Công ty cổ phần thương mại và đầu tư xây dựng Tân Thịnh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104467790', '1', '0');
INSERT INTO `ds_nt` VALUES ('495', 'Công ty cổ phần đầu tư phát triển Phúc Tiến Group', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2901154288', '1', '0');
INSERT INTO `ds_nt` VALUES ('496', 'Công ty TNHH BK', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101189464', '1', '0');
INSERT INTO `ds_nt` VALUES ('497', 'Công ty Cổ phần BCP Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105120921', '1', '0');
INSERT INTO `ds_nt` VALUES ('498', 'CÔNG TY CỔ PHẦN TƯ VẤN VÀ ĐẦU TƯ BẢO NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104328902', '1', '0');
INSERT INTO `ds_nt` VALUES ('499', 'CÔNG TY TNHH MTV HUYỀN MẠNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4900491485', '1', '0');
INSERT INTO `ds_nt` VALUES ('500', 'Công ty cổ phần Kankyo Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106001395', '1', '0');
INSERT INTO `ds_nt` VALUES ('501', 'CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY LẮP VÀ THƯƠNG MẠI DỊCH VỤ HUD3.6', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0312253359', '1', '0');
INSERT INTO `ds_nt` VALUES ('502', 'Công ty cổ phần đầu tư phát triển Phúc Tiến Group', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2901145288', '1', '0');
INSERT INTO `ds_nt` VALUES ('503', 'CÔNG TY CỔ PHẦN TƯ VẤN ĐẦU TƯ XÂY DỰNG VÀ DỊCH VỤ THƯƠNG MẠI HỢP LỰC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101356316', '1', '0');
INSERT INTO `ds_nt` VALUES ('504', 'Công ty Cổ phần Hệ thống Công nghệ Sinh Phúc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102727330', '1', '0');
INSERT INTO `ds_nt` VALUES ('505', 'Công ty TNHH Thủy lực Yến Linh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101321786', '1', '0');
INSERT INTO `ds_nt` VALUES ('506', 'Công ty TNHH tư vấn xây dựng Kiến Bảo', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3701151845', '1', '0');
INSERT INTO `ds_nt` VALUES ('507', 'Công ty Cổ phần Phát triển Công nghệ Bách khoa Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0200956025', '1', '0');
INSERT INTO `ds_nt` VALUES ('508', 'Công ty cổ phần Thùy Dương', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0203001227', '1', '0');
INSERT INTO `ds_nt` VALUES ('509', 'Công ty trách nhiệm hữu hạn Khánh Đông', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0400694761', '1', '0');
INSERT INTO `ds_nt` VALUES ('510', 'Công ty TNHH tư vấn đầu tư xây dựng và thương mại Chi Ân', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0800923550', '1', '0');
INSERT INTO `ds_nt` VALUES ('511', 'CÔNG TY TNHH XÂY DỰNG THƯƠNG MẠI VƯƠNG SÁU', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4300291558', '1', '0');
INSERT INTO `ds_nt` VALUES ('512', 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ XÂY DỰNG CONDA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0400561585', '1', '0');
INSERT INTO `ds_nt` VALUES ('513', 'Công ty TNHH Thiết Bị Khao Học Sinh Hóa Vina', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303950963', '1', '0');
INSERT INTO `ds_nt` VALUES ('514', 'CÔNG TY TNHH XÂY DỰNG THƯƠNG MẠI VIỄN ĐÔNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3700574830', '1', '0');
INSERT INTO `ds_nt` VALUES ('515', 'Công ty cổ phần xây lắp điện Số 9', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0700473322', '1', '0');
INSERT INTO `ds_nt` VALUES ('516', 'Công ty TNHH Cây Cầu Vàng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102611262', '1', '0');
INSERT INTO `ds_nt` VALUES ('517', 'CÔNG TY TNHH ĐẦU TƯ PHÁT TRIỂN CÔNG NGHỆ VÀ THƯƠNG MẠI DNET', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102701156', '1', '0');
INSERT INTO `ds_nt` VALUES ('518', 'Công ty cổ phần Ruby Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105469864', '1', '0');
INSERT INTO `ds_nt` VALUES ('519', 'Công ty Cổ phần Kiến trúc Xây dựng và thương mại Hà Thành', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106486541', '1', '0');
INSERT INTO `ds_nt` VALUES ('520', 'CÔNG TY CỔ PHẦN KIẾN TRÚC DLL', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101471703', '1', '0');
INSERT INTO `ds_nt` VALUES ('521', 'Công Ty Cổ Phần Phát Triển Công Nghệ Thiên An', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106446531', '1', '0');
INSERT INTO `ds_nt` VALUES ('522', 'Công ty cổ phần đầu tư và xây dựng số 9', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2600407753', '1', '0');
INSERT INTO `ds_nt` VALUES ('523', 'Công ty Cổ phần Quản lý và Xây dựng Giao thông Lạng Sơn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4900219747', '1', '0');
INSERT INTO `ds_nt` VALUES ('524', 'Công Ty Trách Nhiệm Hữu Hạn Một Thành Viên Tư Vấn Xây Dựng 888', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3200528219', '1', '0');
INSERT INTO `ds_nt` VALUES ('525', 'CÔNG TY CỔ PHẦN THIẾT BỊ Y TẾ VÀ HÓA CHẤT HÀ NỘI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104395063', '1', '0');
INSERT INTO `ds_nt` VALUES ('526', 'Công ty cổ phần đầu tư và xây dựng giao thông 9', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2901141384', '1', '0');
INSERT INTO `ds_nt` VALUES ('527', 'Công ty cổ phần giao thông công Chính', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101908912', '1', '0');
INSERT INTO `ds_nt` VALUES ('528', 'CÔNG TY TNHH Q.V.T', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0302872215', '1', '0');
INSERT INTO `ds_nt` VALUES ('529', 'Công ty TNHH tư vấn xây dựng và thương mại NTP', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0900854188', '1', '0');
INSERT INTO `ds_nt` VALUES ('530', 'Công ty TNHH MTV xây dựng Phong Hoàng Hưng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3603083562', '1', '0');
INSERT INTO `ds_nt` VALUES ('531', 'Công ty TNHH tư vấn xây dựng Việt Bắc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6000991464', '1', '0');
INSERT INTO `ds_nt` VALUES ('532', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN VIỆT ĐỨC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3300101727', '1', '0');
INSERT INTO `ds_nt` VALUES ('533', 'Công ty Cổ phần Đầu tư Xây dựng Cát Tường', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304756408', '1', '0');
INSERT INTO `ds_nt` VALUES ('534', 'Công ty TNHH Tân Tân Phát', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6100219290', '1', '0');
INSERT INTO `ds_nt` VALUES ('535', 'CÔNG TY TNHH CƯỜNG THỊNH THI NAM VIỆT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2700276448', '1', '0');
INSERT INTO `ds_nt` VALUES ('536', 'Công ty cổ phần truyền thông Minh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103965176', '1', '0');
INSERT INTO `ds_nt` VALUES ('537', 'Công ty Cổ phần Sơn Thành', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0800371229', '1', '0');
INSERT INTO `ds_nt` VALUES ('538', 'Công ty cổ phẩn giải pháp và dịch vụ thông tin Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105341896', '1', '0');
INSERT INTO `ds_nt` VALUES ('539', 'Công ty TNHH Thương mại và Sản xuất Nam Tiến Thịnh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0313209169', '1', '0');
INSERT INTO `ds_nt` VALUES ('540', 'Công ty TNHH Thương mại Kỹ thuật Phú Hà', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101238295', '1', '0');
INSERT INTO `ds_nt` VALUES ('541', 'Công ty Cổ phần Kiến trúc Xây dựng và thương mại Hà Thành', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106486541', '1', '0');
INSERT INTO `ds_nt` VALUES ('542', 'CÔNG TY CỔ PHẦN KIẾN TRÚC DLL', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101471703', '1', '0');
INSERT INTO `ds_nt` VALUES ('543', 'Công Ty Cổ Phần Phát Triển Công Nghệ Thiên An', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106446531', '1', '0');
INSERT INTO `ds_nt` VALUES ('544', 'Công ty cổ phần đầu tư và xây dựng số 9', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2600407753', '1', '0');
INSERT INTO `ds_nt` VALUES ('545', 'Công ty Cổ phần Quản lý và Xây dựng Giao thông Lạng Sơn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4900219747', '1', '0');
INSERT INTO `ds_nt` VALUES ('546', 'Công Ty Trách Nhiệm Hữu Hạn Một Thành Viên Tư Vấn Xây Dựng 888', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3200528219', '1', '0');
INSERT INTO `ds_nt` VALUES ('547', 'CÔNG TY CỔ PHẦN THIẾT BỊ Y TẾ VÀ HÓA CHẤT HÀ NỘI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104395063', '1', '0');
INSERT INTO `ds_nt` VALUES ('548', 'Công ty cổ phần đầu tư và xây dựng giao thông 9', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2901141384', '1', '0');
INSERT INTO `ds_nt` VALUES ('549', 'Công ty cổ phần giao thông công Chính', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101908912', '1', '0');
INSERT INTO `ds_nt` VALUES ('550', 'CÔNG TY TNHH Q.V.T', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0302872215', '1', '0');
INSERT INTO `ds_nt` VALUES ('551', 'Công ty TNHH tư vấn xây dựng và thương mại NTP', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0900854188', '1', '0');
INSERT INTO `ds_nt` VALUES ('552', 'Công ty TNHH MTV xây dựng Phong Hoàng Hưng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3603083562', '1', '0');
INSERT INTO `ds_nt` VALUES ('553', 'Công ty TNHH tư vấn xây dựng Việt Bắc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6000991464', '1', '0');
INSERT INTO `ds_nt` VALUES ('554', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN VIỆT ĐỨC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3300101727', '1', '0');
INSERT INTO `ds_nt` VALUES ('555', 'Công ty Cổ phần Đầu tư Xây dựng Cát Tường', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304756408', '1', '0');
INSERT INTO `ds_nt` VALUES ('556', 'Công ty TNHH Tân Tân Phát', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6100219290', '1', '0');
INSERT INTO `ds_nt` VALUES ('557', 'CÔNG TY TNHH CƯỜNG THỊNH THI NAM VIỆT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2700276448', '1', '0');
INSERT INTO `ds_nt` VALUES ('558', 'Công ty cổ phần truyền thông Minh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103965176', '1', '0');
INSERT INTO `ds_nt` VALUES ('559', 'Công ty Cổ phần Sơn Thành', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0800371229', '1', '0');
INSERT INTO `ds_nt` VALUES ('560', 'Công ty cổ phẩn giải pháp và dịch vụ thông tin Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105341896', '1', '0');
INSERT INTO `ds_nt` VALUES ('561', 'Công ty TNHH Thương mại và Sản xuất Nam Tiến Thịnh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0313209169', '1', '0');
INSERT INTO `ds_nt` VALUES ('562', 'Công ty TNHH Thương mại Kỹ thuật Phú Hà', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101238295', '1', '0');
INSERT INTO `ds_nt` VALUES ('563', 'Công ty cổ phần thiết bị y tế Hà Anh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105019777', '1', '0');
INSERT INTO `ds_nt` VALUES ('564', 'Công ty Cổ phần Tư vấn Xây dựng Đầu tư Dinh Phát', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303797458', '1', '0');
INSERT INTO `ds_nt` VALUES ('565', 'Công ty TNHH Công nghệ Nettop Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106302346', '1', '0');
INSERT INTO `ds_nt` VALUES ('566', 'CÔNG TY CỔ PHẦN ĐẦU TƯ XÂY DỰNG VÀ THƯƠNG MẠI VIỆT KHÁNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0800988540', '1', '0');
INSERT INTO `ds_nt` VALUES ('567', 'Trung tâm phần mềm nguồn mở và điện toán đám mây', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103013829', '1', '0');
INSERT INTO `ds_nt` VALUES ('568', 'Công ty TNHH Thương mại và Phát triển Công nghệ Minh Châu', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104554443', '1', '0');
INSERT INTO `ds_nt` VALUES ('569', 'Công ty Cổ phần Thương mại và Tự động hóa ADI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103006056', '1', '0');
INSERT INTO `ds_nt` VALUES ('570', 'Công ty cổ phần xây lắp và thương mại Đức Hòa', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101488418', '1', '0');
INSERT INTO `ds_nt` VALUES ('571', 'CÔNG TY CỔ PHẦN ĐẦU TƯ THƯƠNG MẠI AN DÂN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100239169', '1', '0');
INSERT INTO `ds_nt` VALUES ('572', 'Viện Quy hoạch môi trường,hạ tầng kỹ thuật đô thị và nông thôn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100573678', '1', '0');
INSERT INTO `ds_nt` VALUES ('573', 'CÔNG TY TNHH MINH PHÚC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101275730', '1', '0');
INSERT INTO `ds_nt` VALUES ('574', 'Công ty cổ phần tư vấn và đầu tư SODINCO', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104372154', '1', '0');
INSERT INTO `ds_nt` VALUES ('575', 'Chi nhánh Viện Dầu Khí Việt Nam, Trung tâm Nghiên cứu Kinh tế và Quản lý Dầu khí', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100150295004', '1', '0');
INSERT INTO `ds_nt` VALUES ('576', 'Công Ty TNHH Tư Vấn Thiết Kế Và Xây Dựng Hưng Phúc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304172674', '1', '0');
INSERT INTO `ds_nt` VALUES ('577', 'Công ty cổ phần thương mại công nghiệp quốc tế GBI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105265243', '1', '0');
INSERT INTO `ds_nt` VALUES ('578', 'Công ty Cổ phần Tư vấn và Đầu tư Hà Thành', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103034111', '1', '0');
INSERT INTO `ds_nt` VALUES ('579', 'Công ty cổ phần xây dựng số 28 Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104382353', '1', '0');
INSERT INTO `ds_nt` VALUES ('580', 'Công ty TNHH Một thành viên Hà Thành', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100108529', '1', '0');
INSERT INTO `ds_nt` VALUES ('581', 'Công ty TNHH xuất nhập khẩu Hoàng Năm', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105481660', '1', '0');
INSERT INTO `ds_nt` VALUES ('582', 'Công ty TNHH Thiết bị và Hóa chất Thành Tín', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0311941553', '1', '0');
INSERT INTO `ds_nt` VALUES ('583', 'CÔNG TY CỔ PHẦN SẢN XUẤT VĂN PHÒNG PHẨM HAMATRA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103256388', '1', '0');
INSERT INTO `ds_nt` VALUES ('584', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI HÀ NỘI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101029397', '1', '0');
INSERT INTO `ds_nt` VALUES ('585', 'CÔNG TY TNHH XÂY DỰNG TRƯỜNG XUÂN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0302593236', '1', '0');
INSERT INTO `ds_nt` VALUES ('586', 'CÔNG TY CỔ PHẦN XÂY DỰNG HẢI SƠN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3600274209', '1', '0');
INSERT INTO `ds_nt` VALUES ('587', 'CÔNG TY TNHH TƯ VẤN THIẾT KẾ XÂY DỰNG HA PHI.', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0310178480', '1', '0');
INSERT INTO `ds_nt` VALUES ('588', 'Xí nghiệp tư doanh xây dựng Đức Toàn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6000169991', '1', '0');
INSERT INTO `ds_nt` VALUES ('589', 'Công ty TNHH một thành viên xây dựng Đại Dương', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6001098888', '1', '0');
INSERT INTO `ds_nt` VALUES ('590', 'CÔNG TY CỔ PHẦN DƯỢC VẬT TƯ Y TẾ HẢI DƯƠNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0800011018', '1', '0');
INSERT INTO `ds_nt` VALUES ('591', 'Công ty Cổ phần Đầu tư và Tư vấn Quản lý dự án DELTA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105163033', '1', '0');
INSERT INTO `ds_nt` VALUES ('592', 'Công ty cổ phần đầu tư TLT Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104796428', '1', '0');
INSERT INTO `ds_nt` VALUES ('593', 'CÔNG TY CỔ PHẦN TƯ VẤN VÀ XÂY LẮP QUANG HƯNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103241374', '1', '0');
INSERT INTO `ds_nt` VALUES ('594', 'CÔNG TY HỢP DANH KIỂM TOÁN VIỆT NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101505310', '1', '0');
INSERT INTO `ds_nt` VALUES ('595', 'CÔNG TY  CỔ PHẦN PHÁT TRIỂN DỊCH VỤ AN LỘC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104901922', '1', '0');
INSERT INTO `ds_nt` VALUES ('596', 'Công ty Cổ phần đầu tư xây dựng và thương mại Bắc Việt.', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105399582', '1', '0');
INSERT INTO `ds_nt` VALUES ('597', 'Công ty Cổ phần Đầu tư và Xây dựng Tân Phước Thịnh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3500660200', '1', '0');
INSERT INTO `ds_nt` VALUES ('598', 'CÔNG TY TNHH MỘT THÀNH VIÊN MỸ THUẬT TRUNG ƯƠNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100111338', '1', '0');
INSERT INTO `ds_nt` VALUES ('599', 'Công ty Cổ phần xây dựng Ba Vì', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0500204731', '1', '0');
INSERT INTO `ds_nt` VALUES ('600', 'CÔNG TY CỔ PHẦN TƯ VẤN VÀ ĐẦU TƯ MINH DƯƠNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0500562737', '1', '0');
INSERT INTO `ds_nt` VALUES ('601', 'Trung tâm khảo sát, nghiên cứu và phát triển thị trường', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104692041', '1', '0');
INSERT INTO `ds_nt` VALUES ('602', 'Công ty cổ phần Thi công cơ giới xây lắp', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100104764', '1', '0');
INSERT INTO `ds_nt` VALUES ('603', 'Công ty TNHH Hùng Tiến', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4000387643', '1', '0');
INSERT INTO `ds_nt` VALUES ('604', 'CÔNG TY TNHH THƯƠNG MẠI YÊN HƯNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101912588', '1', '0');
INSERT INTO `ds_nt` VALUES ('605', 'Công ty cổ phần thiết bị và phát triển hạ tầng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102020735', '1', '0');
INSERT INTO `ds_nt` VALUES ('606', 'Công ty cổ phần thiết kế và xây dựng An Phú', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105019294', '1', '0');
INSERT INTO `ds_nt` VALUES ('607', 'CÔNG TY CỔ PHẦN TƯ VẤN THIẾT KẾ VÀ THI CÔNG XÂY DỰNG DNA   CDC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103038078', '1', '0');
INSERT INTO `ds_nt` VALUES ('608', 'Công ty Cổ phần Tư vấn và Đầu tư Xây dựng Phú Quang', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0700219686', '1', '0');
INSERT INTO `ds_nt` VALUES ('609', 'CÔNG TY TNHH THIẾT BỊ CÔNG NGHIỆP ĐẠI TÍN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0313180343', '1', '0');
INSERT INTO `ds_nt` VALUES ('610', 'Công ty TNHH Kim Bàng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0301479611', '1', '0');
INSERT INTO `ds_nt` VALUES ('611', 'Công ty TNHH Hưng Khánh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0700257603', '1', '0');
INSERT INTO `ds_nt` VALUES ('612', 'Công ty TNHH Thanh Tiến', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2802000309', '1', '0');
INSERT INTO `ds_nt` VALUES ('613', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN TÂN VIỆT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0202000638', '1', '0');
INSERT INTO `ds_nt` VALUES ('614', 'CÔNG TY CỔ PHẦN VẬT LIỆU VÀ XÂY DỰNG THỐNG NHẤT HẢI PHÒNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0200587836', '1', '0');
INSERT INTO `ds_nt` VALUES ('615', 'Công Ty TNHH Hương Bạch Đằng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0312967120', '1', '0');
INSERT INTO `ds_nt` VALUES ('616', 'CÔNG TY TNHH VIỆT PHÁP', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4200459849', '1', '0');
INSERT INTO `ds_nt` VALUES ('617', 'Công ty TNHH Một Thành Viên Dịch Vụ Công Ích Quận 5', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0301259038', '1', '0');
INSERT INTO `ds_nt` VALUES ('618', 'Công ty cổ phần tư vấn thiết kế xây dựng và thương mại Kiến An', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0201265574', '1', '0');
INSERT INTO `ds_nt` VALUES ('619', 'Công ty TNHH Rich Media', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101642677', '1', '0');
INSERT INTO `ds_nt` VALUES ('620', 'Công ty Cổ phần 20/7', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4300320569', '1', '0');
INSERT INTO `ds_nt` VALUES ('621', 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ TƯ VẤN THIẾT KẾ SỐ MỘT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0309187096', '1', '0');
INSERT INTO `ds_nt` VALUES ('622', 'CÔNG TY TNHH THƯƠNG MẠI VÀ DICH VỤ KỸ THUẬT HƯỚNG DƯƠNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105434974', '1', '0');
INSERT INTO `ds_nt` VALUES ('623', 'CÔNG TY TNHH ĐẦU TƯ XÂY DỰNG VÀ DỊCH VỤ MINH TUẤN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3502265397', '1', '0');
INSERT INTO `ds_nt` VALUES ('624', 'Công ty TNHH Văn Lang', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0302516947', '1', '0');
INSERT INTO `ds_nt` VALUES ('625', 'Công Ty Cổ Phần Tư Vấn Và Xây Lắp Điện Hòn Gai', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5701612793', '1', '0');
INSERT INTO `ds_nt` VALUES ('626', 'Công ty TNHH xây dựng và thương mại Trường Thành', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4000367943', '1', '0');
INSERT INTO `ds_nt` VALUES ('627', 'Công ty Trách nhiệm hữu hạn tư vấn đầu tư xây dựng Nguyên Phong', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5000814174', '1', '0');
INSERT INTO `ds_nt` VALUES ('628', 'CÔNG TY TNHH 27/7', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5000212620', '1', '0');
INSERT INTO `ds_nt` VALUES ('629', 'CÔNG TY CỔ PHẦN SẢN XUẤT THƯƠNG MẠI KIẾN TRÚC DHM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103036952', '1', '0');
INSERT INTO `ds_nt` VALUES ('630', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN THUẬN PHONG VŨ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5000812018', '1', '0');
INSERT INTO `ds_nt` VALUES ('631', 'Công ty TNHH Xây dựng Nam Phước', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0301448282', '1', '0');
INSERT INTO `ds_nt` VALUES ('632', 'Công ty Cổ phần Tư vấn Thiết kế Đông Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0311878742', '1', '0');
INSERT INTO `ds_nt` VALUES ('633', 'Công ty TNHH Thương  Mại và dịch vụ Nhật Thành', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4700142712', '1', '0');
INSERT INTO `ds_nt` VALUES ('634', 'CÔNG TY CỔ PHẦN CƠ ĐIỆN NĂNG LƯỢNG VÀ MÔI TRƯỜNG ALPHA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104594397', '1', '0');
INSERT INTO `ds_nt` VALUES ('635', 'Công ty Cổ phần Đầu tư và Xây dựng Tân Phước Thịnh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3500660200', '1', '0');
INSERT INTO `ds_nt` VALUES ('636', 'CÔNG TY CỔ PHẦN CÔNG NGHỆ DỊCH VỤ THƯƠNG MẠI ANA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101588885', '1', '0');
INSERT INTO `ds_nt` VALUES ('637', 'VĂN PHÒNG LUẬT SƯ LEADCO', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=01010046', '1', '0');
INSERT INTO `ds_nt` VALUES ('638', 'Công ty cổ phần xây dựng và bảo trì công trình giao thông 719', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1900176047', '1', '0');
INSERT INTO `ds_nt` VALUES ('639', 'CÔNG TY TNHH THIẾT BỊ ĐIỆN NƯỚC THĂNG LONG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105416710', '1', '0');
INSERT INTO `ds_nt` VALUES ('640', 'Công ty TNHH SL International', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0313065100', '1', '0');
INSERT INTO `ds_nt` VALUES ('641', 'Công ty cổ phần tin học và tư vấn xây dựng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100775353', '1', '0');
INSERT INTO `ds_nt` VALUES ('642', 'Công Ty Cổ phần Đầu tư và Xây dựng 785', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2901386553', '1', '0');
INSERT INTO `ds_nt` VALUES ('643', 'Công ty Cổ phần 19/8 Quảng Ngãi', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4300324926', '1', '0');
INSERT INTO `ds_nt` VALUES ('644', 'Công Ty Cổ Phần Đầu Tư Và Phát Triển Tân Triều', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=6300104709', '1', '0');
INSERT INTO `ds_nt` VALUES ('645', 'Viện Quy hoạch Kiến trúc Thanh Hóa', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2800223270', '1', '0');
INSERT INTO `ds_nt` VALUES ('646', 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ HỒNG THUYÊN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305326341', '1', '0');
INSERT INTO `ds_nt` VALUES ('647', 'Công ty TNHH Trần An', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4000765334', '1', '0');
INSERT INTO `ds_nt` VALUES ('648', 'Công Ty TNHH Trang Trí Nội Thất Mộc Thịnh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304899269', '1', '0');
INSERT INTO `ds_nt` VALUES ('649', 'CÔNG TY TNHH THIẾT BỊ KHOA HỌC KỸ THUẬT THÀNH KHOA', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303649379', '1', '0');
INSERT INTO `ds_nt` VALUES ('650', 'Công Ty TNHH Kiến Tạo và Kiệt Tác', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101798995', '1', '0');
INSERT INTO `ds_nt` VALUES ('651', 'Doanh Nghiệp Tư Nhân  Hoàng Khang', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4400579910', '1', '0');
INSERT INTO `ds_nt` VALUES ('652', 'Công Ty Cổ Phần Kỹ Thuật Toàn Cầu', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101755014', '1', '0');
INSERT INTO `ds_nt` VALUES ('653', 'CÔNG TY CỔ PHẦN KHẢO SÁT VÀ XÂY DỰNG CÔNG TRÌNH THỊNH PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0311485533', '1', '0');
INSERT INTO `ds_nt` VALUES ('654', 'Công ty cổ phần tư vấn và đầu tư phát triển xây dựng Miền Bắc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104304845', '1', '0');
INSERT INTO `ds_nt` VALUES ('655', 'Công ty cổ phần tư vấn đầu tư xây dựng Giang Phú', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5100357404', '1', '0');
INSERT INTO `ds_nt` VALUES ('656', 'Công ty TNHH THANH THANH BÌNH LÂM ĐỒNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5801189518', '1', '0');
INSERT INTO `ds_nt` VALUES ('657', 'Công ty TNHH Trường Minh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2901279632', '1', '0');
INSERT INTO `ds_nt` VALUES ('658', 'CÔNG TY TNHH LỢI PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1800850738', '1', '0');
INSERT INTO `ds_nt` VALUES ('659', 'Công ty cổ phần tư vấn đầu tư Tân Đức', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101492710', '1', '0');
INSERT INTO `ds_nt` VALUES ('660', 'CÔNG TY CỔ PHẦN CÔNG NGHỆ XÂY DỰNG THÁI SƠN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105638449', '1', '0');
INSERT INTO `ds_nt` VALUES ('661', 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ KỸ THUẬT CƠ ĐIỆN SÔNG HỒNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103036815', '1', '0');
INSERT INTO `ds_nt` VALUES ('662', 'Công ty cổ phần tư vấn xây dựng Sông Hồng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103006733', '1', '0');
INSERT INTO `ds_nt` VALUES ('663', 'CÔNG TY CỔ PHẦN TÂY AN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2900621395', '1', '0');
INSERT INTO `ds_nt` VALUES ('664', 'Công ty Cổ phần Công nghệ và Phát triển Hạ tầng Viễn thông UniTel', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103143641', '1', '0');
INSERT INTO `ds_nt` VALUES ('665', 'Công ty Cổ phần thương mại dịch vụ điện tử viễn thông NHK', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102186829', '1', '0');
INSERT INTO `ds_nt` VALUES ('666', 'Công ty cổ phần tư vấn xây dựng và thương mại Đạt Thành', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103642337', '1', '0');
INSERT INTO `ds_nt` VALUES ('667', 'CÔNG TY CỔ PHẦN THIẾT BỊ CÔNG NGHIỆP VÀ GIÁO DỤC ĐẠI PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104122919', '1', '0');
INSERT INTO `ds_nt` VALUES ('668', 'Công ty cổ phần xây dựng và dịch vụ thương mại Hải Anh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0203005404', '1', '0');
INSERT INTO `ds_nt` VALUES ('669', 'Công ty TNHH Thương mại Dịch vụ Công nghệ  Nam Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0311507970', '1', '0');
INSERT INTO `ds_nt` VALUES ('670', 'Công ty TNHH Khoan Địa Chất Công Trình Địa Chất Thủy Văn Hoàng Kim', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1201076378', '1', '0');
INSERT INTO `ds_nt` VALUES ('671', 'CÔNG TY CỔ PHẦN PHẦN MỀM D.O.M.I.N.O', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102549695', '1', '0');
INSERT INTO `ds_nt` VALUES ('672', 'Cục Viễn thông', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100985294', '1', '0');
INSERT INTO `ds_nt` VALUES ('673', 'Công ty cổ phần xây lắp điện công nghiệp và dân dụng Thạnh Phát', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2000493260', '1', '0');
INSERT INTO `ds_nt` VALUES ('674', 'Viện Nghiên cứu Thương mại', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=476', '1', '0');
INSERT INTO `ds_nt` VALUES ('675', 'Doanh nghiệp tư nhân xây dựng và chế biến lâm sản Hà Hùng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4600284858', '1', '0');
INSERT INTO `ds_nt` VALUES ('676', 'Công ty Cổ phần Xây dựng Tư vấn thiết kế Quốc Tế Đông Á', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0303318835', '1', '0');
INSERT INTO `ds_nt` VALUES ('677', 'Công ty TNHH Eteck Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104808698', '1', '0');
INSERT INTO `ds_nt` VALUES ('678', 'Công ty TNHH Pricewaterhousecoopers Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=411043000993', '1', '0');
INSERT INTO `ds_nt` VALUES ('679', 'CÔNG TY CỔ PHẦN THƯƠNG MẠI DỊCH VỤ THIẾT KẾ ÁNH SAO KIM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0313132205', '1', '0');
INSERT INTO `ds_nt` VALUES ('680', 'CÔNG TY TNHH CẢNH PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0202008015', '1', '0');
INSERT INTO `ds_nt` VALUES ('681', 'CÔNG TY CỔ PHẦN KHA LONG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0203002577', '1', '0');
INSERT INTO `ds_nt` VALUES ('682', 'CÔNG TY TNHH KIẾN TRÚC  XÂY DỰNG 26', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4201146704', '1', '0');
INSERT INTO `ds_nt` VALUES ('683', 'Công ty TNHH Duy Phong', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0700371867', '1', '0');
INSERT INTO `ds_nt` VALUES ('684', 'Công ty Cổ phần Thương mại Dịch vụ Hai Tốt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305481876', '1', '0');
INSERT INTO `ds_nt` VALUES ('685', 'Công ty cổ phần đầu tư và tư vấn xây dựng Nguyễn Hoàng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0201199995', '1', '0');
INSERT INTO `ds_nt` VALUES ('686', 'CÔNG TY TNHH XÂY DỰNG VÀ THƯƠNG MẠI TẤN KHÔI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0309885622', '1', '0');
INSERT INTO `ds_nt` VALUES ('687', 'Công ty cổ phần tư vấn đầu tư xây dựng và môi trường sinh thái', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305335233', '1', '0');
INSERT INTO `ds_nt` VALUES ('688', 'CÔNG TY CỔ PHẦN BIGCOM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104993112', '1', '0');
INSERT INTO `ds_nt` VALUES ('689', 'Công ty Cổ phần Đầu tư và Tư vấn Phương Bắc', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104914248', '1', '0');
INSERT INTO `ds_nt` VALUES ('690', 'CÔNG TY CỔ PHẦN ĐẦU TƯ VÀ TƯ VẤN XÂY DỰNG TRƯỜNG THỊNH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105145820', '1', '0');
INSERT INTO `ds_nt` VALUES ('691', 'CÔNG TY TNHH ĐIỆN ĐIỆN TỬ DI AN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304269267', '1', '0');
INSERT INTO `ds_nt` VALUES ('692', 'Công Ty TNHH Đầu Tư Phát Triển Công Nghệ Điện Tử Tự Động Hóa DKS', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102034963', '1', '0');
INSERT INTO `ds_nt` VALUES ('693', 'Công ty TNHH sản xuất và thương mại Đức Phát', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102011996', '1', '0');
INSERT INTO `ds_nt` VALUES ('694', 'Trung tâm Công nghệ thông tin và Truyền thông', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=1100829963', '1', '0');
INSERT INTO `ds_nt` VALUES ('695', 'CÔNG TY TNHH MỘT THÀNH VIÊN 673', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3200268835', '1', '0');
INSERT INTO `ds_nt` VALUES ('696', 'Công ty TNHH thương mại và dịch vụ An Lợi', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0900289909', '1', '0');
INSERT INTO `ds_nt` VALUES ('697', 'Công ty cổ phần tư vấn xây dựng Lê Hoàn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101670385', '1', '0');
INSERT INTO `ds_nt` VALUES ('698', 'CÔNG TY TNHH XÂY LẮP VÀ THƯƠNG MẠI NHÀ VIỆT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0801136838', '1', '0');
INSERT INTO `ds_nt` VALUES ('699', 'CÔNG TY CỔ PHẦN TƯ VẤN THIẾT KẾ CÔNG NGHỆ XÂY DỰNG PHÚ AN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4103013859', '1', '0');
INSERT INTO `ds_nt` VALUES ('700', 'CÔNG TY TNHH XÂY DỰNG TRANG TRÍ NỘI THẤT BẰNG VIỄN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304728591', '1', '0');
INSERT INTO `ds_nt` VALUES ('701', 'CÔNG TY TNHH MINH ĐỨC BA VÌ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106806181', '1', '0');
INSERT INTO `ds_nt` VALUES ('702', 'Công ty TNHH xây dựng và thương mại Tuấn Hoàng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2702001313', '1', '0');
INSERT INTO `ds_nt` VALUES ('703', 'Công ty cổ phần Ngũ Sơn Đà Nẵng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401299228', '1', '0');
INSERT INTO `ds_nt` VALUES ('704', 'CÔNG TY CỔ PHẦN TƯ VẤN XÂY DỰNG VINASEAN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2801680939', '1', '0');
INSERT INTO `ds_nt` VALUES ('705', 'Công ty Trách nhiệm Hữu hạn Thương mại và Dịch vụ KTD', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0200659600', '1', '0');
INSERT INTO `ds_nt` VALUES ('706', 'CÔNG TY CỔ PHẦN ĐẦU TƯ BDT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106355958', '1', '0');
INSERT INTO `ds_nt` VALUES ('707', 'CÔNG TY CỔ PHẦN CƠ KHÍ XÂY DỰNG THÁP KIM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0304850802', '1', '0');
INSERT INTO `ds_nt` VALUES ('708', 'CÔNG TY TNHH MỘT THÀNH VIÊN PHÁT TRIỂN CÔNG VIÊN PHẦN MỀM QUANG TRUNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0300591882', '1', '0');
INSERT INTO `ds_nt` VALUES ('709', 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ CHÂU VĨNH CƯỜNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0310460102', '1', '0');
INSERT INTO `ds_nt` VALUES ('710', 'Công ty cổ phần xây dựng và thương mại Hùng Sơn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0500464320', '1', '0');
INSERT INTO `ds_nt` VALUES ('711', 'Công ty cổ phần tư vấn đầu tư kiến trúc công trình VCOM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105289029', '1', '0');
INSERT INTO `ds_nt` VALUES ('712', 'NELINK VIET NAM COMPANY LIMITED', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0100872445', '1', '0');
INSERT INTO `ds_nt` VALUES ('713', 'Công ty Cổ phần Điện tử Công nghiệp CDC2', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105255703', '1', '0');
INSERT INTO `ds_nt` VALUES ('714', 'CÔNG TY CỔ PHẦN TUẤN ÂN MIỀN BẮC', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104953550', '1', '0');
INSERT INTO `ds_nt` VALUES ('715', 'Công Ty TNHH Máy Tính Trí Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102855389', '1', '0');
INSERT INTO `ds_nt` VALUES ('716', 'Công ty cổ phần TDG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103025506', '1', '0');
INSERT INTO `ds_nt` VALUES ('717', 'CÔNG TY TNHH MTV XÂY DỰNG LA THỊ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=3301322983', '1', '0');
INSERT INTO `ds_nt` VALUES ('718', 'CÔNG TY TNHH MỘT THÀNH VIÊN LÂM NGHIỆP SÀI GÒN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0300695842', '1', '0');
INSERT INTO `ds_nt` VALUES ('719', 'Công ty TNHH Mai Minh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5700657537', '1', '0');
INSERT INTO `ds_nt` VALUES ('720', 'Công ty TNHH Phương Công', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5700505005', '1', '0');
INSERT INTO `ds_nt` VALUES ('721', 'Công ty Cổ phần Hiếu Thảo', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5700610088', '1', '0');
INSERT INTO `ds_nt` VALUES ('722', 'DNTN  Xí nghiệp xây dựng Toàn Thắng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5700241514', '1', '0');
INSERT INTO `ds_nt` VALUES ('723', 'Công ty cổ phần xây dựng và dịch vụ thương mại Hải Ninh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5700597599', '1', '0');
INSERT INTO `ds_nt` VALUES ('724', 'Công ty TNHH Thương Mại và Dịch Vụ Hùng Thắng', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105244356', '1', '0');
INSERT INTO `ds_nt` VALUES ('725', 'Công ty Cổ phần Kiến trúc Xây dựng ACC Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101894145', '1', '0');
INSERT INTO `ds_nt` VALUES ('726', 'CÔNG TY TNHH MTV TƯ VẤN QUẢN LÝ THIẾT KẾ VÀ CÔNG NGHỆ TEDCOM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0313056787', '1', '0');
INSERT INTO `ds_nt` VALUES ('727', 'Công ty Cổ phần Thiết bị Vật tư Kỹ thuật An toàn TP.HCM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0312981118', '1', '0');
INSERT INTO `ds_nt` VALUES ('728', 'CÔNG TY TNHH XÂY DỰNG THỂ THAO THÀNH PHÁT', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0302603075', '1', '0');
INSERT INTO `ds_nt` VALUES ('729', 'Công ty TNHH xây dựng Phương Thảo', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2900629789', '1', '0');
INSERT INTO `ds_nt` VALUES ('730', 'Công ty cổ phần khảo sát thiết kế MEADI.Vn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2900645678', '1', '0');
INSERT INTO `ds_nt` VALUES ('731', 'Công ty TNHH Thương mại và xây dựng Việt Tiến', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0500567502', '1', '0');
INSERT INTO `ds_nt` VALUES ('732', 'Công ty cổ phần xây dựng giao thông AH', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0401671100', '1', '0');
INSERT INTO `ds_nt` VALUES ('733', 'CÔNG TY CỔ PHẦN DỊCH VỤ KỸ THUẬT XÂY DỰNG TRƯỜNG GIANG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105915526', '1', '0');
INSERT INTO `ds_nt` VALUES ('734', 'Công ty Cổ phần Đầu tư Xây dựng Việt Anh', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0103019656', '1', '0');
INSERT INTO `ds_nt` VALUES ('735', 'Công ty Cổ phần Xây dựng Trí đức QN', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5700381159', '1', '0');
INSERT INTO `ds_nt` VALUES ('736', 'Công ty TNHH Long Hải', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5700420344', '1', '0');
INSERT INTO `ds_nt` VALUES ('737', 'Công ty cổ phần tư vấn và phát triển xây dựng Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106514975', '1', '0');
INSERT INTO `ds_nt` VALUES ('738', 'Công ty Cổ phần Đầu tư và Tư vấn INCOMEX', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102355731', '1', '0');
INSERT INTO `ds_nt` VALUES ('739', 'Công ty Cổ phần Đầu tư và Xây dựng Bạch Đằng 8', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0200158996', '1', '0');
INSERT INTO `ds_nt` VALUES ('740', 'Công ty Cổ phần đầu tư và Xây dựng Thành Đô', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=013579', '1', '0');
INSERT INTO `ds_nt` VALUES ('741', 'Công ty CP đầu tư xây lắp thương mại và dịch vụ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101008816', '1', '0');
INSERT INTO `ds_nt` VALUES ('742', 'Công ty Cổ phần Tư vấn Đầu tư và Xây dựng Viễn thông T và H', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106799618', '1', '0');
INSERT INTO `ds_nt` VALUES ('743', 'Công ty Cổ phần Tư vấn Xây dựng VCC Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102957937', '1', '0');
INSERT INTO `ds_nt` VALUES ('744', 'Công ty TNHH một thành viên công nghệ Thăng Long Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105987922', '1', '0');
INSERT INTO `ds_nt` VALUES ('745', 'CÔNG TY TNHH TƯ VẤN XÂY DỰNG C VÀ T', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0313069585', '1', '0');
INSERT INTO `ds_nt` VALUES ('746', 'CÔNG TY CỔ PHẦN VẬN TẢI THƯƠNG MẠI XÂY DỰNG CÔNG NGHIỆP ĐỨC LONG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305311225', '1', '0');
INSERT INTO `ds_nt` VALUES ('747', 'Công ty cổ phần Vinaconex Dung Quất', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4300486846', '1', '0');
INSERT INTO `ds_nt` VALUES ('748', 'Công ty TNHH Công Nghệ Điện Tử Thanh Sơn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0308259742', '1', '0');
INSERT INTO `ds_nt` VALUES ('749', 'CÔNG TY TNHH MỘT THÀNH VIÊN TẤN KHÁNH HƯNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4300692045', '1', '0');
INSERT INTO `ds_nt` VALUES ('750', 'CÔNG TY TNHH KIỂM TOÁN ĐỊNH GIÁ VÀ TƯ VẤN TÀI CHÍNH VIỆT NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101937021', '1', '0');
INSERT INTO `ds_nt` VALUES ('751', 'Công ty Cổ phần Đầu tư và Xây dựng Bạch Đằng 8', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0200158996', '1', '0');
INSERT INTO `ds_nt` VALUES ('752', 'Công ty Cổ phần đầu tư và Xây dựng Thành Đô', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=013579', '1', '0');
INSERT INTO `ds_nt` VALUES ('753', 'Công ty CP đầu tư xây lắp thương mại và dịch vụ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101008816', '1', '0');
INSERT INTO `ds_nt` VALUES ('754', 'Công ty Cổ phần Tư vấn Đầu tư và Xây dựng Viễn thông T và H', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106799618', '1', '0');
INSERT INTO `ds_nt` VALUES ('755', 'Công ty Cổ phần Tư vấn Xây dựng VCC Hà Nội', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0102957937', '1', '0');
INSERT INTO `ds_nt` VALUES ('756', 'Công ty TNHH một thành viên công nghệ Thăng Long Việt', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105987922', '1', '0');
INSERT INTO `ds_nt` VALUES ('757', 'CÔNG TY TNHH TƯ VẤN XÂY DỰNG C VÀ T', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0313069585', '1', '0');
INSERT INTO `ds_nt` VALUES ('758', 'CÔNG TY CỔ PHẦN VẬN TẢI THƯƠNG MẠI XÂY DỰNG CÔNG NGHIỆP ĐỨC LONG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0305311225', '1', '0');
INSERT INTO `ds_nt` VALUES ('759', 'Công ty cổ phần Vinaconex Dung Quất', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4300486846', '1', '0');
INSERT INTO `ds_nt` VALUES ('760', 'Công ty TNHH Công Nghệ Điện Tư  333  ̉ Thanh Sơn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0308259742', '1', '0');
INSERT INTO `ds_nt` VALUES ('761', 'CÔNG TY TNHH MỘT THÀNH VIÊN TẤN KHÁNH HƯNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4300692045', '1', '0');
INSERT INTO `ds_nt` VALUES ('762', 'CÔNG TY TNHH KIỂM TOÁN ĐỊNH GIÁ VÀ TƯ VẤN TÀI CHÍNH VIỆT NAM', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0101937021', '1', '0');
INSERT INTO `ds_nt` VALUES ('763', 'CÔNG TY CỔ PHẦN TƯ VẤN GIÁM SÁT VÀ XÂY DỰNG THỦ ĐÔ', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106017405', '1', '0');
INSERT INTO `ds_nt` VALUES ('764', 'Công ty TNHH Thương Mại Sản Xuất Thiết Bị Điện Vinh Phong', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0312037598', '1', '0');
INSERT INTO `ds_nt` VALUES ('765', 'Công ty TNHH Chế tạo máy Việt Nam', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105328542', '1', '0');
INSERT INTO `ds_nt` VALUES ('766', 'Công ty cổ phần xây dựng Đức Tuấn', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=4903000104', '1', '0');
INSERT INTO `ds_nt` VALUES ('767', 'CÔNG TY TNHH THƯƠNG MẠI AN VƯƠNG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=2700277586', '1', '0');
INSERT INTO `ds_nt` VALUES ('768', 'Công ty Cổ phần IUNI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0106571719', '1', '0');
INSERT INTO `ds_nt` VALUES ('769', 'CÔNG TY TNHH THÀNH LONG', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=5000207973', '1', '0');
INSERT INTO `ds_nt` VALUES ('770', 'CÔNG TY CỔ PHẦN ĐẦU TƯ PHÁT TRIỂN VINA HÀ NỘI', '/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0105423838', '1', '0');

-- ----------------------------
-- Table structure for `kqdt_tt`
-- ----------------------------
DROP TABLE IF EXISTS `kqdt_tt`;
CREATE TABLE `kqdt_tt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ben_mt` varchar(255) DEFAULT NULL,
  `ten_goi_thau` varchar(255) DEFAULT NULL,
  `thoi_diem_dong_thau` varchar(100) DEFAULT NULL,
  `nt_trung_thau` varchar(255) DEFAULT NULL,
  `gia_trung_thau` varchar(100) DEFAULT NULL,
  `gia_goi_thau` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  `so_tbmt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kqdt_tt
-- ----------------------------

-- ----------------------------
-- Table structure for `kqmt_dt`
-- ----------------------------
DROP TABLE IF EXISTS `kqmt_dt`;
CREATE TABLE `kqmt_dt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `so_tbmt` varchar(50) DEFAULT NULL,
  `ten_goi_thau` varchar(255) DEFAULT NULL,
  `ben_mt` varchar(255) DEFAULT NULL,
  `thoi_gian` varchar(100) DEFAULT NULL,
  `so_nt` int(11) DEFAULT NULL,
  `trang_thai` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kqmt_dt
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
-- Table structure for `route`
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL COMMENT 'Thong bao moi thau | Ket qua dau dau...',
  `url` tinytext,
  `active` int(3) DEFAULT '1',
  `page_no` int(11) DEFAULT '0',
  `page_total` int(11) DEFAULT '0',
  `done` int(3) DEFAULT '0',
  `last_time` int(11) DEFAULT '0',
  `new_page` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES ('1', '1', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '4', '10552', '0', '1437615408', '0');
INSERT INTO `route` VALUES ('2', '1', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '0', '0', '0', '1436847463', '0');
INSERT INTO `route` VALUES ('3', '1', 'KET_QUA_MO_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/servlet/GC/EP_MPV_GCQ412', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('4', '1', 'KET_QUA_DAU_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/NC/EP_COJ_NCQ812.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('5', '1', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('6', '3', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('7', '3', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('8', '3', 'KET_QUA_MO_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/servlet/GC/EP_SSV_GCQ402', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('9', '3', 'KET_QUA_DAU_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/NC/EP_COJ_NCQ812.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('10', '3', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('11', '5', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '0', '0', '0', '1437195524', '0');
INSERT INTO `route` VALUES ('12', '5', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('13', '5', 'KET_QUA_MO_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/servlet/GC/EP_YYV_GCQ412', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('14', '5', 'KET_QUA_DAU_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/NC/EP_COJ_NCQ812.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('15', '5', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('16', '10', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('17', '10', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('20', '10', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('21', '15', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('22', '15', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('23', '15', 'KET_QUA_MO_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/servlet/GC/EP_NCJ_GCQ412', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('24', '15', 'KET_QUA_DAU_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/NC/EP_COJ_NCQ812.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('25', '15', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route` VALUES ('26', null, null, null, '1', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `route_`
-- ----------------------------
DROP TABLE IF EXISTS `route_`;
CREATE TABLE `route_` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL COMMENT 'Thong bao moi thau | Ket qua dau dau...',
  `url` tinytext,
  `active` int(3) DEFAULT '1',
  `page_no` int(11) DEFAULT '0',
  `page_total` int(11) DEFAULT '0',
  `done` int(3) DEFAULT '0',
  `last_time` int(11) DEFAULT '0',
  `new_page` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of route_
-- ----------------------------
INSERT INTO `route_` VALUES ('1', '1', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '13', '10541', '0', '1436819446', '0');
INSERT INTO `route_` VALUES ('2', '1', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '26', '26', '1', '1436821685', '0');
INSERT INTO `route_` VALUES ('3', '1', 'KET_QUA_MO_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/servlet/GC/EP_MPV_GCQ412', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('4', '1', 'KET_QUA_DAU_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/NC/EP_COJ_NCQ812.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('5', '1', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('6', '3', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('7', '3', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '4', '24', '0', '0', '0');
INSERT INTO `route_` VALUES ('8', '3', 'KET_QUA_MO_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/servlet/GC/EP_SSV_GCQ402', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('9', '3', 'KET_QUA_DAU_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/NC/EP_COJ_NCQ812.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('10', '3', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('11', '5', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('12', '5', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('13', '5', 'KET_QUA_MO_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/servlet/GC/EP_YYV_GCQ412', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('14', '5', 'KET_QUA_DAU_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/NC/EP_COJ_NCQ812.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('15', '5', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('16', '10', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('17', '10', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('20', '10', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('21', '15', 'THONG_BAO_MOI_THAU', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('22', '15', 'THONG_BAO_MOI_THAU_QUOC_TE', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ7011.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('23', '15', 'KET_QUA_MO_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/servlet/GC/EP_NCJ_GCQ412', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('24', '15', 'KET_QUA_DAU_THAU_DIEN_TU', 'http://muasamcong.mpi.gov.vn:8082/NC/EP_COJ_NCQ812.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('25', '15', 'KET_QUA_DAU_THAU_TRUC_TIEP', 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ803.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `route_` VALUES ('26', null, null, null, '1', '0', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of source
-- ----------------------------
INSERT INTO `source` VALUES ('1', 'http://muasamcong.mpi.gov.vn:8070/AD/UM_ADJ_ConrA010l1.jsp', '1', '0', '0', '0', '0', '0');
INSERT INTO `source` VALUES ('2', 'http://muasamcong.mpi.gov.vn:8070/RA/UM_RAJ_GovuC011l1.jsp', '2', '0', '0', '0', '0', '0');
INSERT INTO `source` VALUES ('3', 'http://muasamcong.mpi.gov.vn/notice/PT_NTJ_NTQ001.jsp?type=P', '3', '0', '0', '0', '0', '0');
INSERT INTO `source` VALUES ('4', 'http://muasamcong.mpi.gov.vn/notice/PT_NTJ_NTQ001.jsp?type=G', '4', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `tbmt`
-- ----------------------------
DROP TABLE IF EXISTS `tbmt`;
CREATE TABLE `tbmt` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmt
-- ----------------------------

-- ----------------------------
-- Table structure for `tbmt_qt`
-- ----------------------------
DROP TABLE IF EXISTS `tbmt_qt`;
CREATE TABLE `tbmt_qt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `so_tbmt` varchar(50) DEFAULT NULL,
  `ben_mt` varchar(255) DEFAULT NULL,
  `ten_goi_thau` varchar(255) DEFAULT NULL,
  `thoi_gian` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmt_qt
-- ----------------------------

-- ----------------------------
-- Table structure for `tbmt_temp`
-- ----------------------------
DROP TABLE IF EXISTS `tbmt_temp`;
CREATE TABLE `tbmt_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` tinytext,
  `tbmt_id` int(11) DEFAULT NULL,
  `so_tbmt` varchar(255) DEFAULT NULL,
  `type` int(3) DEFAULT '0' COMMENT '1:tbmt | 2:tbmt_qt',
  `category` int(11) DEFAULT '0',
  `done` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmt_temp
-- ----------------------------
INSERT INTO `tbmt_temp` VALUES ('1', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707061&bid_turnno=00&bid_type=1', null, '20150707061-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('2', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707060&bid_turnno=00&bid_type=1', null, '20150707060-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('3', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707059&bid_turnno=00&bid_type=1', null, '20150707059-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('4', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707058&bid_turnno=00&bid_type=1', null, '20150707058-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('5', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707057&bid_turnno=00&bid_type=1', null, '20150707057-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('6', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707056&bid_turnno=00&bid_type=1', null, '20150707056-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('7', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707055&bid_turnno=00&bid_type=1', null, '20150707055-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('8', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707054&bid_turnno=00&bid_type=1', null, '20150707054-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('9', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707053&bid_turnno=00&bid_type=1', null, '20150707053-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('10', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707061&bid_turnno=00&bid_type=1', null, '20150707061-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('11', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707060&bid_turnno=00&bid_type=1', null, '20150707060-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('12', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707059&bid_turnno=00&bid_type=1', null, '20150707059-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('13', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707058&bid_turnno=00&bid_type=1', null, '20150707058-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('14', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707057&bid_turnno=00&bid_type=1', null, '20150707057-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('15', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707056&bid_turnno=00&bid_type=1', null, '20150707056-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('16', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707055&bid_turnno=00&bid_type=1', null, '20150707055-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('17', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707054&bid_turnno=00&bid_type=1', null, '20150707054-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('18', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707053&bid_turnno=00&bid_type=1', null, '20150707053-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('19', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707061&bid_turnno=00&bid_type=1', null, '20150707061-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('20', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707060&bid_turnno=00&bid_type=1', null, '20150707060-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('21', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707059&bid_turnno=00&bid_type=1', null, '20150707059-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('22', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707058&bid_turnno=00&bid_type=1', null, '20150707058-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('23', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707057&bid_turnno=00&bid_type=1', null, '20150707057-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('24', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707056&bid_turnno=00&bid_type=1', null, '20150707056-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('25', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707055&bid_turnno=00&bid_type=1', null, '20150707055-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('26', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707054&bid_turnno=00&bid_type=1', null, '20150707054-00', '1', '1', '0');
INSERT INTO `tbmt_temp` VALUES ('27', 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150707053&bid_turnno=00&bid_type=1', null, '20150707053-00', '1', '1', '0');

-- ----------------------------
-- Table structure for `tb_bmt`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bmt`;
CREATE TABLE `tb_bmt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieu_de` varchar(255) DEFAULT NULL,
  `co_quan` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(100) DEFAULT NULL,
  `noi_dung` text,
  `so_lan_xem` varchar(50) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `phan_loai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bmt
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_khdt`
-- ----------------------------
DROP TABLE IF EXISTS `tb_khdt`;
CREATE TABLE `tb_khdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tieu_de` varchar(255) DEFAULT NULL,
  `co_quan` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(100) DEFAULT NULL,
  `noi_dung` text,
  `so_lan_xem` varchar(50) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `phan_loai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_khdt
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_temp`
-- ----------------------------
DROP TABLE IF EXISTS `tb_temp`;
CREATE TABLE `tb_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` tinytext,
  `done` int(3) DEFAULT '0',
  `type` int(3) DEFAULT '0' COMMENT '3: TB bộ KHĐT | 4:TB của bên mời thầu',
  `tieu_de` varchar(255) DEFAULT NULL,
  `co_quan` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(100) DEFAULT NULL,
  `so_lan_xem` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_temp
-- ----------------------------

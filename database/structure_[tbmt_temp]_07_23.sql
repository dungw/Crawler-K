ALTER TABLE `tbmt_temp`
ADD COLUMN `so_tbmt`  varchar(255) NULL AFTER `done`;

ALTER TABLE `tbmt_temp`
ADD COLUMN `type`  int(3) NULL DEFAULT 0 COMMENT '1:tbmt | 2:tbmt_qt' AFTER `so_tbmt`;

ALTER TABLE `tbmt_temp`
ADD COLUMN `category`  int(11) NULL DEFAULT 0 AFTER `type`;

ALTER TABLE `tbmt`
DROP COLUMN `ben_mt`,
DROP COLUMN `ten_goi_thau`,
DROP COLUMN `thoi_gian`,
ADD COLUMN `loai_tb`  varchar(100) NULL AFTER `category`,
ADD COLUMN `linh_vuc`  varchar(100) NULL AFTER `loai_tb`,
ADD COLUMN `hinh_thuc_tb`  varchar(100) NULL AFTER `linh_vuc`,
ADD COLUMN `goi_thau`  tinytext NULL AFTER `hinh_thuc_tb`,
ADD COLUMN `thuoc_du_an`  tinytext NULL AFTER `goi_thau`,
ADD COLUMN `nguon_von`  varchar(255) NULL AFTER `thuoc_du_an`,
ADD COLUMN `ben_mt`  varchar(255) NULL AFTER `nguon_von`,
ADD COLUMN `hinh_thuc_lua_chon`  varchar(255) NULL AFTER `ben_mt`,
ADD COLUMN `tg_ban_hs_tu`  varchar(100) NULL AFTER `hinh_thuc_lua_chon`,
ADD COLUMN `tg_ban_hs_den`  varchar(100) NULL AFTER `tg_ban_hs_tu`,
ADD COLUMN `dia_diem`  tinytext NULL AFTER `tg_ban_hs_den`,
ADD COLUMN `gia_ban`  varchar(100) NULL AFTER `dia_diem`,
ADD COLUMN `han_cuoi_nhan_hs`  varchar(100) NULL AFTER `gia_ban`,
ADD COLUMN `hs_moi_thau`  varchar(100) NULL AFTER `han_cuoi_nhan_hs`,
ADD COLUMN `temp_id`  int(11) NULL AFTER `hs_moi_thau`;




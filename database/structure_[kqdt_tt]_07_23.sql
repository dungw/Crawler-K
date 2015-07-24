ALTER TABLE `kqdt_tt`
ADD COLUMN `ten_du_an`  varchar(255) NULL AFTER `so_tbmt`,
ADD COLUMN `hinh_thuc_lua_chon`  varchar(255) NULL AFTER `ten_du_an`,
ADD COLUMN `hinh_thuc_hop_dong`  varchar(100) NULL AFTER `hinh_thuc_lua_chon`,
ADD COLUMN `thoi_gian_thuc_hien`  varchar(50) NULL AFTER `hinh_thuc_hop_dong`,
ADD COLUMN `van_ban_phe_duyet`  varchar(255) NULL AFTER `thoi_gian_thuc_hien`,
ADD COLUMN `thoi_diem_hoan_thanh`  varchar(100) NULL AFTER `van_ban_phe_duyet`,
ADD COLUMN `kqdt_tt_id`  int(11) NULL AFTER `thoi_diem_hoan_thanh`;


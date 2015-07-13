<meta content=text/html" charset="utf-8">
<meta http-equiv="refresh" content="100" />
<?php
require 'config.php';


/***************** CONFIG ******************/ 
$tblSource = 'temp_item_tbmt';
$tblTarget = 'thong_bao_moi_thau_dien_tu';
/***************** CONFIG ******************/


$query = 'SELECT * FROM '. $tblSource .' WHERE tpr_status = 0 AND tpr_form = "DT" LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {
	
	
	/****************** BID ID ********************/
	if ($row['tpr_type'] == 'HH') {
		$bidType = 1;
	} else if ($row['tpr_type'] == 'XL') {
		$bidType = 3;
	} else if ($row['tpr_type'] == 'TV') {
		$bidType = 5;
	} else if ($row['tpr_type'] == 'EPC') {
		$bidType = 10;
	}
	/****************** BID ID ********************/
	
	
	$url = 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no='. $row['tpr_msc_id'] .'&bid_turnno='. $row['tpr_msc_no'] .'&bid_type='. $bidType;
	$msg = '[URL] : <a style="text-decoration: underline;" href="'. $url .'" target="_blank">' . $url . '</a><br>';
	$html = getHTML($url, 0, 8081);
	
	/*** DATA */
	$dTable = $html->find('table[class=tr]');
	$dTdLabel = $html->find('td[class=tdlabel]');
	$dTdControl = $html->find('td[class=tdcontrol]');
	
	// Reset array
	foreach ($dTdControl as $k => $c) {
		if ($c->colspan == 2) {
			unset($dTdControl[$k]);
			$dTdControl = array_values($dTdControl);
		}
	}
	
	if (!empty($dTdLabel)) {
		foreach ($dTdLabel as $k => $label) {
			
			$txtLabel = trim($label->plaintext);
			$txtControl = addslashes($dTdControl[$k]->plaintext);
			$txtControl = str_replace('&nbsp;', '', $txtControl);
			$txtControl = trim($txtControl);
			
			// Type
			$data['type'] = '"' . $row['tpr_type'] . '"';
			$data['newid'] = $row['tpr_newid'];
			
			if (strpos('F' . $txtLabel, 'Số TBMT')) {
				$data['So_TBMT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hình thức thông báo')) {
				$data['Hinh_thuc_thong_bao'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Loại thông báo')) {
				$data['Loai_thong_bao'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Lĩnh vực thông báo')) {
				$data['Linh_vuc_thong_bao'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Bên mời thầu')) {
				$data['Ben_moi_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Chủ đầu tư')) {
				$data['Chu_dau_tu'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên gói thầu')) {
				$data['Ten_goi_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên dự án')) {
				$data['Ten_du_an'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Số văn bản')) {
				$data['So_van_ban'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Nguồn vốn')) {
				$data['Nguon_von'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Phương thức hợp đồng')) {
				$data['Phuong_thuc_hop_dong'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hình thức đấu thầu')) {
				$data['Hinh_thuc_dau_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hình thức nhận HSDT')) {
				$data['Hinh_thuc_nhan_HSDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thời gian nhận HSDT từ ngày')) {
				$data['Thoi_gian_nhan_HSDT_tu'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Đến ngày')) {
				$data['Thoi_gian_nhan_HSDT_den'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Mua hồ sơ mời thầu')) {
				$data['Mua_ho_so_moi_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Số tiền')) {
				$data['So_tien'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Số tiền bằng chữ')) {
				$data['So_tien_bang_chu_TDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên ngân hàng')) {
				$data['Ten_ngan_hang_TDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Số tài khoản nhận tiền')) {
				$data['So_tai_khoan_nhan_tien_TDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên tài khoản')) {
				$data['Ten_tai_khoan_TDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Địa điểm nộp tiền mua HSMT')) {
				$data['Dia_diem_nop_tien_mua_HSMT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Địa điểm nhận HSDT')) {
				$data['Dia_diem_nhan_HSDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hình thức')) {
				$data['Hinh_thuc'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên ngân hàng')) {
				$data['Ten_ngan_hang_BDDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Số tài khoản nhận tiền')) {
				$data['So_tai_khoan_nhan_tien_BDDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên tài khoản')) {
				$data['Ten_tai_khoan_BDDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Địa điểm nộp tiền')) {
				$data['Dia_diem_nop_tien_BDDT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Kiểu liên danh')) {
				$data['Kieu_lien_danh'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thời điểm kết thúc nộp')) {
				$data['Thoi_diem_ket_thuc_nop'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thời điểm mở thầu')) {
				$data['Thoi_diem_mo_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Địa điểm mở thầu')) {
				$data['Dia_diem_mo_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Giá gói thầu')) {
				$data['Gia_goi_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Số tiền bằng chữ')) {
				$data['So_tien_bang_chu'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Loại tiền chuyển đổi')) {
				$data['Loai_tien_chuyen_doi'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tại ngân hàng')) {
				$data['Tai_ngan_hang'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thời điểm lấy tỉ giá')) {
				$data['Thoi_diem_lay_ti_gia'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hồ sơ mời thầu')) {
				$arrDoc = $dTdControl[$k]->find('a');
				if (!empty($arrDoc)) {
					foreach ($arrDoc as $doc) {
						$href = $doc->href;
						$tmp = explode('"', $href);
						$tmp1 = explode('"', $tmp[1]);
						print $tmp1[0] . '<br>';
					}
				}
				
				$data['Ho_so_moi_thau'] = '"' . $txtControl . '"';
				
			}
		}
	}
	
	// Insert into database
	if (!empty($data)) {
		$id = intoSeek($tblTarget, $data);
		if ($id > 0) {
			$msg .= 'Thêm 1 thông báo mời thầu';
			
			// Update success
			$upt['tpr_status'] = 1;
			updateDB($tblSource, 'tpr_id', $row['tpr_id'], $upt);
		} else {
			$msg .= 'Không lấy được dữ liệu hoặc lỗi SQL';
			
			// Update error
			$upt['tpr_status'] = 9;
			updateDB($tblSource, 'tpr_id', $row['tpr_id'], $upt);
		}
	} else {
		$msg .= 'Không lấy được dữ liệu hoặc lỗi SQL';
		
		// Update error
		$upt['tpr_status'] = 9;
		updateDB($tblSource, 'tpr_id', $row['tpr_id'], $upt);
	}
	
} else {
	$msg = 'Hết dữ liệu';
}

alertB($msg);
dump($data);
unset($db);
unset($html);





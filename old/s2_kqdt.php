<meta content=text/html" charset="utf-8">
<meta http-equiv="refresh" content="200" />
<?php
require 'config.php';

$tbl = 'temp_item_kqdt';

$query = 'SELECT * FROM '. $tbl .' WHERE tpr_status = 0 LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {
	
	$url = 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ902.jsp?bidNo='. $row['tpr_msc_id'] .'&bidTurnNo='. $row['tpr_msc_no'] .'&bidType=1';
	$msg = '[URL] : <a style="text-decoration: underline;" href="'. $url .'" target="_blank">' . $url . '</a><br>';
	$html = getHTML($url);
	
	/*** DATA */
	$dataMain['type'] = '"' . $row['tpr_type'] . '"';
	
	$dTdLabel = $html->find('td[class=tda]');
	$dTdControl = $html->find('td[class=tdb]');
	
	if (!empty($dTdLabel)) {
		foreach ($dTdLabel as $k => $label) {
			$txtLabel = trim($label->plaintext);
			$txtControl = addslashes($dTdControl[$k]->plaintext);
			$txtControl = str_replace('&nbsp;', '', $txtControl);
			$txtControl = trim($txtControl);
			
			if (strpos('F' . $txtLabel, 'Số TBMT')) {
				$dataMain['So_TBMT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên gói thầu')) {
				$dataMain['Ten_goi_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên dự án')) {
				$dataMain['Ten_du_an'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Chủ đấu tư')) {
				$dataMain['Chu_dau_tu'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hình thức lựa chọn NT')) {
				$dataMain['Hinh_thuc_lua_chon_NT'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Giá gói thầu')) {
				$dataMain['Gia_goi_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thời điểm đóng thầu')) {
				$dataMain['Thoi_diem_dong_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Nhà thầu trúng thầu')) {
				$dataMain['Nha_thau_trung_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Giá trúng thầu')) {
				$dataMain['Gia_trung_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hình thức hợp đồng')) {
				$dataMain['Hinh_thuc_hop_dong'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thời gian thực hiện HĐ')) {
				$dataMain['Thoi_gian_thuc_hien_HD'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Văn bản phê duyệt')) {
				$dataMain['Van_ban_phe_duyet'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Lý do chọn NT trúng thầu')) {
				$dataMain['Ly_do_chon_NT_trung_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thời điểm hoàn thành')) {
				$dataMain['Thoi_diem_hoan_thanh'] = '"' . $txtControl . '"';
			}
		}
	}
	
	
	// Insert into database
	if (!empty($data)) {
		$id = intoSeek('ket_qua_dau_thau_info', $dataMain);
		if ($id > 0) {
			$msg .= 'Thêm 1 thông báo mời thầu';
			
			// Update success
			$upt['tpr_status'] = 1;
			$upt['tpr_newid'] = $id;
			updateDB($tbl, 'tpr_id', $row['tpr_id'], $upt);
		} else {
			$msg .= 'Không lấy được dữ liệu hoặc lỗi SQL';
			
			// Update error
			$upt['tpr_status'] = 9;
			updateDB($tbl, 'tpr_id', $row['tpr_id'], $upt);
		}
	} else {
		$msg .= 'Không lấy được dữ liệu hoặc lỗi SQL';
		
		// Update error
		$upt['tpr_status'] = 9;
		updateDB($tbl, 'tpr_id', $row['tpr_id'], $upt);
	}
	
} else {
	$msg = 'Hết dữ liệu';
}

alertB($msg);
dump($dataMain);
unset($db);
unset($html);





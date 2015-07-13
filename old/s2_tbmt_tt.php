<meta content=text/html" charset="utf-8">
<meta http-equiv="refresh" content="100" />
<?php
require 'config.php';

$url = 'http://muasamcong.mpi.gov.vn:8082/GG/EP_SSJ_GGQ701.jsp?toOpenDate=31/12/2050&pqCls=Y&refNumber=&toDate='. date('d/m/Y') .'&fromDate='. (intval(date('d')) - 1) . date('/m/Y') .'&bidMethod=&typeFind=1&isInstitu=0&viewType=0&fromOpenDate=01/01/2010&instituCode=&instituName=&firstCall=N&pageSize=10&bidNM=&pageNo=&gubun=1&gubun=1&page_no=91';

/***************** CONFIG ******************/ 
$tblSource = 'temp_item_tbmt';
$tblTarget = 'thong_bao_moi_thau_truc_tiep';
/***************** CONFIG ******************/


$query = 'SELECT * FROM '. $tblSource .' WHERE tpr_status = 0 AND tpr_form = "TT" LIMIT 1';
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
			} else if (strpos('F' . $txtLabel, 'Loại thông báo')) {
				$data['Loai_thong_bao'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hình thức thông báo')) {
				$data['Hinh_thuc_thong_bao'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Lĩnh vực thông báo')) {
				$data['Linh_vuc_thong_bao'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Gói thầu')) {
				$data['Goi_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thuộc dự án')) {
				$data['Thuoc_du_an'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Nguồn vốn')) {
				$data['Nguon_von'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Bên mời thầu')) {
				$data['Ben_moi_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hình thức lựa chọn nhà thầu')) {
				$data['Hinh_thuc_lua_chon_nha_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thời gian bán HSMT từ')) {
				$data['Thoi_gian_ban_HSMT_tu_ngay'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Đến ngày')) {
				$data['Thoi_gian_ban_HSMT_den_ngay'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Địa điểm')) {
				$data['Dia_diem'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Giá bán')) {
				$data['Gia_ban'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Thời điểm đóng thầu')) {
				$data['Thoi_diem_dong_thau'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Hồ sơ mời thầu')) {
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





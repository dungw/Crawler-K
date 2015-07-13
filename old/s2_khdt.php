<meta content=text/html" charset="utf-8">
<meta http-equiv="refresh" content="200" />
<?php
require 'config.php';

$query = 'SELECT * FROM temp_item_khdt WHERE tpr_status = 0 LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {
	
	$url = 'http://muasamcong.mpi.gov.vn:8082/BP/EP_EPJ_BPP102.jsp?actions=&project_plan_id='. $row['tpr_msc_id'];
	//$url = 'http://muasamcong.mpi.gov.vn:8082/BP/EP_EPJ_BPP102.jsp?actions=&project_plan_id=33196';
	$msg = '[URL] : <a style="text-decoration: underline;" href="'. $url .'" target="_blank">' . $url . '</a><br>';
	$html = getHTML($url);
	
	/*** DATA */
	$dTdLabel = $html->find('td[class=tda]');
	$dTdControl = $html->find('td[class=tdb]');
	
	if (!empty($dTdLabel)) {
		foreach ($dTdLabel as $k => $label) {
			$txtLabel = trim($label->plaintext);
			$txtControl = addslashes($dTdControl[$k]->plaintext);
			$txtControl = str_replace('&nbsp;', '', $txtControl);
			$txtControl = trim($txtControl);
			
			if (strpos('F' . $txtLabel, 'Loại thông báo')) {
				$dataMain['Loai_thong_bao'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên dự án')) {
				$dataMain['Ten_du_an'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tên chủ đầu tư')) {
				$dataMain['Ten_chu_dau_tu'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Phân loại')) {
				$dataMain['Phan_loai'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Cơ quan ban hành')) {
				$dataMain['Co_quan_ban_hanh'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Số văn bản ban hành')) {
				$dataMain['So_van_ban_ban_hanh'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Ngày ban hành')) {
				$dataMain['Ngay_ban_hanh'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Tổng mức đầu tư')) {
				$dataMain['Tong_muc_dau_tu'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Cơ quan phê duyệt')) {
				$dataMain['Co_quan_phe_duyet'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Số văn bản phê duyệt')) {
				$dataMain['So_van_ban_phe_duyet'] = '"' . $txtControl . '"';
			} else if (strpos('F' . $txtLabel, 'Ngày phê duyệt')) {
				$dataMain['Ngay_phe_duyet'] = '"' . $txtControl . '"';
			}
		}
	}
	
	// Gói thầu
	$trDom = $html->find('div[class^=col-750] table', 2)->find('tr');
	if (!empty($trDom)) {
		unset($trDom[0]);
		unset($trDom[1]);
		$i = 0;
		
		foreach ($trDom as $tr) {
			$i++;
			$tdDom = $tr->find('td');
			if (!empty($tdDom)) {
				$c = 0;
				foreach ($tdDom as $td) {
					$c++;
					switch ($c) {
						case 2: $data[$i]['So_hieu_goi_thau'] = '"' . trim($td->plaintext) . '"'; break;
						case 3: $data[$i]['Ten_goi_thau'] = '"' . trim($td->plaintext) . '"'; break;
						case 4: $data[$i]['Gia_goi_thau'] = '"' . trim($td->plaintext) . '"'; break;
						case 5: $data[$i]['Nguon_von'] = '"' . trim($td->plaintext) . '"'; break;
						case 6: $data[$i]['Hinh_thuc_lua_chon_NT'] = '"' . trim($td->plaintext) . '"'; break;
						case 7: $data[$i]['Thoi_gian_lua_chon_NT'] = '"' . trim($td->plaintext) . '"'; break;
						case 8: $data[$i]['Hinh_thuc_HD'] = '"' . trim($td->plaintext) . '"'; break;
						case 9: $data[$i]['Thoi_gian_thuc_hien_HD'] = '"' . trim($td->plaintext) . '"'; break;
					}
				} 
			}
					
		}
	}
	
	// Phân trang gói thầu
	$tmp = $html->find('td[class=page]', 0)->plaintext;
	$tmp1 = explode(':', $tmp);
	$total = intval($tmp1[1]);
	
	if ($total > 10) {
		$numPage = intval($total / 10) + 1;
		for ($page = 2;$page <= $numPage;$page++) {
			$newUrl = $url . '&page_no=' . $page;
			$newHtml = getHTML($newUrl);
			
			$trDom = $newHtml->find('div[class^=col-750] table', 2)->find('tr');
			if (!empty($trDom)) {
				unset($trDom[0]);
				unset($trDom[1]);
				foreach ($trDom as $tr) {
					$i++;
					$tdDom = $tr->find('td');
					if (!empty($tdDom)) {
						$c = 0;
						foreach ($tdDom as $td) {
							$c++;
							switch ($c) {
								case 2: $data[$i]['So_hieu_goi_thau'] = '"' . trim($td->plaintext) . '"';
								case 3: $data[$i]['Ten_goi_thau'] = '"' . trim($td->plaintext) . '"';
								case 4: $data[$i]['Gia_goi_thau'] = '"' . trim($td->plaintext) . '"';
								case 5: $data[$i]['Nguon_von'] = '"' . trim($td->plaintext) . '"';
								case 6: $data[$i]['Hinh_thuc_lua_chon_NT'] = '"' . trim($td->plaintext) . '"';
								case 7: $data[$i]['Thoi_gian_lua_chon_NT'] = '"' . trim($td->plaintext) . '"';
								case 8: $data[$i]['Hinh_thuc_HD'] = '"' . trim($td->plaintext) . '"';
								case 9: $data[$i]['Thoi_gian_thuc_hien_HD'] = '"' . trim($td->plaintext) . '"';
							}
						} 
					}
							
				}
			}
		}
	}
	
	// Insert into database
	if (!empty($dataMain)) {
		$id = intoSeek('ke_hoach_dau_thau', $dataMain);
		if ($id > 0) {
			$msg .= 'Thêm 1 kế hoạch đấu thầu';
			
			// Insert goi thau
			if (!empty($data)) {
				foreach ($data as $key => $item) {
					$data[$key]['khdt_id'] = $id;
				}
				intoSeeks('goi_thau', $data);
			}
			
			// Update success
			$upt['tpr_status'] = 1;
			$upt['tpr_newid'] = $id;
			updateDB('temp_item_khdt', 'tpr_id', $row['tpr_id'], $upt);
		} else {
			$msg .= 'Không lấy được dữ liệu hoặc lỗi SQL';
			
			// Update error
			$upt['tpr_status'] = 9;
			updateDB('temp_item_khdt', 'tpr_id', $row['tpr_id'], $upt);
		}
	} else {
		$msg .= 'Không lấy được dữ liệu hoặc lỗi SQL';
		
		// Update error
		$upt['tpr_status'] = 9;
		updateDB('temp_item_khdt', 'tpr_id', $row['tpr_id'], $upt);
	}
	
} else {
	$msg = 'Hết dữ liệu';
}

alertB($msg);
dump($data);
unset($db);
unset($html);





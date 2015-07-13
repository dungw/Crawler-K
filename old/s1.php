<meta content="text/html" charset="utf-8">
<meta http-equiv="refresh" content="100" />
<?php
require 'config.php';

// Vars
$data = array();

$query = 'SELECT * FROM temp_list WHERE lis_status = 0 LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {
	$url = $row['lis_url'];
	
	$page = $row['lis_page'] + 1;
	if ($page <= $row['lis_total_page'] || $page == 1) {
		$url .= '&page_no=' . $page;
		
		$msg = '[URL] : <a style="text-decoration: underline;" href="'. $url .'" target="_blank">' . $url . '</a><br>';
		$html = getHTML($url, 0, 8082);
		
		// THONG BAO MOI THAU
		if ($row['lis_type'] == 'TBMT_HH' || $row['lis_type'] == 'TBMT_XL' || $row['lis_type'] == 'TBMT_TV' || $row['lis_type'] == 'TBMT_EPC') {
			$domList = $html->find('table[cellpadding=2]', 0)->find('tr');
			
			// TYPE
			$ttmp = explode('_', $row['lis_type']);
			$Type = $ttmp[1];
			
			unset($domList[count($domList)-1]);
			unset($domList[0]);
			unset($domList[1]);
			
			if (!empty($domList)) {
				$i = 0;
				foreach ($domList as $itemList) {
					$i++;
					$arrTd = $itemList->find('td');
					$count = 0;
					foreach ($arrTd as $td) {
						switch ($count) {
							case 1: $dataTBMT['So_TBMT'] = '"' . trim(addslashes($td->plaintext)) . '"'; $Code = trim($td->plaintext); break;
							case 2: $dataTBMT['Chu_dau_tu'] = '"' . trim(addslashes($td->plaintext)) . '"'; break;
							case 3: $dataTBMT['Ten_goi_thau'] = '"' . trim(addslashes($td->plaintext)) . '"'; break;
							case 4: $dataTBMT['Thoi_diem_dang_tai'] = '"' . trim(addslashes($td->plaintext)) . '"'; break;
							case 5: $dataTBMT['Thoi_diem_dong_thau'] = '"' . trim(addslashes($td->plaintext)) . '"'; break;
							case 6: $dataTBMT['Hinh_thuc_du_thau'] = '"' . trim(addslashes($td->plaintext)) . '"'; break;
						}
						$count++;
					}
					
					// Insert into TBMT table
					$dataTBMT['type'] = '"' . $Type . '"';
					$tbmtID = intoSeek('thong_bao_moi_thau', $dataTBMT);
					
					// Data temp_item
					$tmp = explode('-', $Code);
					$data[$i]['tpr_msc_id'] = trim($tmp[0]);
					$data[$i]['tpr_msc_no'] = '"' . trim($tmp[1]) . '"';
					$data[$i]['tpr_type'] = '"' . $Type . '"';
					$data[$i]['tpr_lis_id'] = $row['lis_id'];
					$data[$i]['tpr_newid'] = $tbmtID;
					if ($dataTBMT['Hinh_thuc_du_thau'] == '"Trực tiếp"') {
						$data[$i]['tpr_form'] = '"TT"';
					} else if ($dataTBMT['Hinh_thuc_du_thau'] == '"Điện tử"') {
						$data[$i]['tpr_form'] = '"DT"';
					}
				}
			}
			
			// Insert into database
			if (!empty($data)) {
				intoSeeks('temp_item_tbmt', $data);
			}
		} 
		// KE HOACH DAU THAU 
		else if ($row['lis_type'] == 'KHDT') {
			$domList = $html->find('form[name=ebidView] table[cellpadding=2]', 0)->find('tr');
			if (!empty($domList)) {
				$i = 0;
				foreach ($domList as $list) {
					$temp = $list->find('a', 0);
					if ($temp) {
						$i++;
						$href = $temp->href;
						$tmp1 = explode('(', $href);
						$tmp2 = explode(')', $tmp1[1]);
						$data[$i]['tpr_msc_id'] = $tmp2[0];
						$data[$i]['tpr_lis_id'] = $row['lis_id'];
					}
				}
			}
			
			// Insert into database
			if (!empty($data)) {
				intoSeeks('temp_item_khdt', $data);
			}
		}
		// KET QUA MO THAU --- ERROR
		else if ($row['lis_type'] == 'KQMT') {
			$dTr = $html->find('table[class=tr]', 1)->find('tr');
			if (!empty($dTr)) {
				unset($dTr[0]);
				unset($dTr[1]);
				unset($dTr[2]);
				$i = 0;
				foreach ($dTr as $tr) {
					$i++;
					$dTd = $tr->find('td');
					if (!empty($dTd)) {
						$c = 0;
						foreach ($dTd as $td) {
							$c++;
							switch ($c) {
								case 1: $data[$i]['So_TBMT'] = '"' . trim($td->plaintext) . '"'; break;
								case 2: $data[$i]['Ten_goi_thau'] = '"' . trim($td->plaintext) . '"'; break;
								case 3: $data[$i]['Chu_dau_tu'] = '"' . trim($td->plaintext) . '"'; break;
								case 4: $data[$i]['Thoi_diem_mo_dau'] = '"' . trim($td->plaintext) . '"'; break;
								case 5: $data[$i]['So_NT'] = '"' . trim($td->plaintext) . '"'; break;
								case 6: $data[$i]['Trang_thai'] = '"' . trim($td->plaintext) . '"'; break;
							}
						}
					}
				}
			}
		}
		// KET QUA DAU THAU
		else if ($row['lis_type'] == 'KQDT_TT' || $row['lis_type'] == 'KQDT_DT') {
			
			$tmp = explode('_', $row['lis_type']);
			$Type = $tmp[1];
			
			if ($Type == 'TT') {
				$dTr = $html->find('form[name=result] table', 1)->find('tr');
				unset($dTr[count($dTr)-1]);
				unset($dTr[0]);
				unset($dTr[1]);
			} else if ($Type == 'DT') {
				$dTr = $html->find('form[method=post] table', 1)->find('tr');
				unset($dTr[count($dTr)-1]);
				unset($dTr[0]);
				unset($dTr[1]);
				unset($dTr[2]);
			}
			
			if (!empty($dTr)) {
				$i = 0;
				foreach ($dTr as $tr) {
					$i++;
					$dTd = $tr->find('td');
					if (!empty($dTd)) {
						$c = 0;
						foreach ($dTd as $td) {
							switch ($c) {
								case 1: {
									$data[$i]['So_TBMT'] = '"' . trim($td->plaintext) . '"';
									$temp = explode('-', trim($td->plaintext));
									$dataItem[$i]['tpr_msc_id'] = trim($temp[0]);
									$dataItem[$i]['tpr_msc_no'] = '"' . trim($temp[1]) . '"';
									$dataItem[$i]['tpr_type'] = '"'. $Type .'"';
									break;
								}
								case 2: $data[$i]['Chu_dau_tu'] = '"' . trim($td->plaintext) . '"'; break;
								case 3: $data[$i]['Ten_goi_thau'] = '"' . trim($td->plaintext) . '"'; break;
								case 4: $data[$i]['Thoi_diem_dong_thau'] = '"' . trim($td->plaintext) . '"'; break;
								case 5: $data[$i]['Nha_thau_trung_thau'] = '"' . trim($td->plaintext) . '"'; break;
								case 6: $data[$i]['Gia_trung_thau'] = '"' . trim($td->plaintext) . '"'; break;
								case 7: $data[$i]['Gia_goi_thau'] = '"' . trim($td->plaintext) . '"'; break;
							}
							$c++;
						}
					}
				}
			}
			
			// Insert into database
			if (!empty($data)) {
				foreach ($data as $key => $value) {
					$data[$key]['type'] = '"'. $Type .'"';
				}
				intoSeeks('ket_qua_dau_thau', $data);
			}
			
			// Insert into item table
			if (!empty($dataItem)) {
				intoSeeks('temp_item_kqdt', $dataItem);
			}
		}
		
		// Update pagination
		if ($page == 1) {
			$dom = $html->find('td[class=page]', 0)->plaintext;
			$tmp = explode(':', $dom);
			$numRecord = intval($tmp[1]);
			
			if ($numRecord % 10) {
				$upd['lis_total_page'] = intval($numRecord / 10) + 1;
			} else {
				$upd['lis_total_page'] = intval($numRecord / 10);
			}
		}
		
		// Update pagination
		$upd['lis_page'] = $page;
		updateDB('temp_list', 'lis_id', $row['lis_id'], $upd);
		
	} else {
		$msg .= 'Hết dữ liệu với link này';
	}
	
} else {
	$msg .= 'Hết dữ liệu';
}

alertB($msg);
dump($data);
dump($dataTBMT);
unset($html);
unset($db);










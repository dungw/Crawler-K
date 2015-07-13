<meta http-equiv="refresh" content="500" />
<?php
require_once 'config.php';
require_once '../lib/PHPExcel.php';

// TIME 
if ((intval(date('H')) == 10 || intval(date('H')) == 12) && intval(date('i')) < 10 && intval(date('i')) > 0) {
	$flag = getConfig('export_today');
	if (!$flag) {
		$filename = 'Thong_bao_moi_thau_'. date('d_m_Y') .'.xls';
		if (!file_exists($_SERVER['DOCUMENT_ROOT'] . '/muasamcong/data/' . $filename)) {
			
			// SELECT DATABASE
			$sql = 'SELECT * FROM thong_bao_moi_thau WHERE date = "'. date('d/m/Y') .'"';
			$db = new db_query($sql);
			
			$objPHPExcel = new PHPExcel();
			$objPHPExcel->setActiveSheetIndex(0);
			
			$objPHPExcel->getActiveSheet()->SetCellValue('A1', 'Loại');
			$objPHPExcel->getActiveSheet()->SetCellValue('B1', 'Số TBMT');
			$objPHPExcel->getActiveSheet()->SetCellValue('C1', 'Chủ đầu tư');
			$objPHPExcel->getActiveSheet()->SetCellValue('D1', 'Tên gói thầu');
			$objPHPExcel->getActiveSheet()->SetCellValue('E1', 'Thời điểm đăng tải');
			$objPHPExcel->getActiveSheet()->SetCellValue('F1', 'Thời điểm đóng thầu');
			$objPHPExcel->getActiveSheet()->SetCellValue('G1', 'Hình thức dự thầu');
			
			$rowCount = 2;
			while ($row = mysql_fetch_assoc($db->result)) {
				
			    $objPHPExcel->getActiveSheet()->SetCellValue('A'.$rowCount, (($row['type'] == 'HH') ? 'Hàng hóa' : ''));
			    $objPHPExcel->getActiveSheet()->SetCellValue('B'.$rowCount, $row['So_TBMT']);
			    $objPHPExcel->getActiveSheet()->SetCellValue('C'.$rowCount, $row['Chu_dau_tu']);
				$objPHPExcel->getActiveSheet()->SetCellValue('D'.$rowCount, $row['Ten_goi_thau']);
				$objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount, $row['Thoi_diem_dang_tai']);
				$objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount, $row['Thoi_diem_dong_thau']);
				$objPHPExcel->getActiveSheet()->SetCellValue('G'.$rowCount, $row['Hinh_thuc_du_thau']);
			    $rowCount++;
			}
			
			$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			$objWriter->save('data/'. $filename);
		} else {
			$msg .= 'Đã bảo là xuất rồi mà :v';
		}
	} else {
		$msg .= 'Hôm nay xuất rồi :v';
	}
} else {
	$msg .= '.............';
}

alertB($msg);



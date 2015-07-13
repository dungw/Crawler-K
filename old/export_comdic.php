<meta http-equiv="refresh" content="500" />
<?php
require_once 'config.php';
require_once '../lib/PHPExcel.php';

$queryCate = 'SELECT * FROM cd_category_need WHERE status = 1';
$dbCate = new db_query($queryCate);
if ($rowCate = mysql_fetch_assoc($dbCate->result)) {
	
		$filename = 'Fuck.xls';
		
			
			// SELECT DATABASE
			$sql = 'SELECT * FROM thong_bao_moi_thau WHERE date = "'. date('d/m/Y') .'"';
			$db = new db_query($sql);
			
			$objPHPExcel = new PHPExcel();
			$objPHPExcel->setActiveSheetIndex(0);
			
			$objPHPExcel->getActiveSheet()->SetCellValue('A1', 'Tên cty');
			$objPHPExcel->getActiveSheet()->SetCellValue('B1', 'Địa chỉ');
			$objPHPExcel->getActiveSheet()->SetCellValue('C1', 'Thành phố');
			$objPHPExcel->getActiveSheet()->SetCellValue('E1', 'Số đt');
			$objPHPExcel->getActiveSheet()->SetCellValue('F1', 'Fax');
			$objPHPExcel->getActiveSheet()->SetCellValue('G1', 'Email');
			$objPHPExcel->getActiveSheet()->SetCellValue('H1', 'Website');
			$objPHPExcel->getActiveSheet()->SetCellValue('I1', 'CEO');
			$objPHPExcel->getActiveSheet()->SetCellValue('J1', 'Loại hình DN');
			$objPHPExcel->getActiveSheet()->SetCellValue('K1', 'Tax');
			$objPHPExcel->getActiveSheet()->SetCellValue('L1', 'Thị trường');
			$objPHPExcel->getActiveSheet()->SetCellValue('M1', 'Chứng nhận');
			$objPHPExcel->getActiveSheet()->SetCellValue('N1', 'Giới thiệu');
			$objPHPExcel->getActiveSheet()->SetCellValue('O1', 'Ngành nghề');
			$objPHPExcel->getActiveSheet()->SetCellValue('P1', 'Sản phẩm/DV');
			$objPHPExcel->getActiveSheet()->SetCellValue('Q1', 'Người liên hệ(NLH)');
			$objPHPExcel->getActiveSheet()->SetCellValue('R1', 'Chức vụ NLH');
			$objPHPExcel->getActiveSheet()->SetCellValue('S1', 'Số đt NLH');
			$objPHPExcel->getActiveSheet()->SetCellValue('T1', 'Email NLH');
			
			$query = "SELECT * FROM cd_company WHERE cate_id = ".$rowCate['id'];
			$db = new db_query($query);
			$rowCount = 2;
			
			while ($row = mysql_fetch_assoc($db->result)) {
				
				$objPHPExcel->getActiveSheet()->SetCellValue('A'.$rowCount, $row['name']);
				$objPHPExcel->getActiveSheet()->SetCellValue('B'.$rowCount, $row['address']);
				$objPHPExcel->getActiveSheet()->SetCellValue('C'.$rowCount, $row['city']);
				$objPHPExcel->getActiveSheet()->SetCellValue('E'.$rowCount, $row['phone']);
				$objPHPExcel->getActiveSheet()->SetCellValue('F'.$rowCount, $row['fax']);
				$objPHPExcel->getActiveSheet()->SetCellValue('G'.$rowCount, $row['email']);
				$objPHPExcel->getActiveSheet()->SetCellValue('H'.$rowCount, $row['website']);
				$objPHPExcel->getActiveSheet()->SetCellValue('I'.$rowCount, $row['ceo']);
				$objPHPExcel->getActiveSheet()->SetCellValue('J'.$rowCount, $row['com_type']);
				$objPHPExcel->getActiveSheet()->SetCellValue('K'.$rowCount, $row['tax_code']);
				$objPHPExcel->getActiveSheet()->SetCellValue('L'.$rowCount, $row['market']);
				$objPHPExcel->getActiveSheet()->SetCellValue('M'.$rowCount, $row['certification']);
				$objPHPExcel->getActiveSheet()->SetCellValue('N'.$rowCount, $row['introduce']);
				$objPHPExcel->getActiveSheet()->SetCellValue('O'.$rowCount, $row['bussiness_line']);
				$objPHPExcel->getActiveSheet()->SetCellValue('P'.$rowCount, $row['pro_service']);
				$objPHPExcel->getActiveSheet()->SetCellValue('Q'.$rowCount, $row['contact_person']);
				$objPHPExcel->getActiveSheet()->SetCellValue('R'.$rowCount, $row['contact_position']);
				$objPHPExcel->getActiveSheet()->SetCellValue('S'.$rowCount, $row['contact_mobile']);
				$objPHPExcel->getActiveSheet()->SetCellValue('T'.$rowCount, $row['contact_email']);
				$rowCount++;
			} 
			unset($db);
			
			$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			$objWriter->save('data/'. $filename);
		
} else {
	$msg .= '.............';
}

alertB($msg);



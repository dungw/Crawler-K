<?php
/**
 * Created by PhpStorm.
 * User: JFog
 * Date: 7/13/2015
 * Time: 12:50 AM
 */
include 'config.php';

use common\Route;
use common\Message;

if (ENVIRONMENT == 'production') {
    $loop = 1;
} elseif (ENVIRONMENT == 'develop') {
    $loop = 100;
}
print '<meta http-equiv="refresh" content="' . $loop . '" />';

//message
$message = new Message();
$query = 'SELECT * FROM tb_temp WHERE done = 0 AND type = ' . constant($_GET['c']) . ' LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

        $url = $row['url'];

        //add url to message
        $message->insert($url);

        //get html
        $html = getHTML($url);

        $domTr = $html->find('td[class=tdb]');
        $rec = [];
        if (!empty($domTr)) {
            $cTr = 0;
            foreach ($domTr as $tr) {
                $getContent = 0;
                if ($cTr == 1) {
                    $rec['phan_loai'] = '"' . addslashes(trim($tr->plaintext)) . '"';
                }
                if ($cTr == 3) {
                    $domA = $tr->find('a', 0);
                    if (!empty($domA)) {
                        $fileUrl = 'http://muasamcong.mpi.gov.vn/' . trim($domA->href);
                        $fileName = 'file_'. time() . rand(1000, 99999) . '.rar';
                        $fileDb = saveImage($fileUrl, $fileName, 'attachment/');
                        $rec['file'] = '"' . addslashes(trim($fileDb)) . '"';
                    } else {
                        $rec['noi_dung'] = '"' . addslashes(trim($tr->plaintext)) . '"';
                        $getContent = 1;
                    }
                }
                if ($cTr == 4 && $getContent == 0) {
                    $rec['noi_dung'] = '"' . addslashes(trim($tr->plaintext)) . '"';
                }
                $cTr++;
            }
        }

        //insert data
        if (!empty($rec)) {

            $rec['tieu_de'] = '"' . addslashes(trim($row['tieu_de'])) . '"';
            $rec['co_quan'] = '"' . addslashes(trim($row['co_quan'])) . '"';
            $rec['ngay_tao'] = '"' . addslashes(trim($row['ngay_tao'])) . '"';
            $rec['so_lan_xem'] = '"' . addslashes(trim($row['so_lan_xem'])) . '"';

            if ($row['type'] == TB_KHDT) {
                intoSeek('tb_khdt', $rec);
            } elseif ($row['type'] == TB_BEN_MT) {
                intoSeek('tb_bmt', $rec);
            }

        }

        //update source
        $up['done'] = 1;
        updateDB('tb_temp', 'id', $row['id'], $up);

} else {
    $message->insert('Đã lấy hết dữ liệu');
}

print $message->toHtml();
if (isset($rec)) dump($rec);
unset($html);
unset($db);
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
print '<meta http-equiv="refresh" content="'. $loop .'" />';

//message
$message = new Message();
$query = 'SELECT * FROM source WHERE done = 0 AND type = '. TYPE_THONG_BAO_KHDT .' LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    if ($row['page_total'] <= 0 || $row['page_no'] < $row['page_total']) {

        $url = $row['url'] . '?&page_no='. ($row['page'] + 1);

        //add url to message
        $message->insert($url);

        //get html
        $html = getHTML($url, 0, 8082);

        $domTbl = $html->find('table', 0);
        if (!empty($domTbl)) {
            $domTr = $domTbl->find('tr');

            $data = [];
            if (!empty($domTr)) {
                unset($domTr[0]);
                unset($domTr[1]);
                $cTr = 0;
                foreach ($domTr as $tr) {

                    $rec = [];
                    $domTds = $tr->find('td');
                    if (!empty($domTds)) {

                        $cTd = 0;
                        foreach ($domTds as $td) {
                            if ($cTd == 1) {
                                $rec['tieu_de'] = '"' . addslashes(trim($td->plaintext)) . '"';
                            }
                            if ($cTd == 2) {
                                $rec['co_quan'] = '"' . addslashes(trim($td->plaintext)) . '"';
                            }
                            if ($cTd == 3) {
                                $rec['ngay_tao'] = '"' . addslashes(trim($td->plaintext)) . '"';
                            }
                            if ($cTd == 4) {
                                $rec['so_lan_xem'] = '"' . addslashes(trim($td->plaintext)) . '"';
                            }
                            $cTd++;
                        }
                    }

                    if (isset($rec['so_tbmt']) && $rec['so_tbmt'] != null) {
                        $data[$cTr] = $rec;
                    }
                    $cTr++;
                }
            }
        }

        //insert data
        if (!empty($data)) {
            intoSeeks('tb_khdt', $data);
        }

        //pagination
        $domPagination = $html->find('tr', 0);
        if (!empty($domPagination)) {
            $domSub = $domPagination->find('td', 3);
            if (!empty($domSub)) {
                $text = trim($domSub->plaintext);
                $tmp = explode('[', $text);
                $numArr = get_numerics($tmp[0]);
                $total = intval($numArr[0]);
                $up['total_page'] = ceil($total / 10);
            }
        }

        //update route
        $up['page'] = $row['page'] + 1;
        updateDB('source', 'id', $row['id'], $up);

    } else {
        $message->insert('Đã lấy hết dữ liệu');

        //update route
        $up['done'] = 1;
        updateDB('source', 'id', $row['id'], $up);
    }

}

print $message->toHtml();
if (isset($data)) dump($data);
unset($html);
unset($db);
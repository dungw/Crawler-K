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
$query = 'SELECT * FROM source WHERE done = 0 AND type = ' . constant($_GET['c']) . ' LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    if ($row['total_page'] <= 0 || $row['page'] < $row['total_page']) {

        $url = $row['url'] . '&page_no=' . ($row['page'] + 1);

        //add url to message
        $message->insert($url);

        //get html
        $html = getHTML($url);

        $domTr = $html->find('tr[class=tdb], tr[class=tdc]');
        $data = [];
        if (!empty($domTr)) {
            $cTr = 0;
            foreach ($domTr as $tr) {

                $rec = [];
                $domTds = $tr->find('td');
                if (!empty($domTds)) {

                    $cTd = 0;
                    foreach ($domTds as $td) {
                        if ($cTd == 1) {
                            $href = $td->find('a', 0)->href;
                            $temp = explode('../', $href);
                            $temp1 = explode("','", $temp[1]);
                            $href = 'http://muasamcong.mpi.gov.vn/' . $temp1[0];
                            $rec['url'] = '"' . addslashes(trim($href)) . '"';
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

                $rec['type'] = constant($_GET['c']);

                if (isset($rec['tieu_de']) && $rec['tieu_de'] != null) {
                    $data[$cTr] = $rec;
                }
                $cTr++;
            }
        }

        //insert data
        if (!empty($data)) {
            intoSeeks('tb_temp', $data);
        }

        //pagination
        $domPage = $html->find('form table tr', 0);
        if (!empty($domPage)) {
            $domSub = $domPage->find('td', 3);
            if (!empty($domSub)) {
                $text = trim($domSub->plaintext);
                $tmp = explode('[', $text);
                $numArr = get_numerics($tmp[0]);
                $total = intval($numArr[0]);
                $up['total_page'] = ceil($total / PAGE_SIZE_TB);
            }
        }

        //update source
        $up['page'] = $row['page'] + 1;
        updateDB('source', 'id', $row['id'], $up);

    } else {
        $message->insert('Đã lấy hết dữ liệu');

        //update source
        $up['done'] = 1;
        updateDB('source', 'id', $row['id'], $up);
    }

}

print $message->toHtml();
if (isset($data)) dump($data);
unset($html);
unset($db);
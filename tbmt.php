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

//route
$route = new Route();
$route->setCategory(constant($_GET['c']));
$route->setPage('THONG_BAO_MOI_THAU');

$db = new db_query($route->getBaseUrl());
if ($row = mysql_fetch_assoc($db->result)) {
    if ($row['page_total'] <= 0 || $row['page_no'] < $row['page_total']) {

        //base url
        $route->setBaseUrl($row['url']);

        //set page number
        $route->setPageNo($row['page_no'] + 1);

        //complete url
        $url = $route->getUrl();

        //add url to message
        $message->insert($url);

        //get html
        $html = getHTML($url, 0, 8082);

        //update data
        $up['page_no'] = $row['page_no'] + 1;

        $domTbl = $html->find('form table', 1);
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
                                $rec['so_tbmt'] = '"' . addslashes(trim($td->plaintext)) . '"';
                            }
                            if ($cTd == 2) {
                                $rec['ben_mt'] = '"' . addslashes(trim($td->plaintext)) . '"';
                            }
                            if ($cTd == 3) {
                                $rec['ten_goi_thau'] = '"' . addslashes(trim($td->plaintext)) . '"';
                            }
                            if ($cTd == 4) {
                                $rec['thoi_gian'] = '"' . addslashes(trim($td->plaintext)) . '"';
                            }
                            $cTd++;
                        }

                        $rec['category'] = $route->getCategory();
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
            intoSeeks('tbmt', $data);
        }

        //pagination
        $domPagination = $html->find('td[class=page]', 0);
        if (!empty($domPagination)) {
            $numArr = get_numerics($domPagination->plaintext);
            $total = intval($numArr[0]);
            $up['page_total'] = ceil($total / $route->getPageSize());
        }

        //update route
        updateDB('route', 'id', $row['id'], $up);

    } else {
        $message->insert('Đã lấy hết dữ liệu');

        //update route
        $up['done'] = 1;
        updateDB('route', 'id', $row['id'], $up);
    }

}

print $message->toHtml();
if (isset($data)) dump($data);
unset($html);
unset($db);
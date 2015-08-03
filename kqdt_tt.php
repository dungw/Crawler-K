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

//route
$route = new Route();
$route->setCategory(constant($_GET['c']));
$route->setPage('KET_QUA_DAU_THAU_TRUC_TIEP');

Setting_Env($route);

//message
$message = new Message();

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
        $message->insertUrl($url);

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
                                $soTbmt = trim($td->plaintext);
                                $t = explode('-', $soTbmt);
                                $bid = [];
                                $bid[] = 'bidNo=' . $t[0];
                                $bid[] = 'bidTurnNo=' . $t[1];
                                $bid[] = 'bidType=' . KQDT_TT_BID_TYPE;
                                $url = KQDT_TT_DETAIL_URL . '?' . implode('&', $bid);
                                if ($url != '') {
                                    $rec['url'] = '"' . addslashes(trim($url)) . '"';
                                }
                                $rec['so_tbmt'] = '"' . addslashes(trim($soTbmt)) . '"';
                            }
                            $cTd++;
                        }

                        $rec['category'] = $route->getCategory();
                    }

                    if ($soTbmt && $soTbmt != null && isset($rec['url'])) {
                        if (isset($_GET['p']) && $_GET['p'] == 'new') {
                            if (!checkDuplicate($soTbmt)) {
                                $data[$cTr] = $rec;
                            }
                        } else {
                            $data[$cTr] = $rec;
                        }
                    }
                    $cTr++;
                }
            }
        }

        //insert data
        if (!empty($data)) {
            intoSeeks('kqdt_tt_temp', $data);
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
} else {
    $message->insert('Đã lấy hết dữ liệu');
}

print $message->toHtml();
if (isset($data)) dump($data);
unset($html);
unset($db);

function checkDuplicate($key)
{
    $sql = "SELECT count(id) AS count FROM kqdt_tt_temp WHERE so_tbmt = '". $key ."'";
    $db = new db_count($sql);
    if ($db->total > 0) {
        return true;
    } else {
        return false;
    }
}
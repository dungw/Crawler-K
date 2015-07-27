<?php
/**
 * Created by PhpStorm.
 * User: JFog
 * Date: 7/13/2015
 * Time: 12:50 AM
 */
include 'config.php';

use common\Message;

Setting_Env();

//message
$message = new Message();

$category = constant($_GET['c']);
$query = 'SELECT * FROM kqdt_tt_temp WHERE category = '. $category .' AND done = 0 LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    $url = $row['url'];

    //add url to message
    $message->insertUrl($url);

    //get html
    $html = getHTML($url, 0, 8082);

    //init
    $iniFile1 = $_SERVER['DOCUMENT_ROOT'] . '/rule/msc/tbl_detail_kqdt_tt.ini';
    $iniFile2 = $_SERVER['DOCUMENT_ROOT'] . '/rule/msc/tbl_detail_kqdt_tt_1.ini';
    $columns1 = [
        'ten_goi_thau', 'ten_du_an', 'ben_mt', 'hinh_thuc_lua_chon', 'gia_goi_thau',
    ];
    $columns2 = [
        'nt_trung_thau', 'gia_trung_thau', 'hinh_thuc_hop_dong', 'thoi_gian_thuc_hien', 'van_ban_phe_duyet', 'ly_do_trung_thau', 'thoi_diem_hoan_thanh'
    ];

    //table dom 1
    $dom = $html->find('table', 0);

    $data1 = analyzeTableDom($dom, $columns1, $iniFile1);

    //table dom 2
    $dom = $html->find('table', 1);
    $data2 = analyzeTableDom($dom, $columns2, $iniFile2);

    //merge data
    $data = array_merge($data1, $data2);

    $data['category'] = $row['category'];
    $data['so_tbmt'] = addStrData($row['so_tbmt']);

    //insert data
    $id = 0;
    if (!empty($data)) {
        $id = intoSeek('kqdt_tt', $data);
    }

    //update source
    updateDB('kqdt_tt_temp', 'id', $row['id'], [
        'done' => 1,
        'kqdt_tt_id' => $id
    ]);

} else {
    $message->insert('Đã lấy hết dữ liệu');
}

print $message->toHtml();
if (isset($data)) dump($data);
unset($html);
unset($db);
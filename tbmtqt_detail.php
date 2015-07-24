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
$query = 'SELECT * FROM tbmt_temp WHERE category = '. $category .' AND type = '. TBMT_TYPE_QT .' AND done = 0 LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    $url = $row['url'];

    //add url to message
    $message->insertUrl($url);

    //get html
    $html = getHTML($url, 0, 8081);

    //init
    $iniFile = $_SERVER['DOCUMENT_ROOT'] . '/rule/msc/tbl_detail_tbmt.ini';
    $columns = [
        'so_tbmt', 'loai_tb', 'linh_vuc', 'hinh_thuc_tb', 'goi_thau', 'thuoc_du_an', 'nguon_von', 'ben_mt', 'hinh_thuc_lua_chon',
        'tg_ban_hs_tu', 'tg_ban_hs_den', 'dia_diem', 'gia_ban', 'han_cuoi_nhan_hs', 'hs_moi_thau'
    ];

    //root table dom
    $dom = $html->find('table table', 0);
    $data = analyzeTableDom($dom, $columns, $iniFile);
    $data['category'] = $row['category'];

    //insert data
    $id = 0;
    if (!empty($data)) {
        $id = intoSeek('tbmt_qt', $data);
    }

    //update source
    updateDB('tbmt_temp', 'id', $row['id'], [
        'done' => 1,
        'tbmt_id' => $id
    ]);

} else {
    $message->insert('Đã lấy hết dữ liệu');
}

print $message->toHtml();
if (isset($data)) dump($data);
unset($html);
unset($db);
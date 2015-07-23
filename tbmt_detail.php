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

Setting_Env();

//message
$message = new Message();

$category = constant($_GET['c']);
$query = 'SELECT * FROM tbmt_temp WHERE category = '. $category .' done = 0 LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    $url = $row['url'];

    //add url to message
    $message->insertUrl($url);

    //get html
    $html = getHTML($url, 0, 8081);

    //define rule
    $tableRule = [
        'config' => [
            'range' => [7,20],
            'unset' => [14],
        ],
        'data' => [
            'so_tbmt' => [
                'tr_number'     => 1,
                'td_number'     => 2,
                'type'          => 'str',
                'dom'           => '',
                'dom_number'    => 0,
                'dom_property'      => 'plaintext',
            ]
        ],
    ];

    $domTable = $html->find('table table', 0);
    
    $data = analyzeTableDom($domTable, $tableRule);
    print '<pre>'; print_r($data); die;

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
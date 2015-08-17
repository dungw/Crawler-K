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
$query = 'SELECT * FROM tbmt_temp WHERE category = '. $category .' AND type = '. TBMT_TYPE .' AND done = 0 LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    $url = $row['url'];
//    $url = 'http://muasamcong.mpi.gov.vn:8081/GG/EP_MPV_GGQ999.jsp?bid_no=20150803837&bid_turnno=00&bid_type=1';

    //add url to message
    $message->insertUrl($url);

    //get html
    $html = getHTML($url, 0, 8081);

    //get data
    $root = $html->find('table table', 0);

    if (!empty($root)) {

        $trs = $root->find('tr');
        $pairs = [];
        if (!empty($trs)) {
            foreach ($trs as $tr) {

                $tds = $tr->find('td');
                if (!empty($tds)) {
                    if (count($tds) == 2) {
                        $pairs[] = [
                            'label' => $tds[0]->plaintext,
                            'value' => $tds[1]->plaintext,
                        ];
                    } elseif (count($tds) == 4) {
                        $pairs[] = [
                            'label' => $tds[0]->plaintext,
                            'value' => $tds[1]->plaintext,
                        ];
                        $pairs[] = [
                            'label' => $tds[2]->plaintext,
                            'value' => $tds[3]->plaintext,
                        ];
                    }
                }

            }
        }

        $signs = [
            ['sign'  => 'Số TBMT', 'field' => 'so_tbmt', 'type' => 'str'],
            ['sign'  => 'Loại thông báo', 'field' => 'loai_tb', 'type' => 'str'],
            ['sign'  => 'Lĩnh vực thông báo', 'field' => 'linh_vuc', 'type' => 'str'],
            ['sign'  => 'Hình thức thông báo', 'field' => 'hinh_thuc_tb', 'type' => 'str'],
            ['sign'  => 'Gói thầu', 'field' => 'goi_thau', 'type' => 'str'],
            ['sign'  => 'Thuộc dự án', 'field' => 'thuoc_du_an', 'type' => 'str'],
            ['sign'  => 'Nguồn vốn', 'field' => 'nguon_von', 'type' => 'str'],
            ['sign'  => 'Bên mời thầu', 'field' => 'ben_mt', 'type' => 'str'],
            ['sign'  => 'Hình thức lựa chọn nhà thầu', 'field' => 'hinh_thuc_lua_chon', 'type' => 'str'],
            ['sign'  => [
                'Thời gian bán HSYC từ', 'Thời gian bán HSMT từ', 'Thời gian nhận HSDT từ ngày'
            ], 'field' => 'tg_ban_hs_tu', 'type' => 'date'],
            ['sign'  => 'Đến ngày', 'field' => 'tg_ban_hs_den', 'type' => 'date'],
            ['sign'  => 'Địa điểm', 'field' => 'dia_diem', 'type' => 'str'],
            ['sign'  => 'Giá bán', 'field' => 'gia_ban', 'type' => 'str'],
            ['sign'  => 'Hạn cuối nhận HSĐX', 'field' => 'han_cuoi_nhan_hs', 'type' => 'str'],
            ['sign'  => 'Hồ sơ mời thầu', 'field' => 'hs_moi_thau', 'type' => 'str'],
        ];

//    print '<pre>'; print_r($pairs); die;

        if (!empty($pairs)) {
            foreach ($pairs as $item) {
                foreach ($signs as $sign) {
                    if (is_array($sign['sign'])) {

                        foreach ($sign['sign'] as $s) {
                            if (strpos('F'.$item['label'], $s)) {
                                if ($sign['type'] == 'str') {
                                    $data[$sign['field']] = addStrData($item['value']);
                                } elseif ($sign['type'] == 'date') {
                                    $data[$sign['field']] = addDateData($item['value']);
                                }
                            }
                        }
                    } else {
                        if (strpos('F'.$item['label'], $sign['sign'])) {
                            if ($sign['type'] == 'str') {
                                $data[$sign['field']] = addStrData($item['value']);
                            } elseif ($sign['type'] == 'date') {
                                $data[$sign['field']] = addDateData($item['value']);
                            }
                        }
                    }

                }
            }
        }

//    print '<pre>'; print_r($data); die;

        $data['category'] = $row['category'];
        $data['thoi_diem_dang_tai'] = addStrData($row['thoi_diem_dang_tai']);
        $data['thoi_diem_dong_thau'] = addStrData($row['thoi_diem_dong_thau']);
        $data['hinh_thuc_du_thau'] = addStrData($row['hinh_thuc_du_thau']);

        //insert data
        $id = 0;
        if (!empty($data)) {
            $id = intoSeek('tbmt', $data);
        }

        //update source
        updateDB('tbmt_temp', 'id', $row['id'], [
            'done' => 1,
            'tbmt_id' => $id
        ]);
    } else {
        //update source
        updateDB('tbmt_temp', 'id', $row['id'], [
            'done' => 3,
            'id' => $row['id']
        ]);

        $message->insert('Checking URL...');
    }

} else {
    $message->insert('Đã lấy hết dữ liệu');
}

print $message->toHtml();
if (isset($data)) dump($data);
unset($html);
unset($db);
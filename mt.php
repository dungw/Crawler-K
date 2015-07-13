<?php
require_once 'config.php';

print '<meta http-equiv="refresh" content="1" />';

$signs = array(
    'name_short' => 'Tên cơ quan (viết tắt)',
    'name_en' => 'Tên cơ quan (tiếng Anh)',
    'code' => 'Mã cơ quan',
    'dkkd' => 'Số ĐKKD',
    'pltt' => 'Phân loại trực thuộc',
    'lhcq' => 'Loại hình cơ quan',
    'city' => 'Tỉnh/Thành phố',
    'address' => 'Địa chỉ',
    'phone' => 'Số điện thoại cơ quan',
    'fax' => 'Số Fax cơ quan',
    'website' => 'Trang web',
    'htkd' => 'Hình thái kinh doanh',
    'nn' => 'Ngành nghề',
    'mst' => 'Mã số thuế'
);

// Vars
$msg = '';
$data = array();
$query = 'SELECT * FROM ds_mt WHERE craw = 0 LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    $url = DOMAIN . $row['url'];

    $html = getHTML($url, 0, 8070);

    $msg = '[URL] : <a style="text-decoration: underline;" href="'. $url .'" target="_blank">' . $url . '</a><br>';

    $root = $html->find('form[name=useForm] table[class=tr]', 0);
    $tdLabel = $root->find('td[class=tdar]');
    $tdValue = $root->find('td[class=tdb]');

    if (!empty($tdLabel) && !empty($tdValue)) {

        $data['id_temp'] = $row['id'];
        $data['name'] = '"'. $row['name'] .'"';
        foreach ($tdLabel as $k => $td) {
            $label = 'F' . trim($td->plaintext);
            foreach ($signs as $attr => $sign) {
                if (strpos($label, $sign)) {
                    $value = trim($tdValue[$k]->plaintext);
                    $data[$attr] = '"' . addslashes($value) . '"';
                }
            }
        }
    }

    if (!empty($data)) {
        intoSeek('mt', $data);
    }

    updateDB('ds_mt', 'id', $row['id'], array('craw' => 1));

}

alertB($msg);
dump($data);
unset($html);
unset($db);

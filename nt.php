<?php
require_once 'config.php';

print '<meta http-equiv="refresh" content="100" />';

$signs = array(
    'dkkd' => 'Số ĐKKD',
    'dkkd_date' => 'Ngày ĐKKD',
    'name_en' => 'Tên tiếng Anh',
    'lvkd' => 'Lĩnh vực kinh doanh',
    'pldn' => 'Phân loại doanh nghiệp',
    'phone' => 'Số điện thoại',
    'fax' => 'Số Fax',
    'address' => 'Địa chỉ',
    'website' => 'Trang web',
    'city' => 'Tỉnh / thành phố',
    'country' => 'Quốc gia'
);

// Vars
$msg = '';
$data = array();
$query = 'SELECT * FROM ds_nt WHERE craw = 0 LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    $url = DOMAIN . $row['url'];

    $html = getHTML($url, 0, 8070);

    $msg = '[URL] : <a style="text-decoration: underline;" href="'. $url .'" target="_blank">' . $url . '</a><br>';

    $root = $html->find('form[name=comInfoFrm] table[class=tr]', 0);
    $tdLabel = $root->find('td[class=tdar]');
    $tdValue = $root->find('td[class=tdb]');

    // get script
    $scriptDom = $html->find('script');
    foreach ($scriptDom as $s) {
        if (strpos($s->outertext, 'capital') || strpos($s->outertext, 'emplCount')) {
            $script = $s->outertext;

            preg_match_all( '/setNumFormat\((.*?)\)/', $script, $match );

            if (!empty($match)) {
                for ($i=0; $i<count($match[1]); $i++) {
                    $tmp = explode(',', $match[1][$i]);

                    if ($i == 0) $data['vdl'] = $tmp[0];
                    if ($i == 1) $data['snv'] = $tmp[0];
                }
            }
        }
    }


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

    // lay thong tin nganh nghe
    $data['ttnn_html'] = '"' . addslashes(trim($html->find('table[class=tr]', 1)->outertext)) . '"';

    $ttDom = $html->find('table[class=tr]', 1)->find('tr');
    $ttnnText = '';
    if (!empty($ttDom)) {
        unset($ttDom[0]);
        unset($ttDom[1]);
        unset($ttDom[2]);
        foreach ($ttDom as $ddom) {
            $tdDoms = $ddom->find('td');
            unset($tdDoms[0]);
            foreach ($tdDoms as $tdDom) {
                $ttnnText .= $tdDom->plaintext;
            }
        }
    }

    $data['ttnn_text'] = '"' . addslashes(trim($ttnnText)) . '"';

    if (!empty($data)) {
        intoSeek('nt', $data);
    }

    updateDB('ds_nt', 'id', $row['id'], array('craw' => 1));

}

alertB($msg);
dump($data);
unset($html);
unset($db);

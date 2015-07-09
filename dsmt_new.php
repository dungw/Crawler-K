<?php
require_once 'config.php';

print '<meta http-equiv="refresh" content="100" />';

// Vars
$msg = '';
$data = array();
$query = 'SELECT * FROM source WHERE type = '. TYPE_MT .' LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    // get last date
    $lastTime = $row['last_time'];
    $lastDate = intval(date('d', $lastTime));
    $currentDate = intval(date('d'));

    if ($lastDate < $currentDate || ($lastDate == $currentDate && $row['new_page'] < 3)) {

        $url = $row['url'] . '?&page_no='. ($row['new_page'] + 1);
        $html = getHTML($url, 0, 8070);

        $msg = '[URL] : <a style="text-decoration: underline;" href="'. $url .'" target="_blank">' . $url . '</a><br>';

        // get all exist name
        $getQuery = "SELECT name FROM ds_mt";
        $getDb = new db_query($getQuery);
        $getName = array();
        while ($getRow = mysql_fetch_assoc($getDb->result)) {
            $getName[] = $getRow['name'];
        }

        $blockTd = $html->find('tr[class=tdbc], tr[class=tdcc]');
        $data = array();
        $count = 0;
        if (!empty($blockTd)) {
            foreach ($blockTd as $td) {
                $blockA = $td->find('a', 0);
                if ($blockA) {
                    if (!in_array($blockA->plaintext, $getName)) {
                        $data[$count]['name'] = '"' . addslashes(trim($blockA->plaintext)) . '"';
                        $data[$count]['url'] = '"' . addslashes(trim($blockA->href)) . '"';
                        $data[$count]['cat_id'] = $row['id'];
                    }
                }
                $count++;
            }
        }
        if (!empty($data)) {
            intoSeeks('ds_mt', $data);
        }
        $msg .= '<br>Thêm mới '. count($data) . ' bản ghi<br>';

        if ($lastDate < $currentDate) {
            $up['new_page'] = 1;
        } else {
            $up['new_page'] = $row['new_page'] + 1;
        }

        $up['last_time'] = time();
        updateDB('source', 'id', $row['id'], $up);
    } else {
        $msg .= 'Hết dữ liệu với link này';
    }

} else {
    $msg .= 'Hết dữ liệu';
}

alertB($msg);
dump($data);
unset($html);
unset($db);


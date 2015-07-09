<?php
require_once 'config.php';

print '<meta http-equiv="refresh" content="1" />';

// Vars
$msg = '';
$data = array();
$query = 'SELECT * FROM source WHERE done = 0 AND type = '. TYPE_MT .' LIMIT 1';
$db = new db_query($query);
if ($row = mysql_fetch_assoc($db->result)) {

    $page = $row['page'];
    $totalPage = $row['total_page'];

    if ($totalPage <= 0 || $page < $totalPage) {
        $url = $row['url'] . '?&page_no='. ($page+1);
        $html = getHTML($url, 0, 8070);

        $msg = '[URL] : <a style="text-decoration: underline;" href="'. $url .'" target="_blank">' . $url . '</a><br>';

        $blockTd = $html->find('tr[class=tdbc], tr[class=tdcc]');
        $data = array();
        $count = 0;
        if (!empty($blockTd)) {
            foreach ($blockTd as $td) {
                $blockA = $td->find('a', 0);
                if ($blockA) {
                    $data[$count]['name'] = '"' . addslashes(trim($blockA->plaintext)) . '"';
                    $data[$count]['url'] = '"' . addslashes(trim($blockA->href)) . '"';
                    $data[$count]['cat_id'] = $row['id'];
                }
                $count++;
            }
        }
        if (!empty($data)) {
            intoSeeks('ds_mt', $data);
        }

        //get total page
        $block = $html->find('td[class=page]', 0);
        if ($block) {
            $numArr = get_numerics($block->plaintext);
            $total = intval($numArr[0]);
            $up['total_page'] = floor($total / 10);
        }

        // get total page
        /*$htmlPagination = 'Pagination:<br>';
        $blockPagination = $html->find('td.redc', 0);
        $pagesValue = array();
        if ($blockPagination) {
            $pages = $blockPagination->find('a');
            if (!empty($pages)) {
                foreach ($pages as $page) {
                    $pageValue = str_replace('[', '', $page->plaintext);
                    $pageValue = str_replace(']', '', $pageValue);
                    $pagesValue[] = $pageValue;
                }
            }
        }

        $newTotalPage = 0;
        if (!empty($pagesValue)) {
            $newTotalPage = getBiggestNum($pagesValue);

            $up['total_page'] = $newTotalPage;
        }*/

        $up['page'] = $row['page'] + 1;
        updateDB('source', 'id', $row['id'], $up);
    } else {
        $msg .= 'Hết dữ liệu với link này';

        // Update status
        $upd['done'] = 1;
        updateDB('source', 'id', $row['id'], $upd);
    }

} else {
    $msg .= 'Hết dữ liệu';
}

alertB($msg);
dump($data);
unset($html);
unset($db);


<?php
include 'config.php';

$url = 'http://muasamcong.mpi.gov.vn/notice/PT_NTJ_NTQ005.jsp?noticeNo=3112';
$html = getHTML($url);

$dom = $html->find('tr');
if (!empty($dom)) {
    foreach ($dom as $tr) {
        $td = $tr->find('td[class=TIT]', 0);
        if (!empty($td)) {
            $c = 0;
            foreach ($td as $t) {
                $c++;
                $flag = 0;
                if (trim($t->plaintext) == 'File đính kèm' && $c == 1) {
                    $flag = 1;
                }
                if ($flag == 1 && $c == 2) {
                    $a = $html->find('a', 0);
                    $href = trim($a->href);
                    print $href;
                }
            }
        }
    }
}

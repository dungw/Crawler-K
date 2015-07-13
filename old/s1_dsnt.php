<meta content="text/html" charset="utf-8">
<meta http-equiv="refresh" content="10" />
<?php
require 'config.php';

$url = 'http://muasamcong.mpi.gov.vn:8070/AD/UM_ADJ_ConrA010l1.jsp&page_no=2';
$html = getHTML($url, 0, 8070);



alertB($msg);
dump($data);
unset($html);




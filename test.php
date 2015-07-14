<?php
include 'config.php';

$url = 'http://muasamcong.mpi.gov.vn:8082/NC/EP_COJ_NCQ812.jsp?noticeType=Y&instituName=&instituCode=&radOrgan=0&noticeNm=&openbidDate1=14%2F06%2F2015&openbidDate2=14%2F07%2F2015&referNum=&pageSize=10&notice_num=&orgCode=&searchType=1&bidType=1';
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_BINARYTRANSFER, true);
$content = curl_exec($ch);
curl_close($ch);

print $content;
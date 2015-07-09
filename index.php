<?php
include 'config.php';

/* Test URL 1
$url = 'http://muasamcong.mpi.gov.vn:8070/AD/UM_ADJ_ConrA010l1.jsp?&page_no=1';
$html = getHTML($url, 0, 8070);
$htmlContent = 'Content:<br>';
$blockTd = $html->find('tr[class=tdbc], tr[class=tdcc]');
if (!empty($blockTd)) {
    foreach ($blockTd as $td) {
        $blockA = $td->find('a', 0);
        if ($blockA) print $blockA->href . '<br>';
    }
}

// get pagination
$htmlPagination = 'Pagination:<br>';
$blockPagination = $html->find('td.redc', 0);
if ($blockPagination) {
    $pages = $blockPagination->find('a');
    if (!empty($pages)) {
        foreach ($pages as $page) {
            $pageValue = str_replace('[', '', $page->plaintext);
            $pageValue = str_replace(']', '', $pageValue);
            print $pageValue . '<br>';
        }
    }
}
*/

/* Test URL 2
$url = 'http://muasamcong.mpi.gov.vn:8070/RA/UM_RAJ_ConuA050y.jsp?bizRegNo=0104829352';
$html = getHTML($url, 0, 8070);
$dom = $html->find('form[name=comInfoFrm] table[class=tr]', 1);
print $dom->plaintext;
*/

/* Test URL 3
$url = 'http://muasamcong.mpi.gov.vn:8070/RA/UM_RAJ_GovuC011l1.jsp?groupNo=0&Start=&upcheNm=&End=&province=&instituCD=&TEST_OP_YN=N&departmentNo=0&&page_no=5';
$html = getHTML($url, 0, 8070);
$htmlContent = 'Content:<br>';
$blockTd = $html->find('tr[class=tdbc], tr[class=tdcc]');
if (!empty($blockTd)) {
    foreach ($blockTd as $td) {
        $blockA = $td->find('a', 0);
        if ($blockA) print $blockA->href . '<br>';
    }
}

// get pagination
$htmlPagination = 'Pagination:<br>';
$blockPagination = $html->find('td.redc', 0);
if ($blockPagination) {
    $pages = $blockPagination->find('a');
    if (!empty($pages)) {
        foreach ($pages as $page) {
            $pageValue = str_replace('[', '', $page->plaintext);
            $pageValue = str_replace(']', '', $pageValue);
            print $pageValue . '<br>';
        }
    }
}

$totalRecord = $html->find('td[class=page]', 0);
print $totalRecord->plaintext;
*/


$url = 'http://muasamcong.mpi.gov.vn:8070/RA/UM_RAJ_GovrA010y.jsp?institu=Z013667';
$html = getHTML($url, 0, 8070);
$domLabel = $html->find('td[class=tdar]');
print 'Label: <br>';
foreach ($domLabel as $label) {
    print $label->plaintext . '<br>';
}

$domValue = $html->find('td[class=tdb]');
print 'Value: <br>';
foreach ($domValue as $value) {
    print $value->plaintext . '<br>';
}


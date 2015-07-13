<?php
include 'config.php';

$listCategory = [
    ['code' => 'HANG_HOA', 'name' => 'Hàng hóa'],
    ['code' => 'XAY_LAP', 'name' => 'Xây lắp'],
    ['code' => 'TU_VAN', 'name' => 'Tư vấn'],
    ['code' => 'HON_HOP', 'name' => 'Hỗn hợp'],
    ['code' => 'PHI_TU_VAN', 'name' => 'Phi tư vấn'],
];

$listPage = [
    ['code' => 'THONG_BAO_MOI_THAU', 'name' => 'Thông báo mời thầu', 'url' => 'tbmt.php'],
    ['code' => 'THONG_BAO_MOI_THAU_QUOC_TE', 'name' => 'Thông báo mời thầu quốc tế', 'url' => 'tbmtqt.php'],
    ['code' => 'KET_QUA_DAU_THAU_TRUC_TIEP', 'name' => 'Kết quả đấu thầu trực tiếp', 'url' => 'kqdt_tt.php'],
];
?>
<!DOCTYPE html>
<html>
<head>
    <title>Page Title</title>
</head>
<body>

<div align="center">
    <table class="main" width="50%" border="1">
        <tr>
            <th>Danh mục</th>
            <th>Trang</th>
            <th></th>
        </tr>
        <?php

        foreach ($listCategory as $c) {
            $cc = 0;
            foreach ($listPage as $p) {
                $cc++;
                ?>
                <tr>
                    <td>
                        <span><?= ($cc == 1) ? $c['name'] : '' ?></span>
                    </td>
                    <td>
                        <span><?= $p['name'] ?></span>
                    </td>
                    <td>
                        <a class="button" href="/<?=$p['url']?>?c=<?=$c['code']?>" target="_blank">Run cronjob</a>
                    </td>
                </tr>
                <?php
            }
        }
        ?>
    </table>
</div>

</body>
</html>
<style type="text/css">
    span, a {
        font-family: Arial, Helvetica, sans-serif;
        font-size: 13px !important;
    }
    .main {
        border-collapse: collapse;
        border-color: gray;
    }
    .main {
        border-color: gray;
    }
    .main td, .main th {
        padding: 5px 6px;
    }
    .main tr:hover {
        background: #E9FCF8;
    }
</style>
<?php
include 'config.php';

if (isset($_POST['do']) && $_POST['do'] == 'reset' && ENVIRONMENT == 'develop') {
    $sql = 'SELECT * FROM route';
    $db = new db_query($sql);
    while ($row = mysql_fetch_assoc($db->result)) {
        $query = "UPDATE route SET page_no = 0, page_total = 0, done = 0 WHERE id = ". $row['id'];
        $db1 = new db_query($query);
        unset($db1);
    }
    unset($db);

    $sql = 'SELECT * FROM source';
    $db = new db_query($sql);
    while ($row = mysql_fetch_assoc($db->result)) {
        $query = "UPDATE source SET page = 0, total_page = 0, done = 0 WHERE id = ". $row['id'];
        $db1 = new db_query($query);
        unset($db1);
    }
    unset($db);

    //truncate all table
    $arTable = ['kqdt_tt', 'kqmt_dt', 'tb_bmt', 'tb_khdt', 'tb_temp', 'tbmt', 'tbmt_qt', 'tbmt_temp'];
    foreach ($arTable as $tbl) {
        $sql = 'TRUNCATE TABLE '. $tbl;
        $db = new db_query($sql);
        unset($db);
    }
}

$listCategory = [
    ['code' => 'HANG_HOA', 'name' => 'Hàng hóa'],
    ['code' => 'XAY_LAP', 'name' => 'Xây lắp'],
    ['code' => 'TU_VAN', 'name' => 'Tư vấn'],
    ['code' => 'HON_HOP', 'name' => 'Hỗn hợp'],
    ['code' => 'PHI_TU_VAN', 'name' => 'Phi tư vấn'],
];

$listPage = [
    ['code' => 'THONG_BAO_MOI_THAU', 'name' => 'Thông báo mời thầu', 'url' => 'tbmt.php', 'url_detail' => 'tbmt_detail.php'],
    ['code' => 'THONG_BAO_MOI_THAU_QUOC_TE', 'name' => 'Thông báo mời thầu quốc tế', 'url' => 'tbmtqt.php', 'url_detail' => ''],
    ['code' => 'KET_QUA_DAU_THAU_TRUC_TIEP', 'name' => 'Kết quả đấu thầu trực tiếp', 'url' => 'kqdt_tt.php', 'url_detail' => ''],
    //['code' => 'KET_QUA_DAU_THAU_DIEN_TU', 'name' => 'Kết quả đấu thầu điện tử', 'url' => 'kqdt_dt.php'],
];

$tbPage = [
    ['url' => 'tb.php', 'name' => 'Danh sách'],
    ['url' => 'tb_detail.php', 'name' => 'Chi tiết'],
];

$tbCategory = [
    ['code' => 'TB_KHDT', 'name' => 'Thông báo - Bộ KHĐT'],
    ['code' => 'TB_BEN_MT', 'name' => 'Thông báo của bên mời thầu'],
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
        <?php
        if (ENVIRONMENT == 'develop') {
            ?>
            <tr>
                <td colspan="5">
                    <form action="index.php" method="post">
                        <input type="hidden" name="do" value="reset">
                        <button type="submit" onclick="confirm('Bạn chắc chắn muốn xóa hết dữ liệu?')">Reset</button>
                    </form>
                </td>
            </tr>
            <?php
        }
        ?>
        <tr>
            <th>Danh mục</th>
            <th>Trang</th>
            <th></th>
            <th></th>
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
                        <a class="button" href="/<?=$p['url']?>?c=<?=$c['code']?>" target="_blank">Get All</a>
                    </td>
                    <td>
                        <a class="button" href="/<?=$p['url']?>?c=<?=$c['code']?>&p=new" target="_blank">Get New</a>
                    </td>
                    <td>
                        <a class="button" href="/<?=$p['url_detail']?>?c=<?=$c['code']?>&p=new" target="_blank">Get Detail</a>
                    </td>
                </tr>
                <?php
            }
        }

        //individual url
        foreach ($tbCategory as $c) {
            $cc = 0;
            foreach ($tbPage as $p) {
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
                        <a class="button" href="/<?=$p['url']?>?c=<?=$c['code']?>" target="_blank">Get All</a>
                    </td>
                    <td>
                        <a class="button" href="/<?=$p['url']?>?c=<?=$c['code']?>" target="_blank">Get New</a>
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
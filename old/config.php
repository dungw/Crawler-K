<?php
$lib_direct = '../lib/';

require_once 'database.php';
require_once $lib_direct . 'simple_html_dom.php';
require_once $lib_direct . 'phpWebHacks.php';
require_once $lib_direct . 'functions.php';

function getConfig($name) {
	$sql = 'SELECT * FROM configuration WHERE id = 1';
	$db = new db_query($sql);
	if ($row = mysql_fetch_assoc($db->result)) {
		if (isset($row[$name])) return $row[$name];
	}
	unset($db);
	return false;
}




<?php
include 'config/constants.php';

print '<meta content="text/html" charset="utf-8">';
print '<link rel="stylesheet" href="../css/FStyle.css">';

// LIBRARY CLASSES & FUNCTIONS
$lib_direct = 'lib/';
require_once 'database.php';
require_once $lib_direct . 'simple_html_dom.php';
require_once $lib_direct . 'phpWebHacks.php';
require_once $lib_direct . 'functions.php';
require_once 'common/Route.php';
require_once 'common/Message.php';
require_once 'common/Ini_Parser.php';

//define('ENVIRONMENT', 'develop');
define('ENVIRONMENT', 'production');
















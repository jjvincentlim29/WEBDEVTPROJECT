<?php

mysql_connect('localhost', 'root', '');
mysql_select_db('befitt');

$admin='admin';

//Forum Home Page
$url_home = 'index.php';
$url_forum = 'forums.php';

//Design Name
$design = 'default';

include('init.php');
?>
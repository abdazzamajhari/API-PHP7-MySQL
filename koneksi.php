<?php

define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DB', 'db_ahu');

$connect = mysqli_connect(HOST, USER, PASS, DB) or  die('unable to connect');
 
?>
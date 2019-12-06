<?php
define('HOST', 'localhost');
define('USER', 'root');
define('PASS', '');
define('DB', 'db_apiprit');

$con = mysqli_connect(HOST, USER, PASS, DB) or  die('unable to connect');
 
if($con){
    
}else{
    echo "Connection Failed!";
    exit();
}

?>
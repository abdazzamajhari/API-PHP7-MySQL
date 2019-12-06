<?php

    require "connection.php";

    $response = array();

    $sql = mysqli_query($con, "SELECT * FROM tb_log_tracking");

    while($a = mysqli_fetch_array($sql)){
        $b['id'] = $a['id'];
        $b['callsign'] = $a['callsign'];
        $b['latitude'] = $a['latitude'];
        $b['longitude'] = $a['longitude'];
        $b['last_update'] = $a['last_update'];
        
        array_push($response, $b);
    }

    header('Content-Type: application/json');
    echo json_encode($response, JSON_PRETTY_PRINT);

?>
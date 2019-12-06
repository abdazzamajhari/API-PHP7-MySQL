<?php

if($_SERVER['REQUEST_METHOD']=='POST') {

   $response = array();

   //collecting post data before sending to server database
   $callsign = $_POST['callsign'];
   
   $latitude = $_POST['latitude'];
   $longitude = $_POST['longitude'];

   $date = date('Y-m-d H:i:s');

   //server connection
   require_once('connection.php');
   
   //data checking
   $sql = "SELECT * FROM tb_log_tracking WHERE callsign ='$callsign'";
   $check = mysqli_fetch_array(mysqli_query($con,$sql));

   if(isset($check)){

        $sql = "UPDATE tb_log_tracking SET latitude = '$latitude', longitude = '$longitude', last_update = '$date' where callsign ='$callsign'";
	     mysqli_query($con, $sql);
        $response["value"] = 202;
        $response["message"] = "Update your last Transmit";
        
        header('Content-Type: application/json');
        echo json_encode($response, JSON_PRETTY_PRINT);

   } else {

        $sql = "INSERT INTO tb_log_tracking (callsign, latitude, longitude, last_update) VALUES('$callsign', '$latitude', '$longitude', '$date')";
        if(mysqli_query($con,$sql)) {
        $response["value"] = 201;
        $response["message"] = "We tracking you";
        
        header('Content-Type: application/json');
        echo json_encode($response, JSON_PRETTY_PRINT);

     } else {

	     $response["value"] = 304;
        $response["message"] = "Not Modified";
        
        header('Content-Type: application/json');
        echo json_encode($response, JSON_PRETTY_PRINT);

     }
   }

   //close database
   mysqli_close($con);

} else {

  $response["value"] = 400;
  $response["message"] = "Bad Request";
  
  header('Content-Type: application/json');
  echo json_encode($response, JSON_PRETTY_PRINT);

}
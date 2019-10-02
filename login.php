<?php
 require "koneksi.php";

 if ($_SERVER['REQUEST_METHOD']=="POST") {
 	$response = array();
 	$username = $_POST['username'];
 	$password = md5($_POST['password']) ;

//langkah 2
 	$cek = "SELECT * FROM tb_pengguna WHERE username='$username' and password='$password'";
 	$result = mysqli_fetch_array(mysqli_query($connect, $cek));

 	if (isset($result)) {
 		$response['value'] = 1;
 		$response['message'] = "Login Berhasil";
 		$response['username'] = $result['username'];
 		$response['full_name'] = $result['full_name'];
 		echo json_encode($response);
 		# code...
 	} else {
 		$response['value'] = 0;
 		$response['message'] = "Login Gagal";
 		echo json_encode($response);
 	}
 	# code...
 }


?>
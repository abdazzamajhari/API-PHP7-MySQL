<?php

require "koneksi.php";

$response = array();

$sql = mysqli_query($connect, "SELECT j.id, j.tanggal_jurnal, j.judul_jurnal, j.judul_jurnal_terjemahan, j.penulis, jb.nama_bahasa, j.penerbit, jk.nama_kategori, jp.nama_publikasi, j.abstraksi, j.abstraksi_terjemahan, j.berkas_upload, j.gambar_upload, p.full_name, j.dibuat_pada, j.terakhir_update 
FROM tb_jurnal j, tb_jurnal_bahasa jb, tb_jurnal_kategori jk, tb_jurnal_publikasi jp, tb_pengguna p 
WHERE j.bahasa_id = jb.id AND j.kategori_id = jk.id AND j.publikasi_id = jp.id AND j.username_id = p.id");

while ($a = mysqli_fetch_array($sql)) {
    # code...
	//$sql2 = mysqli_query($connect, "SELECT j.id, j.tanggal_jurnal, j.judul_jurnal, j.penulis, jb.nama_bahasa, j.penerbit, jk.nama_kategori, jp.nama_publikasi, j.abstraksi, j.abstraksi_terjemahan, j.berkas_upload, j.gambar_upload, p.full_name, j.dibuat_pada, j.terakhir_update
	//FROM tb_jurnal j, tb_jurnal_bahasa jb, tb_jurnal_kategori jk, tb_jurnal_publikasi jp, tb_pengguna p");
       //$b = mysqli_fetch_array($sql2);

    $b['id'] = $a['id'];
    $b['tanggal_jurnal'] = $a['tanggal_jurnal'];
    $b['judul_jurnal'] = $a['judul_jurnal'];
    $b['judul_jurnal_terjemahan'] = $a['judul_jurnal_terjemahan'];
    $b['penulis'] = $a['penulis'];
    $b['nama_bahasa'] = $a['nama_bahasa'];
	$b['penerbit'] = $a['penerbit'];
	$b['nama_kategori'] = $a['nama_kategori'];
	$b['nama_publikasi'] = $a['nama_publikasi'];
	$b['abstraksi'] = $a['abstraksi'];
	$b['abstraksi_terjemahan'] = $a['abstraksi_terjemahan'];
	$b['berkas_upload'] = $a['berkas_upload'];
	$b['gambar_upload'] = $a['gambar_upload'];
	$b['full_name'] = $a['full_name'];
	$b['dibuat_pada'] = $a['dibuat_pada'];
	$b['terakhir_update'] = $a['terakhir_update'];


    array_push($response, $b);
}

echo json_encode($response);


?>
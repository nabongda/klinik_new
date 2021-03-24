<?php
	session_start();
	include('../../../config/koneksi.php');

	$module	= $_GET['module'];
	$act	= $_GET['act'];

	$nama_kas	= $_POST['nama_kas'];
	$jumlah		= $_POST['jumlah'];
	$ket 		= $_POST['ket'];
	$tanggal	= date('Y-m-d H:i:s');
	$kategori	= $_POST['kategori'];
	
	$sql	= mysqli_query($con, "INSERT INTO data_kas(nama_kas,jumlah,ket,tanggal,kategori) VALUES('$nama_kas','$jumlah','$ket','$tanggal','$kategori')");

	header('location:../../media.php?module=kas');
	
?>

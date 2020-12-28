<?php
	session_start();
	include "../../../config/koneksi.php";
	include "../../../config/fungsi_seo.php";
	include "../mod_log/aksi_log.php";
	include "exelreader.php";
	
	$module	= $_GET['module'];
	$act	= $_GET['act'];

	// Hapus Produk pusat
	if ($act == 'hapus'){
		$id		= $_GET['no_peng'];
		
		$sql = mysqli_query($con, "SELECT * FROM history_kirim_stok WHERE no_peng='$id'");
		while ($result = mysqli_fetch_array($sql)) {
			if ($result['status']=='kirim') {
				$sql2 = mysqli_query($con, "SELECT * FROM produk_pusat WHERE kode_barang='$result[kd_brg]'");
				$ambil = mysqli_fetch_array($sql2);
				$jumlahsql = $ambil['jumlah']+$result['jumlah'];

				if ($jumlahsql<=0) {
					mysqli_query($con, "UPDATE produk_pusat SET jumlah='0' WHERE kode_barang='$result[kd_brg]'");
				}
				else {
					mysqli_query($con, "UPDATE produk_pusat SET jumlah='$jumlahsql' WHERE kode_barang='$result[kd_brg]'");
				}	
			}

			mysqli_query($con, "DELETE FROM kirim_stok WHERE no_peng='$id'");
			mysqli_query($con, "DELETE FROM history_kirim_stok WHERE no_peng='$id'");
			catat($con, $_SESSION['namauser'], 'Hapus Data Produk'.' ('.$id.')');
		}
		
	}

	elseif ($act == 'editbrg') {
		$title = "Update";
        $text = "Data berhasil diperbarui!";
        $icon = "success";
        mysqli_query($con, "UPDATE history_kirim_stok SET jumlah = '$_POST[jumlah]' WHERE id = '$_POST[id]'");
	}
	
	header('location:../../media.php?module=pengiriman_stok');
	exit();
?>
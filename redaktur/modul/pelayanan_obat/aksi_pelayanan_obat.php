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
		$id		= $_GET['no_tran'];
		
		$sql = mysqli_query($con, "SELECT * FROM history_beli_obat Where no_tran='$id'");
		while ($result = mysqli_fetch_array($sql)) {
			mysqli_query($con, "Delete From pelayanan_obat Where no_tran='$id'");
			mysqli_query($con, "Delete From history_beli_obat Where no_tran='$id'");
			catat($con, $_SESSION['namauser'], 'Hapus Data Produk'.' ('.$id.')');
		}
		
	}
	// Input Produk pusat Baru
	elseif ($act == 'input') {
		$kd_brg 		= $_POST['kd_brg'];
		$nama_brg 		= $_POST['nama_brg'];
		$satuan		    = $_POST['satuan'];
		$kategori		= $_POST['kategori'];
		$jumlah			= $_POST['jumlah'];
		$hrg 			= $_POST['hrg'];
		$hrg_tot		= $jumlah*$hrg;
		$diskon			= $_POST['diskon'];
		$hrg_jual		= $_POST['harga_jual'];
		$batas_cabang	= $_POST['batas_cabang'];
		$batas_minim	= $_POST['batas_minim'];
		$diskon_harga   = $hrg_tot*($diskon/100);
		$sub_tot		= $hrg_tot-$diskon_harga;
		$no_tran		= $_POST['no_tran'];
		$nama_pembeli	= $nama_pembeli['nama_pembeli'];
		$tgl_beli		= $_POST['tgl_beli'];

		$jumlahkan 		= "SELECT SUM(sub_tot) AS total FROM beli_obat";
		mysqli_query($con, "INSERT INTO beli_obat(kd_brg,nama_brg,satuan_o,kategori_o,hrg,hrg_jual,batas_cabang,batas_minim,jumlah,diskon,sub_tot,tgl_beli) VALUES('$kd_brg','$nama_brg','$satuan','$kategori', '$hrg','$hrg_jual','$batas_cabang','$batas_minim','$jumlah', '$diskon', '$sub_tot', '$tgl_beli')");
	}
	
	header('location:../../media.php?module=pelayanan_obat');
	exit();
?>
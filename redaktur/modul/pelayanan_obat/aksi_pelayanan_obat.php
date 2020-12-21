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
		$id		= $_GET['no_fak'];
		
		$sql = mysqli_query($con, "SELECT * FROM history_beli_t Where no_fak='$id'");
		while ($result = mysqli_fetch_array($sql)) {
			$sql2 = mysqli_query($con, "SELECT * FROM produk_pusat where kode_barang='$result[kd_brg]'");
			$ambil = mysqli_fetch_array($sql2);
			$jumlahsql = $ambil['jumlah']-$result['jumlah'];

			if ($jumlahsql<=0) {
				mysqli_query($con, "UPDATE produk_pusat SET jumlah='0' where kode_barang='$result[kd_brg]'");
			}
			else {
				mysqli_query($con, "UPDATE produk_pusat SET jumlah='$jumlahsql' where kode_barang='$result[kd_brg]'");
			}

			mysqli_query($con, "Delete From beli Where no_fak='$id'");
			mysqli_query($con, "Delete From history_beli_t Where no_fak='$id'");
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
		$hrg_jual			= $_POST['harga_jual'];
		$batas_cabang			= $_POST['batas_cabang'];
		$batas_minim			= $_POST['batas_minim'];
		//$id_sup			= $_POST['id_sup'];
		$diskon_harga   = $hrg_tot*($diskon/100);
		$sub_tot		= $hrg_tot-$diskon_harga;
		//$no_fak			= $_POST['no_fak'];
		$tgl_beli		= $_POST['tgl_beli'];
		//$suplier		= $_POST['suplier'];
		//$total			= $_POST['total'];
		$pembayaran		= $_POST['pembayaran'];
		$ket			= $_POST['ket'];

		$jumlahkan 		= "SELECT SUM(sub_tot) AS total FROM pembelian_t";
		mysqli_query($con, "INSERT INTO pembelian_t(kd_brg,nama_brg,satuan_t,kategori_t,hrg,hrg_jual,batas_cabang,batas_minim,jumlah,diskon,sub_tot,tgl_beli) VALUES('$kd_brg','$nama_brg','$satuan','$kategori', '$hrg','$hrg_jual','$batas_cabang','$batas_minim','$jumlah', '$diskon', '$sub_tot', '$tgl_beli')");
		

	}
	
	header('location:../../media.php?module=pembelian_t');
	exit();
?>
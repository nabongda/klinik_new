<?php 
include "../../../config/koneksi.php";

$no_peng	= $_POST['no_peng'];
$id_ju    	= $_POST['id_ju'];
$tgl		= date("Y-m-d");
$ket    	= $_POST['ket'];

mysqli_query($con, "INSERT INTO kirim_stok (no_peng, id_ju, tgl_kirim, ket) VALUES('$no_peng', '$id_ju', '$tgl', '$ket')");

mysqli_query($con, "INSERT INTO history_kirim_stok (no_peng, tgl_kirim, kd_brg, nama_brg, satuan, kategori, hrg, hrg_jual, batas_cabang, batas_minim, jumlah, tgl_produksi, tgl_expired) SELECT '$no_peng','$tgl',kd_brg,nama_brg,satuan_ps,kategori_ps,hrg,hrg_jual,batas_cabang,batas_minim,jumlah,tgl_produksi,tgl_expired FROM pengiriman_stok");

$q = mysqli_query($con, "SELECT * FROM history_kirim_stok Where no_peng='$no_peng'");

while ($cek = mysqli_fetch_array($q)) {
	$q2 = mysqli_query($con, "SELECT * FROM produk_pusat where kode_barang='$cek[kd_brg]'");
	$jum = mysqli_num_rows($q2);

	if ($jum>0) {
		$p = mysqli_fetch_array($q2);
		$jumlah = $p['jumlah']-$cek['jumlah'];
		mysqli_query($con, "UPDATE produk_pusat SET jumlah='$jumlah' where kode_barang='$cek[kd_brg]'");
	}
}
mysqli_query($con, "TRUNCATE TABLE pengiriman_stok");
header('location:../../media.php?module=pengiriman_stok');
?>
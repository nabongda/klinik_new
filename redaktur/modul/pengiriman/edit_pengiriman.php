<?php

include "../../../config/koneksi.php";

$id = $_POST['id'];
$jumlah = $_POST['jumlah'];

$ks = mysqli_query($con, "SELECT * FROM history_kirim_stok WHERE id='$id'");
$data = mysqli_fetch_array($ks);
if ($data['jumlah'] > $jumlah) {
    $stok1 = $data['jumlah']-$jumlah;
    $sql1 = mysqli_query($con, "SELECT * FROM produk_pusat WHERE kode_barang='$data[kd_brg]'");
	$ambil1 = mysqli_fetch_array($sql1);
	$jml1 = $ambil1['jumlah']+$stok1;
    mysqli_query($con, "UPDATE produk_pusat SET jumlah='$jml1' WHERE kode_barang='$data[kd_brg]'");
}
elseif ($data['jumlah'] < $jumlah) {
    $stok2 = $jumlah-$data['jumlah'];
    $sql2 = mysqli_query($con, "SELECT * FROM produk_pusat WHERE kode_barang='$data[kd_brg]'");
	$ambil2 = mysqli_fetch_array($sql2);
	$jml2 = $ambil2['jumlah']-$stok2;
    mysqli_query($con, "UPDATE produk_pusat SET jumlah='$jml2' WHERE kode_barang='$data[kd_brg]'");
}

$query = "UPDATE history_kirim_stok SET jumlah='$jumlah', status='kirim', pesan='' WHERE id='$id'";
$sql = mysqli_query($con, $query); // Eksekusi/ Jalankan query dari variabel $query

header('location:../../media.php?module=pengiriman_stok');

?>
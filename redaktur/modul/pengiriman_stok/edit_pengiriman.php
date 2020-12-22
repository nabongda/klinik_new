<?php

include "../../../config/koneksi.php";

$id = $_POST['id'];
$no_peng = $_POST['no_peng'];
$tgl_kirim = $_POST['tgl_kirim'];
$ket = $_POST['ket'];

$query = "UPDATE kirim_stok SET no_peng='$no_peng', tgl_kirim='$tgl_kirim', ket='$ket' WHERE id='$id'";
$sql = mysqli_query($con, $query); // Eksekusi/ Jalankan query dari variabel $query

header('location:../../media.php?module=pengiriman_stok');

?>
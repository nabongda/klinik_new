<?php
session_start();
$id_kk = $_SESSION['klinik'];
include "../../../config/koneksi.php";

$id = $_POST['id_ps'];

$hapus=mysqli_query($con,"DELETE FROM pengiriman_stok WHERE id_ps ='$id' ");


if(isset($hapus)){
	echo "YES";
}else{
	echo "NO";
}

?>
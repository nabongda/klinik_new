<?php
session_start();
$id_kk = $_SESSION['klinik'];
include "../../../config/koneksi.php";

$id = $_POST['id_beli_obat'];

$hapus=mysqli_query($con,"DELETE FROM beli_obat WHERE id_beli_obat ='$id' ");


if(isset($hapus)){
	echo "YES";
}else{
	echo "NO";
}

?>
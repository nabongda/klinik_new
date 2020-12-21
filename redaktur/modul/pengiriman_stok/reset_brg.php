<?php 
include "../../../config/koneksi.php";

session_start();

mysqli_query($con,"DELETE FROM pengiriman_stok WHERE id_ps='$id'");

exit();
?>
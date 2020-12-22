<?php 

include "../../../config/koneksi.php";

$r = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM pengiriman_stok WHERE id = '$_GET[id]'"));

echo '{"jumlah":"'.$r['jumlah'].'"}';

?>
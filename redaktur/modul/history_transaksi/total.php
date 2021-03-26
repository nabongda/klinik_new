<?php 

include "../../../config/koneksi.php";

include '../../../config/fungsi_rupiah.php';

$nofak = $_POST['nofak'];
$id    = $_POST['id'];

$filt = ($_POST['layan'] == "jalan")? "AND jenis != 'Produk' AND kategori != '2'" : "";

$q1 = mysqli_query($con, "SELECT * FROM history_kasir WHERE no_faktur='$nofak' AND status='Belum Lunas' AND id IN ($id)");
$q2 = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(sub_total) AS sub_total FROM history_kasir WHERE no_faktur='$nofak' AND status='Belum Lunas'"));

$total = 0;
while ($ks=mysqli_fetch_array($q1)) {
	$total += $ks['sub_total'];
}

$ongkir = $_POST['ongkir'];
// $out1	= $total;
$total += $ongkir;
$out1	= $q2['sub_total'];

$tot = array(

"rupiah1"=>rupiah($total),
"rupiah"=>rupiah($out1)


);

echo json_encode($tot);

exit();

?>
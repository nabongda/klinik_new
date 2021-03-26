<?php

include "../../../config/koneksi.php";

session_start();
$list_id   = $_POST['list_id'];
$id_kk	   = $_SESSION['klinik'];
$tgl       = $_POST['tgl'];
$id        = $_POST['id_pasien'];
$uang      = $_POST['uang'];
$uang_tr   = $_POST['uang_tr'];
$ongkir	   = $_POST['ongkir'];
$no_urut   = $_POST['no_urut'];
$kembalian = preg_replace("/[^0-9]/","", $_POST['kembalian']);
$total 	   = preg_replace("/[^0-9]/","", $_POST['total']);
$id_kasir  = $_SESSION['id_user'];
$nofak	   = $_POST['nofak'];
$metode	   = $_POST['metode'];
$id_rek	   = $_POST['no_rek'];

if ($uang+$uang_tr<$total+$ongkir) {
	echo "Kurang";
	exit();
}

$ht = mysqli_query($con, "SELECT * FROM history_kasir WHERE no_faktur='$nofak' AND status='Belum Lunas' AND id IN ($list_id)");
$nama_ht = "0";
while ($rht = mysqli_fetch_array($ht)) {
	$nama_ht = ",".$rht['nama'];
}

$pem     = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM pembayaran WHERE no_faktur='$nofak'"));
$total   = $total   + $pem['total'];
$uang    = $uang    + $pem['uang'];
$uang_tr = $uang_tr + $pem['uang_transfer'];
mysqli_query($con, "UPDATE history_kasir SET status='Lunas',id_kasir='$id_kasir' WHERE no_faktur='$nofak' AND status='Belum Lunas' AND id IN ($list_id)");

if(is_null($pem['total'])){
if($uang == $total){
	mysqli_query($con, "INSERT INTO pembayaran (status,no_faktur,id_pasien,id_kk,no_urut,tgl,total,uang,uang_transfer,uang_ongkir,m_pembayaran,id_rek,ket,kembalian,id_kasir) VALUES ('Lunas','$nofak','$id','$id_kk','$no_urut','$tgl','$total','$uang','$uang_tr','$ongkir','$metode','$id_rek',NULL,'$kembalian','$id_kasir')");
} else {
	mysqli_query($con, "INSERT INTO pembayaran (no_faktur,id_pasien,id_kk,no_urut,tgl,total,uang,uang_transfer,uang_ongkir,m_pembayaran,id_rek,ket,kembalian,id_kasir) VALUES ('$nofak','$id','$id_kk','$no_urut','$tgl','$total','$uang','$uang_tr','$ongkir','$metode','$id_rek',NULL,'$kembalian','$id_kasir')");
}

} else {
	
mysqli_query($con, "UPDATE pembayaran SET status = 'Lunas', total='$total',uang='$uang',uang_transfer='$uang_tr' WHERE no_faktur='$nofak'");

}

mysqli_query($con, "UPDATE history_ap SET pembayaran='Lunas' WHERE no_faktur='$nofak' AND id IN ($list_id)");
mysqli_query($con, "DELETE FROM kasir_sementara WHERE no_faktur='$nofak' AND nama IN ('$nama_ht')");

exit();

?>
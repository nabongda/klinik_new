<?php 

session_start();

include "../../../config/koneksi.php";

$nama      = $_POST['nama_t'];
$jumlah  = $_POST['jumlah'];
$harga     = $_POST['harga_t'];
$id_kk     = $_SESSION['klinik'];
$id        = $_POST['id_pasien'];
$no        = $_POST['no_urut'];
$tgl       = date("Y-m-d");
$no_faktur = $_POST['nofak'];
$modal	   = $_POST['modal'];
$diskon	   = $_POST['dis'];
$ket	   = $_POST['ket'];
$kategori  = $_POST['kategori'];
$sub_total = $harga;
$sub_total -= ($diskon/100)*$harga;
$id_dr = $_SESSION['id_dr'];
$kat = $_GET['kat'];
$visit = $_POST['tgl_visit'];
$dr_visit = $_POST['dr_visit'];

mysqli_query($con,"INSERT INTO kasir_sementara
	 (no_faktur,id_pasien,tanggal,no_urut,nama,harga,jumlah,id_kk,jenis,status,penginput,harga_beli,diskon,ket,sub_total,id_dr,kategori,tgl_visit) 
	 VALUES('$no_faktur','$id','$tgl','$no','$nama','$harga','$jumlah','$id_kk','Treatment','Belum Lunas','Dokter','$modal','$diskon','$ket','$sub_total','$dr_visit','$kat','$visit')");

mysqli_query($con, "INSERT INTO history_kasir(no_faktur,id_pasien, id_dr, tanggal, no_urut, nama,kode, harga, jumlah, diskon, sub_total,id_kk, jenis, status, ket, penginput, kategori, tgl_visit) VALUES('$no_faktur', '$id','$dr_visit', '$tgl', '$no', '$nama', '$kode', '$harga', 1, '$diskon','$sub_total', '$id_kk', 'Treatment', 'Belum Lunas','$ket', 'Kasir', '$kategori', '$visit')");

exit();


?>
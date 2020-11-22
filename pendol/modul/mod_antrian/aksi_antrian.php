<?php
include "../../../config/koneksi.php";

//split tanggal
$t = explode(" ",$_POST['tglantri']);

//nomer antrian
$c = mysqli_fetch_assoc(mysqli_query($con,"SELECT MAX(no_urut) last FROM antrian_pasien WHERE tanggal_pendaftaran  = '$t[0]'"));
$urut = is_null($c['last'])? 1 : $c['last'] + 1; 

$sql = "INSERT INTO antrian_pasien (online,no_urut,no_faktur,id_pasien,tanggal_pendaftaran,jenis_layanan,id_dr,poliklinik,jenis_pasien,tgl_out) VALUES ('1','$urut','$_POST[nofaktur]','$_POST[nopasien]','$_POST[tglantri]','poliklinik','$_POST[dr]','$_POST[poli]','$_POST[penjamin]','$_POST[tglantri]')";
mysqli_query($con,$sql);
?>
<script>
	alert("Pendaftaran Berhasil");
	location.href="../../media.php?module=home";
</script>
<?php

session_start();

$id_kk = $_SESSION['klinik'];

include "../../../config/koneksi.php";

$id = $_POST['id'];

if(isset($_POST['search'])){
 $search = $_POST['search'];

 $query = "SELECT * FROM produk WHERE jumlah>0 AND nama_p like'%".$search."%'";
 // 7 9 12 13

 $result = mysqli_query($con,$query);

 $response = array();
 while($row = mysqli_fetch_array($result) ){
	$pm = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM produk_master WHERE kd_produk='$row[kode_barang]'"));

	$k = mysqli_query($con,"SELECT jenis_pasien FROM antrian_pasien WHERE no_faktur = '$_POST[nofak]'");
		$kx = mysqli_num_rows($k);
		
		$m = mysqli_query($con,"SELECT jenis_pasien FROM history_ap WHERE no_faktur = '$_POST[nofak]'");
		$mx = mysqli_num_rows($m);

		$md = mysqli_query($con,"SELECT jenis_pasien FROM perawatan_pasien WHERE no_faktur = '$_POST[nofak]'");
		$mdx = mysqli_num_rows($md);

		if($kx > 0){
		$tipes = mysqli_fetch_assoc($k);
		} else if($mx > 0){
		$tipes = mysqli_fetch_assoc($m);
		} else {
		$tipes = mysqli_fetch_assoc($md);
		}

	switch($tipes['jenis_pasien']){
		case "umum": $harga = $pm['jual_umum']; break;
		case "bpjs": $harga = $pm['jual_bpjs']; break;
		case "lain": $harga = $pm['jual_lain']; break;
		case "inhealt": $harga = $pm['jual_lain']; break;
		case "jkk": $harga = $pm['jual_lain']; break;
		case "corp1": $harga = $pm['jual_lain']; break;
		case "corp2": $harga = $pm['jual_lain']; break;
	}
   $response[] = array(
   	"label"=>$row['nama_p'],
   	"kode"=>$row['kode_barang'],
	"harga_b"=>$row['hrg'],
	"harga"=>$harga,
	// "harga"=>$row['hrg_jual'],
   	"limit"=>$row['jumlah'],
   	"diskon"=>$bd
   );
 }

 echo json_encode($response);
}

exit();
?>
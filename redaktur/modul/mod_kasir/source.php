<?php

session_start();

include "../../../config/koneksi.php";

$id = $_POST['id'];

if(isset($_POST['search'])){
 $search = $_POST['search'];

 $query = "SELECT * FROM treatment WHERE nama_t like'%".$search."%' AND kategori='$_POST[kategori]'";
 $query2 = "SELECT * FROM biaya_administrasi WHERE nama like'%".$search."%'";
 
 $result = mysqli_query($con,$query);
 $result2 = mysqli_query($con,$query2);

 $response = array();

 while($row = mysqli_fetch_array($result)){
	$k = mysqli_query($con,"SELECT jenis_pasien FROM antrian_pasien WHERE no_faktur='$_POST[nofak]'");
	$kx = mysqli_num_rows($k);
	$rk = mysqli_fetch_array($k);
	
	$m = mysqli_query($con,"SELECT jenis_pasien FROM history_ap WHERE no_faktur='$_POST[nofak]'");

	$tipes = ($kx > 0)? mysqli_fetch_assoc($k) : mysqli_fetch_assoc($m);
	switch($rk['jenis_pasien']){
		case "umum": $harga = $row['harga']; break;
		case "bpjs": $harga = $row['bpjs']; break;
		case "lain": $harga = $row['lain']; break;
		case "inhealt": $harga = $row['lain']; break;
		case "jkk": $harga = $row['lain']; break;
		case "corp1": $harga = $row['lain']; break;
		case "corp2": $harga = $row['lain']; break;
	}

	$response[] = array(
		"label"=>$row['nama_t'],
		"harga"=>$harga,
		"modal"=>$row['modal'],
		"kategori"=>$row['kategori'],
		"status"=>"0"
	);
}

// $cek = ($_POST['kategori'] == "4")? 0 : mysqli_num_rows($result);
//$cek = ($_POST['kategori'] == "1");

// if($cek > 0){
// 	while($row = mysqli_fetch_array($result) ){
// 		$k = mysqli_query($con,"SELECT jenis_pasien FROM antrian_pasien WHERE no_faktur='$_POST[nofak]'");
// 		$kx = mysqli_num_rows($k);
		
// 		$m = mysqli_query($con,"SELECT jenis_pasien FROM history_ap WHERE no_faktur='$_POST[nofak]'");

// 		$tipes = ($kx > 0)? mysqli_fetch_assoc($k) : mysqli_fetch_assoc($m);
		
// 		switch($tipes['jenis_pasien']){
// 			case "umum": $harga = $row['harga']; break;
// 			case "bpjs": $harga = $row['bpjs']; break;
// 			case "lain": $harga = $row['lain']; break;
// 		}
// 	  $response[] = array(
// 		  "label"=>$row['nama_t'],
// 		  "harga"=>$harga,
// 		  "modal"=>$row['modal'],
// 		  "status"=>"0"
// 	  );
// 	}
// } else {
// 	while($row2 = mysqli_fetch_array($result2) ){
		
// 	  $response[] = array(
// 		  "label"=>$row2['nama'],
// 		  "harga"=>$row2["biaya"],
// 		  "status"=>"1"
		 
// 	  );
// 	}
// }

//echo $cek;
 echo json_encode($response);
}

exit;
?>
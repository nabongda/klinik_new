<?php

include "../../../config/koneksi.php";

if(isset($_POST['search'])){
 $search = $_POST['search'];

 $query = "SELECT * FROM produk_master WHERE nama_produk like'%".$search."%'";
 
 $result = mysqli_query($con,$query);

 $response = array();
 while($row = mysqli_fetch_array($result) ){
   $response[] = array(
      "label"=>$row['nama_produk'],
   	  "kd_produk"=>$row['kd_produk'],
      "jenis_obat"=>$row['jenis_obat'],
      "harga_beli"=>$row['harga_beli'],
      "harga_jual"=>$row['harga_jual'],
      "id_satuan"=>$row['id_satuan'],
      "id_kategori"=>$row['id_kategori'],
      "tgl_produksi"=>$row['tgl_produksi'],
      "tgl_expired"=>$row['tgl_expired'],
   );
 }
}
 echo json_encode($response);

exit;
?>
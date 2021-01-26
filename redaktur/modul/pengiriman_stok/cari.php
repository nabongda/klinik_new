<?php

include "../../../config/koneksi.php";

if(isset($_POST['search'])){
  $search = $_POST['search'];
 
  $query = "SELECT * FROM produk_pusat WHERE nama_p like'%".$search."%'";
 
  $result = mysqli_query($con, $query);
  
  $response = array();
  while($row = mysqli_fetch_array($result) ){
    $response[] = array(
      "label"=>$row['nama_p'],
      "jml"=>$row['jumlah'],
      "kd_produk"=>$row['kode_barang'],
      "jenis_obat"=>$row['jenis_obat'],
      "harga_beli"=>$row['hrg'],
      "harga_jual"=>$row['hrg_jual'],
      "id_satuan"=>$row['satuan'],
      "id_kategori"=>$row['kategori'],
      "tgl_produksi"=>$row['tgl_produksi'],
      "tgl_expired"=>$row['tgl_expired'],
    );
  }
}

echo json_encode($response);

exit;
?>
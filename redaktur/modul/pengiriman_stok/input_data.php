<?php


include "../../../config/koneksi.php";

$kd_brg 		= $_POST['kd_brg'];
$nama_brg 		= $_POST['nama_brg'];
$jenis_obat		= $_POST['jenis_obat'];
$satuan		    = $_POST['id_satuan'];
$kategori		= $_POST['id_kategori'];
$jumlah			= $_POST['jumlah'];
$hrg 			= $_POST['hrg'];
$hrg_tot		= $jumlah*$hrg;
$diskon			= $_POST['diskon'];
$hrg_jual		= $_POST['harga_jual'];
$batas_cabang	= $_POST['batas_cabang'];
$batas_minim	= $_POST['batas_minim'];
//$id_sup			= $_POST['id_sup'];
$diskon_harga   = $hrg_tot*($diskon/100);
$sub_tot		= $hrg_tot-$diskon_harga;
//$no_fak			= $_POST['no_fak'];
$tgl_kirim		= $_POST['tgl_kirim'];
//$suplier		= $_POST['suplier'];
//$total			= $_POST['total'];
$pembayaran		= $_POST['pembayaran'];
$ket			= $_POST['ket'];
$tgl_produksi	= $_POST['tgl_produksi'];
$tgl_expired	= $_POST['tgl_expired'];

$q = mysqli_query($con, "SELECT * FROM pengiriman_stok");
$k = mysqli_num_rows($q);
//cek jml produk sblm pengiriman
$stok = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM produk_pusat WHERE kode_barang='$kd_brg'"));
if ($stok['jumlah'] < $jumlah) {
	echo "Produk tidak boleh lebih dari ".$stok['jumlah'];
}else{
	if ($k > 0) {
		$cek = mysqli_fetch_array($q);
		if ($cek['nama_brg']==$nama_brg) {
			$jum=1;
		}
		if ($jum>0) {
			$bo = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM pengiriman_stok WHERE kd_brg='$kd_brg'"));
			$jbo = $bo['jumlah']+$_POST['jumlah'];
			if ($stok['jumlah'] < $jbo) {
				echo "Produk tidak boleh lebih dari ".$stok['jumlah'];
			}else{
				$jumlah = $cek['jumlah']+$jumlah;
				mysqli_query($con, "UPDATE pengiriman_stok SET jumlah='$jumlah' where nama_brg='$nama_brg'");
				echo "Produk Berhasil Di Tambahkan!";
			}
		}else{
			mysqli_query($con, "INSERT INTO pengiriman_stok(kd_brg,nama_brg,jenis_obat,satuan_ps,kategori_ps,hrg,hrg_jual,batas_cabang,batas_minim,jumlah,tgl_kirim,tgl_produksi,tgl_expired) VALUES('$kd_brg','$nama_brg','$jenis_obat','$satuan','$kategori', '$hrg','$hrg_jual','$batas_cabang','$batas_minim','$jumlah', '$tgl_kirim', '$tgl_produksi', '$tgl_expired')");
			echo "Produk Berhasil Di Tambahkan!";
		}

	}else{
		mysqli_query($con, "INSERT INTO pengiriman_stok(kd_brg,nama_brg,jenis_obat,satuan_ps,kategori_ps,hrg,hrg_jual,batas_cabang,batas_minim,jumlah,tgl_kirim,tgl_produksi,tgl_expired) VALUES('$kd_brg','$nama_brg', '$jenis_obat','$satuan','$kategori', '$hrg','$hrg_jual','$batas_cabang','$batas_minim','$jumlah', '$tgl_kirim', '$tgl_produksi', '$tgl_expired')");
		echo "Produk Berhasil Di Tambahkan!";
	}
}

exit();
?>
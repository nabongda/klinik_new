<?php 

session_start();

include "../../../config/koneksi.php";



$nama    = $_POST['nama_p'];
$harga   = $_POST['harga_p'];
$id_kk   = $_SESSION['klinik'];
$jumlah  = $_POST['jumlah'];
$harga_b = $_POST['harga_b'];
$kode	 = $_POST['kode_p'];
$id      = $_POST['id_pasien'];
$no      = $_POST['no_urut'];
$tgl     = date("Y-m-d");
$no_faktur = $_POST['nofak'];
$diskon	= $_POST['dis'];
$ket	= $_POST['ket'];
// $sub_total = $harga*$jumlah;
// $sub_total -= ($diskon/100)*($harga*$jumlah); 

$id_dr = $_SESSION['id_dr'];
$hrg_tot		= $jumlah*$harga;
$diskon_harga   = $hrg_tot*($diskon/100);
$sub_total		= $hrg_tot-$diskon_harga;

$q1 = mysqli_query($con,"SELECT * FROM history_kasir WHERE nama='$nama' AND no_faktur='$no_faktur' AND id_kk='$id_kk'");
$k = mysqli_num_rows($q1);

$stok = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM produk WHERE kode_barang='$kode'"));
if ($stok['jumlah'] < $jumlah) {
	echo "Produk tidak boleh lebih dari ".$stok['jumlah'];
} else{
	if ($k >0) {
		$cek = mysqli_fetch_array($q1);
		if ($cek['nama']==$nama) {
			$jum=1;
		}
		// BATSEBAT
		if ($jum>0) {
			$ks = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM history_kasir WHERE kode='$kode' AND no_faktur='$no_faktur' AND id_kk='$id_kk'"));
			$jks = $ks['jumlah']+$_POST['jumlah'];
			if ($stok['jumlah'] < $jks) {
				echo "Produk tidak boleh lebih dari ".$stok['jumlah'];
			}else{
				$jumlah = $cek['jumlah']+$jumlah;
				mysqli_query($con, "UPDATE history_kasir SET jumlah='$jumlah',sub_total='$sub_total' WHERE nama='$nama' AND no_faktur='$no_faktur'");
				echo "Produk Berhasil Di Tambahkan!";
			}
		}else{				
			mysqli_query($con, "INSERT INTO history_kasir(no_faktur, id_pasien, id_dr, tanggal, no_urut, nama, kode, harga_beli, harga, jumlah, diskon, sub_total, id_kk, jenis, status, ket, penginput, kategori) VALUES('$no_faktur', '$id', '$id_dr', '$tgl', '$no', '$nama', '$kode', '$harga_b', '$harga', '$jumlah', '$diskon', '$sub_total', '$id_kk', 'Produk', 'Belum Lunas', '$ket', 'Kasir', 0)");
			echo "Produk Berhasil Di Tambahkan!";
		}
	
	}else{
		mysqli_query($con, "INSERT INTO history_kasir(no_faktur, id_pasien, id_dr, tanggal, no_urut, nama, kode, harga_beli, harga, jumlah, diskon, sub_total, id_kk, jenis, status, ket, penginput, kategori) VALUES('$no_faktur', '$id', '$id_dr', '$tgl', '$no', '$nama', '$kode', '$harga_b', '$harga', '$jumlah', '$diskon', '$sub_total', '$id_kk', 'Produk', 'Belum Lunas', '$ket', 'Kasir', 0)");
		echo "Produk Berhasil Di Tambahkan!";

		
	}
}

exit();

?>
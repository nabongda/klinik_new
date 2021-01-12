<?php 
include "../../../config/koneksi.php";
include "../../../config/fungsi_seo.php";

$id_ju    			= $_POST['id_ju'];
$no_tran 			= $_POST['no_tran'];
$tgl				= date("Y-m-d H:i:s");
$nama_pembeli   	= $_POST['nama_pembeli'];
$total  			= $_POST['total'];
$jenis_pembayaran	= $_POST['jenis_pembayaran'];
$cash				= $_POST['cash'];
$kembalian			= $_POST['kembalian'];
// RESEP OBAT
$nama_file = $_FILES['resep']['name'];
$ukuran_file = $_FILES['resep']['size'];
$tipe_file = $_FILES['resep']['type'];
$tmp_file = $_FILES['resep']['tmp_name'];
// Set path folder tempat menyimpan gambarnya
$path = "../../../resep_obat/".$nama_file;
if($tipe_file == "image/jpeg" || $tipe_file == "image/png" || $_FILES['file']['error'] == UPLOAD_ERR_NO_FILE){
	if($ukuran_file <= 5000000){
		if(move_uploaded_file($tmp_file, $path)){
			$query = "INSERT INTO pelayanan_obat(id_ju, no_tran, nama_pembeli, tgl_pembelian, jenis_pembayaran, total, cash, kembalian, resep) VALUES('$id_ju','$no_tran', '$nama_pembeli', '$tgl', '$jenis_pembayaran', '$total', '$cash', '$kembalian', '$nama_file')";
			mysqli_query($con, "INSERT INTO history_beli_obat (no_tran, tgl_beli, kd_brg, nama_brg, satuan, kategori, hrg, hrg_jual, batas_cabang, batas_minim, jumlah, diskon, sub_tot, tgl_produksi, tgl_expired) SELECT '$no_tran','$tgl',kd_brg,nama_brg,satuan_o,kategori_o,hrg,hrg_jual,batas_cabang,batas_minim,jumlah,diskon,sub_tot,tgl_produksi,tgl_expired FROM beli_obat ");
			$sql = mysqli_query($con, $query);
			$q = mysqli_query($con, "SELECT * FROM history_beli_obat WHERE no_tran='$no_tran'");

			while ($cek = mysqli_fetch_array($q)) {
				$q2 = mysqli_query($con, "SELECT * FROM produk WHERE kode_barang='$cek[kd_brg]'");
				$jum = mysqli_num_rows($q2);

				if ($jum>0) {
					$p = mysqli_fetch_array($q2);
					$jumlah = $p['jumlah']-$cek['jumlah'];
					mysqli_query($con, "UPDATE produk SET jumlah='$jumlah' where kode_barang='$cek[kd_brg]'");
				}else{
					$nama_brg		= $cek['nama_brg'];
					$hrg_beli		= $cek['hrg'];
					$hrg_jual		= $cek['hrg_jual'];
					$jumlah			= $cek['jumlah'];
					$id_sat			= $cek['satuan'];
					$kd_brg			= $cek['kd_brg'];
					$kategori		= $cek['kategori'];
					$tgl_produksi	= $cek['tgl_produksi'];
					$tgl_expired	= $cek['tgl_expired'];
					$batas_cabang	= 100;
					$batas_minim	= 10;
					mysqli_query($con, "INSERT INTO produk (
						kode_barang,nama_p,jumlah,hrg,hrg_jual,satuan,kategori,tgl_produksi,tgl_expired) VALUES('$kd_brg','$nama_brg','$jumlah','$hrg_beli','$hrg_jual','$id_sat','$kategori','$tgl_produksi','$tgl_expired')
						");
				}
			}
			if ($sql) {
				mysqli_query($con, "TRUNCATE TABLE beli_obat");
				header('location:../../media.php?module=pelayanan_obat');
			}
			else {
				echo "<script>alert('Gagal!');";
				echo "location.href='../../media.php?module=pelayanan_obat&act=tambah';</script>";
			}
		}
	}
}

?>
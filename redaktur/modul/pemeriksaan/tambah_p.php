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



	$q1 = mysqli_query($con,"SELECT * FROM kasir_sementara WHERE nama='$nama' AND no_faktur='$no_faktur' AND id_kk='$id_kk'");
	$k = mysqli_num_rows($q1);
	// if($jum>0){
		
	// 	$qq = mysqli_fetch_array($q1);
	// 	$total = $qq['jumlah'];
	// 	$total += $jumlah;
	// 	$sub_total = ($total*$harga);
	// 	$sub_total -= ($diskon/100)*($total*$harga);
	// 	mysqli_query($con,"UPDATE kasir_sementara SET jumlah='$total',status='Belum Lunas',sub_total='$sub_total' WHERE nama='$nama' AND no_faktur='$no_faktur'");
	// }else{
	// 	mysqli_query($con,"INSERT INTO kasir_sementara(nama,jumlah,harga,id_kk,harga_beli,kode,jenis,id_pasien,status,no_urut,tanggal,penginput,no_faktur,diskon,sub_total,ket,id_dr,kategori) VALUES('$nama','$jumlah','$harga','$id_kk','$harga_b','$kode','Produk','$id','Belum Lunas','$no','$tgl','Dokter','$no_faktur','$diskon','$sub_total','$ket','$id_dr','0')");
	// }

	$stok = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM produk WHERE kode_barang='$kode'"));
	if ($stok['jumlah'] < $jumlah) {
		echo "Produk tidak boleh lebih dari ".$stok['jumlah'];
	}else{
		if ($k >0) {
			$cek = mysqli_fetch_array($q1);
			if ($cek['nama']==$nama) {
				$jum=1;
			}
			// BATSEBAT
			if ($jum>0) {
				$ks = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM kasir_sementara WHERE kode='$kode' AND no_faktur='$no_faktur' AND id_kk='$id_kk'"));
				$jks = $ks['jumlah']+$_POST['jumlah'];
				if ($stok['jumlah'] < $jks) {
					echo "Produk tidak boleh lebih dari ".$stok['jumlah'];
				}else{
					$jumlah = $cek['jumlah']+$jumlah;
					mysqli_query($con, "UPDATE kasir_sementara SET jumlah='$jumlah',status='Belum Lunas',sub_total='$sub_total' WHERE nama='$nama' AND no_faktur='$no_faktur'");
					mysqli_query($con,"UPDATE history_kasir SET jumlah='$jumlah',status='Belum Lunas',sub_total='$sub_total' WHERE nama='$nama' AND no_faktur='$no_faktur'");
					echo "Produk Berhasil Di Tambahkan!";
				}
			}else{				
					mysqli_query($con, "INSERT INTO kasir_sementara(nama,jumlah,harga,id_kk,harga_beli,kode,jenis,id_pasien,status,no_urut,tanggal,penginput,no_faktur,diskon,sub_total,ket,id_dr,kategori) VALUES('$nama','$jumlah','$harga','$id_kk','$harga_b','$kode','Produk','$id','Belum Lunas','$no','$tgl','Dokter','$no_faktur','$diskon','$sub_total','$ket','$id_dr','0')");
					mysqli_query($con,"INSERT INTO history_kasir(nama,jumlah,harga,id_kk,harga_beli,kode,jenis,id_pasien,status,no_urut,tanggal,penginput,no_faktur,diskon,sub_total,ket,id_dr,kategori) VALUES('$nama','$jumlah','$harga','$id_kk','$harga_b','$kode','Produk','$id','Belum Lunas','$no','$tgl','Apotek','$no_faktur','$diskon','$sub_total','$ket','$id_dr',0)");
					echo "Produk Berhasil Di Tambahkan!";		
			}
		
		}else{
			mysqli_query($con, "INSERT INTO kasir_sementara(nama,jumlah,harga,id_kk,harga_beli,kode,jenis,id_pasien,status,no_urut,tanggal,penginput,no_faktur,diskon,sub_total,ket,id_dr,kategori) VALUES('$nama','$jumlah','$harga','$id_kk','$harga_b','$kode','Produk','$id','Belum Lunas','$no','$tgl','Dokter','$no_faktur','$diskon','$sub_total','$ket','$id_dr','0')");
			mysqli_query($con,"INSERT INTO history_kasir(nama,jumlah,harga,id_kk,harga_beli,kode,jenis,id_pasien,status,no_urut,tanggal,penginput,no_faktur,diskon,sub_total,ket,id_dr,kategori) VALUES('$nama','$jumlah','$harga','$id_kk','$harga_b','$kode','Produk','$id','Belum Lunas','$no','$tgl','Apotek','$no_faktur','$diskon','$sub_total','$ket','$id_dr',0)");
			echo "Produk Berhasil Di Tambahkan!";
		}
	}
	




exit();


?>
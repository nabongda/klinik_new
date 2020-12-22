<?php 
include "../../../config/koneksi.php";

		$no_tran = $_POST['no_tran'];
		$tgl    = date("Y-m-d");
		$nama_pembeli   = $_POST['nama_pembeli'];
		$total  = $_POST['total'];

		mysqli_query($con, "INSERT INTO pelayanan_obat (no_tran, nama_pembeli, tgl_pembelian,total) VALUES('$no_tran', '$nama_pembeli', '$tgl', '$total')");
		
		mysqli_query($con, "INSERT INTO history_beli_obat (no_tran, tgl_beli, kd_brg, nama_brg, satuan, kategori, hrg, hrg_jual, batas_cabang, batas_minim, jumlah, diskon, sub_tot, tgl_produksi, tgl_expired) SELECT '$no_tran','$tgl',kd_brg,nama_brg,satuan_o,kategori_o,hrg,hrg_jual,batas_cabang,batas_minim,jumlah,diskon,sub_tot,tgl_produksi,tgl_expired FROM beli_obat ");

		$q = mysqli_query($con, "SELECT * FROM history_beli_obat Where no_tran='$no_tran'");

		while ($cek = mysqli_fetch_array($q)) {
			$q2 = mysqli_query($con, "SELECT * FROM produk_pusat where kode_barang='$cek[kd_brg]'");
			$jum = mysqli_num_rows($q2);

			if ($jum>0) {
				$p = mysqli_fetch_array($q2);
				$jumlah = $p['jumlah']+$cek['jumlah'];
				mysqli_query($con, "UPDATE produk_pusat SET jumlah='$jumlah' where kode_barang='$cek[kd_brg]'");
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
				mysqli_query($con, "INSERT INTO produk_pusat (
					kode_barang,nama_p,jumlah,hrg,hrg_jual,satuan,kategori,tgl_produksi,tgl_expired) VALUES('$kd_brg','$nama_brg','$jumlah','$hrg_beli','$hrg_jual','$id_sat','$kategori','$tgl_produksi','$tgl_expired')
					");
			}
		}
		mysqli_query($con, "TRUNCATE TABLE beli_obat");
		header('location:../../media.php?module=pelayanan_obat');
?>
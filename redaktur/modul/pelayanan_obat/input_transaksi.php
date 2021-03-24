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

if ($_POST['submit']=="simpan") {
	if($tipe_file == "image/jpeg" || $tipe_file == "image/png" || $_FILES['resep']['error'] == UPLOAD_ERR_NO_FILE){
		if($ukuran_file <= 5000000){
			if(move_uploaded_file($tmp_file, $path)){
				$query = "INSERT INTO pelayanan_obat(id_ju, no_tran, nama_pembeli, tgl_pembelian, jenis_pembayaran, total, cash, kembalian, resep) VALUES('$id_ju','$no_tran', '$nama_pembeli', '$tgl', '$jenis_pembayaran', '$total', '$cash', '$kembalian', '$nama_file')";
				mysqli_query($con, "INSERT INTO history_beli_obat (no_tran, tgl_beli, kd_brg, nama_brg, jenis_obat, satuan, kategori, hrg, hrg_jual, batas_cabang, batas_minim, jumlah, diskon, sub_tot, tgl_produksi, tgl_expired) SELECT '$no_tran','$tgl',kd_brg,nama_brg,jenis_obat,satuan_o,kategori_o,hrg,hrg_jual,batas_cabang,batas_minim,jumlah,diskon,sub_tot,tgl_produksi,tgl_expired FROM beli_obat ");
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
						$jenis_obat		= $cek['jenis_obat'];
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
							kode_barang,nama_p,jenis_obat,jumlah,hrg,hrg_jual,satuan,kategori,tgl_produksi,tgl_expired) VALUES('$kd_brg','$nama_brg','$jenis_obat','$jumlah','$hrg_beli','$hrg_jual','$id_sat','$kategori','$tgl_produksi','$tgl_expired')
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
			else {
				$query = "INSERT INTO pelayanan_obat(id_ju, no_tran, nama_pembeli, tgl_pembelian, jenis_pembayaran, total, cash, kembalian) VALUES('$id_ju','$no_tran', '$nama_pembeli', '$tgl', '$jenis_pembayaran', '$total', '$cash', '$kembalian')";
				mysqli_query($con, "INSERT INTO history_beli_obat (no_tran, tgl_beli, kd_brg, nama_brg, jenis_obat, satuan, kategori, hrg, hrg_jual, batas_cabang, batas_minim, jumlah, diskon, sub_tot, tgl_produksi, tgl_expired) SELECT '$no_tran','$tgl',kd_brg,nama_brg,jenis_obat,satuan_o,kategori_o,hrg,hrg_jual,batas_cabang,batas_minim,jumlah,diskon,sub_tot,tgl_produksi,tgl_expired FROM beli_obat ");
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
						$jenis_obat		= $cek['jenis_obat'];
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
							kode_barang,nama_p,jenis_obat,jumlah,hrg,hrg_jual,satuan,kategori,tgl_produksi,tgl_expired) VALUES('$kd_brg','$nama_brg','$jenis_obat','$jumlah','$hrg_beli','$hrg_jual','$id_sat','$kategori','$tgl_produksi','$tgl_expired')
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
		else {
			echo "<script>alert('Maaf ukuran file tidak boleh lebih dari 5MB!');";
			echo "location.href='../../media.php?module=pelayanan_obat&act=tambah';</script>";
		}
	}
	else {
		echo "<script>alert('Maaf tipe file yang di upload harus JPG/JPEG/PNG!');";
		echo "location.href='../../media.php?module=pelayanan_obat&act=tambah';</script>";
	}
}
elseif ($_POST['submit']=="cetak") {
	$query_cetak = mysqli_query($con,"SELECT * FROM beli_obat");
	$q = mysqli_fetch_array(mysqli_query($con,"SELECT SUM(sub_tot) AS total, SUM(diskon) AS diskon FROM beli_obat")); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nota | App Apotik</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
        window.print('_blank');
    </script>
    <style>
        #invoice{
            padding: 30px;
        }

        .invoice {
            position: relative;
            background-color: #FFF;
            min-height: 680px;
            padding: 15px
        }

        .invoice header {
            padding: 10px 0;
            margin-bottom: 20px;
            border-bottom: 1px solid #3989c6
        }

        .invoice .company-details {
            text-align: right
        }

        .invoice .company-details .name {
            margin-top: 0;
            margin-bottom: 0
        }

        .invoice .contacts {
            margin-bottom: 20px
        }

        .invoice .invoice-to {
            text-align: left
        }

        .invoice .invoice-to .to {
            margin-top: 0;
            margin-bottom: 0
        }

        .invoice .invoice-details {
            text-align: right
        }

        .invoice .invoice-details .invoice-id {
            margin-top: 0;
            color: #3989c6
        }

        .invoice main {
            padding-bottom: 50px
        }

        .invoice main .thanks {
            margin-top: -100px;
            font-size: 2em;
            margin-bottom: 50px
        }

        .invoice main .notices {
            padding-left: 6px;
            border-left: 6px solid #3989c6
        }

        .invoice main .notices .notice {
            font-size: 1.2em
        }

        .invoice table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px
        }

        .invoice table td,.invoice table th {
            padding: 15px;
            background: #eee;
            border-bottom: 1px solid #fff
        }

        .invoice table th {
            white-space: nowrap;
            font-weight: 400;
            font-size: 16px
        }

        .invoice table td h3 {
            margin: 0;
            font-weight: 400;
            color: #3989c6;
            font-size: 1.2em
        }

        .invoice table .qty,.invoice table .total,.invoice table .unit {
            text-align: right;
            font-size: 1.2em
        }

        .invoice table .no {
            color: #fff;
            font-size: 1.6em;
            background: #3989c6
        }

        .invoice table .unit {
            background: #ddd
        }

        .invoice table .total {
            background: #3989c6;
            color: #fff
        }

        .invoice table tbody tr:last-child td {
            border: none
        }

        .invoice table tfoot td {
            background: 0 0;
            border-bottom: none;
            white-space: nowrap;
            text-align: right;
            padding: 10px 20px;
            font-size: 1.2em;
            border-top: 1px solid #aaa
        }

        .invoice table tfoot tr:first-child td {
            border-top: none
        }

        .invoice table tfoot tr:last-child td {
            color: #3989c6;
            font-size: 1.4em;
            border-top: 1px solid #3989c6
        }

        .invoice table tfoot tr td:first-child {
            border: none
        }

        .invoice footer {
            width: 100%;
            text-align: center;
            color: #777;
            border-top: 1px solid #aaa;
            padding: 8px 0
        }

        @media print {
            .invoice {
                font-size: 11px!important;
                overflow: hidden!important
            }

            .invoice footer {
                position: absolute;
                bottom: 10px;
                page-break-after: always
            }

            .invoice>div:last-child {
                page-break-before: always
            }
        }
    </style>
</head>
<body>
    <div id="invoice">
        <div class="invoice overflow-auto">
            <div style="min-width: 600px">
                <main>
                    <div class="row contacts">
                        <div class="col invoice-to">
                            <h2 class="to"><?php echo $no_tran; ?></h2>
                            <div class="address"><?php echo $tgl; ?></div>
                        </div>
                    </div>
                    <table border="0" cellspacing="0" cellpadding="0">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th class="text-left">NAMA OBAT</th>
                                <th class="text-right">HARGA</th>
                                <th class="text-right">JUMLAH</th>
                                <th class="text-right">TOTAL</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php 
                        $no = 1;
                        while ($row=mysqli_fetch_array($query_cetak)) { ?>
                        <tr>
                                <td class="no"><?php echo $no; ?></td>
                                <td class="text-left"><h3><?php echo $row['nama_brg']; ?></h3>
                                </td>
                                <td class="unit">Rp<?php echo $row['hrg']; ?></td>
                                <td class="qty"><?php echo $row['jumlah']; ?></td>
                                <td class="total">Rp<?php echo $row['sub_tot']; ?></td>
                                </tr>
                        
                        <?php
                        $no++;
                        } ?>
                        </tbody>
                        <tbody>
                            <tr>
                                <td colspan="2"></td>
                                <td colspan="2" style="text-align: right;">SUBTOTAL:</td>
                                <td>Rp <?php echo $q['total']; ?></td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td colspan="2" style="text-align: right;">TOTAL:</td>
                                <td>Rp <?php echo $total; ?></td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td colspan="2" style="text-align: right;">BAYAR:</td>
                                <td>Rp <?php echo $cash; ?></td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td colspan="2" style="text-align: right;">KEMBALI:</td>
                                <td>Rp <?php echo $kembalian; ?></td>
                            </tr>
                        </tbody>
                    </table>
                </main>
            <div>
        </div>
    </div>
</body>
</html>

<?php

}

?>
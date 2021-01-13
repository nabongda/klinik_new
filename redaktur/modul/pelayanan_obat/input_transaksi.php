<?php 
include "../../../config/koneksi.php";
include "../../../config/fungsi_seo.php";
require_once("../../dompdf/autoload.inc.php");
use Dompdf\Dompdf;
$dompdf = new Dompdf();

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
}
elseif ($_POST['submit']=="cetak") {
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
					$query_cetak = mysqli_query($con,"SELECT * FROM history_beli_obat WHERE no_tran='$no_tran'");
					$q = mysqli_fetch_array(mysqli_query($con,"SELECT * FROM pelayanan_obat WHERE no_tran='$no_tran'"));

					$html .= "<html lang='en'>
					<head>
						<meta charset='utf-8'>
						<title>simple invoice receipt email template - Bootdey.com</title>
						<meta name='viewport' content='width=device-width, initial-scale=1'>
						<link href='http://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css' rel='stylesheet'>
						<style type='text/css'>
							* {
								margin: 0;
								padding: 0;
								font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
								box-sizing: border-box;
								font-size: 14px;
							}
							img {
								max-width: 100%;
							}
							body {
								-webkit-font-smoothing: antialiased;
								-webkit-text-size-adjust: none;
								width: 100% !important;
								height: 100%;
								line-height: 1.6;
							}
							table td {
								vertical-align: top;
							}
							body {
								background-color: #f6f6f6;
							}
							.body-wrap {
								background-color: #f6f6f6;
								width: 100%;
							}
							.container {
								display: block !important;
								max-width: 600px !important;
								margin: 0 auto !important;
								/* makes it centered */
								clear: both !important;
							}
							.content {
								max-width: 600px;
								margin: 0 auto;
								display: block;
								padding: 20px;
							}
							.main {
								background: #fff;
								border: 1px solid #e9e9e9;
								border-radius: 3px;
							}
							.content-wrap {
								padding: 20px;
							}
							.content-block {
								padding: 0 0 20px;
							}
							.header {
								width: 100%;
								margin-bottom: 20px;
							}
							.footer {
								width: 100%;
								clear: both;
								color: #999;
								padding: 20px;
							}
							.footer a {
								color: #999;
							}
							.footer p, .footer a, .footer unsubscribe, .footer td {
								font-size: 12px;
							}
							h1, h2, h3 {
								font-family: 'Helvetica Neue', Helvetica, Arial, 'Lucida Grande', sans-serif;
								color: #000;
								margin: 40px 0 0;
								line-height: 1.2;
								font-weight: 400;
							}
							h1 {
								font-size: 32px;
								font-weight: 500;
							}
							h2 {
								font-size: 24px;
							}
							h3 {
								font-size: 18px;
							}
							h4 {
								font-size: 14px;
								font-weight: 600;
							}
							p, ul, ol {
								margin-bottom: 10px;
								font-weight: normal;
							}
							p li, ul li, ol li {
								margin-left: 5px;
								list-style-position: inside;
							}
							a {
								color: #1ab394;
								text-decoration: underline;
							}
							.btn-primary {
								text-decoration: none;
								color: #FFF;
								background-color: #1ab394;
								border: solid #1ab394;
								border-width: 5px 10px;
								line-height: 2;
								font-weight: bold;
								text-align: center;
								cursor: pointer;
								display: inline-block;
								border-radius: 5px;
								text-transform: capitalize;
							}
							.last {
								margin-bottom: 0;
							}
							.first {
								margin-top: 0;
							}
							.aligncenter {
								text-align: center;
							}
							.alignright {
								text-align: right;
							}
							.alignleft {
								text-align: left;
							}
							.clear {
								clear: both;
							}
							.alert {
								font-size: 16px;
								color: #fff;
								font-weight: 500;
								padding: 20px;
								text-align: center;
								border-radius: 3px 3px 0 0;
							}
							.alert a {
								color: #fff;
								text-decoration: none;
								font-weight: 500;
								font-size: 16px;
							}
							.alert.alert-warning {
								background: #f8ac59;
							}
							.alert.alert-bad {
								background: #ed5565;
							}
							.alert.alert-good {
								background: #1ab394;
							}
							.invoice {
								margin: 40px auto;
								text-align: left;
								width: 80%;
							}
							.invoice td {
								padding: 5px 0;
							}
							.invoice .invoice-items {
								width: 100%;
							}
							.invoice .invoice-items td {
								border-top: #eee 1px solid;
							}
							.invoice .invoice-items .total td {
								border-top: 2px solid #333;
								border-bottom: 2px solid #333;
								font-weight: 700;
							}
							@media only screen and (max-width: 640px) {
								h1, h2, h3, h4 {
									font-weight: 600 !important;
									margin: 20px 0 5px !important;
								}

								h1 {
									font-size: 22px !important;
								}

								h2 {
									font-size: 18px !important;
								}

								h3 {
									font-size: 16px !important;
								}

								.container {
									width: 100% !important;
								}

								.content, .content-wrap {
									padding: 10px !important;
								}

								.invoice {
									width: 100% !important;
								}
							}
						</style>
					</head>";
					$html .= "<body>";
					$html .= "<table class='body-wrap'>
						<tbody><tr>
							<td></td>
							<td class='container' width='600'>
								<div class='content'>
									<table class='main' width='100%' cellpadding='0' cellspacing='0'>
										<tbody><tr>
											<td class='content-wrap aligncenter'>
												<table width='100%' cellpadding='0' cellspacing='0'>
													<tbody>
													<tr>
														<td class='content-block'>
															<table class='invoice'>
																<tbody>
																<tr>
																	<td>".$nama_pembeli."<br>".$no_tran."<br>".$tgl."</td>
																</tr>
																<tr>
																	<td>
																		<table class='invoice-items' cellpadding='0' cellspacing='0'>
																			<tbody>";
																			$no = 1;
																			while($row = mysqli_fetch_array($query_cetak))
																			{
																			$html .= 
																			"<tr>
																				<td>".$row['nama_brg']."</td>
																				<td>".$row['hrg']."</td>
																				<td>".$row['jumlah']."</td>
																				<td class='alignright'>Rp <td>".$row['sub_tot']."</td></td>
																			</tr>";
																			$no++;
																			}
																			$html .=
																			"<tr class='total'>
																				<td class='alignright' width='80%'>Total</td>
																				<td class='alignright'>Rp ".$total."</td>
																			</tr>
																		</tbody></table>
																	</td>
																</tr>
															</tbody></table>
														</td>
													</tr>
												</tbody></table>
											</td>
										</tr>
									</tbody>
								</table></div>
							</td>
							<td></td>
						</tr>
					</tbody></table>";
					$html .= "<script src='http://code.jquery.com/jquery-1.10.2.min.js'></script>
					<script src='http://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js'></script>";
					$html .= "</body>";
					$html .= "</html>";
					// $html = '<center><h3>Daftar Belanja</h3></center><hr/><br/>';
					// $html .= '<table border="1" width="100%">
					// <tr>
					// <th>No</th>
					// <th>Nama</th>
					// <th>Nama Obat</th>
					// <th>Tanggal Beli</th>
					// </tr>';
					// $no = 1;
					// while($row = mysqli_fetch_array($query_cetak))
					// {
					// $html .= "<tr>
					// <td>".$no."</td>
					// <td>".$row['nama_pembeli']."</td>
					// <td>".$row['nama_brg']."</td>
					// <td>".$row['tgl_beli']."</td>
					// </tr>";
					// $no++;
					// }
					// header('location:../../media.php?module=pelayanan_obat',TRUE,307);
					// $html .= "</html>";
					$dompdf->loadHtml($html);
					// Setting ukuran dan orientasi kertas
					$dompdf->setPaper('A4', 'potrait');
					// Rendering dari HTML Ke PDF
					$dompdf->render();
					// Melakukan output file Pdf
					$dompdf->stream('nota.pdf');

					mysqli_query($con, "TRUNCATE TABLE beli_obat");

					echo "<script>
						setTimeout(function(){
							window.location.href = window.location.origin+'/klinik_new/redaktur/media.php?module=pelayanan_obat';
						},500);
						</script>
					";				
				}
				else {
					echo "<script>alert('Gagal!');";
					echo "location.href='../../media.php?module=pelayanan_obat&act=tambah';</script>";
				}
			}
		}
	}
}
	

?>
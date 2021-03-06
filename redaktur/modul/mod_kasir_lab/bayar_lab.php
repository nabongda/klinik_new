<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<div class="box box-success" id="boxbos">
					<div class="box-header" id="tabone">
						<h1>Bayar Lab</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="#">Beranda</a></li>
					<li class="breadcrumb-item active">Bayar Lab</li>
				</ol>
			</div>
		</div>
	</div>
</section>

  <!-- Main content -->
<section class="content">
	<div class="box box-success">
    	<div class="box-body">
			<div style="border: 2px solid blue;padding: 0px 0px 10px 10px;box-sizing: border-box;margin-bottom: 15px;">
				<h4>Data Pasien</h4>
        <?php 
        $id = $_GET['faktur'];

                $pem = mysqli_fetch_array(mysqli_query($con,"SELECT *FROM antrian_pasien JOIN pasien ON antrian_pasien.id_pasien=pasien.id_pasien WHERE antrian_pasien.no_faktur='$id'"));
           
				$id_pasien = $pem['id_pasien'];
				$mem = mysqli_fetch_assoc(mysqli_query($con,"SELECT a.* FROM kategori_pelanggan a JOIN pasien b ON a.kategori = b.klaster WHERE b.id_pasien = '$id_pasien'"));
				?>



				<div class="row">
					<div class="col-md-6">
						<div class="row" style="margin-bottom: 10px;">
							<div class="col-md-3">
								<label>Nama</label> 
							</div>
							<div class="col-md-6" id="data_n">
								:&emsp;<?php echo $pem['nama_pasien']; ?>
							</div>
						</div>
						<div class="row" style="margin-bottom: 10px;">
							<div class="col-md-3">
								<label>No Telp</label>
							</div>
							<div class="col-md-6" id="data_nt">
								:&emsp;<?php echo $pem['no_telp']; ?>	 
							</div>
						</div>
						<div class="row" style="margin-bottom: 10px;">
								<div class="col-md-3">
									<label>Alamat</label>
								</div>
								<div class="col-md-6" id="data_a">
								:&emsp;<?php echo $pem['alamat']; ?>	 
								</div>
						</div>
					</div>
					<div class="col-md-6">
							<div class="row" style="margin-bottom: 10px;">
								<div class="col-md-3">
									<label>Tanggal Lahir</label>
								</div>
								<div class="col-md-6" id="data_tl">
								:&emsp;<?php echo $pem['tgl_lahir']; ?>
								</div>
							</div>
							<div class="row" style="margin-bottom: 10px;">
								<div class="col-md-3">
									<label>Pekerjaan</label>
								</div>
								<div class="col-md-6" id="data_jk">
								:&emsp;<?php echo $pem['pekerjaan']; ?>
								</div>
							</div>
							<div class="row" style="margin-bottom: 10px;">
								<div class="col-md-3">
									<label>Total Kunjungan</label>
								</div>
								<div class="col-md-6" id="data_tk">
								:&emsp;<?php echo $pem['total_kunjungan']; ?>				 
								</div>
							</div>
							<div class="row" style="margin-bottom: 10px;">
								<div class="col-md-3">
									<label>Jenis Member</label>
								</div>
								<div class="col-md-6" id="data_tk">
								:&emsp;<?php echo $mem['kategori']; ?>				 
								</div>
							</div>
					</div>
<?php 

$byr = mysqli_fetch_assoc(mysqli_query($con,"SELECT SUM(sub_total) jml FROM history_kasir WHERE no_faktur = '$_GET[faktur]'"));

?>

<table class="table">
<tr>
<td>Tagihan</td>
<td>Rp <?php echo number_format($byr['jml'],0,",","."); ?></td>
</tr>
<tr>
<td>Pembayaran
<br/><small>Tekan tombol TAB di keyboard untuk melanjutkan</small>
</td>
<td><input type="text" style="width: 25%" class="form-control" name="bayar" onblur="hitung()" id="bayar" data-bayar="<?php echo $byr['jml']; ?>"/></td>
</tr>
<tr>
<td>Kembalian</td>
<td><span id="sisa"></span></td>
</tr>
<tr>
<td colspan=2><button class="btn btn-info" id="selesai" disabled onclick="simpan()">Selesai</button></td>
</tr>
</table>
<script>
$(document).ready(function(){
  document.getElementById("bayar").focus();
});

function simpan(){
	window.open("modul/mod_kasir_lab/bayar.php?faktur=<?php echo $_GET['faktur']; ?>&uang=" + $("#bayar").val(),"_BLANK");
}

function hitung(){
 
  var a = parseInt($("#bayar").data("bayar"));
  var b = parseInt($("#bayar").val());

    var c = b - a;
    $("#sisa").html(c);
  
    if(b >= a){
     $("#selesai").attr("disabled",false);
    } else {
      $("#selesai").attr("disabled",true);
    }


}
</script>


				</div>
			</div>
    </div>
    </section>
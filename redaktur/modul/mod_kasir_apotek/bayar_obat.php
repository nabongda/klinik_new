<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Pelayanan</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Pelayanan</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<?php 
        
		$id = $_GET['faktur'];
		
		if($_GET['layan'] == "jalan"){
			$pem = mysqli_fetch_array(mysqli_query($con,"SELECT *FROM history_ap JOIN pasien ON history_ap.id_pasien=pasien.id_pasien WHERE history_ap.no_faktur='$id'"));
		} else {
			$pem = mysqli_fetch_array(mysqli_query($con,"SELECT *FROM antrian_pasien JOIN pasien ON antrian_pasien.id_pasien=pasien.id_pasien WHERE antrian_pasien.no_faktur='$id'"));
		}

               
           
				$id_pasien = $pem['id_pasien'];
				$mem = mysqli_fetch_assoc(mysqli_query($con,"SELECT a.* FROM kategori_pelanggan a JOIN pasien b ON a.kategori = b.klaster WHERE b.id_pasien = '$id_pasien'"));
				?>

<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h5>Data Pelayanan</h5>
        </div>
        <div class="card-body">
          <form id="form_k">
            <?php 
              $nofak = date("YmdHis"); 
              $ran = rand(1,9);
              $nofak .= $ran;
            ?>
            <input class="form-control" type="hidden" id="nama_kon" name="nama" required>
            <label><u>Data Pasien</u></label>
            <div class="form-row">
              <div class="col-md-3 mb-3">
                <label>Nama</label>
                <input type="text" id="data_id" class="form-control" value="<?php echo $pem['nama_pasien']; ?>" readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>No Telp</label>
                <input type="text" id="data_n" class="form-control" value= " <?php echo $pem['no_telp']; ?>	" readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>Alamat</label>
                <input type="text" id="data_nt" class="form-control" value= "  <?php echo $pem['alamat']; ?>" readonly>
              </div>
            <div class="form-row">
              <div class="col-md-3 mb-3">
                <label>Tanggal Lahir</label>
                <input type="text" id="data_tl" class="form-control" value = " <?php echo $pem['tgl_lahir']; ?> "  readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>Pekerjan</label>
                <input type="text" id="data_jk" class="form-control" value = "<?php echo $pem['pekerjaan']; ?>" readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>Total Kunjungan</label>
                <input type="text" id="data_tk" class="form-control" value = "  <?php echo $pem['total_kunjungan']; ?> " readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>Jenis Member</label>
                <input type="text" id="data_katmem" class="form-control" value ="  <?php echo $mem['kategori']; ?> " readonly>
              </div>
            </div>
          </form>
        </div>
		
		<div >Tagihan
		<td>Rp <?php echo number_format($byr['jml'],0,",","."); ?></td>
<tr>
<div>Pembayaran
<br/><small>Tekan tombol TAB di keyboard untuk melanjutkan</small>
<td><input type="text" style="width: 25%" class="form-control" name="bayar" onblur="hitung()" id="bayar" data-bayar="<?php echo $byr['jml']; ?>"/></td>
</div>
</tr>
<tr>
<div>Kembalian</div>
<td><span id="sisa"></span></td>
</tr>
<tr>
<td colspan=2><button class="btn btn-info" id="selesai" disabled onclick="simpan()">Selesai</button></td>
</tr>
      </div>
    </div>
  </div>
</section>
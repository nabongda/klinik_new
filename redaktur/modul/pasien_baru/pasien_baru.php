<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<div class="box box-success" id="boxbos">
					<div class="box-header" id="tabone">
						<h1>Pasien Baru</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
					<li class="breadcrumb-item active">Pasien Baru</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <div class="callout callout-warning">
            <strong>PERHATIAN</strong>
            <ul>
              <li>Format Rekam Medis adalah {inisial nama pasien}{nomor urut}{kode nama klinik} misalnya: A999B </li>
              <li>Kode nama klinik muncul otomatis</li>
              <li>Rekam Medis yang sama dengan yang sudah ada akan muncul peringatan</li>
            </ul>
          </div>
        </div>
        <div class="card-header">
          <h5>Data Pasien Baru</h5>
        </div>
        <div class="card-body">
          <form id="form_pp">
            <?php 
              $id_kk = $_SESSION['klinik'];
              $q = mysqli_query($con,"SELECT *FROM daftar_klinik WHERE id_kk='$id_kk'");
              $p = mysqli_fetch_array($q);
              $klinik = inisial($p['nama_klinik']);
              $ini = substr($klinik,0,strlen($klinik) - 1);
            ?>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label>Rekam Medis</label>
                <input type="text" id="acs" name="id_pasien" class="form-control" value="<?php echo $ini; ?>">
              </div>
              <div class="form-group col-md-6">
                <label>Nama</label>
                <input class="form-control" type="text" name="nama" required>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label>Tanggal Lahir</label>
                <input id="tgl_ks" class="form-control" type="date" name="tgl_lahir" autocomplete="off" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask required>
              </div>
              <div class="form-group col-md-6">
                <label>Jenis Kelamin</label>
                <select class="form-control" name="jk" required>
                  <option value="Perempuan">Perempuan</option>
                  <option value="Laki-laki">Laki-laki</option>
                </select>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label>Nomor Handphone</label>
                <input class="form-control" type="text" name="nohp" required>
              </div>
              <div class="form-group col-md-6">
                <label>Umur</label>
                <input class="form-control" type="number" name="umur" required>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col-md-6">
                <label>Alamat</label>
                <textarea class="form-control" type="text" name="alamat" required></textarea>
              </div>
              <div class="form-group col-md-6">
                <label>Pekerjaan</label>
                <input type="text" name="pekerjaan" class="form-control" required>
              </div>
            </div>
            <button id="tambah_pb" class="btn btn-primary">Tambah Data Pasien</button>	
						<input type="button" class="btn btn-danger" onclick="this.form.reset();" value="Reset Form">
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
  //typeahead      
  var namaCus = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('id'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    prefetch: {
      url: '../redaktur/modul/pasien_baru/cust.json?v=<?php echo rand(100,900); ?>'
    },
    cache: false
  });

  $('#acs').typeahead({
    hint: true,
    highlight: true,
    minLength: 3
  }, {
    name: 'nama-cus',
    display: 'id',
    source: namaCus,
    templates: {
    suggestion: Handlebars.compile('<div><strong>Rekam Medis sudah ada. Silakan gunakan nomor urut lainnya</strong></div>')
    }
  });

</script>
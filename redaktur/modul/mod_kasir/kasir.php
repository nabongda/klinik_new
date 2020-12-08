<?php 

unlink("modul/mod_kasir/error_log");
$id_kk = $_SESSION['klinik']; ?>

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

<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h5>Data Pelayanan</h5>
        </div>
        <div class="card-header">
          <ul class="nav nav-tabs card-header-tabs">
            <li class="nav-item" id="pb">
              <a class="nav-link" type="button" id="konsultasi" href="#">Poliklinik</a>
            </li>
            <li class="nav-item" id="pl">
              <a class="nav-link" type="button" id="bpt" href="#">IGD</a>
            </li>
            <li class="nav-item" id="pj">
              <a class="nav-link" type="button" id="inap" href="#">Rawat Inap</a>
            </li>
          </ul>
          <input type="hidden" id="awal">
        </div>
        <div class="card-body">
          <form id="form_tam" class="collapse">
            <label><u>Cari Pelanggan</u></label>
            <div class="form-row">
              <div class="col-4">
                <label>
                  <input type="radio" name="cara_cari" id="radio1" value="nama" checked>
                  Nama
                </label>
              </div>
              <div class="col-4">
                <label>
                  <input type="radio" name="cara_cari" id="radio2" value="kode">
                  No. RM
                </label>
              </div>
              <div class="col-4">
                <label>
                  <input type="radio" name="cara_cari" id="radio3" value="tgl">
                  Tanggal Lahir (yyyy-mm-dd)
                </label>
              </div>
            </div>
            <div class="form-row">
              <input class="form-control" type="text" id="nama_k" name="nama_kode" style="width:93%;" required>
              <input class="form-control" type="hidden" name="nama" id="nama_hidden">
              <input type="hidden" id="cara2">
              <input type="hidden" id="cek_tampil">
            </div><br>
            <div class="form-row">
              <button class="btn btn-sm btn-info">Tampilkan</button>
            </div>
          </form>
          <form id="form_k" class="collapse">
            <?php 
              $nofak = date("YmdHis"); 
              $ran = rand(1,9);
              $nofak .= $ran;
            ?>
            <input class="form-control" type="hidden" id="nama_kon" name="nama" required>
            <label><u>Data Pasien</u></label>
            <div class="form-row">
              <div class="col-md-3 mb-3">
                <label>Rekam Medis</label>
                <input type="text" id="data_id" class="form-control" readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>Nama</label>
                <input type="text" id="data_n" class="form-control" readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>No Telp</label>
                <input type="text" id="data_nt" class="form-control" readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>Alamat</label>
                <input type="text" id="data_a" class="form-control" readonly>
              </div>
            </div>
            <div class="form-row">
              <div class="col-md-3 mb-3">
                <label>Tanggal Lahir</label>
                <input type="text" id="data_tl" class="form-control" readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>Jenis Kelamin</label>
                <input type="text" id="data_jk" class="form-control" readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>Total Kunjungan</label>
                <input type="text" id="data_tk" class="form-control" readonly>
              </div>
              <div class="col-md-3 mb-3">
                <label>Jenis Member</label>
                <input type="text" id="data_katmem" class="form-control" readonly>
              </div>
            </div>
          </form>
        </div>
        <!-- Form Poliklinik -->
        <div class="card-body collapse" id="pilih_dok">
          <form id="form_p">
            <input class="form-control" type="hidden" name="id_kasir" value="<?php echo $_SESSION['id_user']; ?>">
            <input class="form-control id_pasien" type="hidden" name="id_pasien" id="id_pasien">
            <input type="hidden" name="nofak" value="<?php echo $nofak; ?>">
            <div class="row">
              <div class="col">
                <label>Jenis Pasien</label>
                <select name="pas" class="form-control" required>
                  <option value="">--Silakan Pilih--</option>
                  <option value="umum">Umum</option>
                  <option value="bpjs">BPJS</option>
                  <option value="lain">Asuransi Lain</option>
                  <option value="inhealt">Inhealt</option>
                  <option value="jkk">JKK</option>
                  <option value="corp1">Perusahaan 1</option>
                  <option value="corp2">Perusahaan 2</option>
                </select>
              </div>
              <div class="col">
                <label>Asuransi</label>
                <select name="ass" class="form-control">
                  <option value="">--Abaikan--</option>
                  <?php 
                  $asur = mysqli_query($con, "SELECT * FROM asuransi");
                  while($asuri = mysqli_fetch_assoc($asur)){
                    echo "<option value='$asuri[id]'>$asuri[nama]</option>";
                  }
                  ?>
                </select>
                <small>(abaikan jika tidak ada)</small>
              </div>
            </div>
            <div class="row">
              <div class="col">
                <label>Pilih Poliklinik</label>
                <select id="poli" name="poli" class="form-control" onchange="changedoc()">
                  <option value="belum">--Silakan Pilih--</option>
                  <?php 
                  $q1 = mysqli_query($con, "SELECT *FROM poliklinik");
                  while ($dok = mysqli_fetch_array($q1)) { ?>
                    <option value="<?php echo $dok['id_poli']; ?>"><?php echo $dok['poli'] ?></option>
                  <?php } ?>
                </select>
              </div>
              <div class="col">
                <label>Dokter</label>
                <select id="doct" class="form-control" disabled>
                  <option value="belum">--Silahkan Pilih--</option>
                </select>
              </div>
            </div>
            <div class="row">
              <div class="col-3" style="display: none">
                <label>Berat Badan</label>
                <input type="hidden" name="bb" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Tinggi Badan</label>
                <input type="hidden" name="tb" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Suhu Badan</label>
								<input type="hidden" name="suhu" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Tekanan Darah</label>
								<input type="hidden" name="tensi" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Keluhan</label>
								<textarea class="form-control" style="height: 150px" name="sakit"></textarea>
              </div>
            </div>
            <div class="row">
              <div class="col">
                <button style="margin-top: 20px;" type="submit" class="btn btn-sm btn-success">Simpan</button>
                <button style="margin-top: 20px;" type="button" class="btn btn-sm btn-danger data_batal">Batal</button>
              </div>
            </div>
          </form>
          <script>
            function changedoc(){
              var poli = $("#poli").val();
              var hari = <?php echo date("N"); ?>;
              var x = $.ajax({
                url: "modul/mod_kasir/doct.php?poli=" + poli + "&hari=" + hari,
                success: function(data){
                  $("#doct").html(data);
                }
              });
              if(x.readyState == "1"){
                $("#doct").html("mencari dokter");
              }
            }
          </script>
        </div>
        <!-- Form Poliklinik -->

        <!-- Form IGD -->
        <div class="card-body collapse" id="tap">
          <form id="form_u">
            <input class="form-control" type="hidden" name="id_kasir" value="<?php echo $_SESSION['id_user']; ?>">
					 	<input class="form-control id_pasien" type="hidden" name="id_pasien" id="id_pasien">
						<input type="hidden" name="nofak" value="<?php echo $nofak; ?>">
            <div class="row">
              <div class="col">
                <label>Jenis Pasien</label>
                <select name="pas" class="form-control" required>
                  <option value="">--Silakan Pilih--</option>
                  <option value="umum">Umum</option>
                  <option value="bpjs">BPJS</option>
                  <option value="lain">Asuransi Lain</option>
                  <option value="inhealt">Inhealt</option>
                  <option value="jkk">JKK</option>
                  <option value="corp1">Perusahaan 1</option>
                  <option value="corp2">Perusahaan 2</option>
                </select>
              </div>
              <div class="col">
                <label>Asuransi</label>
                <select name="ass" class="form-control">
                  <option value="">--Abaikan--</option>
                  <?php 
                  $asur = mysqli_query($con, "SELECT * FROM asuransi");
                  while($asuri = mysqli_fetch_assoc($asur)){
                    echo "<option value='$asuri[id]'>$asuri[nama]</option>";
                  }
                  ?>
                </select>
                <small>(abaikan jika tidak ada)</small>
              </div>
            </div>
            <div class="row">
              <div class="col-6">
                <label>Dokter</label>
                <select name="dokter" class="form-control">
                  <option value="belum">--Silahkan Pilih--</option>
                  <?php 
                  $q1 = mysqli_query($con, "SELECT *FROM user WHERE id_ju = 'JU-02'");
                  while ($dok = mysqli_fetch_array($q1)) { ?>
                    <option value="<?php echo $dok['id_user']; ?>"><?php echo $dok['nama_lengkap']; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="row">
              <div class="col-3" style="display: none">
                <label>Berat Badan</label>
                <input type="hidden" name="bb" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Tinggi Badan</label>
                <input type="hidden" name="tb" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Suhu Badan</label>
								<input type="hidden" name="suhu" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Tekanan Darah</label>
								<input type="hidden" name="tensi" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Keluhan</label>
								<textarea class="form-control" style="height: 150px" name="sakit"></textarea>
              </div>
            </div>
            <div class="row">
              <div class="col">
                <button style="margin-top: 20px;" type="submit" class="btn btn-sm btn-success">Simpan</button>
                <button style="margin-top: 20px;" type="button" class="btn btn-sm btn-danger data_batal">Batal</button>
              </div>
            </div>
          </form>
        </div>
        <!-- Form IGD -->

        <!-- Form Inap -->
        <div class="card-body collapse" id="mondok">
          <form id="form_j">
            <input class="form-control" type="hidden" name="id_kasir" value="<?php echo $_SESSION['id_user']; ?>">
					 	<input class="form-control id_pasien" type="hidden" name="id_pasien" id="id_pasien">
						<input type="hidden" name="nofak" value="<?php echo $nofak; ?>">
            <div class="row">
              <div class="col">
                <label>Jenis Pasien</label>
                <select name="pas" class="form-control" required>
                  <option value="">--Silakan Pilih--</option>
                  <option value="umum">Umum</option>
                  <option value="bpjs">BPJS</option>
                  <option value="lain">Asuransi Lain</option>
                  <option value="inhealt">Inhealt</option>
                  <option value="jkk">JKK</option>
                  <option value="corp1">Perusahaan 1</option>
                  <option value="corp2">Perusahaan 2</option>
                </select>
              </div>
              <div class="col">
                <label>Asuransi</label>
                <select name="ass" class="form-control">
                  <option value="">--Abaikan--</option>
                  <?php 
                  $asur = mysqli_query($con, "SELECT * FROM asuransi");
                  while($asuri = mysqli_fetch_assoc($asur)){
                    echo "<option value='$asuri[id]'>$asuri[nama]</option>";
                  }
                  ?>
                </select>
                <small>(abaikan jika tidak ada)</small>
              </div>
            </div>
            <div class="row">
              <div class="col">
                <label>Ruang Perawatan</label>
                <select id="ruang" name="ruang" class="form-control">
                  <option value="belum">--Silahkan Pilih--</option>
                    <?php 
                    $q1 = mysqli_query($con, "SELECT *FROM ruangan");
                    while ($dok = mysqli_fetch_array($q1)) { 
                      if(!is_null($dok['status'])){
                        $status = "(Rusak)";
                        $stat = "disabled";
                      } else if($dok['kapasitas'] == $dok['terpakai']){
                        $status = "(Penuh)";
                        $stat = "disabled";
                      } else {
                        $status = "";
                      }
                      ?>
                      <option value="<?php echo $dok['id']; ?>" <?php echo $stat; ?>><?php echo $dok['nama_ruangan']." ".$status; ?></option>
                    <?php } ?>
                </select>
              </div>
              <div class="col">
                <label>Dokter</label>
                <select name="dokter" class="form-control">
                  <option value="belum">--Silahkan Pilih--</option>
                  <?php 
                  $q1 = mysqli_query($con, "SELECT *FROM user WHERE id_ju = 'JU-02'");
                  while ($dok = mysqli_fetch_array($q1)) { 
                  
                    ?>
                    <option value="<?php echo $dok['id_user']; ?>"><?php echo $dok['nama_lengkap']; ?></option>
                  <?php } ?>
                </select>
              </div>
            </div>
            <div class="row">
              <div class="col-3" style="display: none">
                <label>Berat Badan</label>
                <input type="hidden" name="bb" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Tinggi Badan</label>
                <input type="hidden" name="tb" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Suhu Badan</label>
								<input type="hidden" name="suhu" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Tekanan Darah</label>
								<input type="hidden" name="tensi" value="NULL" class="form-control">
              </div>
              <div class="col-3" style="display: none">
                <label>Keluhan</label>
								<textarea class="form-control" style="height: 150px" name="sakit"></textarea>
              </div>
            </div>
            <div class="row">
              <div class="col">
                <button style="margin-top: 20px;" type="submit" class="btn btn-sm btn-success">Simpan</button>
                <button style="margin-top: 20px;" type="button" class="btn btn-sm btn-danger data_batal">Batal</button>
              </div>
            </div>
          </form>
        </div>
        <!-- Form Inap -->
      </div>
    </div>
  </div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
  $(document).ready(function(){
    $.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });
    // cari pelanggan
    // berdasarrkan nama
    $( "#nama_k" ).autocomplete({
      source: function( request, response ) {
        var cara = $("#cara2").val();
        // Fetch data
        $.ajax({
          url: "modul/mod_kasir/source_p.php",
          type: 'post',
          dataType: "json",
          data: {
          search: request.term,cara:cara
          },
          success: function( data ) {
          response( data );
          }
        });
      },
      select: function (event, ui) {
        // Set selection
        $('#nama_k').val(ui.item.label);
        $('#alamat_k').val(ui.item.alamat);
        $('#tgl_k').val(ui.item.tgl_lahir);
        $('#umur_k').val(ui.item.umur);
        $('#nohp_k').val(ui.item.no_telp);
        $('#jk_k').val(ui.item.jk);
        $("#nama_hidden").val(ui.item.id);
        tampilkan();
        return false;
      }
    });

    // Enter 
    $("#nama_k").keyup(function(event) {
      if (event.keyCode === 13) {
          $("#nama_hidden").val("");
      }
    }); 

    // tampilkan
    $('#form_tam').on('submit', function (e) {
      e.preventDefault();
      $("#nama_hidden").val("");
      tampilkan();
    });

    // fungsi tampilkan
    function tampilkan(){
      var awal = $("#awal").val();
      $.ajax({
        type: 'post',
        url: 'modul/mod_kasir/tampilkan.php',
        data: $('#form_tam').serialize(),
        success: function (data) {
          if (data=="Kosong") {
            alert("Pasien Tidak Ditemukan");
          }
          else {
            var obj = JSON.parse(data);
            $('#form_tam').trigger("reset");
            $('#form_p').collapse('hide');
            $("#data_id").val(obj.nid);
            $("#data_n").val(obj.np);
            $("#nama_kk").val(obj.id);
            $("#nama_kon").val(obj.id);
            $("#data_tk").val(obj.tk);
            $("#data_jk").val(obj.jk);
            $("#data_tl").val(obj.tl);
            $("#data_a").val(obj.a);
            $("#data_nt").val(obj.nt);
            $("#diskon_t").val(obj.dtr);
            $("#diskon_p").val(obj.dpr);
            $(".id_pasien").val(obj.id);
            $("#data_katmem").val(obj.klas);
            $("#cek_tampil").val("Sudah");
            if (awal=="lab") {
              $('#pilih_dok').collapse('hide');
              $('#form_tam').collapse('hide');
              $('#labs').collapse('show');
              $('#form_k').collapse('show');
              $('#tap').collapse('hide');
            } 
            else if(awal=="bpt"){
              $('#form_k').collapse('show');
              $('#tap').collapse('show');
              $('#pilih_dok').collapse('hide');
              $('#form_tam').collapse('hide');
            } 
            else if(awal=="inap"){
              $('#form_k').collapse('show');
              $('#tap').collapse('hide');
              $('#pilih_dok').collapse('hide');
              $('#labs').collapse('hide');
              $('#mondok').collapse('show');
              $('#form_tam').collapse('hide');
            }
            else {
              $('#form_k').collapse('show');
              $('#pilih_dok').collapse('show');
              $('#form_tam').collapse('hide');
            }
          }
        }
      });
    }

    // Batal
    $(".data_batal").click(function(e){
      e.preventDefault();
      $.ajax({
        url: 'modul/mod_kasir/batal.php',
        success:function(data){
          $('#cekbok').collapse('hide');
          $("#cek_tampil").val("");
          $('#tap').collapse('hide');
          $('#form_k').collapse('hide');
          $('#form_tam').collapse('show');
          $('#form_tam').trigger("reset");
        }
      });
    });

    // plus
    $('body').on("click","#plus_kasir",function(){
      var id = $(this).data("id");
      $.ajax({
        type:'POST',
        url: 'modul/mod_kasir/plus.php',
        data:{
          id:id
        },
        success:function(data){
          total();
          var oTable = $('#tabel_kasir').dataTable(); 
          oTable.fnDraw(false);
        }
      });
    });

    // Hapus Perawatan
    $('body').on("click","#hapus_kasir",function(){
      var id = $(this).data("id");
      $.ajax({
        type:'POST',
        url: 'modul/mod_kasir/hapus.php',
        data:{
          id:id
        },
        success:function(data){
          total();
          var ttable = $('#tabel_kasir').dataTable();
          ttable.fnDraw(false);
        }
      });
    });
    
    // Reset
    $("#reset_t").click(function(){
      $.ajax({
        url: 'modul/mod_kasir/reset_t.php',
        success:function(){
          total();
          var oTable = $('#tabel_kasir').dataTable(); 
          oTable.fnDraw(false);
        }
      });
    });

    // Minus Produk
    $('body').on("click","#minus_kasir",function(){
      var id = $(this).data("id");
      $.ajax({
        type:'POST',
        url: 'modul/mod_kasir/minus.php',
        data:{
          id:id
        },
        success:function(data){
          total();
          var oTable = $('#tabel_kasir').dataTable(); 
          oTable.fnDraw(false);
        }
      });
    });

    // Tambah Pendaftaran
    $('#form_p').on('submit', function (e) {
      e.preventDefault();
      $.ajax({
        type: 'post',
        url: 'modul/mod_kasir/tambah_p.php',
        data: $('#form_p').serialize(),
        success: function (data) {
          if(data == "error"){} 
          else {
            location.reload();
          }
        }
      });
		});

		// Tambah Rawat Inap
		$('#form_j').on('submit', function (e) {
      e.preventDefault();
      $.ajax({
        type: 'post',
        url: 'modul/mod_kasir/tambah_j.php',
        data: $('#form_j').serialize(),
        success: function (data) {
          if(data == "error"){} 
          else {
            location.reload();
          }
        }
      });
    });
    
    // Tambah IGD
    $('#form_u').on('submit', function (e) {
      e.preventDefault();
      $.ajax({
        type: 'post',
        url: 'modul/mod_kasir/tambah_u.php',
        data: $('#form_u').serialize(),
        success: function (data) {
          if(data == "error"){} 
          else {
            location.reload();
          }
        }
      });
    });

    // Tambah Lab
    $('#form_z').on('submit', function (e) {
      e.preventDefault();
      $.ajax({
        type: 'post',
        url: 'modul/mod_kasir/tambah_z.php',
        data: $('#form_z').serialize(),
        success: function (data) {
          if(data == "error"){} else {
            location.reload();
          }
        }
      });
    });
    
    // Tambah Produk
    $('#form_produk').on('submit', function (e) {
      e.preventDefault();
      $.ajax({
        type: 'post',
        url: 'modul/mod_kasir/tambah_produk.php',
        data: $('#form_produk').serialize(),
        success: function (data) {
          if (data=='tidak') {
              alert("produk tidak ada di gudang");
          }else{
              total();
            var oTable = $('#tabel_kasir').dataTable(); 
            oTable.fnDraw(false);
            $('#form_produk').trigger("reset");
          }
        }
      });
    });

    // no rek
    // Onchange tunai or kredit
    $("#metode").change(function(){
      var select = $(this).val();
      if(select=="Tunai"){
        $('#no_rek').collapse('hide');
        $('#uang_tu').collapse('show');
        $('#uang_tr').collapse('hide');
      }else if(select=="Transfer"){
        $('#no_rek').collapse('show');
        $('#uang_tr').collapse('show');
        $('#uang_tu').collapse('hide');
      }else{
        $('#no_rek').collapse('show');
        $('#uang_tu').collapse('show');
        $('#uang_tr').collapse('show');
      }
    });

    // Kembalian
    $('#uang_k').on('input',function(){
      kembalians();
    });
    $('#uang_t').on('input',function(){
      kembalians();
    });
    $('#ongkir').on('change',function(){
      total();
      kembalians();
    });
    // fungsi kembalian
    function kembalians(){
      var uang = parseFloat($("#uang_k").val());
     	var uang_tr = parseFloat($("#uang_t").val());
      var tots  = $("#total").val();
      var tot = parseFloat(tots.replace(/[A-Za-z\.,-]/gi,""));
      if(uang >= tot || uang_tr >= tot){
        $.ajax({
          type:"post",
          url:"modul/mod_kasir/kembalian.php?v=<?php echo rand(1000,9000); ?>",
          data:{
            uang:uang,
            tot:tot,
            uang_tr:uang_tr
          },
          success:function(data){
            $('#kembalian').val(data);
          }
        });
      }
    }

    // tambah
    $('#form_kasir').on('submit', function (e) {
      e.preventDefault();
      $.ajax({  
        type: 'post',
        url: 'modul/mod_kasir/tambah_k.php',
        data: $('#form_kasir').serialize(),
        success: function (data) {
          if (data=="Yes") {
            $('#form_kasir').trigger("reset");
            alert("Berhasil menambahkan pasien ke dalam antrian");
            window.location.href = "media.php?module=home";
          }else if(data=="No"){
            alert("Tidak ada perawatan atau Produk yang dipilih!\nSilahkan pilih produk atau perawatan terlebih dahulu!!");
          }else if(data=="D"){
            alert("Silahkan Pilih Dokter Terlebih Dahulu!!");
          }else if(data=="kurang"){
            alert("Uang Yang Dimasukan Kurang!!");
          }else if(data=="nama"){
            alert("Silahkan Masukan Nama Pasien Terlebih Dahulu!!");
          }else if(data=="pasien"){
            alert("Nama Pasien Belum Terdaftar! Silahkan Daftarkan Pasien Terlebih Dahulu");
          }else{
            //alert("Transaksi Berhasil!");
          $('#form_kasir').trigger("reset");
            window.open("modul/mod_kasir/print_kasir.php?nofak="+data,"_BLANK","modal=yes,alwaysRaised=yes");
              //location.reload();
          //	window.location.href = "media.php?module=history_transaksi";
          }	
        }
      });
    });

    // cara cari pelanggan
    $('#radio1').click(function () {
      if (this.checked) {
        $("#cara2").val("nama");
      }
    });

    $('#radio2').click(function () {
      if (this.checked) {
        $("#cara2").val("kode");
      }
    });

    $('#radio3').click(function () {
      if (this.checked) {
        $("#cara2").val("tanggal");
      }
    });

    //total
    function total(){
      var ongkir = $("#ongkir").val();
      $.ajax({
        type: "POST",
        data:{
          ongkir:ongkir
        },
        url: 'modul/mod_kasir/total.php?pasien=' + $("#nama_kon").val(),
        success:function(data){
          var obj = JSON.parse(data);
          $("#table_total").html(obj.rupiah1);
          $("#total").val(obj.rupiah)
          kembalians();
          var oTable = $('#tabel_kasir').dataTable(); 
              oTable.fnDraw(false);
        }
      });
    }

    // collap form produk
    $('#form_tam').on('show.bs.collapse', function () {
        $("#uang_tu").collapse("show");
    });

    // onload
    window.onload=total();
  });
</script>
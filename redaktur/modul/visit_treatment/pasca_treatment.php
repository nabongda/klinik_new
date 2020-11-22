<?php
  $no_faktur= $_GET['nofak'];
  $date_now = date("Y-m-d");
?>

<section>
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <h5>Tindakan Dokter</h5>
          </div>
          <div class="card-header">
            <div class="callout callout-success bg-success">
              <ul>
				<li>Silakan lengkapi dahulu data Tindakan Dokter pasien dan pilih Resep Obat atau Tindakan Dokter jika diperlukan</li>
				<li>Jika sudah lengkap semua baru klik tombol Simpan</li>
			  </ul>
            </div>
		  </div>
          <div class="card-body">
			  <h5>Data Pasien</h5><hr>
			  <div style="border: 2px solid green;padding: 0px 0px 10px 10px;box-sizing: border-box;margin-bottom: 15px;">
			  	  <div class="row">
					<div class="col-md-6">
						<form>
							<?php 
							$pem = mysqli_fetch_array(mysqli_query($con,"SELECT *FROM perawatan_pasien JOIN pasien ON perawatan_pasien.id_pasien=pasien.id_pasien WHERE perawatan_pasien.no_faktur='$no_faktur'"));
							$id_pasien = $pem['id_pasien'];
							$mem = mysqli_fetch_assoc(mysqli_query($con,"SELECT a.* FROM kategori_pelanggan a JOIN pasien b ON a.kategori = b.klaster WHERE b.id_pasien = '$id_pasien'"));
							?>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Nama</label>
								<div class="col-sm-9" id="data_n">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['nama_pasien']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">No Telp</label>
								<div class="col-sm-9" id="data_nt">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['no_telp']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Alamat</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['alamat']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Keluhan</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['keluhan']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Berat Badan</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['bb']; ?> kg">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Suhu Badan</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['suhu']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Tekanan Darah</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['tensi']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Tekanan Darah</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['respirasi']; ?> per menit">
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-6">
						<form>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Tanggal Lahir</label>
								<div class="col-sm-9" id="data_tl">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['tgl_lahir']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Pekerjaan</label>
								<div class="col-sm-9" id="data_jk">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['pekerjaan']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Total Kunjungan</label>
								<div class="col-sm-9" id="data_tk">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['total_kunjungan']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Jenis Member</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $mem['kategori']; ?>">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Tinggi Badan</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['tb']; ?> cm">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Denyut Nadi</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['nadi']; ?> per menit">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Penjamin</label>
								<div class="col-sm-9" id="data_a">
									<input type="text" readonly class="form-control-plaintext" value=":&emsp;<?php echo $pem['jenis_pasien']; ?>">
								</div>
							</div>
						</form>
					</div>
				  </div>
			  </div>
		  </div>
		  <div class="card-body">
			<h5>Resep Obat & Tindakan Dokter (data tersimpan otomatis)</h5><hr>
			<div class="col-md-12">
				<form>
					<div class="row">
						<div class="col">
							<label>Pilih Resep Obat</label>
							<select id="tataup" class="form-control">
								<option value="">--Silakan Pilih--</option>
								<option value="produk">Resep Obat</option>
							</select>
						</div>
						<div class="col">
							<label>Pilih Tindakan Dokter</label>
							<select id="tataup2" class="form-control">
								<option value="">--Silakan Pilih--</option>
								<?php
								$u = mysqli_query($con,"SELECT * FROM kategori_biaya WHERE id = 1");
								while($ux = mysqli_fetch_assoc($u)){
									echo "<option value='$ux[id]'>$ux[kategori]</option>";
								}
								?>
							</select>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-12">
				<form id="form_px" class="collapse">
					<input class="form-control" type="hidden" name="id_kk" value="<?php echo $_SESSION['klinik'] ?>">
					<input class="form-control" type="hidden" id="nou" name="no_urut" value="<?php echo $pem['no_urut']; ?>">
					<input class="form-control id_pasien" type="hidden" name="id_pasien" value="<?php echo $pem['id_pasien']; ?>">
					<input type="hidden" class="form-control" name="id_dr" value="<?php echo $_SESSION['id_dr']; ?>">
					<input type="hidden" name="modal" id="modal">
					<input type="hidden" name="nofak" value="<?php echo $pem['no_faktur']; ?>">
					<div class="form-row">
						<div class="form-group col-md-2">
							<label>Nama Tindakan Dokter</label>
							<input type="text" class="form-control" name="nama_t" id="nama_t" required>
						</div>
						<div class="form-group col-md-2">
							<label>Harga</label>
							<input type="text" class="form-control" name="harga_t" id="harga" readonly>
						</div>
						<div class="form-group col-md-2">
							<label>Keterangan</label>
							<input type="text" class="form-control" name="ket" value="-" required>
						</div>
						<div class="form-group col-md-2">
							<label>Diskon (%)</label>
							<input type="number" class="form-control" name="dis" id="diskon_t" value="0" required>
						</div>
						<div class="form-group col-md-2">
							<label>Tanggal</label>
							<input type="text" class="form-control datepicker" name="tgl_visit">
						</div>
						<div class="form-group col-md-2">
							<label>Dokter Visit</label>
							<select class="form-control" name="dr_visit">
								<option value="">--silakan pilih--</option>
								<?php $do = mysqli_query($con,"SELECT * FROM user WHERE id_ju = 'JU-02'");
								while($doc = mysqli_fetch_assoc($do)){
									echo "<option value='$doc[id_user]'>$doc[nama_lengkap]</option>";
								}
								?>
								<?php
								while($ko = mysqli_fetch_assoc($c)){
									$dr = mysqli_fetch_assoc(mysqli_query($con,"SELECT nama_lengkap FROM user WHERE id_user = $ko[id_dr]"));
									echo "<option value='$ko[id_dr]'>$dr[nama_lengkap]</option>";
								} ?>
							</select>
						</div>
						<button type="submit" class="btn btn-sm btn-success">Tambah</button>
						<button type="button" id="reset_t" data-id="<?php echo $_GET['nofak']; ?>" style="margin-top: 20px;" class="btn btn-sm btn-danger">Reset</button>
					</div>
				</form>
			</div>
			<div class="col-md-12">
				<form id="form_produk" class="collapse">
					<input class="form-control id_pasien" type="hidden" name="id_pasien" value="<?php echo $pem['id_pasien']; ?>">
					<input class="form-control" type="hidden" id="nou" name="no_urut" value="<?php echo $pem['no_urut']; ?>">
					<input type="hidden" name="kode_p" id="kode_p">
					<input type="hidden" name="harga_b" id="harga_b">
					<input type="hidden" name="nofak" value="<?php echo $pem['no_faktur']; ?>">
					<div class="form-row">
						<div class="form-group col-md-2">
							<label>Nama Resep Obat</label>
							<input type="text" class="form-control" name="nama_p" id="nama_p" required>
						</div>
						<div class="form-group col-md-2">
							<label>Harga</label>
							<input type="text" class="form-control" name="harga_p" id="harga_p" readonly>
						</div>
						<div class="form-group col-md-2">
							<label>Keterangan</label>
							<input type="text" class="form-control" name="ket" value="-">
						</div>
						<div class="form-group col-md-2">
							<label>Diskon (%)</label>
							<input type="number" class="form-control" name="dis" id="diskon_p" value="0">
						</div>
						<div class="form-group col-md-2">
							<label>Jumlah</label>
							<input type="number" class="form-control" min="1" name="jumlah" id="jumlah_p" value="1" required>
						</div>
						<button type="submit" class="btn btn-sm btn-success">Tambah</button>
						<button type="button" id="reset_t" data-id="<?php echo $_GET['nofak']; ?>" style="margin-top: 15px;" class="btn btn-sm btn-danger">Reset</button>
					</div>
				</form>
			</div>
		  </div>
		  <div class="card-body">
		  	<div class="col-md-12">
				<table id="tabel_tp" class="table table-bordered table-striped">
					<thead>
					<tr>
						<th>No</th>
						<th>Nama</th>
						<th>Jumlah Beli</th>
						<th>Harga</th>
						<th>Jenis</th>
						<th>Ket</th>
						<th>Pilihan</th>
					</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		  </div>
		  <div class="card-body">
			<h5>Keterangan Tindakan Dokter</h5><hr>
			<form enctype="multipart/form-data" id="form_pc" method="POST" action="modul/visit_treatment/pc_selesai.php">
				<div class="col-md-12">
					<input type="hidden" name="nofak" id="nofak" value="<?php echo $no_faktur; ?>">
					<input type="hidden" name="id_pasien" value="<?php echo $pem['id_pasien']; ?>">
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Tanggal</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" name="tanggal" value="<?php echo $date_now; ?>" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Subject</label>
						<div class="col-sm-10">
							<input class="form-control" name="subjek" value="-" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Object</label>
						<div class="col-sm-10">
							<input class="form-control" name="objek" value="-" required>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Assestment</label>
						<div class="col-sm-10">
							<textarea class="form-control" name="assest" required>-</textarea>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<input class="form-control" style="display: none" type="file" name="foto1" id="fototes1" onchange="previewFile(this.id)">
					<input class="form-control" style="display: none" type="file" name="foto2" id="fototes2" onchange="previewFile(this.id)">
					<input class="form-control" style="display: none" type="file" name="foto3" id="fototes3" onchange="previewFile(this.id)">
					<input class="form-control" style="display: none" type="file" name="foto4" id="fototes4" onchange="previewFile(this.id)">
					<div class="form-group row">
						<div class="col-sm-3">
							<div class="card" style="width: 18rem;">
								<div class="card-header">
									<img class="foto" id="img-fototes1" style="width: 100%">
								</div>
								<div class="card-body">
									<center><label for="fototes1" class="btn btn-info">Tambah Foto</label></center>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card" style="width: 18rem;">
								<div class="card-header">
									<img class="foto" id="img-fototes2" style="width: 100%">
								</div>
								<div class="card-body">
									<center><label for="fototes2" class="btn btn-info">Tambah Foto</label></center>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card" style="width: 18rem;">
								<div class="card-header">	
									<img class="foto" id="img-fototes3" style="width: 100%">
								</div>
								<div class="card-body">
									<center><label for="fototes3" class="btn btn-info">Tambah Foto</label></center>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="card" style="width: 18rem;">
								<div class="card-header">	
									<img class="foto" id="img-fototes4" style="width: 100%">
								</div>
								<div class="card-body">
									<center><label for="fototes4" class="btn btn-info">Tambah Foto</label></center>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-success">Simpan</button>
						</div>
					</div>
				</div>
			</form>
		  </div>
		  <div class="card-body">
			<h5>History Tindakan Dokter Pasien</h5><hr>
			<div class="col-md-12">
				<table id="example1" class="table table-bordered table-striped">
					<thead>
					<tr>
						<th>Tanggal</th>
						<th>Subjek</th>
						<th>Objek</th>
						<th>Assestment</th>
						<th>Resep Obat</th>
						<th>Tindakan Dokter</th>
						<th>Foto (klik utk zoom)</th>
					</tr>
					</thead>
					<tbody>
						<?php $q =  mysqli_query($con,"SELECT *FROM pasca_treatment WHERE id_pasien='$id_pasien' ORDER BY tanggal DESC"); 
						$no = 1;
						while($pc = mysqli_fetch_array($q)){ ?>
						<tr>
							<td><?php echo $pc['tanggal']; ?></td>
							<td><?php echo $pc['subjek']; ?></td>
							<td><?php echo $pc['objek']; ?></td>
							<td><?php echo $pc['assestment']; ?></td>
							<td>
								<?php $q1 = mysqli_query($con,"SELECT *FROM history_kasir WHERE no_faktur='$pc[no_faktur]' AND kategori = 0"); 
								$cekp = mysqli_num_rows($q1);
								if ($cekp>0) {
									echo "| ";
									while ($p=mysqli_fetch_array($q1)) {
										echo $p['nama'];
										echo " | ";
									}
								}else{
									echo "Tidak Ada Resep Obat ";
								}
								?>
							</td>
							<td>
								<?php $q2 = mysqli_query($con,"SELECT *FROM history_kasir WHERE no_faktur='$pc[no_faktur]' AND kategori != 0"); 
								$cekt = mysqli_num_rows($q2);
								if ($cekt>0) {
									echo "| ";
									while ($t=mysqli_fetch_array($q2)) {
										echo $t['nama'];
										echo " | ";
									}
								}else{
									echo "Tidak Ada Tindakan Dokter";
								}
								?>
							</td>
							<td>
								<?php if ($pc['foto1']!=null) {
									?><img width="50" src="../file_user/foto_pasien/<?php echo $pc['foto1']; ?>" id="foto1<?php echo $no; ?>" data-uri="../file_user/foto_pasien/<?php echo $pc['foto1']; ?>" onclick="zoom(this.id)"><?php
								}if($pc['foto2']!=null){
									?><img width="50" src="../file_user/foto_pasien/<?php echo $pc['foto2']; ?>" id="foto2<?php echo $no; ?>" data-uri="../file_user/foto_pasien/<?php echo $pc['foto2']; ?>" onclick="zoom(this.id)"><?php
								}if ($pc['foto3']!=null){
									?><img width="50" src="../file_user/foto_pasien/<?php echo $pc['foto3']; ?>" id="foto3<?php echo $no; ?>" data-uri="../file_user/foto_pasien/<?php echo $pc['foto3']; ?>" onclick="zoom(this.id)"><?php
								}if($pc['foto4']!=null){
									?><img width="50" src="../file_user/foto_pasien/<?php echo $pc['foto4']; ?>" id="foto4<?php echo $no; ?>" data-uri="../file_user/foto_pasien/<?php echo $pc['foto4']; ?>" onclick="zoom(this.id)"><?php
								} ?>
							</td>
						</tr>
						<?php
						$no++;
						} ?>
					</tbody>
				</table>
			</div>
		  </div>
        </div>
      </div>
    </div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function zoom(id){
		var url = $("#" + id).data("uri");
		var k = window.open("", "_BLANK",
		"modal=yes,alwaysRaised=yes,scrollbars=yes");
		k.document.write("<img src='" + url + "'/>");
		k.document.write("");
	}

	function previewFile(id) {
		var file    = document.getElementById(id).files[0];
		var reader  = new FileReader();

		reader.addEventListener("load", function () {
			$("#img-" + id).attr("src",reader.result);
			$("#img-" + id).attr("data-uri",reader.result);
			$("#img-" + id).attr("onclick","zoom(this.id)");
			$("#img-" + id).css("cursor","pointer");
			$("#img-" + id).attr("title","klik untuk zoom");
		}, false);

		if (file) {
			reader.readAsDataURL(file);
		}
	}

	$(document).ready(function(){
		$(".foto").attr("src","modul/pasca_treatment/dummy.png");
		$.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
		});
  		
		var nofak = $("#nofak").val();
		// datatable
		$('#tabel_tp').dataTable( {
			"bPaginate": false,
			"bProcessing": true,
			"bServerSide": true,
			"sAjaxSource": "modul/visit_treatment/data_tp.php?nofak="+nofak,
			"aoColumnDefs": [{ "bVisible": false, "aTargets": [0] }],
			"aoColumns": [
				null,
				null,
				null,
				null,
				null,
				null,
				{
				"mData": "0",
				"mRender": function ( data, type, row ) {
					console.log(data)
				var a = '<button id="hapus_p" data-id="'+data+'" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Hapus</button>';
				var b = '<button id="minus_p" data-id="'+data+'" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i></button>';
				var c = '<button id="plus_p" data-id="'+data+'" class="btn btn-success btn-xs"><i class="fa fa-plus"></i></button>';
				var d = '<button class="btn btn-xs btn-success">Lunas</button>';
					if(row[5]=="Lunas"){
						return d;
					}else if(row[4]=="Resep Obat") {
						return a+' '+b+' '+c;
					} else{
						return a;
					}
				
				}
				}
			]
		});

  		// Tambah Perawatan
		$('#form_px').on('submit', function (e) {
			e.preventDefault();
			$.ajax({
				type: 'post',
				url: 'modul/visit_treatment/tambah_t.php?kat=' + $("#tataup2").val(),
				data: $('#form_px').serialize(),
				success: function (data) {
					if (data=="ada") {
						alert("Tindakan Dokter Sudah Ada");
					}else{
						var ttable = $('#tabel_tp').dataTable();
						ttable.fnDraw(false);
						$('#form_px').trigger("reset");
					}
				}
			});
		});

		// Tambah Resep Obat
		$('#form_produk').on('submit', function (e) {
			e.preventDefault();
			$.ajax({
				type: 'post',
				url: 'modul/visit_treatment/tambah_p.php',
				data: $('#form_produk').serialize(),
				success: function () {
				var oTable = $('#tabel_tp').dataTable(); 
				oTable.fnDraw(false);
				$('#form_produk').trigger("reset");
				}
			});
		});
     	
		// plus
		$('body').on("click","#plus_p",function(){
			var id = $(this).data("id");
			$.ajax({
				type:'POST',
				url: 'modul/visit_treatment/plus.php',
				data:{
					id:id
				},
				success:function(data){
					var oTable = $('#tabel_tp').dataTable(); 
					oTable.fnDraw(false);
				}
			});
     	});

  		// Hapus Perawatan
     	$('body').on("click","#hapus_p",function(){
			var id = $(this).data("id");


			$.ajax({
				type:'POST',
				url: 'modul/visit_treatment/hapus.php',
				data:{
					id:id
				},
				success:function(data){
					alert("Berhasil dihapus");
					var ttable = $('#tabel_tp').dataTable();
					ttable.fnDraw(false);
				}
			});
     	});

		// Minus Resep Obat
		$('body').on("click","#minus_p",function(){
			var id = $(this).data("id");
			$.ajax({
				type:'POST',
				url: 'modul/visit_treatment/minus.php',
				data:{
					id:id
				},
				success:function(data){
					var oTable = $('#tabel_tp').dataTable(); 
					oTable.fnDraw(false);
				}
			});
		});

		// Reset Tabel
		$('body').on("click","#reset_t",function(){
			var id = $(this).data("id");
			$.ajax({
				type:'POST',
				url: 'modul/visit_treatment/reset.php',
				data:{
					id:id
				},
				success:function(data){
					var oTable = $('#tabel_tp').dataTable(); 
					oTable.fnDraw(false);
				}
			});
		});
	});
</script>

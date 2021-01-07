<?php
	$id= $_GET['faktur'];
	$date_now = date("Y-m-d");
?>

<section>
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <h5>Tambah Resep</h5>
          </div>
          <div class="card-header">
            <div class="callout callout-success">
              <ul>
			  	<li>Silakan lengkapi dahulu Resep Obat </li>
				<li>Data obat yang ditambahkan akan tersimpan otomatis</li>
				<li>Silakan tekan tombol F5 atau klik tombol Refresh di browser jika koneksi melambat</li>	
				<li>Klik menu Data Pendaftaran Apotek untuk kembali</li>
				<li>Jika sudah selesai klik tombol Bayar</li>
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
							$pem = mysqli_fetch_array(mysqli_query($con,"SELECT *FROM antrian_pasien JOIN pasien ON antrian_pasien.id_pasien=pasien.id_pasien WHERE antrian_pasien.no_faktur='$id'"));
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
						</form>
					</div>
				  </div>
			  </div>
			  <a href="?module=bayar_obat&faktur=<?php echo $_GET['faktur']; ?>"><button class="btn btn-success">Bayar</button></a>
		  </div><hr>
		  <div class="card-body">
			<h5>Resep Obat & Tindakan Dokter (data tersimpan otomatis)</h5><hr>
			<div class="col-md-12">
				<form>
					<div class="row">
						<div class="col-md-6">
							<label>Pilih Resep Obat</label>
							<select id="tataup" class="form-control">
								<option value="">--Silakan Pilih--</option>
								<option value="produk">Resep Obat</option>
							</select>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-12">
				<form id="form_produk" class="collapse">
					<input class="form-control id_pasien" type="hidden" name="id_pasien" value="<?php echo $pem['id_pasien']; ?>">
					<input class="form-control" type="hidden" id="nou" name="no_urut" value="<?php echo $pem['no_urut']; ?>">
					<input type="hidden" name="kode_p" id="kode_p">
				 	<input type="hidden" name="harga_b" id="harga_b">
				 	<input type="hidden" name="nofak" id="faktur" value="<?php echo $pem['no_faktur']; ?>">
					<div class="form-row">
						<div class="form-group col-md-2">
							<label>Nama Resep Obat</label>
							<input type="text" class="form-control" name="nama_p" id="nama_p" required>
						</div>
						<div class="form-group col-md-2">
							<label>Harga</label>
							<input type="text" class="form-control" name="harga_p" id="harga_p" required>
						</div>
						<div class="form-group col-md-2">
							<label>Keterangan</label>
							<input type="text" class="form-control" name="ket">
						</div>
						<div class="form-group col-md-2">
							<label>Diskon (%)</label>
							<input type="number" class="form-control" name="dis" id="diskon_p" value="<?php echo $mem['diskon_p']; ?>">
						</div>
						<div class="form-group col-md-2">
							<label>Jumlah</label>
							<input type="number" class="form-control" min="1" name="jumlah" id="jumlah_p" value="1" required>
						</div>
						<button type="submit" class="btn btn-sm btn-success" style="margin-top: 15px;" >Tambah</button>
						
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

  		var nofak = $("#faktur").val();
  		// datatable
		$('#tabel_tp').dataTable({
			"bProcessing": true,
			"bServerSide": true,
			"sAjaxSource": "modul/mod_kasir_apotek/data_tp.php?id="+nofak,
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
						var a = '<button id="hapus_p" data-id="'+data+'" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Hapus</button>';
						var b = '<button id="minus_p" data-id="'+data+'" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i></button>';
						var c = '<button id="plus_p" data-id="'+data+'" class="btn btn-success btn-xs"><i class="fa fa-plus"></i></button>';
						var d = '<button class="btn btn-xs btn-success">Lunas</button>';
						if(row[5]=="Lunas"){
							return d;
						} else if(row[4]=="Resep Obat") {
							return a+' '+b+' '+c;
						} else{
							return a;
						}
					}
				}
			]
    	});

  		// Tambah Perawatan
   		$('#form_p').on('submit', function (e) {
			e.preventDefault();

          	$.ajax({
            	type: 'post',
            	url: 'modul/mod_kasir_apotek/tambah_t.php',
            	data: $('#form_p').serialize(),
            	success: function (data) {
              		if (data=="ada") {
                		alert("Tindakan Dokter Sudah Ada");
              		} else{
                		var ttable = $('#tabel_tp').dataTable();
                		ttable.fnDraw(false);
                 		$('#form_p').trigger("reset");
              		}
            	}
          	});
        });

     	// Tambah Resep Obat
     	$('#form_produk').on('submit', function (e) {
          	e.preventDefault();

			$.ajax({
				type: 'post',
				url: 'modul/mod_kasir_apotek/tambah_p.php',
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
          	var id =  $("#plus_p").data("id");
			$.ajax({
				type:'POST',
				url: 'modul/mod_kasir_apotek/plus.php',
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
				url: 'modul/mod_kasir_apotek/hapus.php',
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
			var id =  $("#minus_p").data("id");
			$.ajax({
				type:'POST',
				url: 'modul/mod_kasir_apotek/minus.php',
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
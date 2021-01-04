<?php    
  switch($_GET['act']){
  default:
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Laporan Penerimaan Produk</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Laporan Penerimaan Produk</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
  <div class="row">
    <div class="col-12">
	  <form class="form-horizontal" method="POST">
        <div class="card">
          <div class="card-header">
            <div class="card-body">
              <div class="row">
                <div class="form-group row col-md-3">
                  <div class="col-md-12">
                    <label for="inputTgl1">Dari Tanggal </label>
                    <input type="date" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" class="form-control" name="tgl1" data-mask autocomplete="off">
                  </div>
                </div>
                <div class="form-group row col-md-3">
				  <div class="col-md-12">
                    <label for="inputTgl2">Sampai Tanggal </label>
                    <input type="date" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" class="form-control" name="tgl2" data-mask autocomplete="off">
                  </div>
				</div>
			  </div>
			  <div class="row">
				<div class="form-group row col-md-3">
				  <div class="col-md-12">
					<button type="submit" name="submit" class="btn btn-sm btn-info">Tampilkan</button>
				  </div>
				</div>
              </div>
            </div>
          </div>

          <div class="card-body">
			<?php 
			  $tgl1 = $_POST['tgl1'];
			  $tgl2 = $_POST['tgl2'];
			  if ($tgl1 == NULL ) {
			?>
			<table id="example1" class="table table-bordered table-striped">
			  <thead>
				<tr>
				  <th>No</th>
				  <th>No Pengiriman</th>
				  <th>Tanggal Penerimaan</th>
				  <th>Nama Produk</th>
				  <th>Jumlah Produk</th>
				</tr>
			  </thead>
			  <tbody>
			  </tbody>
          	</table>
			
			<?php 
			} 
			else{ ?>
			<a href="modul/lap_penerimaan_pro/cetak_penerimaan.php?tgl1=<?php echo $tgl1; ?>&tgl2=<?php echo $tgl2; ?>&act=cetakpen" target="_blank" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Cetak Data Penerimaan Produk</a><hr>
			<table id="example1" class="table table-bordered table-striped">
			  <thead>
				<tr>
				  <th>No</th>
				  <th>No Pengiriman</th>
				  <th>Tanggal Penerimaan</th>
				  <th>Nama Produk</th>
				  <th>Jumlah Produk</th>
				</tr>
			  </thead>
			  <tbody>
				<?php
				  $tampil     = mysqli_query($con, "SELECT * FROM history_kirim_stok WHERE status='terima' AND tgl_terima BETWEEN '$_POST[tgl1]' AND '$_POST[tgl2]'");
				  $no = 1;
				  while($data = mysqli_fetch_array($tampil)){ ?>
				<tr>
				  <td><?php echo $no++?></td>
				  <td><?php echo $data['no_peng']; ?></td>
				  <td><?php echo $data['tgl_terima']; ?></td>
				  <td><?php echo $data['nama_brg']; ?></td>
				  <td><?php echo rupiah($data['jumlah']); ?></td>
				</tr>
				<?php } ?>
			  </tbody>
			</table>
			<?php } ?>
          </div>
	  	</div>
	  </form>
    </div>
  </div>
</section>

<script>
	$(document).ready(function(){
		$.ajaxSetup({
			headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			}
		});
		$('#jenis').on('click', function (e) {
			e.preventDefault();
			var j = $("#jenis").val();
			if (j == "tunai") {
				$('#status').collapse('hide');
			}
			else {
				$('#status').collapse('show');
			}
        });
	});
</script>

<?php
  break;
  }
?>
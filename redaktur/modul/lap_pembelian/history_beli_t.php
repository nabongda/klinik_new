<?php    
  switch($_GET['act']){
  default:
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Histori Pembelian Produk</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Histori Pembelian Produk</li>
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
				<div class="form-group row col-md-3">
				  <div class="col-md-12">
                    <label for="inputTgl2">Jenis Pembelian </label>
                    <select name="jenis" id="jenis" class="form-control">
						<option value="" selected="selected" disabled="disabled">--Pilih Jenis Pembelian--</option>
						<option value="tunai">Pembelian Tunai</option>
						<option value="kredit">Pembelian Kredit</option>
					</select>
                  </div>
				</div>
				<div id="status" class="collapse form-group row col-md-3">
				  <div class="col-md-12">
                    <label for="inputTgl2">Status Pembelian Kredit</label>
                    <select name="status" class="form-control">
						<option value="" selected="selected" disabled="disabled">--Pilih Status--</option>
						<option value="sudah">Sudah Lunas</option>
						<option value="">Belum Lunas</option>
					</select>
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
			  $jenis = $_POST['jenis'];
			  $status = $_POST['status'];
			  if ($tgl1 == NULL ) {
			?>
			<table id="example1" class="table table-bordered table-striped">
			  <thead>
				<tr>
				  <th>No</th>
				  <th>No Faktur</th>
				  <th>Tanggal Pembelian</th>
				  <th>Suplier</th>
				  <th>Total</th>
				</tr>
			  </thead>
			  <tbody>
			  </tbody>
          	</table>
			<?php
			  } else {
				  if ($jenis == "tunai" ) { ?>
			<a href="modul/lap_pembelian/cetak_pembelian.php?tgl1=<?php echo $tgl1; ?>&tgl2=<?php echo $tgl2; ?>&act=cetakpt" target="_blank" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Cetak Data Pembelian Tunai</a><hr>
			<table id="example1" class="table table-bordered table-striped">
			  <thead>
				<tr>
				  <th>No</th>
				  <th>No Faktur</th>
				  <th>Tanggal Pembelian</th>
				  <th>Suplier</th>
				  <th>Total</th>
				  <th>Jenis Pembayaran</th>
				  <th>Keterangan</th>
				</tr>
			  </thead>
			  <tbody>
				<?php
					$tampil     = mysqli_query($con, "SELECT * FROM beli WHERE tgl_beli BETWEEN '$_POST[tgl1]' AND '$_POST[tgl2]'");
					$no = 1;
					while($data = mysqli_fetch_array($tampil)){
				?>
				<tr>
				  <td><?php echo $no++?></td>
				  <td><?php echo $data['no_fak']; ?></td>
				  <td><?php echo $data['tgl_beli']; ?></td>
					<?php $q1 = mysqli_query($con, "SELECT * FROM suplier WHERE id_sup='$data[id_sup]'"); 
						$k = mysqli_fetch_array($q1); ?>
				  <td><?php echo $k['nama_sup']; ?></td>
				  <td><?php echo rupiah($data['total']); ?></td>
				  <td><?php echo $data['pembayaran']; ?></td>
				  <td><?php echo $data['ket']?></td>
				</tr>
				<?php } ?>
			  </tbody>
          	</table>
			
			<?php 
			} 
			else{
				if ($status == "") { ?>
			<a href="modul/lap_pembelian/cetak_pembelian.php?tgl1=<?php echo $tgl1; ?>&tgl2=<?php echo $tgl2; ?>&act=cetakpkb" target="_blank" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Cetak Data Pembelian Kredit</a><hr>
			<table id="example1" class="table table-bordered table-striped">
			  <thead>
				<tr>
				  <th>No</th>
				  <th>No Faktur</th>
				  <th>Tanggal Pembelian</th>
				  <th>Supplier</th>
				  <th>Total</th>
				  <th>Tanggal Tempo</th>
				</tr>
			  </thead>
			  <tbody>
				<?php
				  $tampil     = mysqli_query($con, "SELECT * FROM beli_k WHERE bukti_bayar='' AND tgl_beli BETWEEN '$_POST[tgl1]' AND '$_POST[tgl2]'");
				  $no = 1;
				  while($data = mysqli_fetch_array($tampil)){ ?>
				<tr>
				  <td><?php echo $no++?></td>
				  <td><?php echo $data['no_fak']; ?></td>
				  <td><?php echo $data['tgl_beli']; ?></td>
					<?php $q1 = mysqli_query($con, "SELECT * FROM suplier WHERE id_sup='$data[id_sup]'"); 
					  $k = mysqli_fetch_array($q1); ?>
				  <td><?php echo $k['nama_sup']; ?></td>
				  <td><?php echo rupiah($data['total']); ?></td>
				  <td><?php echo $data['tgl_tempo']; ?></td>
				</tr>
				<?php } ?>
			  </tbody>
			</table>

			<?php } else { ?>
			<a href="modul/lap_pembelian/cetak_pembelian.php?tgl1=<?php echo $tgl1; ?>&tgl2=<?php echo $tgl2; ?>&act=cetakpkl" target="_blank" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Cetak Data Pembelian Kredit</a><hr>
			<table id="example1" class="table table-bordered table-striped">
			  <thead>
				<tr>
				  <th>No</th>
				  <th>No Faktur</th>
				  <th>Tanggal Pembelian</th>
				  <th>Supplier</th>
				  <th>Total</th>
				  <th>Tanggal Tempo</th>
				</tr>
			  </thead>
			  <tbody>
				<?php
					$tampil2     = mysqli_query($con, "SELECT * FROM beli_k WHERE bukti_bayar!='' AND tgl_beli BETWEEN '$_POST[tgl1]' AND '$_POST[tgl2]'");
					$no = 1;
					while($data2 = mysqli_fetch_array($tampil2)){ ?>
				<tr>
				  <td><?php echo $no++?></td>
				  <td><?php echo $data2['no_fak']; ?></td>
				  <td><?php echo $data2['tgl_beli']; ?></td>
					<?php $q2 = mysqli_query($con, "SELECT * FROM suplier WHERE id_sup='$data2[id_sup]'"); 
					  $k2 = mysqli_fetch_array($q2); ?>
				  <td><?php echo $k2['nama_sup']; ?></td>
				  <td><?php echo rupiah($data2['total']); ?></td>
				  <td><?php echo $data2['tgl_tempo']; ?></td>
				</tr>
				<?php } ?>
			  </tbody>
			</table>
			<?php } } } ?>
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
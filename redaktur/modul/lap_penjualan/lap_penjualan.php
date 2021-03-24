<?php    
  switch($_GET['act']){
  default:
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Laporan Penjualan Produk</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Laporan Penjualan Produk</li>
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
                <th>No Transaksi</th>
                <th>Nama Pembeli</th>
                <th>Tanggal Penjualan</th>
                <th>Jenis Pembayaran</th>
                <th>Status Pembayaran</th>
              </tr>
              </thead>
              <tbody>
              </tbody>
          	</table>
			
              <?php 
              } 
              else{ ?>
            <a href="modul/lap_penjualan/cetak_penjualan.php?tgl1=<?php echo $tgl1; ?>&tgl2=<?php echo $tgl2; ?>&act=cetakjual" target="_blank" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Cetak Laporan Penjualan</a><hr>
            <table id="example1" class="table table-bordered table-striped">
              <thead>
              <tr>
                <th>No</th>
                <th>No Transaksi</th>
                <th>Nama Pembeli</th>
                <th>Tanggal Penjualan</th>
                <th>Jenis Pembayaran</th>
                <th>Status Pembayaran</th>
                <th>Total Bayar</th>
              </tr>
              </thead>
              <tbody>
                <?php
                  $tampil     = mysqli_query($con, "SELECT * FROM pelayanan_obat WHERE tgl_pembelian BETWEEN '$_POST[tgl1]' AND '$_POST[tgl2]'");
                  $no = 1;
                  while($data = mysqli_fetch_array($tampil)){ 
                ?>
                <tr>
                  <td><?php echo $no++?></td>
                  <td><?php echo $data['no_tran']; ?></td>
                  <td><?php echo $data['nama_pembeli']; ?></td>
                  <td><?php echo $data['tgl_pembelian']; ?></td>
                  <td><?php echo $data['jenis_pembayaran']; ?></td>
                  <td><?php echo $data['status_pembayaran']; ?></td>
                  <td><?php echo rupiah($data['total']); ?></td>
                </tr>
              <?php } ?>
              </tbody>
                <tr>
                  <th colspan="6" style="text-align: right;">Total Penjualan: </th>
                  <th style="text-align: left;">
                  <?php
                      $t = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(total) AS total FROM pelayanan_obat WHERE tgl_pembelian BETWEEN '$_POST[tgl1]' AND '$_POST[tgl2]'")); //menyimpan hasil query ke variabel $t
                      ?><b><?php echo rupiah($t["total"]); ?></b>
                      <input type="hidden" id="total" name="total" value="<?php echo $t["total"]; ?>">
                  </th>
                </tr>
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
<?php    
  switch($_GET['act']){
  default:
?>

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
                <div class="form-group row col-md-5">
                  <div class="col-md-2">
                    <label for="inputTgl1">Dari Tanggal </label>
                  </div>
                  <div class="col-md-8">
                    <input type="date" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" class="form-control" name="tgl1" data-mask autocomplete="off">
                  </div>
                </div>
                <div class="form-group row col-md-5">
					<div class="col-md-2">
                    <label for="inputTgl2">Sampai Tanggal </label>
                  </div>
                  <div class="col-md-8">
                    <input type="date" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" class="form-control" name="tgl2" data-mask autocomplete="off">
                  </div>
				</div>
				<div class="form-group row col-md-2">
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
				  <th>Nama Barang</th>
				  <th>Jumlah</th>
				  <th>Harga</th>
				  <th>Diskon</th>
				  <th>Sub Total</th>
				</tr>
			  </thead>
			  <tbody>
			  </tbody>
			  <tfoot>
				<tr>
				  <th colspan="5"></th>
				  <th></th>
				</tr>
			  </tfoot>
			</table>

			<?php }else{
			  $bt = mysqli_query($con, "SELECT * FROM history_beli_t WHERE tgl_beli between '$_POST[tgl1]' AND '$_POST[tgl2]'");
			  $abt = mysqli_fetch_row($bt);
			  if($abt>0){ ?>
			<a href="modul/lap_pembelian/cetak_pembelian.php?tgl1=<?php echo $tgl1; ?>&tgl2=<?php echo $tgl2; ?>" target="_blank" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Cetak Data Pembelian</a><hr>
			<?php } ?>

			<table id="example1" class="table table-bordered table-striped">
			  <thead>
				<tr>
				  <th>Kode Barang</th>
				  <th>Nama Barang</th>
				  <th>Jumlah</th>
				  <th>Harga</th>
				  <th>Diskon</th>
				  <th>Sub Total</th>
				</tr>
				</thead>
				<tbody>
				<?php
					$p = mysqli_query($con, "SELECT * FROM history_beli_t WHERE tgl_beli between '$_POST[tgl1]' AND '$_POST[tgl2]'");
					while($dat=mysqli_fetch_array($p)){
				?>
				<tr>
					<td><?php echo $dat['kd_brg']; ?></td>
					<td><?php echo $dat['nama_brg']; ?></td>
					<td><?php echo $dat['jumlah']; ?></td>
					<td><?php echo rupiah($dat['hrg']); ?></td>
					<td><?php echo $dat['diskon']; ?></td>
					<td><?php echo rupiah($dat['sub_tot']); ?></td>
				</tr>
				<?php } ?>
				</tbody>
				<tfoot>
				<tr>
					<th colspan="5" class="text-center">TOTAL</th>
					<?php 
					$jumlahkan = "SELECT SUM(sub_tot) AS total FROM history_beli_t where tgl_beli between '$_POST[tgl1]' AND '$_POST[tgl2]'"; //perintah untuk menjumlahkan
					$total =@mysqli_query($con, $jumlahkan) or die (mysqli_error($con));//melakukan query dengan varibel $jumlahkan
					$t = mysqli_fetch_array($total); //menyimpan hasil query ke variabel $t
					?>
					<th><?php echo rupiah($t['total']); ?></th>
				</tr>
				</tfoot>
			</table>
			<?php } ?>
          </div>
	  	</div>
	  </form>
    </div>
  </div>
</section>

<?php
  break;
  }
?>

			
					
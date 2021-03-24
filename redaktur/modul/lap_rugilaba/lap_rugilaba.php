<?php    
  switch($_GET['act']){
  default:
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Laporan Rugi Laba</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Laporan Rugi Laba</li>
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
            <a href="modul/lap_rugilaba/cetak_rugilaba.php?&act=cetakrugilaba" target="_blank" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Cetak Laporan Rugi Laba</a>
              <!-- <div class="card-body">
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
              </div> -->
            </div>

            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr style="text-align:center;">
                  <th rowspan="2">Kode Produk</th>
                  <th rowspan="2">Nama Produk</th>
                  <th colspan="3">Saldo Persediaan</th>
                  <th rowspan="2">Subtotal Laba</th>
                </tr>
                <tr>
                  <th>Harga Jual</th>
                  <th>Harga Beli</th>
                  <th>Qty</th>
                </tr>
                </thead>
                <tbody>
                  <?php
                    $tampil     = mysqli_query($con, "SELECT * FROM produk_pusat");
                    $total = 0;
                    while($data = mysqli_fetch_array($tampil))
                  { 
                  ?>
                <tr>
                    <td><?php echo $data['kode_barang']; ?></td>
                    <td><?php echo $data['nama_p']; ?></td>
                    <td><?php echo rupiah ($data['hrg_jual']); ?></td>
                    <td><?php echo rupiah ($data['hrg']); ?></td>
                    <td><?php echo $data['jumlah']; ?></td>
                    <?php 
                      $subtotal = ($data['hrg_jual']-$data['hrg'])*$data['jumlah'];
                      $total = $total+$subtotal;
                    ?>
                    <td colspan="2"><?php echo rupiah ($subtotal); ?></td>
                </tr>
                </tbody>
                <?php } ?>
                <tbody>
                  <tr>
                    <th colspan="5" style="text-align: right;"> Total Laba</th>
                    <th style="text-align: left;">
                      <b><?php echo rupiah($total); ?></b>
                      <input type="hidden" id="total" name="total" value="<?php echo rupiah($total); ?>">
                    </th>
                  </tr>
                </tbody>
              </table>
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
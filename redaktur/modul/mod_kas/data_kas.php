<?php
	$thn		= date('Y');
	$bln		= date('m');
	$bulan		= date('m');
	switch ($bulan){
		case 1: { $bulan = 'Januari';
			}break;
		case 2: { $bulan = 'Februari';
			}break;
		case 3: { $bulan = 'Maret';
			}break;
		case 4: { $bulan = 'April';
			}break;
		case 5: { $bulan = 'Mei';
			}break;
		case 6: { $bulan = 'Juni';
			}break;
		case 7: { $bulan = 'Juli';
			}break;
		case 8: { $bulan = 'Agustus';
			}break;
		case 9: { $bulan = 'September';
			}break;
		case 10: { $bulan = 'Oktober';
			}break;
		case 11: { $bulan = 'November';
			}break;
		case 12: { $bulan = 'Desember';
			}break;
		default: { $bulan = 'Tidak Ada!';
			}break;
	}	
?>

<?php    
  switch($_GET['act']){
  default:
?>

<section class="content-header">
  <?php 
    $bc = mysqli_fetch_assoc(mysqli_query($con, "SELECT nama_menu AS crumb FROM menu WHERE page_menu = '$_GET[module]'"));
  ?> 
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1><?php echo $bc['crumb']; ?></h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active"><?php echo $bc['crumb']; ?></li>
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
              <a href="?module=kas&act=tambah_kas" type="button" name="submit" class="btn btn-sm btn-info">Tambah</a>
          </div>
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
                  <th>Tanggal</th>
                  <th>Nama Kas</th>
                    <th>Pengeluaran</th>
                    <th>Pemasukan</th>
                </tr>
              </thead>
              <tbody>
              <?php
              $today = date('Y-m-d');
              $tampil     = mysqli_query($con, "SELECT * FROM data_kas WHERE DATE(tanggal)='$today'");
              $no = 1;
              while($data = mysqli_fetch_array($tampil)){ 
              ?>
                <tr>
                  <td><?php echo $no++?></td>
                  <td><?php echo $data['tanggal']; ?></td>
                  <td><?php echo $data['nama_kas']; ?></td>
                  <td><?php 
                      if ($data['kategori']=='pemasukan') {
                        echo rupiah($data['jumlah']); 
                      }
                      else {
                        echo "-";
                      } ?>
                  </td>
                  <td><?php 
                      if ($data['kategori']=='pengeluaran') {
                        echo rupiah($data['jumlah']); 
                      }
                      else {
                        echo "-";
                      } ?>
                  </td>
                </tr>
              <?php } ?>
              </tbody>
                <tr>
                  <th colspan="3" style="text-align: right;">Total Pemasukan: </th>
                  <th colspan="2" style="text-align: left;">
                  <?php
                      $totpem = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(jumlah) AS totpem FROM data_kas WHERE kategori='pemasukan' AND DATE(tanggal)='$today'")); //menyimpan hasil query ke variabel $t
                      ?><b><?php echo rupiah($totpem["totpem"]); ?></b>
                      <input type="hidden" id="totpem" name="totpem" value="<?php echo $totpem["totpem"]; ?>">
                  </th>
                </tr>
                <tr>
                  <th colspan="3" style="text-align: right;">Total Pengeluaran: </th>
                  <th colspan="2" style="text-align: left;">
                  <?php
                      $totpeng = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(jumlah) AS totpeng FROM data_kas WHERE kategori='pengeluaran' AND DATE(tanggal)='$today'")); //menyimpan hasil query ke variabel $t
                      ?><b><?php echo rupiah($totpeng["totpeng"]); ?></b>
                      <input type="hidden" id="totpeng" name="totpeng" value="<?php echo $totpeng["totpeng"]; ?>">
                  </th>
                </tr>
                <tr>
                  <th colspan="3" style="text-align: right;">Total Saldo: </th>
                  <th colspan="2" style="text-align: left;">
                    <?php echo rupiah($totpem["totpem"]-$totpeng["totpeng"]); ?>
                  </th>
                </tr>
              </table>
                <?php 
                } 
                else{ ?>
              <a href="modul/mod_kas/cetak_kas.php?tgl1=<?php echo $tgl1; ?>&tgl2=<?php echo $tgl2; ?>&act=cetakkas" target="_blank" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Cetak Laporan Kas</a><hr>
              <table id="example1" class="table table-bordered table-striped">
              <thead>
              <tr>
                  <th>No</th>
                  <th>Tanggal</th>
                  <th>Nama Kas</th>
                  <th>Pemasukan</th>
                  <th>Pengeluaran</th>
              </tr>
              </thead>
              <tbody>
                <?php
                $tampil     = mysqli_query($con, "SELECT * FROM data_kas WHERE tanggal BETWEEN '$_POST[tgl1]' AND '$_POST[tgl2]'");
                $no = 1;
                while($data = mysqli_fetch_array($tampil)){ 
                ?>
                <tr>
                  <td><?php echo $no++?></td>
                  <td><?php echo $data['tanggal']; ?></td>
                  <td><?php echo $data['nama_kas']; ?></td>
                  <td><?php 
                      if ($data['kategori']=='pemasukan') {
                        echo $data['jumlah']; 
                      }
                      else {
                        echo "-";
                      } ?>
                  </td>
                  <td><?php 
                      if ($data['kategori']=='pengeluaran') {
                        echo $data['jumlah']; 
                      }
                      else {
                        echo "-";
                      } ?>
                  </td>
                </tr>
              <?php } ?>
              </tbody>
              <tr>
                  <th colspan="3" style="text-align: right;">Total Pemasukan: </th>
                  <th colspan="2" style="text-align: left;">
                  <?php
                      $totpem = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(jumlah) AS totpem FROM data_kas WHERE kategori='pemasukan' AND tanggal BETWEEN '$_POST[tgl1]' AND '$_POST[tgl2]'")); //menyimpan hasil query ke variabel $t
                      ?><b><?php echo rupiah($totpem["totpem"]); ?></b>
                      <input type="hidden" id="totpem" name="totpem" value="<?php echo $totpem["totpem"]; ?>">
                  </th>
                </tr>
                <tr>
                  <th colspan="3" style="text-align: right;">Total Pengeluaran: </th>
                  <th colspan="2" style="text-align: left;">
                  <?php
                      $totpeng = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(jumlah) AS totpeng FROM data_kas WHERE kategori='pengeluaran' AND tanggal BETWEEN '$_POST[tgl1]' AND '$_POST[tgl2]'")); //menyimpan hasil query ke variabel $t
                      ?><b><?php echo rupiah($totpeng["totpeng"]); ?></b>
                      <input type="hidden" id="totpeng" name="totpeng" value="<?php echo $totpeng["totpeng"]; ?>">
                  </th>
                </tr>
                <tr>
                  <th colspan="3" style="text-align: right;">Total Saldo: </th>
                  <th style="text-align: left;" colspan="2">
                    <?php echo rupiah($totpem["totpem"]-$totpeng["totpeng"]); ?>
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

<?php
  break; 
  case "tambah_kas":
?>

<section class="content-header">
  <?php 
    $bc = mysqli_fetch_assoc(mysqli_query($con, "SELECT nama_menu AS crumb FROM menu WHERE page_menu = '$_GET[module]'"));
  ?> 
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1><?php echo $bc['crumb']; ?></h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active"><?php echo $bc['crumb']; ?></li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header box box-success">
                    <h5 class="box-title">Tambah Data Kas</h5>
                </div>
                <div class="card-body">
                    <form method="post" enctype="multipart/form-data" action="modul/mod_kas/aksi_data_kas.php">
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Kategori</label>
                                <select class="form-control" name="kategori" required>
                                    <option value="" disabled selected>--silakan pilih--</option>
                                    <option value="pengeluaran">Pengeluaran</option>
                                    <option value="pemasukan">Pemasukan</option>
                                </select>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Nama Kas </label>
                                <input type="text" class="form-control" name="nama_kas" required/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Jumlah</label>
                                <input type="text" class="form-control" name="jumlah" required/>
                            </div>
                            <div class="form-group col-md-6">
                                <label>Keterangan</label>
                                <input type="text" class="form-control" name="ket" required/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label>Tanggal</label>
                                <input type="date" class="form-control" name="tanggal" required/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <a href="?module=kas"><button type="button" class="btn btn-danger">Batal</button></a>
                                <button type="submit" class="btn btn-success">Simpan</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
  break;
  }
?>
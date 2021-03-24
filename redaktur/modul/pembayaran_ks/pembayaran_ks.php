<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Reseptionis</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Pembayaran</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<?php 
  $act = $_GET['act']; 
  $id_kk = $_SESSION['klinik'];
  $daten = date("Y-m-d");
  $tgl = $_GET['tgl'];
?>

<section class="content">
<?php 
  switch ($act) {
    case 'bayar':
      $tgl = $_GET['tgl'];
      $nu = $_GET['nu'];
      $p = mysqli_query($con,"SELECT * FROM history_ap JOIN pasien ON history_ap.id_pasien=pasien.id_pasien WHERE no_urut='$nu' AND history_ap.tanggal_pendaftaran='$tgl'");
      $pas = mysqli_fetch_array($p);
      // Total
      $query = mysqli_query($con,"SELECT SUM(harga_p) AS jumlah FROM perawatan_pasien WHERE no_urut='$nu' AND tanggal='$tgl'");
      $query2 = mysqli_query($con,"SELECT * FROM produk_pasien WHERE no_urut='$nu' AND tanggal='$tgl'");
      while ($tot1 = mysqli_fetch_array($query2)) {
        $totalpr += $tot1['harga_pr']*$tot1['jumlah'];
      }
      
      $tot = mysqli_fetch_array($query);
      $totalp  = $tot['jumlah'];
      
      $total = $totalp + $totalpr; 
// End 
?>
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h5>Pembayaran</h5>
        </div>
        <div class="card-body">
          <form id="form_bayar">
            <input type="hidden" name="id_pasien" value="<?php echo $pas['id_pasien']; ?>">
            <div class="col-md-6">
              <div class="form-group">
                <?php $nofak = date("Y-m-d H:i:s"); ?>
                <label>No. Faktur</label>
                <input class="form-control" type="number" name="nofak" value="<?php echo $nofak; ?>">
              </div>
              <div class="form-group">
                <label>Nama</label>
                <input class="form-control" type="text" name="nama" readonly value="<?php echo $pas['nama_pasien']; ?>">
              </div>
              <div class="form-group">
                <label>No. Antrian</label>
                <input id="nourut_ht" class="form-control" type="text" name="no_urut" readonly value="<?php echo $pas['no_urut']; ?>">
              </div>
              <div class="form-group">
                <label>Total Yang Harus Di Bayar</label>
                <input class="form-control" type="text" name="total" readonly value="<?php echo $total; ?>">
              </div>
              <div class="form-group">
                <label>Kembalian</label>
                <input class="form-control" type="text" name="kembalian" id="kembalian" readonly>
              </div>
              <div class="form-group">
                <a href="#" onclick="window.history.back()" class="btn btn-primary btn-sm">Kembali</a>
                <button id="btn_bayar" type="submit" class="btn btn-success btn-sm">Bayar</button>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label>Tanggal Perawatan</label>
                <input class="form-control" type="text" id="tgl_ht" name="tgl" readonly value="<?php echo $pas['tanggal_pendaftaran']; ?>">
              </div>
              <div class="form-group">
                <label>Status Pembayaran</label>
                <input class="form-control" type="text" name="status" readonly value="<?php echo $pas['pembayaran']; ?>">
              </div>
              <div class="form-group">
                <label>Uang</label>
                <input class="form-control" type="text" id="uang_ht" name="uang">
              </div>
              <div class="form-group">
                <label>Metode Pembayaran</label>
                <select name="metode" class="form-control">
                  <option value="Tunai">Tunai</option>
                  <option value="Transfer">Transfer</option>
                </select>
              </div>
              <div class="form-check">
                <input <?php if ($pas["konsultasi"]=="Yes"): ?> checked="TRUE" <?php endif ?> type="checkbox" name="konsultasi" value="Yes">
                <label class="form-check-label">Konsultasi</label>
              </div>
              <div class="form-group">
                <a href="#" onclick="window.history.back()" class="btn btn-primary btn-sm">Kembali</a>
                <button id="btn_bayar" type="submit" class="btn btn-success btn-sm">Bayar</button>
              </div>
            </div>
          </form>
        </div>
        <div class="card-body">
          <div class="col-md-6">
            <h5>Perawatan</h5><hr>
            <table id="datatable" class="table table-bordered table-striped datatable">
              <thead>
                <tr>
                  <th>Perawatan</th>
									<th>Harga</th>
                </tr>
              </thead>
              <tbody>
                <?php $p = mysqli_query($con,"SELECT * FROM perawatan_pasien WHERE no_urut='$nu' AND tanggal='$tgl' AND id_kk='$id_kk'"); 
                  while($dat=mysqli_fetch_array($p)){ ?>
                    <tr>
                      <td><?php echo $dat['nama_p']; ?></td>
                      <td><?php echo $dat['harga_p']; ?></td>
                    </tr>
                <?php 	}
                ?>
              </tbody>
              <tfoot>
                <tr>
                  <td><b>TOTAL</b></td>
                  <td><b>Rp <?php echo number_format($totalp); ?><b></td>
                </tr>
              </tfoot>
            </table>
          </div>
          <div class="col-md-6">
          <h5>Produk</h5><hr>
            <table id="datatable" class="table table-bordered table-striped datatable">
              <thead>
                <tr>
                  <th>Produk</th>
                  <th>Harga</th>
                  <th>Jumlah</th>
                  <th>Sub Total</th>
                </tr>
              </thead>
              <tbody>
                <?php $p = mysqli_query($con,"SELECT *FROM produk_pasien WHERE no_urut='$nu' AND tanggal='$tgl' AND id_kk='$id_kk'"); 
                  while($dat=mysqli_fetch_array($p)){ ?>
                    <tr>
                      <td><?php echo $dat['nama_pr']; ?></td>
                      <td><?php echo $dat['harga_pr']; ?></td>
                      <td><?php echo $dat['jumlah']; ?></td>
                      <td><?php echo $dat['harga_pr']*$dat['jumlah']; ?></td>
                    </tr>
                <?php } ?>
              </tbody>
              <tfoot>
                <tr>
                  <td colspan="3"><b>TOTAL</b></td>
                  <td><b>Rp <?php echo number_format($totalpr); ?><b></td>
                </tr>
              </tfoot>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php 
  break;
  default: ?>
          
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <div class="callout callout-success bg-success">
            <h5>Daftar Antrian Pembayaran Pasien</h5>
          </div>
        </div>
      </div>
    </div>

    <div class="col-md-6">
      <div class="card">
        <div class="card-header">
          <h5>Antrian Pembayaran Layanan Laboratorium/Apotek</h5>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Nama Pasien</th>
                <th>Nomor Antrian</th>
                <th>Pilihan</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $appp1 = mysqli_query($con, "SELECT *FROM history_ap JOIN pasien ON history_ap.id_pasien=pasien.id_pasien WHERE pembayaran='Belum Lunas' AND jenis_layanan IN ('lab','apotek') ORDER BY history_ap.no_urut ASC");
              while($iii1 = mysqli_fetch_array($appp1)) { ?>
                <tr>
                  <td><?php echo $iii1['nama_pasien']; ?></td>
                  <td><?php echo $iii1['no_urut']; ?></td>
                  <td>
                    <a href="media.php?module=history_transaksi&layan=lab&act=bayar&nofak=<?php echo $iii1['no_faktur']; ?>" class="btn btn-xs btn-primary">Bayar</a>
                  </td>
			          </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    
    <div class="col-md-6">
      <div class="card">
        <div class="card-header">
          <h5>Antrian Pembayaran Pasien Rawat Inap</h5>
        </div>
        <div class="card-body">
          <table id="example2" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Nama Pasien</th>
                <th>Ruang Perawatan</th>
                <th>Pilihan</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $appp = mysqli_query($con, "SELECT * FROM perawatan_pasien JOIN pasien ON perawatan_pasien.id_pasien=pasien.id_pasien WHERE tgl_out='$daten' ORDER BY perawatan_pasien.id ASC");
              while($iii = mysqli_fetch_array($appp)) {
                $bang = mysqli_fetch_assoc(mysqli_query($con, "SELECT nama_ruangan AS sal FROM ruangan WHERE id = $iii[id_ruang]")); ?>
                
                <tr>
                  <td><?php echo $iii['nama_pasien']; ?></td>
                  <td><?php echo $bang['sal']; ?></td>
                  <td>
                    <a href="media.php?module=history_transaksi&layan=inap&act=bayar&nofak=<?php echo $iii['no_faktur']; ?>" class="btn btn-xs btn-primary">Bayar</a>
                  </td>
			          </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <div class="col-md-6">
      <div class="card">
        <div class="card-header">
          <h5>Antrian Pembayaran Pasien Rawat Jalan</h5>
        </div>
        <div class="card-body">
          <table id="example3" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Nama Pasien</th>
                <th>Nomor Faktur</th>
                <th>Pilihan</th>
              </tr>
            </thead>
            <tbody>
              <?php 
              $date_now = date("Y-m-d");
              $ap = mysqli_query($con,"SELECT * FROM kasir_sementara JOIN pasien ON kasir_sementara.id_pasien=pasien.id_pasien WHERE status='Belum Lunas' AND jenis IN ('Produk', 'Treatment') GROUP BY kasir_sementara.no_faktur");
              while($i = mysqli_fetch_array($ap)){ ?>
              <tr>
                <td><?php echo $i['nama_pasien']; ?></td>
                <td><?php echo $i['no_faktur']; ?></td>
                <td><a href="media.php?module=history_transaksi&layan=jalan&act=bayar&nofak=<?php echo $i['no_faktur']; ?>" class="btn btn-xs btn-primary">Bayar</a></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>

    <div class="col-md-6">
      <div class="card">
        <div class="card-header">
          <h5>Antrian Pembayaran Pasien Poliklinik/IGD</h5>
        </div>
        <div class="card-body">
          <table id="example4" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Nama Pasien</th>
                <th>Nomor Antrian</th>
                <th>Pilihan</th>
              </tr>
            </thead>
            
            <tbody>
              <?php 
              $appp = mysqli_query($con,"SELECT * FROM history_ap JOIN pasien ON history_ap.id_pasien=pasien.id_pasien WHERE pembayaran = 'Belum Lunas' AND jenis_layanan IN ('poliklinik','igd') ORDER BY history_ap.no_urut ASC ");
              while($iii = mysqli_fetch_array($appp)){ ?>
              <tr>
                <td><?php echo $iii['nama_pasien']; ?></td>
                <td><?php echo $iii['no_urut']; ?></td>
                <td><a href="media.php?module=history_transaksi&layan=poli&act=bayar&nofak=<?php echo $iii['no_faktur']; ?>" class="btn btn-xs btn-primary">Bayar</a></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
<?php 
break;
}
?>
</section>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
      <form action="" method="post">
        <div class="card">
        <?php 
            if ($_SESSION['jenis_u']=="JU-01") { 
          ?>
          <div class="card-header">
            <div class="form-group row">
              <div class="col-sm-6">
                <label><b>Data Stok Barang Tiap Cabang</b></label>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-6">
                <label for="inputSuplier">Pilih Klinik </label>
                <select class="form-control select2" id="jenis_klinik" name="jenis_klinik" style="width: 100%;" required>
                  <option value="">Pilih Klinik</option>
                  <?php
                    $sql = 'SELECT * from daftar_klinik';
                    $query  = mysqli_query($con, $sql);
                    while ($row = mysqli_fetch_array($query)) {
                    ?>
                    <option value="<?php echo $row['id_kk']; ?>"><?php echo $row['nama_klinik']; ?></option>
                  <?php }?>
                </select>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-6">
                <button type="submit" class="btn btn-primary" name="submit"><i class="fa fa-search"></i> Tampilkan</button>
              </div>
            </div>
          </div>
          <?php } ?>
          <div class="card-header">
            <a href="?module=gudang_cabang&act=tambah_stok" class="btn btn-primary">Stok Pengiriman Gudang</a>
          </div>
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>Gambar</th>
                  <th>Kode Produk</th>
                  <th>Nama Produk</th>
                  <th>Jenis Obat</th>
                  <th>Kategori Produk</th>
                  <th>Stok Produk</th>
                  <?php 
                    if ($_SESSION['jenis_u']=="JU-01") { 
                  ?>
                  <th>Harga Beli</th>
                  <?php } ?>
                  <th>Harga Jual</th>
                  <th>Tanggal Produksi</th>
                  <th>Tanggal Expired</th>
                  <th>Status</th>
                </tr>
              </thead>
              <tbody>
                <?php
                  $tampil   = mysqli_query($con, "SELECT * FROM produk");
                  while($r  = mysqli_fetch_array($tampil)){
                ?>
                <tr>
                  <?php $q1 = mysqli_query($con, "SELECT * FROM produk_master WHERE kd_produk='$r[kode_barang]'"); 
                  $k = mysqli_fetch_array($q1); ?>
                  <td>
                    <?php
                      if ($k['gambar'] == '') {
                        echo "Belum Ada Gambar";
                      }else{
                        echo '<center><a href="'.$url.'/gambar_produk/'.$k['gambar'].'"><img src="'.$url.'/gambar_produk/'.$k['gambar'].'" width="40px" height="40px"></a></center>';
                      }
                    ?>
                  </td>
                  <td><?php echo $r["kode_barang"]; ?></td>
                  <td><?php echo $r["nama_p"]; ?></td>
                  <?php
                  $qk = mysqli_query($con, "SELECT * FROM kategori WHERE id_kategori='$r[kategori]'"); 
                  $kt = mysqli_fetch_array($qk); ?>
                  <td><?php echo $k['jenis_obat']; ?></td>
                  <td><?php echo $kt['kategori']; ?></td>
                  <td><?php echo $r["jumlah"]; ?></td>
                  <?php 
                    if ($_SESSION['jenis_u']=="JU-01") { 
                  ?>
                  <td><?php echo rupiah($r["hrg"]); ?></td>
                  <?php } ?>
                  <td><?php echo rupiah($r["hrg_jual"]); ?></td>
                  <td><?php echo $r['tgl_produksi']?></td>
                  <td><?php echo $r['tgl_expired']?></td>
                  <td>
                    <?php
                      if ($r["jumlah"] <= 3) {
                      echo '<a href="#" class="btn btn-sm btn-danger">Stok Kurang</a>&nbsp;';
                      }else{
                      echo '<a href="#" class="btn btn-sm btn-success">Stok Tersedia</a>';
                      }
                    ?>
                  </td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>

<!-- Tambah Data Stok Barang -->

<?php
  break;
  case "tambah_stok":
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Stok Pengiriman Gudang</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Stok Pengiriman Gudang</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Stok Pengiriman Gudang</h3>
          </div>
          <div class="card-body">
            <form role="form" method="POST" enctype="multipart/form-data" action="modul/gudang/kirim.php">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                  <tr>
                    <th>Gambar</th>
                    <th>Nama Obat</th>
                    <th>Jumlah</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                    $tampil   = mysqli_query($con, "SELECT * FROM history_kirim_stok WHERE status='kirim'");
                    while($r  = mysqli_fetch_array($tampil)){
                  ?>
                  <tr>
                    <?php $q1 = mysqli_query($con, "SELECT * FROM produk_master WHERE kd_produk='$r[kd_brg]'"); 
                    $k = mysqli_fetch_array($q1); ?>
                    <td>
                      <?php
                        if ($k['gambar'] == '') {
                          echo "Belum Ada Gambar";
                        }else{
                          echo '<center><a href="'.$url.'/gambar_produk/'.$k['gambar'].'"><img src="'.$url.'/gambar_produk/'.$k['gambar'].'" width="40px" height="40px"></a></center>';
                        }
                      ?>
                    </td>
                    <td><?php echo $r["nama_brg"]; ?></td>
                    <td><?php echo $r["jumlah"]; ?></td>
                    <td>
                      <input id="terima" type="radio" name="status" value="terima" required> Terima <br>
                      <input id="tolak" type="radio" name="status" value="tolak" required> Tolak <br>
                      <input type="hidden" name="id" value="<?php echo $r["id"]; ?>">
                      <input type="hidden" name="produk" value="<?php echo $r["kd_brg"]; ?>">
                      <input type="hidden" name="jml" value="<?php echo $r["jumlah"]; ?>">
                      <input type="hidden" name="hrg" value="<?php echo $r["hrg"]; ?>">
                      <input type="hidden" name="hrg_jual" value="<?php echo $r["hrg_jual"]; ?>">
                      <input type="hidden" name="satuan" value="<?php echo $r["satuan"]; ?>">
                      <input type="hidden" name="kategori" value="<?php echo $r["kategori"]; ?>">
                      <input type="hidden" name="tgl_produksi" value="<?php echo $r["tgl_produksi"]; ?>">
                      <input type="hidden" name="tgl_expired" value="<?php echo $r["tgl_expired"]; ?>">
                    </td>
                  </tr>
                  <tr id="fpesan" style="display:none;">
                    <td colspan="4">
                      <textarea name="pesan" id="pesan" class="form-control" placeholder="Alasan tolak obat..."></textarea>
                    </td>
                  </tr>
                  <?php } ?>
                </tbody>
                <?php 
                $t = mysqli_query($con, "SELECT nama_brg FROM history_kirim_stok WHERE status='kirim'");
                $row = mysqli_fetch_row($t);
                if ($row > 0) { ?>
                <tfoot>
                  <tr>
                    <td colspan="4" class="text-right"><button type="submit" class="btn btn-primary">Simpan</button></td>
                  </tr>
                </tfoot>
                <?php } ?>
              </table>
              <script>
                $(document).ready(function(){
                  $.ajaxSetup({
                    headers: {
                      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                  });

                  $("#tolak").click(function() {
                    $("#fpesan:hidden").show('slow');
                  });
                  $("#tolak").click(function() {
                    if($('fpesan').prop('checked')===false) {
                      $('#fpesan').hide();
                    }
                  });

                  $("#terima").click(function() {
                    $("#fpesan").hide();
                  });                 
                });
              </script>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- <section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Tambah Data Stok Barang</h3>
          </div>
          <form role="form" method="POST" enctype="multipart/form-data" action="modul/gudang/aksi_stok.php?act=input">
            <div class="card-body">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Kode Produk</label>
                  <input type="text" class="form-control" name="kd_produk" placeholder="Kode produk" required>
                </div>
                <div class="form-group">
                  <label>Nama Produk</label>
                  <input type="text" class="form-control" name="nama_produk" placeholder="Nama Produk" required>
                </div>
                <div class="form-group">
                  <label>Kategori Produk</label>
                  <select name="kategori_produk" class="form-control" required>
                    <option value="">Pilih Kategori</option>
                    <?php
                      $data = mysqli_query($con, "Select * From kategori");            
                      while($hasil  = mysqli_fetch_array($data)){
                    ?>
                    <option value="<?php echo $hasil['id_kategori']; ?>"><?php echo $hasil['kategori']; ?></option>
                    <?php }?>
                  </select>
                </div>
                <div class="form-group">
                  <label>Jumlah Stok</label>
                  <input type="number" class="form-control" name="stok_produk" placeholder="Stok" required>
                </div>
                <div class="form-group">
                  <label>Satuan</label>
                  <select name="satuan" class="form-control" required>
                    <option >Pilih Satuan</option>
                    <?php
                      $data = mysqli_query($con, "Select * From data_satuan");            
                      while($hasil  = mysqli_fetch_array($data)){
                    ?>
                    <option value="<?php echo $hasil['id_s']; ?>"><?php echo $hasil['satuan']; ?></option>
                    <?php }?>
                  </select>
                </div>
                <div class="form-group">
                  <a href="?module=gudang"><button type="button" class="btn btn-danger">Batal</button></a>
                  <button type="submit" class="btn btn-success">Tambah</button>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Harga Beli</label>
                  <input type="number" class="form-control" name="harga_beli" placeholder="Harga Beli" required>
                </div>
                <div class="form-group">
                  <label>Harga Jual</label>
                  <input type="number" class="form-control" name="harga_jual" placeholder="Harga jual" required>
                </div>
                <div class="form-group">
                  <label>Suplier</label>
                  <select name="suplier" class="form-control" required>
                    <option value="">Pilih Suplier</option>
                    <?php 
                      $data = mysqli_query($con, "Select * From suplier");            
                      while($hasil  = mysqli_fetch_array($data)){
                    ?>
                    <option value="<?php echo $hasil['id_sup']; ?>"><?php echo $hasil['nama_sup']; ?></option>
                    <?php } ?>
                  </select> 
                </div>
                <div class="form-group">
                  <label>Batas Cabang</label>
                  <input type="number" class="form-control" name="batas_cabang" placeholder="Batas Cabang" required>
                </div>
                <div class="form-group">
                  <label>Batas Minim</label>
                  <input type="number" class="form-control" name="batas_minim" placeholder="Batas Minim" required>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section> -->

<!-- Edit Data Stok Barang -->

<?php
  break;
  case "edit_brg":
  $id   = $_GET['id_pp'];
  $edit   = mysqli_fetch_array(mysqli_query($con, "Select * From produk_pusat Where id_pp='$id'"));
?>

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Edit Data Stok Barang</h3>
          </div>
          <form role="form" method="POST" enctype="multipart/form-data" action="modul/gudang/aksi_stok.php?act=update">
            <div class="card-body">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Kode Produk</label>
                  <input type="hidden" class="form-control" name="id_pp" value="<?php echo $edit['id_pp'];?>" required>
                  <input type="text" class="form-control" name="kd_produk" value="<?php echo $edit['kode_produk'];?>" required>
                </div>
                <div class="form-group">
                  <label>Nama Produk</label>
                  <input type="text" class="form-control" name="nama_produk" value="<?php echo $edit['nama_produk'];?>" required>
                </div>
                <div class="form-group">
                  <label>Kategori Produk</label>
                  <select name="kategori_produk" class="form-control" required>
                    <option value="">Pilih Kategori</option>
                    <?php
                      $data = mysqli_query($con, "Select * From kategori");            
                      while($hasil  = mysqli_fetch_array($data)){
                        $sel = ($edit['id_kategori'] == $hasil['id_kategori'])? "selected" : "";
                    ?>
                    <option value="<?php echo $hasil['id_kategori']; ?>" <?php echo $sel; ?>><?php echo $hasil['kategori']; ?></option>
                    <?php }?>
                  </select>
                </div>
                <div class="form-group">
                  <label>Jumlah Stok</label>
                  <input type="number" class="form-control" name="stok_produk" value="<?php echo $edit['jumlah'];?>" required>
                </div>
                <div class="form-group">
                  <label>Satuan</label>
                  <select name="satuan" class="form-control" required>
                    <option value="">Pilih Satuan</option>
                    <?php
                      $data = mysqli_query($con, "Select * From data_satuan");            
                      while($hasil  = mysqli_fetch_array($data)){
                        $sel = ($edit['id_sat'] == $hasil['id_s'])? "selected" : "";
                    ?>
                    <option value="<?php echo $hasil['id_s']; ?>" <?php echo $sel; ?>><?php echo $hasil['satuan']; ?></option>
                    <?php }?>
                  </select>
                </div>
                <div class="form-group">
                  <a href="?module=gudang"><button type="button" class="btn btn-danger">Batal</button></a>
                  <button type="submit" class="btn btn-success">Simpan</button>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Harga Beli</label>
                  <input type="number" class="form-control" name="harga_beli" value="<?php echo $edit['harga_beli'];?>" required>
                </div>
                <div class="form-group">
                  <label>Harga Jual</label>
                  <input type="number" class="form-control" name="harga_jual" value="<?php echo $edit['harga_jual'];?>" required>
                </div>
                <div class="form-group">
                  <label>Suplier</label>
                  <select name="suplier" class="form-control" required>
                    <option value="">Pilih Suplier</option>
                    <?php
                      $data = mysqli_query($con, "Select * From suplier");            
                      while($hasil  = mysqli_fetch_array($data)){
                    ?>
                    <option value="<?php echo $hasil['id_sup']; ?>"><?php echo $hasil['nama_sup']; ?></option>
                    <?php }?>
                  </select>
                </div>
                <div class="form-group">
                  <label>Batas Cabang</label>
                  <input type="number" class="form-control" name="batas_cabang" value="<?php echo $edit['batas_cabang'];?>" required>
                </div>
                <div class="form-group">
                  <label>Batas Minim</label>
                  <input type="number" class="form-control" name="batas_minim" value="<?php echo $edit['batas_minim'];?>" required>
                </div>
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
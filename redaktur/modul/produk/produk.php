<?php
  switch($_GET['act']){
  default:
?>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Produk Apotik</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Produk Apotik</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <div class="row">
            <div class="col-md-12">
              <div class="col-md-2"><a href="?module=produk&act=tambah_produk" class="btn btn-primary">Tambah Data</a>
              </div>
            </div>
          </div>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Gambar Produk</th>
                <th>Kode Produk</th>
                <th>Nama Produk</th>
                <th>Tgl Produksi</th>
                <th>Tgl Expired</th>
                <th>Harga Beli</th>
                <th>Harga Umum</th>
                <th>Harga BPJS</th>
                <th>Harga Asuransi Lainnya</th>
                <th>Kategori</th>
                <th>Satuan</th>
                <th class="nosort">Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php 
                $data  = mysqli_query($con, "SELECT * FROM produk_master ORDER BY nama_produk ASC");
                while($r  = mysqli_fetch_array($data)){
              ?>
              <tr>
                <td>
                  <?php
                  if ( $r['gambar'] == '') {
                    echo "Belum Ada Gambar";
                  }else{
                    echo '<center><a href="'.$url.'/gambar_produk/'.$r['gambar'].'"><img src="'.$url.'/gambar_produk/'.$r['gambar'].'" width="50px" height="50px"></a></center>';
                  }?>
                </td>
                <td><?php echo $r["kd_produk"]; ?></td>
                <td><?php echo $r["nama_produk"]; ?></td>
                <td><?php echo $r["tgl_produksi"]; ?></td>
                <td><?php echo $r["tgl_expired"]; ?></td>
                <td><?php echo rupiah ($r['harga_beli']);?></td>
                <td><?php echo rupiah ($r['jual_umum']);?></td>  
                <td><?php echo rupiah ($r['jual_bpjs']);?></td> 
                <td><?php echo rupiah ($r['jual_lain']);?></td>   
                <?php $q1 = mysqli_query($con, "SELECT *FROM kategori WHERE id_kategori='$r[id_kategori]'"); 
                 $k = mysqli_fetch_array($q1); ?>
                <td><?php echo $k['kategori']; ?></td>
                <?php $q2 = mysqli_query($con, "SELECT *FROM data_satuan WHERE id_s='$r[id_satuan]'"); 
                 $j = mysqli_fetch_array($q2); ?>
                <td><?php echo $j['satuan']; ?></td>
                <td>
                  <a href="?module=produk&act=edit_produk&id_produk=<?php echo $r["kd_produk"]; ?>" class="btn-xs btn-warning"><i class="fa fa-edit"> Edit</i></a>
                  <a href="#" class="hapus btn-xs btn-danger" id-obat="<?php echo $r['kd_produk']; ?>"><i class="fa fa-trash"> Hapus</i></a>
                </td>
              </tr>
              <?php } ?>
            </tbody>
            <script>
              $('.hapus').click(function () {
                var id_obat = $(this).attr('id-obat');
                  Swal.fire({
                    title: 'Kamu Yakin?',
                    text: "Kamu akan hapus data selamanya!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Delete !'
                  })
                  .then((result)=>{
                    console.log(result);
                    if (result.value){
                      window.location = "modul/produk/aksi_produk.php?module=produk&act=hapus&kd_produk="+id_obat+"";
                    }
                  })
                });
            </script>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<?php
  break;
  case "tambah_produk":
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Produk Apotik</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Tambah Data</li>
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
            <h3 class="card-title">Tambah Produk Apotik</h3>
          </div>
          <form role="form" method="post" enctype="multipart/form-data" action="modul/produk/aksi_produk.php?module=produk&act=input">
            <div class="card-body">
              <div class="form-group">
                <label>Kode Produk</label>
                <input type="text" class="form-control" name="kd_produk" placeholder="Kode Produk" required>
              </div>
              <div class="form-group">
                <label>Nama Produk</label>
                <input type="text" class="form-control" name="nama_produk" placeholder="Nama Produk" required>
              </div>
              <div class="form-group">
                <label>Satuan Produk</label>
                <select class="form-control select2" name="satuan" id="satuan" style="width: 100%;" required>
                  <option value="">Pilih Satuan Produk</option>
                  <?php $query = mysqli_query($con, "SELECT *FROM data_satuan");
                    while ($cb = mysqli_fetch_array($query)) { ?>
                      <option value="<?php echo $cb['id_s']; ?>"><?php echo $cb['satuan']; ?></option>
                  <?php  } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Kategori Produk</label>
                <select class="form-control select2" name="kategori" id="kategori" style="width: 100%;" required>
                  <option value="">Pilih Kategori</option>
                  <?php $query = mysqli_query($con, "SELECT *FROM kategori");
                    while ($cb = mysqli_fetch_array($query)) { ?>
                      <option value="<?php echo $cb['id_kategori']; ?>"><?php echo $cb['kategori']; ?></option>
                  <?php  } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Harga Beli</label>
                <input type="number" class="form-control" name="harga_beli" placeholder="Harga Beli" required>
              </div>
              <div class="form-group">
                <label>Harga Jual Umum</label>
                <input type="number" class="form-control" name="harga_jual" placeholder="Harga Jual Umum" required>
              </div>
              <div class="form-group">
                <label>Harga Jual BPJS</label>
                <input type="number" class="form-control" name="harga_bpjs" placeholder="Harga Jual BPJS" required>
              </div>
              <div class="form-group">
                <label>Harga Jual Asuransi Lainnya</label>
                <input type="number" class="form-control" name="harga_asuransilainnya" placeholder="Harga Jual Asuransi Lainnya" required>
              </div>
              <div class="form-group">
                <label>Tanggal Produksi</label>
                <input type="date" class="form-control" name="tgl_produksi" required>
              </div>
              <div class="form-group">
                <label>Tanggal Expired</label>
                <input type="date" class="form-control" name="tgl_expired" required>
              </div>
              <div class="input-group">
                <label>Upload Gambar</label>
              </div>
              <div class="form-group">
                <div class="custom-file">
                  <div class="col-sm-6">
                    <input type="file" class="custom-file-input" name="file" id="file" required>
                    <label class="custom-file-label" for="file">Pilih File</label>
                  </div>
                </div>
              </div>
              <div>
                <a href="?module=produk"><button type="button" class="btn btn-danger">Batal</button></a>
                <button type="submit" class="btn btn-success">Tambah</button>
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
  case "edit_produk":
  $id_produk   = $_GET['id_produk'];
  $edit   = mysqli_fetch_array(mysqli_query($con, "Select * From produk_master Where kd_produk='$id_produk'"));
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Produk Apotik</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Edit Data</li>
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
            <h3 class="card-title">Edit Produk Apotik</h3>
          </div>
          <form role="form" method="post" enctype="multipart/form-data" action="modul/produk/aksi_produk.php?module=produk&act=update">
            <div class="card-body">
              <div class="form-group">
                <label>Kode Produk</label>
                <input type="hidden" class="form-control" name="id_produk" value="<?php echo $edit['id_produk']; ?>">
                <input type="text" class="form-control" name="kd_produk" value="<?php echo $edit['kd_produk']; ?>" required>
              </div>
              <div class="form-group">
                <label>Nama Produk</label>
                <input type="text" class="form-control" name="nama_produk" value="<?php echo $edit['nama_produk']; ?>" required>
              </div>
              <div class="form-group">
                <label>Satuan Produk</label>
                <select class="form-control select2" name="satuan" id="satuan" style="width: 100%;" required>
                  <option value="">Pilih Satuan Produk</option>
                  <?php $query = mysqli_query($con, "SELECT *FROM data_satuan");
                    while ($cb = mysqli_fetch_array($query)) { ?>
                    <?php $sel = $edit['id_satuan'] == $cb['id_s']? "selected" : ""; ?>
                      <option value="<?php echo $cb['id_s']; ?>" <?php echo $sel; ?>><?php echo $cb['satuan']; ?></option>
                  <?php  } ?> 
                </select>
              </div>
              <div class="form-group">
                <label>Kategori Produk</label>
                <select class="form-control select2" name="kategori" id="kategori" style="width: 100%;" required>
                  <option value="">Pilih Kategori</option>
                  <?php $query = mysqli_query($con, "SELECT *FROM kategori");
                    while ($cb = mysqli_fetch_array($query)) { ?>
                    <?php $sel = $edit['id_kategori'] == $cb['id_kategori']? "selected" : ""; ?>
                      <option value="<?php echo $cb['id_kategori']; ?>" <?php echo $sel; ?>><?php echo $cb['kategori']; ?></option>
                  <?php  } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Harga Beli</label>
                <input type="number" class="form-control" name="harga_beli" value="<?php echo $edit['harga_beli']; ?>" required>
              </div>
              <div class="form-group">
                <label>Harga Jual Umum</label>
                <input type="number" class="form-control" name="harga_jual" value="<?php echo $edit['jual_umum']; ?>" required>
              </div>
              <div class="form-group">
                <label>Harga Jual BPJS</label>
                <input type="number" class="form-control" name="harga_bpjs" value="<?php echo $edit['jual_bpjs']; ?>" required>
              </div>
              <div class="form-group">
                <label>Harga Jual Asuransi Lainnya</label>
                <input type="number" class="form-control" name="harga_asuransilainnya" value="<?php echo $edit['jual_lain']; ?>" required>
              </div>
              <div class="form-group">
                <label>Tanggal Produksi</label>
                <input type="date" class="form-control" name="tgl_produksi" value="<?php echo $edit['tgl_produksi']; ?>" required>
              </div>
              <div class="form-group">
                <label>Tanggal Expired</label>
                <input type="date" class="form-control" name="tgl_expired" value="<?php echo $edit['tgl_expired']; ?>" required>
              </div>
              <div class="input-group">
                <label>Upload Gambar</label>
              </div>
              <div class="form-group">
                <div class="custom-file">
                  <div class="col-sm-6">
                    <input type="file" class="custom-file-input" name="file" id="file" value="<?php echo $edit['gambar'];?>">
                    <label class="custom-file-label" for="file">Pilih File</label>
                    <small>Kosongkan jika tidak diganti</small>
                  </div>
                </div>
              </div>
              <div>
                <a href="?module=produk"><button type="button" class="btn btn-danger">Batal</button></a>
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
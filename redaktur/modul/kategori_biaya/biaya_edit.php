<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Kategori Biaya</h1>
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

<?php
  $edit = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM kategori_biaya WHERE id = '$_GET[id]'"));
?>

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Edit Kategori Biaya</h3>
          </div>
          <form role="form" method="post" enctype="multipart/form-data" action="modul/kategori_biaya/aksi.php?act=edit">
            <div class="card-body">
              <div class="form-group">
                <label for="exampleInputNamTin">Kategori</label>
                <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
                <input type="text" class="form-control" name="nama" value='<?php echo $edit['kategori']; ?>' required>
              </div>
              <div class="form-group">
                <a href="?module=cabang"><button type="button" class="btn btn-danger">Batal</button></a>
                <button type="submit" class="btn btn-success">Simpan</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
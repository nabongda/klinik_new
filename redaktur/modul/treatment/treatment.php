<?php
	switch($_GET['act']){
	default:
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Daftar Tindakan</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Daftar Tindakan</li>
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
              <div class="col-md-12"><a href="?module=treatment&act=tambah_dt" class="btn btn-primary">Tambah Daftar
                  Tindakan</a></div>
            </div>
          </div>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Kategori</th>
                <th>Nama Tindakan</th>
                <th>Manfaat</th>
                <th>Modal</th>
                <th>Harga Umum</th>
                <th>Harga BPJS</th>
                <th>Harga Asuransi Lainnya</th>
                <th>Jasa Dokter</th>
                <th class="nosort">Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php
                $data  = mysqli_query($con,"SELECT * FROM treatment ORDER BY nama_t ASC");

                while($r	= mysqli_fetch_array($data)){
                $kat = mysqli_fetch_assoc(mysqli_query($con,"SELECT kategori FROM kategori_biaya WHERE id = '$r[kategori]'"));
              ?>
              <tr>
                <td><?php echo $kat["kategori"]; ?></td>     
                <td><?php echo $r["nama_t"]; ?></td>
                <td><?php echo $r["manfaat"] ?></td>
                <td><?php echo $r["modal"] ?></td>
                <td><?php echo rupiah($r["harga"]); ?></td>
                <td><?php echo rupiah($r["bpjs"]); ?></td>
                <td><?php echo rupiah($r["lain"]); ?></td>
                <td><?php echo rupiah($r["jasa_dokter"]); ?></td>
                <td>
                  <a href="?module=treatment&act=edit_dt&id=<?php echo $r["id"]; ?>" class="btn-xs btn-warning"><i class="fa fa-edit"> Edit</i></a>
                  <a href="modul/treatment/aksi_treatment.php?module=dt&act=hapus&id=<?php echo $r['id']; ?>" class="hapus btn-xs btn-danger"><i class="fa fa-trash"> Hapus</i></a>
                </td>
              </tr>
              <?php } ?>
            </tbody>
            <script>
              document.querySelector(".hapus").addEventListener("click",
                function () {
                  Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Delete !'
                  });
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
	case "tambah_dt":
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Layanan Jasa</h1>
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
            <h3 class="card-title">Tambah Daftar Tindakan</h3>
          </div>
          <form role="form" method="post" enctype="multipart/form-data" action="modul/treatment/aksi_treatment.php?module=dt&act=input">
            <div class="card-body">
              <div class="form-group">
                <label>Kategori</label>
                <select class="form-control select2" style="width: 100%;" name="kategori" required>
                  <option value="">Pilih Kategori</option>
                  <?php 
                    $j = mysqli_query($con,"SELECT * FROM kategori_biaya");
                    while($jo = mysqli_fetch_assoc($j)){
                      echo "<option value='$jo[id]'>$jo[kategori]</option>";
                    }
                  ?>
                </select>
              </div>
              <div class="form-group">
                <label for="exampleInputNamTin">Nama Tindakan</label>
                <input type="text" class="form-control" name="nama_t" placeholder="Nama Tindakan" required>
              </div>
              <div class="form-group">
                <label for="exampleInputManfaat">Manfaat</label>
                <textarea class="form-control" rows="2" placeholder="Manfaat . . ." name="manfaat" required></textarea>
              </div>
              <div class="form-group">
                <label for="exampleInputModal">Modal</label>
                <input type="number" class="form-control" name="modal" placeholder="Modal" required>
              </div>
              <div class="form-group">
                <label for="exampleInputPasUm">Harga Pasien Umum</label>
                <input type="number" class="form-control" name="umum" placeholder="Harga Pasien Umum" required>
              </div>
              <div class="form-group">
                <label for="exampleInputPasBpjs">Harga Pasien BPJS</label>
                <input type="number" class="form-control" name="bpjs" placeholder="Harga Pasien BPJS" required>
              </div>
              <div class="form-group">
                <label for="exampleInputPasDll">Harga Pasien Asuransi Lainnya</label>
                <input type="number" class="form-control" name="lain" placeholder="Harga Pasien Asuransi Lainnya" required>
              </div>
              <div class="form-group">
                <label for="exampleInputJasaDok">Jasa Dokter</label>
                <input type="text" class="form-control" name="jasa" placeholder="Jasa Dokter" required>
              </div>
              <div class="form-group">
                <a href="?module=treatment"><button type="button" class="btn btn-danger">Batal</button></a>
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
	case "edit_dt":
	$id		= $_GET['id'];
	$edit 	= mysqli_fetch_array(mysqli_query($con,"Select * From treatment Where id='$id'"));
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Layanan Jasa</h1>
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
            <h3 class="card-title">Edit Daftar Tindakan</h3>
          </div>
          <form role="form" method="post" enctype="multipart/form-data" action="modul/treatment/aksi_treatment.php?module=dt&act=update">
            <div class="card-body">
              <div class="form-group">
                <label>Kategori</label>
                <input type="hidden" value="<?php echo $id; ?>" name="id" readonly="readonly" />
                <select class="form-control select2" style="width: 100%;" name="kategori" required>
                  <option value="">Pilih Kategori</option>
                  <?php 
                    $j = mysqli_query($con,"SELECT * FROM kategori_biaya");
                    while($jo = mysqli_fetch_assoc($j)){
                      $sel = ($edit['kategori'] == $jo['id'])? "selected" : "";
                      echo "<option value='$jo[id]' $sel>$jo[kategori]</option>";
                    }
                  ?>
                </select>
              </div>
              <div class="form-group">
                <label for="exampleInputNamTin">Nama Tindakan</label>
                <input type="text" class="form-control" name="nama_t" value="<?php echo $edit['nama_t']; ?>" required>
              </div>
              <div class="form-group">
                <label for="exampleInputManfaat">Manfaat</label>
                <textarea class="form-control" rows="2" name="manfaat" required><?php echo $edit['manfaat']; ?></textarea>
              </div>
              <div class="form-group">
                <label for="exampleInputModal">Modal</label>
                <input type="number" class="form-control" name="modal" value="<?php echo $edit['modal']; ?>" required>
              </div>
              <div class="form-group">
                <label for="exampleInputPasUm">Harga Pasien Umum</label>
                <input type="number" class="form-control" name="umum" value="<?php echo $edit['harga']; ?>" required>
              </div>
              <div class="form-group">
                <label for="exampleInputPasBpjs">Harga Pasien BPJS</label>
                <input type="number" class="form-control" name="bpjs" value="<?php echo $edit['bpjs']; ?>" required>
              </div>
              <div class="form-group">
                <label for="exampleInputPasDll">Harga Pasien Asuransi Lainnya</label>
                <input type="number" class="form-control" name="lain" value="<?php echo $edit['lain']; ?>" required>
              </div>
              <div class="form-group">
                <label for="exampleInputJasaDok">Jasa Dokter</label>
                <input type="text" class="form-control" name="jasa" value="<?php echo $edit['jasa_dokter']; ?>" required>
              </div>
              <div class="form-group">
                <a href="?module=treatment"><button type="button" class="btn btn-danger">Batal</button></a>
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
	}
?>
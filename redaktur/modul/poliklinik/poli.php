<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Poliklinik</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Poliklinik
          </li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
  <?php switch($_GET['act']){ 
    default:
  ?>
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <div class="row">
            <div class="col-md-12">
              <div class="col-md-12"><a href="?module=poliklinik&act=tambah" class="btn btn-primary">Tambah
                  Poliklinik</a></div>
            </div>
          </div>
        </div>

        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Nama Poliklinik</th>
                <?php
                  if ($_SESSION['jenis_u']=="JU-01") {
                ?>
                <th class="nosort">Aksi</th>
                <?php } ?>
              </tr>
            </thead>
            <tbody>
              <?php
              $po = mysqli_query($con,"SELECT * FROM poliklinik");
              while($li = mysqli_fetch_assoc($po)){ ?>
              <tr>
                <td><?php echo $li['poli']; ?></td>
                <?php if ($_SESSION['jenis_u']=="JU-01") { ?>
                <td>
                  <a href="media.php?module=poliklinik&id=<?php echo $li['id_poli']; ?>&act=edit" class="btn-sm btn-warning"> Edit</a>
                  <a href="#" class="hapus btn-sm btn-danger" id-poli="<?php echo $li['id_poli']; ?>"> Hapus</a>
                </td>
                <?php } ?>
              </tr>
              <?php } ?>
            </tbody>

            <!-- SweetAlert Hapus -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script>
              $(document).ready(function() {
                $(document).on('click', '.hapus', function(e) {
                  var id_poli = $(this).attr('id-poli');
                  SwalDelete(id_poli);
                  e.preventDefault();
                });
              });

              function SwalDelete(id_poli) {
                Swal.fire({
                  title: 'Yakin Ingin Menghapus Data?',
                  icon: 'warning',
                  showCancelButton: true,
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Delete!'
                })
                .then((result) => {
                    console.log(result);
                    if (result.value) {
                      window.location = "modul/poliklinik/aksi.php?act=del&id="+id_poli;
                    }
                  });
              }
            </script>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<?php 
  break;
  case "tambah": 
?> 

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Tambah Poliklinik</h3>
          </div>
          <form role="form" action="modul/poliklinik/aksi.php?act=add" method="POST">
            <div class="card-body">
              <div class="form-group">
                <label for="exampleInputNamTin">Nama Poliklinik</label>
                <input type="text" class="form-control" name="poli" placeholder="Nama Poliklinik" required>
              </div>
              <div class="form-group">
                <a href="media.php?module=poliklinik"><button type="submit" class="btn btn-danger">Batal</button></a>
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
  case "edit": 
  
  $edit = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM poliklinik WHERE id_poli = '$_GET[id]'"));
?>

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Edit Poliklinik</h3>
          </div>
          <form role="form" action="modul/poliklinik/aksi.php?act=edit&id=<?php echo $_GET['id']; ?>" method="POST">
            <div class="card-body">
              <div class="form-group">
                <label for="exampleInputNamTin">Nama Poliklinik</label>
                <input type="text" class="form-control" name="poli" value="<?php echo $edit['poli']; ?>" required>
              </div>
              <div class="form-group">
                <a href="media.php?module=poliklinik"><button type="submit" class="btn btn-danger">Batal</button></a>
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
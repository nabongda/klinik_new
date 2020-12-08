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
        <h1>Data Dokter</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Dokter</li>
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
              <div class="col-md-12"><a href="?module=data_dokter&act=tambah_dokter" class="btn btn-primary">Tambah Data Dokter</a>
              </div>
            </div>
          </div>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Foto</th>
                <th>Cabang Klinik</th>
                <th>Nama Lengkap</th>
                <th>Tanggal Masuk</th>
                <th>Lama Pengabdian</th>
                <th>Lulusan</th>
                <th>Alamat</th>
                <th>Email</th>
                <th>Blokir</th>
                <?php
                  if ($_SESSION['jenis_u']=="JU-01") {
                ?>
                <th>Aksi</th>
                <?php } ?>
              </tr>
            </thead>
            <tbody>
              <?php
              $id_kk = $_SESSION["klinik"];
              if ($_SESSION['jenis_u']!="JU-01") {
                $tampil   = mysqli_query($con, "Select * From  user Where id_ju='JU-02' AND id_kk='$id_kk'");
              }else{
                $tampil   = mysqli_query($con, "Select * From  user Where id_ju='JU-02'");
              }

                while($data = mysqli_fetch_array($tampil)){
              ?>  
              <tr class="gradeX">
                <td><?php
                    if ( $data['foto'] == '') {
                        echo "Belum Ada Foto";
                    }else{
                        echo '<center><a href="'.$url.'/file_user/foto_user/'.$data['foto'].'"><img src="'.$url.'/file_user/foto_user/'.$data['foto'].'" width="50px" height="50px"></a></center>';
                    }?></td>
                  <?php $q1 = mysqli_query($con, "SELECT *FROM daftar_klinik WHERE id_kk='$data[id_kk]'"); 
                    $k = mysqli_fetch_array($q1); ?>
                <td><?php echo $k['nama_klinik']; ?></td>
                <td><?php echo $data['nama_lengkap']; ?></td>
                <td><?php echo $data['tgl_masuk']; ?></td>
                <td><?php $awal = date_create($data['tgl_masuk']);
                    $akhir= date_create();
                    $diff = date_diff($awal,$akhir);
                    $lama = $diff->y.'tahun,'.$diff->m.'bulan,'.$diff->d.'hari';
                    echo $lama; ?>
                </td>
                <td><?php echo $data['lulusan']; ?></td>
                <td><?php echo $data['alamat']; ?></td>
                <td><?php echo $data['email']; ?></td>
                <td align="center"><center><?php echo $data['blokir']; ?></center></td> 
                <?php
                  if ($_SESSION['jenis_u'] =="JU-01") { ?>
                <td>
                    <a href="?module=data_dokter&act=edit_dokter&id=<?php echo $data['id_user']; ?>" class="btn btn-xs btn-success"><i class="fa fa-edit"></i> Edit</a>
                    <a href="#" id-user="<?php echo $data['id_user'];?>" class="btn btn-xs btn-danger hapus"><i class="fa fa-trash-o"></i> Hapus</a>
                </td>
                <?php } ?> 
              </tr>
              <?php } ?>
            </tbody>
            <!-- SweetAlert Hapus -->
            <script>
              $('body').on('click', '.hapus', function (event) {
                event.preventDefault();
                var id_use = $(this).attr("id-user");
                var token = $("meta[name='csrf-token']").attr("content");
                Swal.fire({
                  title: 'Delete',
                  text: "Yakin ingin menghapus data?",
                  icon: 'warning',
                  showCancelButton: true,
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Hapus'
                })
                .then((result) => {
                  console.log(result);
                  if (result.value) {
                    window.location = "modul/data_dokter/aksi_data_dokter.php?module=user&act=hapus&id="+id_use;
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
  case "tambah_dokter":
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Dokter</h1>
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
            <h3 class="card-title">Tambah Data Dokter</h3>
          </div>
          <form role="form" method="post" enctype="multipart/form-data" action="modul/data_dokter/aksi_data_dokter.php?module=dokter&act=input" >
            <div class="card-body">
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label>Nama Lengkap </label>
                  <input type="text" class="form-control" name="nama" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Cabang Klinik</label>
                  <select name="cabang" class="form-control select2" style="width: 100%;" required>
                  <option value="">-- Pilih Cabang --</option>
                    <?php
                      $data     = mysqli_query($con, "Select * From daftar_klinik");            
                      while($hasil  = mysqli_fetch_array($data)){
                    ?>
                  <option value="<?php echo $hasil['id_kk']; ?>"><?php echo $hasil['nama_klinik']; ?></option>            
                    <?php
                      }
                    ?>
                  </select>
                </div>
                <div class="form-group col-md-6" style="display: none;">
                <label>Jenis User</label>
                <select name="jenis_user" class="form-control" required>
                  <option value="JU-02"> Dokter</option>
                    <?php
                      $data     = mysqli_query($con, "Select * From jenis_user Where id_ju='JU-02'");            
                            while($hasil  = mysqli_fetch_array($data)){
                    ?>
                  <option value="<?php echo $hasil['id_ju']; ?>"><?php echo $hasil['nama_ju']; ?></option>            
                    <?php
                      }
                    ?>
                </select>
                </div>
                <div class="form-group col-md-6">
                  <label>Username</label>
                  <input type="text" class="form-control" name="username" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Password</label>
                  <input type="password" class="form-control" name="password" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Email</label>
                  <input type="email" class="form-control" name="email" required">
                </div>
                <div class="form-group col-md-6">
                  <label>Tanggal Masuk </label>
                  <input type="date" class="form-control" name="tgl_masuk" value="<?php echo date('Y-m-d');?>" required data-inputmask-alias="datetime"
                    data-inputmask-inputformat="mm/dd/yyyy" data-mask>
                </div>
                <div class="form-group col-md-6">
                  <label>Lulusan </label>
                  <input type="text" class="form-control" name="lulusan" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Alamat </label>
                  <input type="text" class="form-control" name="alamat" required>
                </div>
                <div class="form-group col-md-6">
                  <label>No Telepon </label>
                  <input type="text" class="form-control" name="kontak" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Status User</label>
                  <select class="form-control select2" style="width: 100%;" name="status" require>
                  <option value="">-- Pilih Status --</option>
                  <option value="N">Aktif</option>
                  <option value="Y">Blokir</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <div class="input-group">
                    <label>Upload Foto</label>
                  </div>
                  <div class="form-group">
                    <div class="custom-file">
                      <div class="col-sm-12">
                        <input type="file" class="custom-file-input" name="fupload" required >
                        <label class="custom-file-label" for="exampleInputFile">Pilih
                          File</label>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group col-md-12">
              <a href="?module=data_dokter"><button type="button" class="btn btn-danger">Batal</button></a>
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
  case "edit_dokter":
  $id   = $_GET['id'];
  $data = mysqli_fetch_array(mysqli_query($con, "Select * From user Where id_user='$id'"));
?> 

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Dokter</h1>
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
            <h3 class="card-title">Edit Data Dokter</h3>
          </div>
          <form role="form" method="post" enctype="multipart/form-data" action="modul/data_dokter/aksi_data_dokter.php?module=dokter&act=edit">
            <input type="hidden" name="id" size="25" value="<?php echo $id; ?>" readonly="readonly" />
            <div class="card-body">
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Nama Lengkap </label>
                    <input type="text" class="form-control" name="nama" value="<?php echo $data['nama_lengkap']; ?>" required >
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Klinik Cabang</label>
                  <select class="form-control select2" style="width: 100%;" name="id_kk" class="form-control">
                    <option value="">-- Pilih Cabang --</option>
                    <?php $query = mysqli_query($con, "SELECT * FROM daftar_klinik");
                      while ($ca = mysqli_fetch_array($query)) { ?>
                      <?php $sel = $data['id_kk'] == $ca['id_kk']? "selected" : ""; ?>
                        <option value="<?php echo $ca['id_kk']; ?>" <?php echo $sel; ?>><?php echo $ca['nama_klinik']; ?></option>
                    <?php  } ?>
                  </select>
                </div>
                <div class="form-group col-md-6" style="display: none;">
                  <label>Jenis User</label>
                  <select name="jenis_user" class="form-control" required>
                    <option value="<?php echo $data['id_ju']; ?>"><?php if($data['id_ju']){
                      echo'Dokter';
                      } ?></option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                    <label>Username</label>
                    <input type="text" class="form-control" name="username" value="<?php echo $data['username']; ?>" required>
                </div>
                <div class="form-group col-md-6">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password">
                    <small>Kosongkan jika tidak diubah</small>
                </div>
                <div class="form-group col-md-6">
                    <label>Email</label>
                    <input type="email" class="form-control" name="email" value="<?php echo $data['email']; ?>" required>
                </div>
                <div class="form-group col-md-6">
                    <label>Tanggal Masuk </label>
                    <input type="date" class="form-control" data-inputmask-alias="datetime"
                        data-inputmask-inputformat="mm/dd/yyyy" data-mask name="tgl_masuk"  value="<?php echo $data['tgl_masuk']; ?>" required>
                </div>
                <div class="form-group col-md-6">
                    <label>Lulusan </label>
                    <input type="text" class="form-control" name="lulusan"  value="<?php echo $data['lulusan']; ?>" required>
                </div>
                <div class="form-group col-md-6">
                    <label>Alamat </label>
                    <input type="text" class="form-control" name="alamat"  value="<?php echo $data['alamat']; ?>" required>
                </div>
                <div class="form-group col-md-6">
                    <label>No Telepon </label>
                    <input type="text" class="form-control" name="kontak"  value="<?php echo $data['no_telp']; ?>" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Status User</label>
                  <select name="status" class="form-control select2" style="width: 100%;" required>
                    <option value="">-- Pilih Status --</option>
                    <option value="Y" <?php if ($data['blokir'] == 'Y') { echo "selected"; } ?>>Blokir</option>
                    <option value="N" <?php if ($data['blokir'] == 'N') { echo "selected"; } ?>>Aktif</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <div class="input-group">
                    <label>Upload Foto</label>
                  </div>
                  <div class="form-group">
                    <div class="custom-file">
                      <div class="col-sm-12">
                        <input type="file" class="custom-file-input" name="fupload" value="<?php echo $data['foto'];?>">
                        <label class="custom-file-label" for="file">Pilih File</label>
                        <small>Kosongkan jika tidak diganti</small>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group col-md-6">
                  <img src="../file_user/foto_user/<?php echo $data['foto']; ?>" width="100">
                </div>
              </div>
              <div class="form-group col-md-12">
                <a href="?module=user"><button type="button" class="btn btn-danger">Batal</button></a>
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
  
<?php
  switch($_GET['act']){
  default:
?>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Karyawan</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Karyawan</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <?php
        if ($_SESSION['jenis_u'] == 'JU-01'){?>
        <div class="card-header">
          <div class="row">
            <div class="col-md-12">
              <div class="col-md-12">
                <a href="?module=data_karyawan&act=tambah_karyawan" class="btn btn-primary">Tambah Data Karyawan</a></div>
            </div>
          </div>
        </div>
        <?php } else { ?>
        <div class="card-header callout callout-success bg-success">
          <b>Note : Untuk menambahkan data atau pindah kerja cabang karyawan silahkan hubungi admin/owner</b>
        </div>
        <?php } ?>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Foto</th>
                <th>Nama Karyawan</th>
                <th>JK</th>
                <th>No Telepon</th>
                <th>Tanggal Masuk</th>
                <th>Lama Kerja</th>
                <th>Bagian</th>
                <th>Status</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
            <?php
              if ($_SESSION['jenis_u'] == 'JU-01'){
                $tampil     = mysqli_query($con, "Select * From karyawan");
              } else if (($_SESSION['jenis_u'] != 'JU-01') OR ($_SESSION['jenis_u'] != 'JU-02') ){
                $tampil     = mysqli_query($con, "Select * From karyawan");
              }
                while($data = mysqli_fetch_array($tampil)){
                ?>
              <tr>
                <td>
                  <?php
                  if ( $data['foto'] == '') {
                    echo "Tidak Ada Foto";
                  }else{
                    echo '<a href="'.$url.'/foto_karyawan/'.$data['foto'].'"><img src="'.$url.'/foto_karyawan/'.$data['foto'].'" width="80px" height="80px"></a>';
                  }?>
                </td>
                  <?php $q1 = mysqli_query($con, "SELECT *FROM daftar_klinik WHERE id_kk='$data[id_kk]'"); 
                    $k  = mysqli_fetch_array($q1);
                    $bg = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM jenis_user WHERE id_ju='$data[id_ju]'"));
                  ?> 
                <td><?php echo $data['nama_karyawan']; ?></td>
                <td><?php echo $data['jk']; ?></td>
                <td><?php echo $data['no_telp']; ?></td>
                <td><?php echo $data['tgl_masuk']; ?></td>
                <td><?php $awal = date_create($data['tgl_masuk']);
                    $akhir= date_create();
                    $diff = date_diff($awal,$akhir);
                    $lama = $diff->y.'tahun,'.$diff->m.'bulan,'.$diff->d.'hari';
                    echo $lama; ?>
                </td>
                <td><?php echo $bg['nama_ju']; ?></td>
                <td>
                  <?php if ($data['status'] == "Aktif") {
                    echo  '<a href="#" class="btn btn-success btn-xs col-md-12"> Aktif</a></td>';
                  }else{
                    echo '<a href="#" class="btn btn-danger btn-xs col-md-12"> Tidak Aktif</a></td>';
                  }
                ?>
                <td>
                  <?php
                    if ($_SESSION['id_user']==$data['id_karyawan']){?>
                    <a href="?module=data_karyawan&act=edit_karyawan&id_karyawan=<?php echo $data["id_karyawan"]; ?>" class="btn btn-xs btn-success"><i class="fa fa-edit"></i> Edit</a>&nbsp;
                    <?php } ?>
                    <?php if($_SESSION['jenis_u']=='JU-01'){ ?>
                    <a href="?module=data_karyawan&act=edit_karyawan&id_karyawan=<?php echo $data["id_karyawan"]; ?>" class="btn btn-xs btn-success"><i class="fa fa-edit"></i> Edit</a>&nbsp;
                    <a href="#" id-karyawan="<?php echo $data['id_karyawan']?>" class="btn btn-xs btn-danger hapus"><i class="fa fa-trash-o"></i> Hapus</a>
                    <?php } ?>      
                </td>
              </tr>
                <?php
                    }
                ?>
            </tbody>
            <!-- SweetAlert Hapus -->
            <script>
              $('.hapus').click(function () {
                var id_kar = $(this).attr('id-karyawan');
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
                      window.location = "modul/data_karyawan/aksi_data_karyawan.php?module=data_karyawan&act=hapus&id_karyawan="+id_kar+"";
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
  case "tambah_karyawan":
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Karyawan</h1>
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
            <h3 class="card-title">Tambah Data Karyawan</h3>
          </div>
          <!-- Kurang menambahkan attribut action, entype dan post -->
          <form role="form" method="post" enctype="multipart/form-data" action="modul/data_karyawan/aksi_data_karyawan.php?module=data_karyawan&act=input">
            <div class="card-body">
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label>Klinik</label>
                  <select class="form-control select2" style="width: 100%;" name="klinik" required>
                      <?php $q1 = mysqli_query($con, "SELECT *FROM daftar_klinik"); 
                      while($k = mysqli_fetch_array($q1)){ ?>
                    <option value="<?php echo $k['id_kk']; ?>"><?php echo $k["nama_klinik"]; ?></option>
                      <?php 
                        }
                      ?>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label>Nama Karyawan </label>
                  <input type="text" class="form-control" name="nama_karyawan" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Jenis Kelamin </label>
                  <select class="form-control select2" style="width: 100%;" name="jk" required>
                    <option>Jenis Kelamin</option>
                    <option value="L">Laki Laki</option>
                    <option value="P">Perempuan</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label>Tanggal Lahir </label>
                  <input type="date" class="form-control" data-inputmask-alias="datetime"
                    data-inputmask-inputformat="mm/dd/yyyy" data-mask name="tgl_lahir" required>
                </div>
                <div class="col-md-6">
                  <label>Jenis User </label>
                  <select name="bagian" class="form-control select2" style="width: 100%;">
                  <option value="">-- Pilih Jenis --</option>
                    <?php
                      $data = mysqli_query($con, "Select * From jenis_user WHERE (id_ju!='JU-01') AND (id_ju!='JU-02')");            
                            while($hasil  = mysqli_fetch_array($data)){
                    ?>
                  <option value="<?php echo $hasil['id_ju']; ?>"><?php echo $hasil['nama_ju']; ?></option>            
                    <?php
                      }
                    ?>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label>Tanggal Masuk </label>
                  <input type="date" class="form-control" data-inputmask-alias="datetime"
                    data-inputmask-inputformat="mm/dd/yyyy" data-mask name="tgl_masuk" value="<?php echo date('Y-m-d');?>" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Alamat </label>
                  <input type="text" class="form-control" name="alamat" required>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Lulusan </label>
                  <input type="text" class="form-control" name="lulusan" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Status</label>
                  <select class="form-control select2" style="width: 100%;" name="status" required="">
                  <option value="Aktif">Aktif</option>
                  <option value="Nonaktif">Nonaktif</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label>Username </label>
                  <input type="text" class="form-control" name="username" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Password </label>
                  <input type="password" class="form-control" name="password" required>
                </div>
                <div class="form-group col-md-6">
                  <label>Blokir</label>
                  <select class="form-control select2" style="width: 100%;" name="blokir" required="">
                  <option value="N" checked>N</option>
                  <option value="Y">Y</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">No Telepon </label>
                  <input type="text" class="form-control" name="no_telp" required>
                </div>
                <div class="form-group col-md-6">
                  <div class="input-group">
                    <label>Upload Foto</label>
                  </div>
                  <div class="form-group">
                    <div class="custom-file">
                      <div class="col-sm-12">
                        <input type="file" class="custom-file-input" name="file">
                        <label class="custom-file-label" for="exampleInputFile">Pilih
                          File</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group col-md-6">
                  <a href="?module=data_karyawan"><button type="button" class="btn btn-danger">Batal</button></a>
                  <button type="submit" class="btn btn-success">Tambah</button>
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
case "edit_karyawan":
$id     = $_GET["id_karyawan"];
$edit   =  mysqli_fetch_array(mysqli_query($con, "Select * From karyawan Where id_karyawan='$id'"));
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Karyawan</h1>
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
            <h3 class="card-title">Edit Data Karyawan</h3>
          </div>
          <form role="form" action="modul/data_karyawan/aksi_data_karyawan.php?module=data_karyawan&act=update" enctype="multipart/form-data" method="post">
            <div class="card-body">
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label>Klinik</label>
                  <select class="form-control select2" style="width: 100%;" name="klinik" required>
                    <option value="<?php echo $edit['id_kk']?>">
                      <?php $q1 = mysqli_query($con, "SELECT *FROM daftar_klinik"); 
                            while($k = mysqli_fetch_array($q1)){ ?>
                              <?php echo $k['nama_klinik']?></option>
                            <option value="<?php echo $k['id_kk']; ?>"><?php echo $k["nama_klinik"]; ?></option>
                            <?php 
                          }
                      ?>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Nama Karyawan </label>
                  <input type="hidden" class="form-control" name="id_karyawan" value="<?php echo $edit['id_karyawan']?>" required/>
                  <input type="text" class="form-control" name="nama_karyawan" value="<?php echo $edit['nama_karyawan']?>" required/>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Jenis Kelamin </label>
                  <select class="form-control select2" style="width: 100%;" name="jk" required="">   
                    <?php 
                    if ($edit['jk'] == "L") {
                      echo '<option value="L">Laki Laki</option>';
                    }else{
                      echo '<option value="P">Perempuan</option>';
                    }?>
                    <option value="L">Laki Laki</option>
                    <option value="P">Perempuan</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label>Tanggal Lahir </label>
                  <input type="date" class="form-control" data-inputmask-alias="datetime"
                    data-inputmask-inputformat="mm/dd/yyyy" data-mask name="tgl_lahir" value="<?php echo $edit['tgl_lahir']?>" required>
                </div>
                <div class="col-md-6">
                  <label>Jenis User </label>
                  <select name="bagian"class="form-control select2" style="width: 100%;" required>
                  <?php
                    $data = mysqli_query($con, "Select * From jenis_user WHERE (id_ju!='JU-01') AND (id_ju!='JU-02')");            
                          while($hasil  = mysqli_fetch_array($data)){
                      if($hasil['id_ju']==$edit['id_ju']){
                  ?>
                    <option value="<?php echo $hasil['id_ju']; ?>" checked><?php echo $hasil['nama_ju']; ?></option>            
                      <?php }else { ?>
                    <option value="">-- Pilih Jenis --</option>
                    <option value="<?php echo $hasil['id_ju']; ?>" ><?php echo $hasil['nama_ju']; ?></option>  
                      <?php }
                        }
                      ?>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Tanggal Masuk </label>
                  <input type="date" class="form-control" data-inputmask-alias="datetime"
                    data-inputmask-inputformat="mm/dd/yyyy" data-mask name="tgl_masuk" value="<?php echo $edit['tgl_masuk']?>" required>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Alamat </label>
                  <input type="text" class="form-control" name="alamat" value="<?php echo $edit['alamat']?>" required>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Lulusan </label>
                  <input type="text" class="form-control" name="lulusan" value="<?php echo $edit['lulusan']?>" required>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Status</label>
                  <select class="form-control select2" style="width: 100%;" name="status" value="<?php echo $edit['status']?>" required="">
                  <?php 
                    if ($edit['jk'] == "L") {
                      echo '<option value="Aktif">Aktif</option>';
                    }else{
                      echo '<option value="Nonaktif">Nonaktif</option>';
                    }?>
                    <option value="Aktif">Aktif</option>
                    <option value="Nonaktif">Nonaktif</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Username </label>
                  <input type="text" class="form-control"name="username" value="<?php echo $edit['username']?>">
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">Password </label>
                  <input type="password" class="form-control" name="password">
                </div>
                <div class="form-group col-md-6">
                  <label>Blokir</label>
                  <select name="blokir" class="form-control select2" style="width: 100%;">
                  <?php 
                    if ($edit['blokir'] == "N") {
                      echo '<option value="N" cheked>N</option>';
                      echo '<option value="Y">Y</option>';
                          }else{
                      echo '<option value="N">N</option>';
                            echo '<option value="Y" cheked>Y</option>';
                          }?>
                    <option value="Aktif">Aktif</option>
                    <option value="Nonaktif">Nonaktif</option>
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="exampleInputKode1">No Telepon </label>
                  <input type="text" class="form-control" name="no_telp" value="<?php echo $edit['no_telp']?>" required>
                </div>
                <div class="form-group col-md-6">
                  <div class="input-group">
                    <label>Upload Foto</label>
                  </div>
                  <div class="form-group">
                    <div class="custom-file">
                      <div class="col-sm-12">
                        <input type="file" name="file"  value="<?php echo $edit['foto']?>" class="custom-file-input">
                        <label class="custom-file-label" >Pilih
                          File</label>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="form-group col-md-6">
                  <a href="?module=data_karyawan"><button type="button" class="btn btn-danger">Batal</button></a>
                  <button type="submit" class="btn btn-success">Simpan</button>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
  function jenis(){
    $("#jeniss").val($("#jenis").val());
  }
  window.onload=jenis();
</script>

<?php
  break;
  }
?>
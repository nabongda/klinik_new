<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Jadwal Praktek Dokter</h1>
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
            <h3 class="card-title">Tambah Jadwal</h3>
          </div>
          <form role="form" method="post" enctype="multipart/form-data" action="modul/dr_praktek/aksi.php?act=input">
            <div class="card-body">
              <div class="form-group" id="lblexpired">
              </div>
              <input type="hidden" name="expired" id="expired">
              <div class="form-group">
                <label>Poliklinik</label>
                <select class="form-control select2" name="klinik" required style="width: 100%;" placeholder="Nama Produk">
                  <option selected="selected">Pilih Poliklinik</option>
                  <?php
                    $kl = mysqli_query($con, "SELECT * FROM poliklinik");
                    while($kli = mysqli_fetch_assoc($kl)){
                        echo "<option value='$kli[id_poli]'>$kli[poli]</option>";
                    }

                    ?>
                </select>
              </div>
              <div class="form-group">
                <label>Nama Dokter</label>
                <select class="form-control select2" name="dokter" required style="width: 100%;">
                  <option value="">Pilih Dokter</option>   
                    <?php

                    $kl = mysqli_query($con, "SELECT * FROM user WHERE id_ju = 'JU-02'");
                    while($kli = mysqli_fetch_assoc($kl)){
                    echo "<option value='$kli[id_user]'>$kli[nama_lengkap]</option>";
                    }


                    ?>
                </select>
              </div>
              <div class="form-group">
                <label>Hari Piket</label>
                <select class="form-control select2" name="hari" required style="width: 100%;">
                  <option>Pilih Hari Piket</option>
                  <option value="1">Senin</option>
                  <option value="2">Selasa</option>
                  <option value="3">Rabu</option>
                  <option value="4">Kamis</option>
                  <option value="5">Jumat</option>
                  <option value="6">Sabtu</option>
                  <option value="7">Minggu</option>
                </select>
              </div>
              <div class="form-group">
                <label for="exampleInputBeli">Jam Piket</label>
                <input type="text" class="form-control" name="jam" placeholder="Contoh 22:30:00">
              </div>
              <a href="?module=jadwal_dokter"><button type="button" class="btn btn-danger">Batal</button></a>
              <button type="submit" class="btn btn-success">Tambah</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  var date = new Date();
  var bln = (date.getMonth() + 1);
  var bln2 = (bln < 10)? "0" + bln : bln;
  var bln3 = ((bln + 1) < 10)? "0" + (bln + 1) : (bln + 1);
  var tgl = date.getDate();
  var now = "";
  
  if(tgl <= 24){
    now = date.getFullYear() + "-" + bln2 + "-24";
  } else {
    now = date.getFullYear() + "-" + bln3 + "-24";
  }
  
  $("#expired").val(now);
  var dt = new Date(now);
  var k = new Intl.DateTimeFormat("id-ID",{year: 'numeric', day: '2-digit', month: 'long'}).format(dt);
  $("#lblexpired").html("<label>Berlaku s/d " + k + "</label>");
});
</script>
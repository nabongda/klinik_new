
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Antrian Pasien</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Antrian Pasien</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
<?php
    $date_now = date("Y-m-d");
    $besok = date("Y-m-d", strtotime('tomorrow'));
    $q1  = mysqli_query($con, "SELECT * FROM antrian_pasien WHERE tanggal_pendaftaran='$date_now' AND jenis_layanan IN ('rawat jalan','igd','poliklinik') AND rujuk_inap IS NULL");
    $mp  = mysqli_num_rows($q1);
    $q2  = mysqli_query($con, "SELECT *FROM history_ap WHERE tanggal_pendaftaran='$date_now'");
    $mp2 = mysqli_num_rows($q2);
    $tot = $mp+$mp2;
    $q3  = mysqli_query($con, "SELECT *FROM history_ap WHERE tanggal_pendaftaran='$date_now' AND pembayaran='Belum Lunas'");
    $mp3 = mysqli_num_rows($q3);
  ?>
<div class="row">
      <div class="col-md-12">
        <?php
          if($_SESSION['jenis_u'] != "JU-08"){
        ?>
        <div class="card">
        <?php
          if($_SESSION['jenis_u'] != "JU-07"){
        ?>
          <div class="card-header">
            <h5>Pasien Yang Sedang Mengantri
            <?php      
              $doc = mysqli_fetch_assoc(mysqli_query($con, "SELECT nama_lengkap FROM user WHERE id_user = $_SESSION[id_dr]"));
              if(is_null($doc["nama_lengkap"])){ } else {
              echo "untuk Dokter ".$doc["nama_lengkap"];
              }
            ?>
            </h5>
          </div>
        <?php  }
        ?>
          
          <div class="card-body">
            <div class="callout callout-success bg-success">
            
              <?php   
              $docs = isset($_SESSION['id_dr'])? "AND id_dr = $_SESSION[id_dr]" : "";
              $tot = mysqli_num_rows(mysqli_query($con, "SELECT * FROM antrian_pasien WHERE tanggal_pendaftaran='$date_now' $docs AND jenis_layanan IN ('rawat jalan','igd','poliklinik') AND rujuk_inap IS NULL")); 
              $tot1 = mysqli_num_rows(mysqli_query($con, "SELECT * FROM antrian_pasien WHERE tanggal_pendaftaran='$date_now' AND jenis_layanan IN ('rawat jalan','igd','poliklinik') AND rujuk_inap IS NULL")); 
              ?>
              <?php
                if($_SESSION['jenis_u'] == "JU-02"){
              ?>
              <p>Jumlah Total Antrian Pasien <?php echo $tot; ?></p>
              <?php  }?>
              <?php
                if($_SESSION['jenis_u'] == "JU-07"){
              ?>
              <p>Jumlah Total Antrian Pasien <?php echo $tot1; ?></p>
              <?php  }?>
            </div>
          </div>
          

          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No Faktur</th>
                  <th>Nama Pasien</th>
                  <th>Antrian utk Layanan</th>
                  <th>Pengunjung Ke</th>
                  <th>Pendaftaran Online</th>
                  <?php
                    if($_SESSION['jenis_u'] != "JU-07"){
                  ?>
                  <th>Pilihan</th>
                  <?php  }?>
                </tr>
              </thead>
              <tbody>
              <?php
                $id_dr = $_SESSION['id_dr'];
                $docs = isset($_SESSION['id_dr'])? "AND id_dr = $_SESSION[id_dr]" : "";
                
                if($_SESSION['jenis_u'] != "JU-07"){
                  $ap = mysqli_query($con, "SELECT  antrian_pasien.*,pasien.*,antrian_pasien.id AS antri_id FROM antrian_pasien 
                  JOIN pasien ON antrian_pasien.id_pasien=pasien.id_pasien WHERE antrian_pasien.status IS NULL AND jenis_layanan IN ('rawat jalan','igd','poliklinik') AND antrian_pasien.tanggal_pendaftaran='$date_now' $docs AND antrian_pasien.rujuk_inap IS NULL ORDER BY antrian_pasien.no_urut ASC");
                }
                else {
                  $ap = mysqli_query($con, "SELECT  antrian_pasien.*,pasien.*,antrian_pasien.id AS antri_id FROM antrian_pasien 
                  JOIN pasien ON antrian_pasien.id_pasien=pasien.id_pasien WHERE antrian_pasien.status IS NULL AND jenis_layanan IN ('rawat jalan','igd','poliklinik') AND antrian_pasien.tanggal_pendaftaran='$date_now' AND antrian_pasien.rujuk_inap IS NULL ORDER BY antrian_pasien.no_urut ASC");
                }
                $no = 1;
                while($i = mysqli_fetch_array($ap)){ ?>
                <tr>
                  <td><?php echo $i['no_faktur']; ?></td>
                  <td><?php echo $i['nama_pasien']; ?></td>
                  <td><?php echo strtoupper($i['jenis_layanan']); ?></td>
                  <td><?php echo $i['no_urut']; ?></td>
                  <td><?php if(is_null($i['online'])){ echo "Tidak"; } else { echo "Ya"; } ?></td>
                  <?php
                    if($_SESSION['jenis_u'] != "JU-07"){
                  ?>
                  <td>
                    <a href="media.php?module=pemeriksaan&nofak=<?php echo $i['no_faktur']; ?>&id=<?php echo $i['id_pasien']; ?>" class="btn btn-xs btn-primary">Panggil</a> &nbsp; <a href="#" data-toggle="modal" data-target="#modal-default-notice" class="btn btn-xs btn-warning" onclick="nl(this.id)" id="nl<?php echo $no; ?>" data-faktur="<?php echo $i['no_faktur']; ?>" data-pasien="<?php echo $i['id_pasien']; ?>" data-dr="<?php echo $_SESSION['id_dr']; ?>" data-layanan="jalan" data-jamin="<?php echo $i['jenis_pasien']; ?>">Notice Lab</a>
                  </td>
                  <?php  }?>
                </tr>
                <?php $no++; } ?>
              </tbody>
            </table>

            <?php include "add_noticelab.php"; ?>

            <div class="modal fade" id="modal-default" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-xs" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <h5 class="modal-title">Pemeriksaan Umum Pasien</h5>
                  </div>
                  <form action="modul/mod_home/pendol.php" method="POST" class="form-horizontal" role="form">
                    <div class="modal-body">    
                      <table class="table">
                        <tr><td>No Faktur</td><td><input type="text" class="form-control" name="faktur" id="fakturonline" readonly/></td></tr>
                        <tr><td>Pasien</td><td><input type="text" class="form-control" id="pasienonline" readonly/></td></tr>
                        <tr><td>Tinggi Badan</td><td><input type="text" class="form-control" name="tb" id="tb" required/></td></tr>
                        <tr><td>Berat Badan</td><td><input type="text" class="form-control" name="bb" id="bb" required/></td></tr>
                        <tr><td>Tekanan Darah</td><td><input type="text" class="form-control" name="tensi" id="tensi" required/></td></tr>
                        <tr><td>Respirasi</td><td><input type="text" class="form-control" name="respirasi" id="respirasi" required/></td></tr>
                        <tr><td>Denyut Nadi</td><td><input type="text" class="form-control" name="nadi" id="nadi" required/></td></tr>
                        <tr><td>Suhu Badan</td><td><input type="text" class="form-control" name="suhu" id="suhu" required/></td></tr>
                        <tr><td>Keluhan</td><td><textarea class="form-control" style="height: 100px" name="keluhan" id="keluhan" required></textarea></td></tr>
                      </table>
                    </div>
                    <div class="modal-footer">
                      <button class="btn btn-default" data-dismiss="modal">Close</button>
                      <button type="button" type="submit" class="btn btn-primary pull-left">Simpan</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>

            <script>
              function editonline(id){
                var faktur = $("#" + id).data("faktur");
                var pasien = $("#" + id).data("pasien");
                var tb = $("#" + id).data("tb");
                var bb = $("#" + id).data("bb");
                var tensi = $("#" + id).data("tensi");
                var respirasi = $("#" + id).data("respirasi");
                var nadi = $("#" + id).data("nadi");
                var suhu = $("#" + id).data("suhu");
                var keluhan = $("#" + id).data("keluhan");
                $("#fakturonline").val(faktur);
                $("#pasienonline").val(pasien);
                $("#tb").val(tb);
                $("#bb").val(bb);
                $("#tensi").val(tensi);
                $("#respirasi").val(respirasi);
                $("#nadi").val(nadi);
                $("#suhu").val(suhu);
                $("#keluhan").val(keluhan);
              }
            </script>
          </div>
          <?php } ?>
        </div>
      </div>
    </div>
    </section>

  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Daftar Jadwal Perawat</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Beranda</a></li>
            <li class="breadcrumb-item active">Daftar Jadwal Perawat</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <div class="card-header">
            <div>
              <button type="submit" class="btn btn-primary" data-toggle="modal"
                data-target=".modalTambahJwdPrw">Tambah</button>
              <button type="submit" class="btn btn-secondary" data-toggle="modal"
                data-target=".modalTukarJwPrw">Tukar Jadwal</button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>Nama Perawat</th>
                  <th>Nama Dokter</th>
                  <th>Poliklinik</th>
                  <th>Hari</th>
                  <th>Jam</th>
                </tr>
              </thead>
              <tbody>
              <?php 
                //cari range expired
                $skrg = date("d");
                if($skrg <= 24){
                $now = date("Y-m-24");
                $last = date("Y-m",strtotime("-1 month"))."-25";
                } else {
                $last = date("Y-m-25");
                $now = date("Y-m",strtotime("+1 month"))."-24";
                }

                $d = mysqli_query($con,"SELECT * FROM nurse WHERE drpraktek IN (SELECT id_drpraktek FROM dr_praktek WHERE expired >= '$last' AND expired <= '$now')");
                while($du = mysqli_fetch_assoc($d)){

                $dr = mysqli_fetch_assoc(mysqli_query($con,"SELECT a.nama_lengkap,b.* FROM user a JOIN dr_praktek b ON a.id_user = b.id_dr WHERE b.id_drpraktek = '$du[drpraktek]'"));

                $nurse = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM karyawan WHERE id_karyawan = '$du[perawat]'"));

                $poli = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM poliklinik WHERE id_poli = '$dr[id_poli]'"));

                switch($dr['hari']){
                case "1": $day = "Senin"; break;
                case "2": $day = "Selasa"; break;
                case "3": $day = "Rabu"; break;
                case "4": $day = "Kamis"; break;
                case "5": $day = "Jumat"; break;
                case "6": $day = "Sabtu"; break;
                case "7": $day = "Minggu"; break;
                }

                echo "<tr>";
                echo "<td>$nurse[nama_karyawan]</td>";
                echo "<td>$dr[nama_lengkap]</td>";
                echo "<td>$poli[poli]</td>";
                echo "<td>$day</td>";
                echo "<td>$dr[jam]</td>";
                echo "</tr>";

                }

                ?>
              </tbody>
              <!-- Modals Tambah Jadwal -->
              <div class="modal fade modalTambahJwdPrw" id="modal-default" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-xs" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Jadwal Perawat </h5>
                    </div>
                    <div class="modal-body">
                      <form role="form">
                        <div class="form-group">
                          <label> Jadwal perawat mengikuti jadwal dokter yang dipilih</label>
                          <label> Pilih Jadwal Dokter</label>
                          <select type="text" id="dr" class="form-control">
                            <option value="">--silakan pilih--</option>
                            <?php 
                              $today = DATE('Y-m-d');
                              $do = mysqli_query($con,"SELECT * FROM user a JOIN dr_praktek b ON a.id_user = b.id_dr JOIN poliklinik c ON b.id_poli=c.id_poli WHERE a.id_ju = 'JU-02' AND b.expired>='$today'");
                              while($dok = mysqli_fetch_assoc($do)){
                                switch($dok['hari']){
                                  case "1": $hari = "Senin"; break;
                                  case "2": $hari = "Selasa"; break;
                                  case "3": $hari = "Rabu"; break;
                                  case "4": $hari = "Kamis"; break;
                                  case "5": $hari = "Jumat"; break;
                                  case "6": $hari = "Sabtu"; break;
                                  case "7": $hari = "Minggu"; break;
                                }
                                  echo "<option value='$dok[id_drpraktek]'>$dok[nama_lengkap] || $hari || $dok[jam] || $dok[poli]</option>";
                              }
                              ?>
                          </select>
                        </div>
                        <div class="form-group">
                          <label> Pilih Perawat</label>
                          <select type="text" id="nurse" class="form-control">
                          <option value="">--silakan pilih--</option>
                          <?php 
                            $do = mysqli_query($con,"SELECT * FROM karyawan WHERE id_ju = 'JU-10'");
                            while($dok = mysqli_fetch_assoc($do)){
                                echo "<option value='$dok[id_karyawan]'>$dok[nama_karyawan]</option>";
                            }
                            ?>
                          </select>
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">
                      <button class="btn btn-default" data-dismiss="modal">Batal</button>
                      <button type="button" type="submit" class="btn btn-primary pull-left" id="tukarin" onclick="switched()">Simpan</button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Modals Tukar Jadwal -->
              <div class="modal fade modalTukarJwPrw" id="modal-default2" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-xs" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Jadwal Perawat </h5>
                    </div>
                    <div class="modal-body">
                      <form role="form">
                        <div class="form-group">
                          <label> Jadwal perawat mengikuti jadwal dokter yang dipilih</label>
                          <label> Pilih Jadwal Perawat 1</label>
                          <select id="dr1" type="text" class="form-control">
                          <option value="">--silakan pilih--</option>
                          <?php 
                            $today = DATE('Y-m-d');
                            $u = mysqli_query($con,"SELECT * FROM nurse n JOIN karyawan k ON(n.perawat=k.id_karyawan) JOIN dr_praktek d ON(n.drpraktek=d.id_drpraktek) JOIN poliklinik p ON(d.id_poli=p.id_poli) WHERE d.expired>='$today'");
                            while($ux = mysqli_fetch_assoc($u)){
                              switch($ux['hari']){
                                case "1": $hari = "Senin"; break;
                                case "2": $hari = "Selasa"; break;
                                case "3": $hari = "Rabu"; break;
                                case "4": $hari = "Kamis"; break;
                                case "5": $hari = "Jumat"; break;
                                case "6": $hari = "Sabtu"; break;
                                case "7": $hari = "Minggu"; break;
                              }
                                echo "<option value='$ux[id_nurse]'>$ux[nama_karyawan] || $ux[poli] || $hari || $ux[jam]</option>";
                            }
                            ?>
                          </select>
                        </div>
                        <div class="form-group">
                          <label> Pilih Perawat 2</label>
                          <select type="text" id="dr2" class="form-control">
                            <option value="">--silakan pilih--</option>
                            <?php 
                              $u = mysqli_query($con,"SELECT * FROM nurse n JOIN karyawan k ON(n.perawat=k.id_karyawan) JOIN dr_praktek d ON(n.drpraktek=d.id_drpraktek) JOIN poliklinik p ON(d.id_poli=p.id_poli) WHERE d.expired>='$today'");
                              while($ux = mysqli_fetch_assoc($u)){
                                switch($ux['hari']){
                                  case "1": $hari = "Senin"; break;
                                  case "2": $hari = "Selasa"; break;
                                  case "3": $hari = "Rabu"; break;
                                  case "4": $hari = "Kamis"; break;
                                  case "5": $hari = "Jumat"; break;
                                  case "6": $hari = "Sabtu"; break;
                                  case "7": $hari = "Minggu"; break;
                                }
                                  echo "<option value='$ux[id_nurse]'>$ux[nama_karyawan] || $ux[poli] || $hari || $ux[jam]</option>";
                              }
                              ?>
                          </select>
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">
                      <button class="btn btn-default" data-dismiss="modal">Batal</button>
                      <button type="button" type="submit" class="btn btn-primary pull-left" id="tukarin" onclick="switched2()">Simpan</button>
                    </div>
                  </div>
                </div>
              </div>
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>

<script>
function switched(){
  var dr = $("#dr").val();
  var nurse = $("#nurse").val();
  var xhr = $.ajax({
    url: "modul/nurse/ajax_nurse.php",
    data: {"dr": dr,"nurse": nurse},
    success: function(data){
      if(data == "error"){
        alert("Dokter yang dipilih sudah ada perawat ini");
        $("#tukarin").html("Tambah");
      } else {
        location.reload();
      }
    }
  });
  if(xhr.readyState == "1"){
    $("#tukarin").html("menambah jadwal...");
  }
}

function switched2(){
    var a = $("#dr1").val();
    var b = $("#dr2").val();
    if(a == b){
        alert("Tidak dapat menukarkan data yang sama");
    } else {
        $("#tukarin").html("menukarkan...");
        $.ajax({
            url: "modul/nurse/switched.php",
            data: {"dr1":a,"dr2":b},
            success: function(data){
              if(data == "error"){
                alert("Poliklinik berbeda tidak dapat ditukarkan");
                $("#tukarin").html("Tukarkan");
              }
                location.reload();
            }
        });
    }
}
</script>
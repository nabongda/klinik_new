<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Daftar Jadwal Praktek Dokter</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Daftar Jadwal Dokter</li>
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
              <a href="?module=tambah_jadwal_dokter" class="btn btn-primary">Tambah</a>
              <button type="button" class="btn btn-secondary" data-toggle="modal"
              data-target="#modal-default">Tukarkan Jadwal Dokter</button>
          </div>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Aksi</th>
                <th>Nama Dokter</th>
                <th>Poliklinik</th>
                <th>Hari</th>
                <th>Jam</th>
                <th>Berlaku s.d</th>
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

              $d = mysqli_query($con, "SELECT b.id_drpraktek,b.expired,b.jam,a.nama_lengkap,b.hari,(SELECT poli FROM poliklinik WHERE id_poli = b.id_poli) poli 
              FROM user a JOIN dr_praktek b ON a.id_user = b.id_dr WHERE b.expired >= '$last' AND b.expired <= '$now' ORDER BY b.hari ASC");

              while($dr = mysqli_fetch_assoc($d)){  
                switch($dr['hari']){
                  case 1: $day = "Senin"; break;
                  case 2: $day = "Selasa"; break;
                  case 3: $day = "Rabu"; break;
                  case 4: $day = "Kamis"; break;
                  case 5: $day = "Jumat"; break;
                  case 6: $day = "Sabtu"; break;
                  case 7: $day = "Minggu"; break;
                }
                echo "<tr>";
                echo "<td><a href='modul/dr_praktek/aksi.php?act=del&id=$dr[id_drpraktek]' onclick='return confirm(\"Menghapus jadwal dokter praktek akan menyebabkan jadwal perawat yang terkait ikut terhapus. Apakah yakin akan menghapus? \")'><button class='btn btn-xs btn-danger'>Hapus</button></a></td>";
                echo "<td>$dr[nama_lengkap]</td>";
                echo "<td>$dr[poli]</td>";
                echo "<td>$day</td>";
                echo "<td>$dr[jam]</td>";
                echo "<td>".strftime("%d %B %Y",strtotime($dr['expired']))."</td>";
                echo "</tr>";
              }
              ?>
            </tbody>

            <div class="modal fade" role="dialog" id="modal-default">
              <div class="modal-dialog modal-xs" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Tukarkan Jadwal Dokter </h5>
                  </div>
                  <div class="modal-body">
                    <form role="form">
                      <div class="form-group">
                        <label> Jadwal yang dipilih akan bertukar Hari dan Jam nya</label>
                        <label> Pilih Jadwal Dokter 1</label>
                        <select type="text" id="dr1" class="form-control">
                          <option value="">--Silakan Pilih--</option>
                          <?php 
                          $u = mysqli_query($con, "SELECT hari,jam,id_drpraktek,(SELECT nama_lengkap FROM user WHERE id_user = dr_praktek.id_dr) dokter, (SELECT poli FROM poliklinik WHERE id_poli = dr_praktek.id_poli) poli FROM dr_praktek WHERE expired >= '$last' AND expired <= '$now' ORDER BY hari ASC");
                          while($ux = mysqli_fetch_assoc($u)){
                            switch($ux['hari']){
                              case "1": $day = "Senin"; break;
                              case "2": $day = "Selasa"; break;
                              case "3": $day = "Rabu"; break;
                              case "4": $day = "Kamis"; break;
                              case "5": $day = "Jumat"; break;
                              case "6": $day = "Sabtu"; break;
                              case "7": $day = "Minggu"; break;
                            }
                            echo "<option value='$ux[id_drpraktek]'>$ux[dokter] $ux[poli] $day $ux[jam] </option>";
                          }
                          ?>
                        </select>
                      </div>
                      <div class="form-group">
                        <label> Pilih Jadwal Dokter 2</label>
                        <select type="text" id="dr2" class="form-control">
                          <option value="">--Silakan Pilih--</option>
                          <?php 
                          $u = mysqli_query($con, "SELECT hari,jam,id_drpraktek,(SELECT nama_lengkap FROM user WHERE id_user = dr_praktek.id_dr) dokter, (SELECT poli FROM poliklinik WHERE id_poli = dr_praktek.id_poli) poli FROM dr_praktek WHERE expired >= '$last' AND expired <= '$now' ORDER BY hari ASC");
                          while($ux = mysqli_fetch_assoc($u)){
                            switch($ux['hari']){
                              case "1": $day = "Senin"; break;
                              case "2": $day = "Selasa"; break;
                              case "3": $day = "Rabu"; break;
                              case "4": $day = "Kamis"; break;
                              case "5": $day = "Jumat"; break;
                              case "6": $day = "Sabtu"; break;
                              case "7": $day = "Minggu"; break;
                            }
                            echo "<option value='$ux[id_drpraktek]'>$ux[dokter] $ux[poli] $day $ux[jam] </option>";
                          }
                          ?>
                        </select>
                      </div>
                    </form>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary pull-left" id="tukarin" onclick="switched()">Tukarkan</button>
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
    var a = $("#dr1").val();
    var b = $("#dr2").val();
    if(a == b){
      alert("Tidak dapat menukarkan data yang sama");
    } else {
      $("#tukarin").html("menukarkan...");
      $.ajax({
        url: "modul/dr_praktek/switched.php",
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
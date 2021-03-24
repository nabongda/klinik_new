<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Rujukan Rawat Inap</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Rujukan Rawat Inap</li>
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
          <h5>Data Rujukan Pasien Rawat Inap</h5>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Aksi</th>
                <th>Nama Pasien</th>
                <th>ID Pasien</th>
                <th>Poliklinik</th>
                <th>Dokter Merujuk</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $j = mysqli_query($con,"SELECT * FROM rujuk_inap a JOIN antrian_pasien b ON a.antrian_pasien = b.id JOIN pasien c ON b.id_pasien = c.id_pasien JOIN user d ON b.id_dr = d.id_user JOIN poliklinik e ON b.poliklinik = e.id_poli");
              while($ju = mysqli_fetch_assoc($j)){
                echo "<tr>";
                echo "<td><a href='#' data-target='#modal-default3' data-toggle='modal' onclick='pushit($ju[antrian_pasien])'><button class='btn btn-xs btn-success'>Tambah</button></a></td>";
                echo "<td>$ju[nama_pasien]</td>";
                echo "<td>$ju[id_pasien]</td>";
                echo "<td>$ju[poli]</td>";
                echo "<td>$ju[nama_lengkap]</td>";
                echo "</tr>";
              }
              ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" role="dialog" id="modal-default3">
    <div class="modal-dialog modal-xs" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title"> Data Retur Penjualan</h5>
          <span id="msg"></span>
        </div>
        <div class="modal-body">
          <form action="modul/rawat_inap/rujuk_inap.php" method="POST">
            <input type="hidden" id="antrian" name="antrian">
            <div class="row">
              <div class="col">
                <label>Pilih Ruang Perawatan</label>
                <select id="ruang" name="ruang" class="form-control">
                  <option value="belum">--Silahkan Pilih--</option>
                    <?php 
                    $q1 = mysqli_query($con, "SELECT *FROM ruangan");
                    while ($dok = mysqli_fetch_array($q1)) { 
                      if(!is_null($dok['status'])){
                        $status = "(Rusak)";
                        $stat = "disabled";
                      } else if($dok['kapasitas'] == $dok['terpakai']){
                        $status = "(Penuh)";
                        $stat = "disabled";
                      } else {
                        $status = "";
                      }
                      ?>
                      <option value="<?php echo $dok['id']; ?>" <?php echo $stat; ?>><?php echo $dok['nama_ruangan']." ".$status; ?></option>
                    <?php } ?>
                </select>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-default pull-left" id="pulangkan">OK</button>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
  function pushit(id){
    $("#ruang").val("belum");
    $("#antrian").val(id);
  }
</script>
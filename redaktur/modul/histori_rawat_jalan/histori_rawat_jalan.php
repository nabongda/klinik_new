<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Rawat Jalan</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Rawat Jalan </li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Aksi</th>
                <th>Visit</th>
                <th>Notice Lab</th>
                <th>No Biling</th>
                <th>ID Pasien</th>
                <th>Nama Pasien</th>
              </tr>
            </thead>
            <tbody>
                <?php
                $tgl = date('Y-m-d');
                $k1 = mysqli_query($con,"SELECT * FROM pasca_treatment WHERE id_dr='$_SESSION[id_dr]' AND tanggal='$tgl' ORDER BY tanggal DESC");
                $no = 1;
                while($ki1 = mysqli_fetch_assoc($k1)){
                  $pas = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM pasien WHERE id_pasien = '$ki1[id_pasien]'"));
                  // if($ki1['id_dr'] == $_SESSION['id_dr']){
                      //pasien dari dokter yg sdg login
                  echo "<tr>";
                    echo "<td><a href='modul/histori_rawat_jalan/print_p.php?nofak=$ki1[no_faktur]&id_pasien=$ki1[id_pasien]' target='_blank'><button class='btn btn-sm btn-success'>Cetak</button></a></td>";
                    // echo "<td><button id='$ki1[id]' class='btn btn-sm btn-info' data-toggle='modal' data-target='#modal-default3' onclick='leave(this.id)' data-faktur='$ki1[no_faktur]' data-pasien='$ki1[id_pasien]'>Selesai</button></td>";
                    // echo "<td><button id='$ki1[id]' class='btn btn-sm btn-info' data-toggle='modal' data-target='#modal-default' onclick='visit(this.id)' data-faktur='$ki1[no_faktur]' data-pasien='$ki1[id_pasien]'>Atur</button></td>";
                    echo "<td><a href='?module=visit_treatment&nofak=$ki1[no_faktur]'><button class='btn btn-sm btn-info'>Kunjungi</button></a></td>";
                    echo "<td><button data-toggle='modal' data-target='#modal-default-notice' class='btn btn-sm btn-warning' onclick='nl(this.id)' id='nl".$no."' data-faktur='$ki1[no_faktur]' data-pasien='$ki1[id_pasien]' data-dr='$_SESSION[id_dr]' data-layanan='inap'  data-jamin='$ki1[jenis_pasien]'>Buat</button></td>";
                    // echo "<td><button id='$ki1[id_pt]'  class='btn btn-sm btn-info' data-toggle='modal' data-target='#modal-default2' onclick='detail(this.id)' data-faktur='$ki1[no_faktur]' data-pasien='$ki1[id_pasien]'>Buka</button></td>";
                    echo "<td>$ki1[no_faktur]</td>";
                    echo "<td>$ki1[id_pasien]</td>";
                    echo "<td>$pas[nama_pasien]</td>";
                  echo "</tr>";
                  // } else {}
                  $no++;
                }

                // $k2 = mysqli_query($con,"SELECT b.* FROM dr_visit a JOIN perawatan_pasien b ON a.no_faktur = b.no_faktur WHERE a.id_dr = '$_SESSION[id_dr]' AND b.status IS NULL");
                // while($ki2 = mysqli_fetch_assoc($k2)){
                //     $pas = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM pasien WHERE id_pasien = '$ki2[id_pasien]'"));
                //     //dokter visit
                //     echo "<tr>";
                //     echo "<td></td>";
                //     echo "<td></td>";
                //     echo "<td><a href='?module=visit_treatment&nofak=$ki2[no_faktur]'><button class='btn btn-sm btn-info'>Kunjungi</button></a></td>";
                //     echo "<td></td>";
                //     echo "<td></td>";
                //     echo "<td>$ki2[no_faktur]</td>";
                //     echo "<td>$ki2[id_pasien]</td>";
                //     echo "<td>$pas[nama_pasien]</td>";
                //     echo "</tr>";
                // }
                ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>

  <?php include "modul/mod_home/add_noticelab.php"; ?>

  <!-- <div class="modal fade" role="dialog" id="modal-default3">
    <div class="modal-dialog modal-xs" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Pasien Rawat Jalan</h5>
        </div>
        <form class="form-horizontal" role="form">
          <div class="modal-body">        
            <input type="hidden" id="pasien">
            <input type="hidden" id="faktur">
            <div class="form-group row">
              <div class="col-sm-4">
                <label>Alasan Selesai Perawatan</label>
              </div>
              <div class="col-sm-8">
                <textarea class="form-control" id="status"></textarea>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary" id="pulangkan" onclick="pulangkan()">OK</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div> -->

  <!-- <div class="modal fade" role="dialog" id="modal-default2">
    <div class="modal-dialog modal-xs" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Detail Kondisi Pasien Rawat Jalan</h5>
        </div>
        <div class="modal-body">
          <table id="detailpas" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Tanggal</th>
                <th>Keterangan</th>
                <th>Nama Dokter</th>
              </tr>
            </thead> 
            <tbody>
            <tr>
                <td><?php echo $ki1['tanggal'];?></td>
                <td><?php echo $ki1['ket']; ?></td>
                <td><?php echo $ki1['id_dr']; ?></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div> -->

  <!-- <div class="modal fade" role="dialog" id="modal-default">
    <div class="modal-dialog modal-xs" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Atur Dokter Visit</h5>
        </div>
        <form class="form-horizontal" role="form">
          <div class="modal-body">
            <span><strong>Dokter yang diizinkan visit akan melihat data pasien ini pada saat login</strong></span>
            <div class="row">
              <div class="col-md-12">
                <label>Pilih Dokter</label>
                <select class="form-control" id="dr1">
                  <option value="">--Pilih Dokter--</option>
                  <?php 
                  $u = mysqli_query($con,"SELECT * FROM user WHERE id_ju = 'JU-02' AND id_user != '$_SESSION[id_dr]'");
                  while($ux = mysqli_fetch_assoc($u)){
                  echo "<option value='$ux[id_user]'>$ux[nama_lengkap] </option>";
                  }
                  ?>
                </select>
              </div>
            </div>
            <input type="hidden" id="pasien">
            <input type="hidden" id="faktur">
            <div class="row">
              <div class="col-md-12">
                <table class="table" id="drvisit" style="width: 100%">
                  <thead>
                    <tr>
                      <th>Nama Dokter</th><th>Aksi</th>
                    </tr>
                  </thead>
                </table>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" id="tukarin" onclick="switched()">Tambahkan</button>
          </div>
        </form>
      </div>
    </div>
  </div> -->
</section>
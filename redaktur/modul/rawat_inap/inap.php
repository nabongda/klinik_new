<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Rawat Inap</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Rawat Inap
          </li>
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
                <th>Atur Dr Visit</th>
                <th>Visit</th>
                <th>Notice Lab</th>
                <th>Detail</th>
                <th>No Biling</th>
                <th>ID Pasien</th>
                <th>Nama Pasien</th>
              </tr>
            </thead>
            <tbody>
                <?php
                $k1 = mysqli_query($con,"SELECT * FROM perawatan_pasien WHERE id_dr = '$_SESSION[id_dr]' AND status IS NULL ORDER BY tanggal_pendaftaran DESC");
                $no = 1;
                while($ki1 = mysqli_fetch_assoc($k1)){
                    $pas = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM pasien WHERE id_pasien = '$ki1[id_pasien]'"));
                    if($ki1['id_dr'] == $_SESSION['id_dr']){
                        //pasien dari dokter yg sdg login
                        echo "<tr>";
                    echo "<td><button id='$ki1[id]' class='btn btn-sm btn-info' data-toggle='modal' data-target='#modal-default3' onclick='leave(this.id)' data-faktur='$ki1[no_faktur]' data-pasien='$ki1[id_pasien]'>Pulangkan</button></td>";
                    echo "<td><button id='$ki1[id]' class='btn btn-sm btn-info' data-toggle='modal' data-target='#modal-default' onclick='visit(this.id)' data-faktur='$ki1[no_faktur]' data-pasien='$ki1[id_pasien]'>Atur</button></td>";
                    echo "<td><a href='?module=visit_treatment&nofak=$ki1[no_faktur]'><button class='btn btn-sm btn-info'>Kunjungi</button></a></td>";
                    echo "<td><button data-toggle='modal' data-target='#modal-default-notice' class='btn btn-sm btn-warning' onclick='nl(this.id)' id='nl".$no."' data-faktur='$ki1[no_faktur]' data-pasien='$ki1[id_pasien]' data-dr='$_SESSION[id_dr]' data-layanan='inap'  data-jamin='$ki1[jenis_pasien]'>Buat</button></td>";
                    echo "<td><button id='$ki1[id]'  class='btn btn-sm btn-info' data-toggle='modal' data-target='#modal-default2' onclick='detail(this.id)' data-faktur='$ki1[no_faktur]' data-pasien='$ki1[id_pasien]'>Buka</button></td>";
                    echo "<td>$ki1[no_faktur]</td>";
                    echo "<td>$ki1[id_pasien]</td>";
                    echo "<td>$pas[nama_pasien]</td>";
                    echo "</tr>";
                    } else {}
                    $no++;
                }

                $k2 = mysqli_query($con,"SELECT b.* FROM dr_visit a JOIN perawatan_pasien b ON a.no_faktur = b.no_faktur WHERE a.id_dr = '$_SESSION[id_dr]' AND b.status IS NULL");
                while($ki2 = mysqli_fetch_assoc($k2)){
                    $pas = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM pasien WHERE id_pasien = '$ki2[id_pasien]'"));
                    //dokter visit
                    echo "<tr>";
                    echo "<td></td>";
                    echo "<td></td>";
                    echo "<td><a href='?module=visit_treatment&nofak=$ki2[no_faktur]'><button class='btn btn-sm btn-info'>Kunjungi</button></a></td>";
                    echo "<td></td>";
                    echo "<td></td>";
                    echo "<td>$ki2[no_faktur]</td>";
                    echo "<td>$ki2[id_pasien]</td>";
                    echo "<td>$pas[nama_pasien]</td>";
                    echo "</tr>";
                }
                ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>

  <?php include "modul/mod_home/add_noticelab.php"; ?>

  <div class="modal fade" role="dialog" id="modal-default3">
    <div class="modal-dialog modal-xs" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Pasien Rawat Inap Pulang</h5>
        </div>
        <form class="form-horizontal" role="form">
          <div class="modal-body">        
            <input type="hidden" id="pasien">
            <input type="hidden" id="faktur">
            <div class="form-group row">
              <div class="col-sm-4">
                <label>Alasan Boleh Pulang</label>
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
  </div>

  <div class="modal fade" role="dialog" id="modal-default2">
    <div class="modal-dialog modal-xs" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Detail Kondisi Pasien Rawat Inap</h5>
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
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <div class="modal fade" role="dialog" id="modal-default">
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
  </div>
</section>

<script>
  function leave(id){
    var faktur = $("#" + id).data("faktur");
    var pasien = $("#" + id).data("pasien");
    $("#faktur").val(faktur);
    $("#pasien").val(pasien);
  }

  function pulangkan(){
    var faktur = $("#faktur").val();
    var pasien = $("#pasien").val();
    var status = $("#status").val();
    var xhr = $.ajax({
      url: "modul/rawat_inap/leaved.php",
      data: {"status": status,"faktur": faktur,"pasien": pasien},
      success: function(data){
        location.reload();
      }
    });
      
    if(xhr.readyState == "1"){
      $("#tukarin").html("menambah...");
    }
  }

  function detail(id){
    $("#detailpas").dataTable().fnDestroy();
    var faktur = $("#" + id).data("faktur");
    var pasien = $("#" + id).data("pasien");

    $("#detailpas").dataTable({
      "bFilter": false,
      "bPaginate": false,
      "bProcessing": true,
      "sAjaxSource": "modul/rawat_inap/detailpas.php?faktur=" + faktur + "&pasien=" + pasien
    });
  }

  function hapus(id){
    var cek = confirm("apakah akan menghapus?");
    if(cek){
      var xhr = $.ajax({
      url: "modul/rawat_inap/visited2.php?id=" + id,
      success: function(data){
        location.reload();
      }
    });
      if(xhr.readyState == "1"){
        $("#" + id).html("menghapus...");
      }
    }
  }

  function switched(){
    var faktur = $("#faktur").val();
    var pasien = $("#pasien").val();
    var dr = $("#dr1").val();
    var xhr = $.ajax({
      url: "modul/rawat_inap/visited.php",
      data: {"dr": dr,"faktur": faktur,"pasien": pasien},
      success: function(data){
        location.reload();
      }
    });
    if(xhr.readyState == "1"){
      $("#tukarin").html("menambah...");
    }
  }

  function visit(id){
    $("#drvisit").dataTable().fnDestroy();
    var faktur = $("#" + id).data("faktur");
    var pasien = $("#" + id).data("pasien");
    $("#faktur").val(faktur);
    $("#pasien").val(pasien);

    $("#drvisit").dataTable({
      "bFilter": false,
      "bPaginate": false,
      "bProcessing": true,
      "sAjaxSource": "modul/rawat_inap/drvisit.php?faktur=" + faktur + "&pasien=" + pasien
    });
  }

  $(document).ready(function(){
    $("#example1").DataTable();
  });
</script>
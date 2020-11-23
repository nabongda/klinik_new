<?php
  $nama = $_GET['np'];
  $act  = $_GET['act'];
  switch ($act) {
    case 'detail':
?>

<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h5>Laporan Transaksi</h5>
        </div>
        <div class="card-body">
          <?php
            $q = mysqli_query($con, "SELECT *FROM pasien WHERE nama_pasien='$nama'"); 
            $p = mysqli_fetch_array($q);
          ?>
          <h5>Data Pasien</h5><hr>
          <form>
            <div class="row">
              <div class="col">
                <label>Nama</label>
                <input style="font-weight: bold;" type="text" class="form-control" value="<?php echo $p['nama_pasien']; ?>" readonly>
              </div>
              <div class="col">
                <label>No. Telepon</label>
                <input style="font-weight: bold;" type="text" class="form-control" value="<?php echo $p['no_telp']; ?>" readonly>
              </div>
            </div><br>
            <div class="row">
              <div class="col">
                <label>Alamat</label>
                <input style="font-weight: bold;" type="text" class="form-control" value="<?php echo $p['alamat']; ?>" readonly>
              </div>
              <div class="col">
                <label>Total Transaksi</label>
                <input style="font-weight: bold;" type="text" class="form-control" value="<?php
                  $id_kk = $_SESSION['klinik'];
                  if ($_SESSION['jenis_u']=="JU-06") {
                    $tt = mysqli_num_rows(mysqli_query($con, "SELECT *FROM pembayaran WHERE id_pasien='$p[id_pasien]' AND id_kk='$id_kk' ")); 
                  } 
                  else{
                    $tt = mysqli_num_rows(mysqli_query($con, "SELECT *FROM pembayaran WHERE id_pasien='$p[id_pasien]'")); 
                  }
                  echo $tt; 
                  ?>" readonly>
              </div>
            </div><br>
            <div class="row">
              <div class="col">
                <label>Tanggal Lahir</label>
                <input style="font-weight: bold;" type="text" class="form-control" value="<?php echo $p['tgl_lahir']; ?>" readonly>
              </div>
              <div class="col">
                <label>Jenis Kelamin</label>
                <input style="font-weight: bold;" type="text" class="form-control" value="<?php echo $p['jk']; ?>" readonly>
              </div>
            </div><br>
            <div class="row">
              <div class="col-6">
                <label>Total Kunjungan</label>
                <input style="font-weight: bold;" type="text" class="form-control" value="<?php echo $p['total_kunjungan']; ?>" readonly>
              </div>
            </div>
          </form>
        </div>
        <div class="card-body">
          <h5>Data Pasien</h5><hr>
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>No Faktur</th>
                <th>Produk</th>
                <th>Treatment</th>
                <th>Total</th>
                <th>Pilihan</th>
              </tr>
            </thead>
            <tbody>
              <?php 
                $id_kk = $_SESSION['klinik'];
                if ($_SESSION['jenis_u']=="JU-06") {
                  $qt = mysqli_query($con, "SELECT *FROM pembayaran WHERE id_pasien='$p[id_pasien]' AND id_kk='$id_kk'"); 
                }
                else{
                  $qt = mysqli_query($con, "SELECT *FROM pembayaran WHERE id_pasien='$p[id_pasien]'");
                }
              
                while($t = mysqli_fetch_array($qt)){ ?>
                  <tr>
                    <td><?php echo $t['no_faktur']; ?></td>
                    <td>
                      <?php 
                        $qp = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(jumlah) AS produk FROM history_kasir WHERE no_faktur='$t[no_faktur]' AND jenis='Produk'"));
                        if($qp['produk']==null){
                          echo "-";
                        }
                        else{
                          echo $qp['produk']; 
                        }  
                      ?>
                    </td>
                    <td>
                      <?php
                      $qq = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(jumlah) AS treatment FROM history_kasir WHERE jenis='Treatment' AND no_faktur='$t[no_faktur]'"));
                      if($qq['treatment']==null){
                        echo "-";
                      }
                      else{
                        echo $qq['treatment']; 
                      }
                      ?>
                    </td>
                    <td><?php echo rupiah($t['total']); ?></td>
                    <td>
                      <a href="media.php?module=history_transaksi&act=detail&nofak=<?php echo $t['no_faktur'] ?>" class="btn btn-xs btn-info"><i class="fa fa-list"></i> Detail</a>
                    </td>
                  </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<?php
	break;
	default:
?>

<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h5>Laporan Transaksi</h5>
        </div>
        <div class="card-body">
          <form>
            <div class="row">
              <div class="col-md-6">
                <label>Masukan Nama Pelanggan</label><br>
					      <input id="cari_pel" style="width: 75%;float: left;margin-right: 10px;" class="form-control" type="text" name="nama">
					      <button id="tampilkan" style="margin-top: 3px;" class="btn btn-info btn-sm"><i class="fa fa-search"></i> Cari</button>
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

<script>
  $(document).ready(function(){
    $.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });

    // cari
    $( "#cari_pel" ).autocomplete({
      source: function( request, response ) {
        // Fetch data
        $.ajax({
          url: "modul/lap_transaksi/cari.php",
          type: 'post',
          dataType: "json",
          data: {
          search: request.term
          },
          success: function(data) {
            response(data);
          }
        });
      },
      select: function (event, ui) {
        // Set selection
        $('#cari_pel').val(ui.item.label);
        return false;
      }
    });

    // tampilkan data transaksi
    $("#tampilkan").click(function(){
      var nama = $("#cari_pel").val();
      window.location.href = "media.php?module=lap_transaksi&act=detail&np="+nama;
      });
    //
  });
</script>
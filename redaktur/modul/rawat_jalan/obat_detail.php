
<?php 
  $sql = "SELECT * FROM kasir_sementara WHERE id_pasien = '$_GET[pasien]' AND no_faktur = '$_GET[faktur]' AND jenis = 'Produk' ORDER BY tanggal DESC";

?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<div class="box box-success" id="boxbos">
					<div class="box-header" id="tabone">
						<h1>Data Obat Rawat Jalan</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
					<li class="breadcrumb-item active">Data Obat Rawat Jalan</li>
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
          <div class="callout callout-info">
            <ul>
              <p>Silakan pilih obat yang akan diambil</p>
              <!-- <input type="text" name="" id="cek"> -->
              <!-- <a id="bayar" style="color: white;" href="?module=bayar_obat&faktur=<?php echo $_GET['faktur']; ?>" class="btn btn-sm btn-info collapse">Bayar</a> -->
              <!-- <button id="ambil" class="btn btn-sm btn-info collapse" onclick="printresep()">Ambil Obat</button> -->
              <a id="bayar" style="color: white;" href="" class="btn btn-sm btn-info collapse">Bayar</a>
              <button id="ambil" class="btn btn-sm btn-info collapse">Ambil Obat</button>
			      </ul>
          </div>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Pilih</th>
                <th>Obat</th>
                <th>Jumlah</th>
                <th>Keterangan</th>
                <th>Dokter Pemberi Resep</th>
              </tr>
            </thead>
            <tbody>
              <?php
                $q = mysqli_query($con, $sql);
                while($qu = mysqli_fetch_assoc($q)){
                  echo "<tr>";
                  echo "<td><input type='checkbox' class='chk' data-id='$qu[id]'/></td>";
                  echo "<td>$qu[nama]</td>";
                  echo "<td>$qu[jumlah]</td>";
                  $dokter = mysqli_fetch_assoc(mysqli_query($con, "SELECT nama_lengkap FROM user WHERE id_user='$qu[id_dr]'"));
                  echo "<td>$qu[ket]</td>";
                  echo "<td>$dokter[nama_lengkap]</td>";
                  echo "</tr>";
                }
              ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
  $(document).ready(function(){
    $.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });

    $('#ambil').collapse('show');

    $('body').on('click','#ambil', function () {
      var u = "";
      $(".chk").each(function(a,b){
        if($(this).is(":checked")){
          u += $(this).data("id") + ",";
        }
      });
      var k = u.substring(0,u.length - 1);
      if(k == ""){
        alert("tidak ada data yang dipilih");
      } else {
        $('#bayar').collapse('show');
        $('#bayar').attr('href', '?module=bayar_obat&data=' + k + '&faktur=<?php echo $_GET['faktur']; ?>');
        // $('#cek').val(k);
        $('#ambil').collapse('hide');
        // window.open("modul/rawat_jalan/bayar_obat.php?data=" + k + "&pasien=<?php echo $_GET['pasien']; ?>&faktur=<?php echo $_GET['faktur']; ?>","_BLANK");
      }
    });
  });

  // function printresep(){
  //   var u = "";
  //   $(".chk").each(function(a,b){
  //     if($(this).is(":checked")){
  //       u += $(this).data("id") + ",";
  //     }
  //   });
  //   var k = u.substring(0,u.length - 1);
  //   if(k == ""){
  //     alert("tidak ada data yang dipilih");
  //   } else {
  //     $('#cek').val(k);
  //     // window.open("modul/rawat_jalan/bayar_obat.php?data=" + k + "&pasien=<?php echo $_GET['pasien']; ?>&faktur=<?php echo $_GET['faktur']; ?>","_BLANK");
  //   }
  // }
</script>
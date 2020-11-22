
<?php 
  $sql = "SELECT * FROM kasir_sementara WHERE id_pasien = '$_GET[pasien]' AND no_faktur = '$_GET[faktur]' AND jenis = 'Produk' ORDER BY tanggal DESC";
?>


<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<div class="box box-success" id="boxbos">
					<div class="box-header" id="tabone">
						<h1>Data Obat Rawat Inap</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
					<li class="breadcrumb-item active">Data Obat Rawat Inap</li>
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
              <p>Silakan pilih obat yang akan diserahkan kepada perawat yang bertugas</p>
              <button class="btn btn-sm btn-info" onclick="printresep()">Ambil Obat</button>
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
  function printresep(){
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
      window.open("modul/apotek_inap/resep_obat.php?data=" + k + "&pasien=<?php echo $_GET['pasien']; ?>&faktur=<?php echo $_GET['faktur']; ?>","_BLANK");
    }
  }
</script>
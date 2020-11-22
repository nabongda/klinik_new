<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<div class="box box-success" id="boxbos">
					<div class="box-header" id="tabone">
						<h1>Data Lab Rawat Inap</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
					<li class="breadcrumb-item active">Data Lab Rawat Inap</li>
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
            <form>
              <div class="form-row align-items-center">
                <div class="col-auto col-md-4">
                  <label class="sr-only" for="tgl1">Dari Tanggal</label>
                  <input type="date" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask class="form-control mb-2" id="tgl1" placeholder="Dari Tanggal" autocomplete="off">
                </div>
                <div class="col-auto col-md-4">
                  <label class="sr-only" for="tgl2">Sampai Tanggal</label>
                  <input type="date" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask class="form-control mb-2" id="tgl2" placeholder="Sampai Tanggal" autocomplete="off">
                </div>
                <div class="col-auto col-md-4">
                  <button type="button" onclick="cari()" class="btn btn-info mb-2">Cari</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="card-body">
          <h5>Data Pemeriksaan Lab untuk Pasien Rawat Inap</h5><hr>
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Aksi</th>
                <th>Tgl Pendaftaran</th>
                <th>No Faktur</th>
                <th>Id Pasien</th>
                <th>Nama Pasien</th>
                <th>Dokter Pemeriksa</th>
              </tr>
            </thead>
            <tbody>
              <?php
                $date_now = date("Y-m-d");
                //cari range expired
                $skrg = date("d");
                if($skrg <= 24){
                  $now = date("Y-m-24");
                  $last = date("Y-m",strtotime("-1 month"))."-25";
                } 
                else {
                  $last = date("Y-m-25");
                  $now = date("Y-m",strtotime("+1 month"))."-24";
                }

                //hari perawat login
                $hari = date("N",strtotime($date_now));
              
                //cari id_dr
                $nrs = mysqli_fetch_assoc(mysqli_query($con, "SELECT id_dr FROM dr_praktek a JOIN nurse b ON a.id_drpraktek = b.drpraktek
                WHERE b.perawat = '$_SESSION[id_user]'  AND a.hari = '$hari' AND a.expired >= '$last' AND a.expired <= '$now'"));
                $id_dr = $nrs['id_dr'];

                $nurse = ($_SESSION['jenis_u'] == "JU-08")? "id_dr IS NOT NULL" : "id_dr = '$id_dr'";

                $tgl = isset($_GET['tgl1'])? "WHERE tanggal_pendaftaran >= '$_GET[tgl1]' AND tanggal_pendaftaran <= '$_GET[tgl2]' AND $nurse" : "WHERE $nurse";
                $ob = mysqli_query($con, "SELECT * FROM perawatan_pasien $tgl");
                while($obat = mysqli_fetch_assoc($ob)){
                  $dr = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM user WHERE id_user = $obat[id_dr]"));
                  $pas = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM pasien WHERE id_pasien = '$obat[id_pasien]'"));
                  echo "<tr>";
                  //perawat
                  echo "<td><a href='modul/lab_inap/lab_print.php?pasien=$obat[id_pasien]&faktur=$obat[no_faktur]'  target='_BLANK'><button class='btn btn-sm btn-info'>Print Notice Lab</button></a></td>";
                  echo "<td>$obat[tanggal_pendaftaran]</td>";
                  echo "<td>$obat[no_faktur]</td>";
                  echo "<td>$obat[id_pasien]</td>";
                  echo "<td>$pas[nama_pasien]</td>";
                  echo "<td>$dr[nama_lengkap]</td>";
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
  function cari(){
    var a = $("#tgl1").val();
    var b = $("#tgl2").val();
    location.href = "?module=apotek_inap&tgl1=" + a + "&tgl2=" + b;
  }
</script>
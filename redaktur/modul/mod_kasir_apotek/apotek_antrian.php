<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<div class="box box-success" id="boxbos">
					<div class="box-header" id="tabone">
						<h1>Data Pendaftaran Apotek</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
					<li class="breadcrumb-item active">Data Pendaftaran Apotek</li>
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
          <h5>Data Antrian Apotek</h5>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Tanggal</th>
                <th>No Faktur</th>
                <th>Nama Pasien</th>
                <th class="nosort">Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php 
                $today = DATE('Y-m-d');
                $j = mysqli_query($con,"SELECT * FROM antrian_pasien WHERE jenis_layanan = 'apotek' ORDER BY tanggal_pendaftaran ASC");
                while($ji = mysqli_fetch_assoc($j)){
                  $pas = mysqli_fetch_assoc(mysqli_query($con,"SELECT nama_pasien FROM pasien WHERE id_pasien = '$ji[id_pasien]'"));
                  $aksi = is_null($ji['status'])? "<a href='?module=resep&faktur=$ji[no_faktur]'><button class='btn btn-sm btn-info'>Tambah Obat</button></a>" : "<span class='label label-success'> Lunas</span>";
                  echo "<tr>";
                  echo "<td>".strftime("%d %B %Y",strtotime($ji['tanggal_pendaftaran']))."</td>";
                  echo "<td>$ji[no_faktur]</td>";
                  echo "<td>$pas[nama_pasien]</td>";
                  echo "<td>$aksi</td>";
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
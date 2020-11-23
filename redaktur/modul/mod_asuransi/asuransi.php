<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Pasien dan Asuransi</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Pasien dan Asuransi</li>
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
          <?php
            if ($_SESSION['jenis_u']=="JU-01") {
          ?>
          <div class="row">
            <div class="col-md-12">
              <div class="col-md-12"><a href="#" class="btn btn-primary">Tambah Data Asuransi</a>
              </div>
            </div>
          </div>
          <?php } ?>
          <h5>Data Jenis Pasien</h5>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped ">
            <thead>
              <tr>
                <th>Nama</th>
              </tr>
              <tr>
                <th>Umum</th>
              </tr>
              <tr>
                <th>BPJS</th>
              </tr>
              <tr>
                <th>Asuransi Lain</th>
              </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div><hr>
        <div class="card-header">
          <h5>Data Asuransi</h5>
        </div>
        <div class="card-body">
          <table id="example3" class="table table-bordered table-striped ">
            <thead>
              <tr>
                <th>Nama</th>
              </tr>
            </thead>
            <tbody>
              <?php
                $j = mysqli_query($con, "SELECT * FROM asuransi");
                while($jo = mysqli_fetch_assoc($j)){ ?>
                  <tr>
                    <td><?php echo $jo['nama'];?></td>
                  </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>
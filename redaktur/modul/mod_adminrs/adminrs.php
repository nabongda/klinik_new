<script src="plugins/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Biaya Administrasi Rumah Sakit</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Biaya</li>
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
        <?php
          if ($_SESSION['jenis_u']=="JU-01") {
        ?>
        <div class="card-header">
          <div class="row">
            <div class="col-md-12">
              <div class="col-md-12"><button type="button" class="btn btn-primary" data-toggle="modal"
                  data-target="#modal-default" onclick="setdata(0)">Tambah Data</button></div>
            </div>
          </div>
        </div>
        <?php } ?>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Nama</th>
                <th>Tarif</th>
                <?php
                  if ($_SESSION['jenis_u']=="JU-01") {
                ?>
                <th class="nosort">Aksi</th>
                <?php } ?>
              </tr>
            </thead>
            <tbody>
              <?php
              $j = mysqli_query($con, "SELECT * FROM biaya_administrasi");
              while($jo = mysqli_fetch_assoc($j)){ ?>
              <tr>
                <td><?php echo $jo['nama']; ?></td>
                <td>Rp <?php echo number_format($jo['biaya']);?></td>
                <?php if ($_SESSION['jenis_u']=="JU-01") { ?>
                <td>
                  <a href="#" class="btn-sm btn-warning" data-toggle="modal" data-target="#modal-default" onclick="setdata(this.id)" id="<?php echo $jo['id']; ?>">
                    Edit
                  </a>&nbsp;
                  <a href="#" class="hapus btn-sm btn-danger" id="<?php echo $jo['id']; ?>">
                    Hapus
                  </a>
                </td>
                <?php } ?>
              </tr>
              <?php } ?>
            </tbody>
            <!-- Modals Tambah -->
            <div class="modal fade" role="dialog" id="modal-default">
              <div class="modal-dialog modal-xs" role="document">
                <div class="modal-content">
                  <form class="form-horizontal" role="form" method="POST" id="frm">
                    <input type="hidden" name="id" id="dataid">  
                    <div class="modal-header">
                      <h5 class="modal-title">Data Biaya Administrasi RS</h5>
                    </div>
                    <div class="modal-body">
                      <div class="form-group row">
                        <div class="col-sm-4">
                          <label>Nama</label>
                        </div>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" name="nama" id="nama">
                        </div>
                      </div>
                      <div class="form-group row">
                        <div class="col-sm-4">
                          <label>Tarif</label>
                        </div>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" name="biaya" id="biaya">
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>

            <script>
              function setdata(id){
                $("#frm")[0].reset();
                if(id == 0){
                  $("#frm").attr("action","modul/mod_adminrs/aksi.php?act=input");
                } else {
                  $("#frm").attr("action","modul/mod_adminrs/aksi.php?act=edit");
                  $("#dataid").val(id);
                  $.ajax({
                    url: "modul/mod_adminrs/data.php?id=" + id,
                    dataType: "JSON",
                    success: function(data){
                        $("#nama").val(data.nama);
                        $("#biaya").val(data.biaya);
                    }
                  });
                }
              }
            </script>

            <!-- SweetAlert Hapus -->
            <script>
            $('.hapus').click(function () {
                var id_b = $(this).attr('id');
                  Swal.fire({
                    title: 'Kamu Yakin?',
                    text: "Kamu akan hapus data selamanya!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Delete !'
                  })
                  .then((result)=>{
                    console.log(result);
                    if (result.value){
                      window.location = "modul/mod_adminrs/aksi.php?act=del&id="+id_b+"";
                    }
                  })
                });
            </script>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>
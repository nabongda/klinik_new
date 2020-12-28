<script src="plugins/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<?php 
$act = $_GET['act'];
switch ($act) {
  case 'lapor':
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Pengiriman yang Tidak Sesuai</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Pengiriman</li>
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
                <th>Tanggal Pengiriman</th>
                <th>Nama Obat</th>
                <th>Jumlah Obat</th>
                <th>Keterangan</th>
                <th class="nosort">Pilihan</th>
              </tr>
            </thead>
            <tbody>
              <?php 
              $q1 = mysqli_query($con,"SELECT * FROM history_kirim_stok WHERE status='tolak' ORDER BY tgl_kirim DESC");
              while($pp = mysqli_fetch_array($q1)){ ?>
                <tr>
                  <td><?php echo $pp["tgl_kirim"]; ?></td>
                  <td><?php echo $pp["nama_brg"]; ?></td>
                  <td><?php echo $pp["jumlah"]; ?></td>
                  <td><?php echo $pp["pesan"]; ?></td>
                  <td>
                  <a href="#editmodal" id="custId" data-toggle="modal" data-id="<?php echo $pp['id']?>" class="btn-xs btn-warning"><i
                      class="fa fa-edit"> Kirim Ulang</i></a>
                  </td>
                </tr>
              <?php } ?>
            </tbody>

            <div class="modal fade" id="editmodal" role="dialog">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title"> Kirim Ulang Obat</h5>
                  </div>
                  <div class="fetched-data"></div>
                </div>
              </div>
            </div>
            <script type="text/javascript">
              $(document).ready(function () {
                $('#editmodal').on('show.bs.modal', function (e) {
                  var id = $(e.relatedTarget).data('id');
                  //menggunakan fungsi ajax untuk pengambilan data
                  $.ajax({
                    type: 'post',
                    url: 'modul/pengiriman/edit.php',
                    data: 'id=' + id,
                    success: function (data) {
                      $('.fetched-data').html(data);//menampilkan data ke dalam modal
                    }
                  });
                });
              });
            </script>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<?php
  break;
}
?>
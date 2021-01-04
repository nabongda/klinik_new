<script src="plugins/jquery/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<?php
  switch($_GET['act']){
  default:
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Pengiriman Stok</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Pengiriman Stok</li>
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
          <div class="row">
            <div class="col-md-12">
              <div class="col-md-12"><a href="?module=pengiriman_stok&act=tambah_produk" class="btn btn-primary">Tambah Data
                  Pengiriman</a>
              </div>
            </div>
          </div>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>No</th>
                <th>No Pengiriman</th>
                <th>Tanggal Pengiriman</th>
                <th>Keterangan</th>
                <th class="nosort">Aksi</th>
              </tr>
            </thead>
            <tbody>
            <?php
                $tampil     = mysqli_query($con, "SELECT * FROM kirim_stok");
                $no = 1;
                while($data = mysqli_fetch_array($tampil)){
              ?>
              <tr>
                <td><?php echo $no++?></td>
                <td><?php echo $data['no_peng']; ?></td>
                <td><?php echo $data['tgl_kirim']; ?></td>
                <td><?php echo $data['ket']?></td>
                <td>
                  <a href="#detail" id="custId" data-toggle="modal" data-id="<?php echo $data['id']?>" class="btn-xs btn-success"><i
                      class="fa fa-eye"> Detail</i></a>
                  <a href="#editmodal" id="custId" data-toggle="modal" data-id="<?php echo $data['id']?>" class="btn-xs btn-warning"><i
                      class="fa fa-edit"> Edit</i></a>
                  <a href="#" no-peng="<?php echo $data['no_peng']?>" class="hapus btn-xs btn-danger"><i class="fa fa-trash"> Hapus</i></a>
                </td>
              </tr>
              <?php } ?>
            </tbody>
            <!-- Modals Detail Barang -->
            <div class="modal fade" id="detail" role="dialog">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="fetched-data"></div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Keluar</button>
                  </div>
                </div>
              </div>
            </div>
            <script type="text/javascript">
              $(document).ready(function () {
                $('#detail').on('show.bs.modal', function (e) {
                  var id = $(e.relatedTarget).data('id');
                  //menggunakan fungsi ajax untuk pengambilan data
                  $.ajax({
                    type: 'post',
                    url: 'modul/pengiriman_stok/detail.php',
                    data: 'id=' + id,
                    success: function (data) {
                      $('.fetched-data').html(data);//menampilkan data ke dalam modal
                    }
                  });
                });
              });
            </script>
            <!-- Modals Edit Transaksi -->
            <div class="modal fade" id="editmodal" role="dialog">
              <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title"> Edit Transaksi</h5>
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
                    url: 'modul/pengiriman_stok/edit.php',
                    data: 'id=' + id,
                    success: function (data) {
                      $('.fetched-data').html(data);//menampilkan data ke dalam modal
                    }
                  });
                });
              });
            </script>

            <!-- SweetAlert Hapus -->
            <script>
              $('body').on('click','.hapus',function (event) {
                event.preventDefault();
                  var no_peng = $(this).attr('no-peng');
                  Swal.fire({
                    title: 'Yakin Ingin Menghapus Data?',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Delete !'
                  })
                  .then((result) => {
                    console.log(result);
                  if (result.value) {
                    window.location = "modul/pengiriman_stok/aksi_pengiriman_stok.php?module=pengiriman_stok&act=hapus&no_peng="+no_peng+"";
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

<?php
  break;
  case "tambah_produk":

    $query = mysqli_query($con, "SELECT max(no_peng) as kodemax FROM kirim_stok");
    $data = mysqli_fetch_array($query);
    $no_peng = $data['kodemax'];

    $urutan = (int) substr($no_peng, 5, 5);
  
    $urutan++;

    $huruf = "PS-";
    $no_peng = $huruf . sprintf("%05s", $urutan);
?>

<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Pengiriman Stok</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Tambah Pengiriman Stok</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
              <h3 class="card-title">Silahkan pilih produk yang akan dikirim</h3>
          </div>
          <form role="form" id="form_t">
            <?php 
            $tgl_kirim = date('Y-m-d');
            ?>
            <input class="form-control" type="hidden" name="id_ps" value="<?php echo $id_ps ?>">
            <div class="card-body">
              <div class="form-row">
                <div class="form-group col-md-2">
                  <label>Nama Obat </label>
                  <input type="text" class="form-control" name="nama_brg" id="nama_barang" placeholder="Nama Obat" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Kode Barang </label>
                  <input type="text" class="form-control" name="kd_brg" id="kd_brg" placeholder="Kode Obat" required>
                </div>
                <div class="col-md-2">
                  <label>Satuan</label>
                  <select class="form-control select2" name="id_satuan" id="id_satuan" style="width: 100%;" readonly>
                    <option value="">Satuan</option>
                    <?php $query = mysqli_query($con, "SELECT * FROM data_satuan");
                      while ($cb = mysqli_fetch_array($query)) { ?>
                      <option value="<?php echo $cb['id_s']; ?>"><?php echo $cb['satuan']; ?></option>
                    <?php  } ?> 
                  </select>
                </div>
                <div class="col-md-2">
                  <label>Kategori</label>
                  <select class="form-control select2" name="id_kategori" id="id_kategori" style="width: 100%;" readonly>
                    <option value="">Kategori</option>
                      <?php $query = mysqli_query($con, "SELECT *FROM kategori");
                        while ($cb = mysqli_fetch_array($query)) { ?>
                        <option value="<?php echo $cb['id_kategori']; ?>"><?php echo $cb['kategori']; ?></option>
                      <?php  } ?> 
                  </select>
                </div>
                <div class="form-group col-md-2">
                  <label>Jumlah </label>
                  <input type="number" class="form-control" name="jumlah" id="jumlah" placeholder="Jumlah" required>
                  <small id="jml" class="collapse" style="color: red;"></small>
                </div>
                <div class="form-group col-md-2">
                  <label>Harga </label>
                  <input type="text" class="form-control" name="hrg" id="hrg" placeholder="Harga" required>
                  <input class="form-control" type="hidden" name="harga_jual" id="harga_jual" required>
                  <input class="form-control" type="hidden" name="tgl_kirim" value="<?php echo $tgl_kirim?>">
                  <input class="form-control" type="hidden" name="batas_cabang" id="batas_cabang" value="100" required>
                  <input class="form-control" type="hidden" name="batas_minim" id="batas_minim" value="10" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Tanggal Produksi </label>
                  <input type="date" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask name="tgl_produksi" id="tgl_produksi" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Tanggal Expired </label>
                  <input type="date" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask name="tgl_expired" id="tgl_expired" required>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-12">
                  <button type="button" class="btn-sm btn-danger" id="reset_form" onclick="this.form.reset();">Reset Form</button>
                  <button type="submit" class="btn-sm btn-success">Tambah</button>
                </div>
              </div>
            </div>
          </form>

          <div class="card-body">
            <table id="barang11" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Kode Barang</th>
                  <th>Nama Barang</th>
                  <th>Jumlah</th>
                  <th>Harga</th>
                  <th>Tanggal Produksi</th>
                  <th>Tanggal Expired</th>
                  <th class="nosort">Aksi</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
              <div class="modal fade" role="dialog" id="modal-default">
                <div class="modal-dialog modal-xs" role="document">
                  <div class="modal-content">
                    <form class="form-horizontal" role="form" method="POST" id="frm">
                      <input type="hidden" name="id" id="dataid">  
                      <div class="modal-header">
                        <h5 class="modal-title">Edit Stok Barang</h5>
                      </div>
                      <div class="modal-body">
                        <div class="form-group row">
                          <div class="col-sm-4">
                            <label>Jumlah</label>
                          </div>
                          <div class="col-sm-8">
                            <input type="text" class="form-control" name="jumlah" id="jumlah">
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
            </table>
          </div>

          <form class="form-horizontal" method="POST" action="modul/pengiriman_stok/input_pengiriman.php">
            <div class="card-body">
              <div class="form-group row">
                <div class="col-sm-2">
                  <label>No Pengiriman </label>
                </div>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="no_peng" value="<?php echo $no_peng; ?>" readonly>
                  <input type="hidden" name="id_ju" value="<?php echo $_SESSION['jenis_u']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-2">
                  <label>Tanggal Pengiriman </label>
                </div>
                <div class="col-sm-4">
                  <input type="date" class="form-control" name="tgl_pengiriman" value="<?php echo date('Y-m-d') ?>" data-inputmask-alias="datetime"
                        data-inputmask-inputformat="mm/dd/yyyy" data-mask required>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-2">
                  <label>Keterangan </label>
                </div>
                <div class="col-sm-4">
                  <textarea class="form-control" name="ket" rows="3" required></textarea>
                </div>
              </div>
              <div class="form-group col-md-2">
                <button type="submit" class="btn btn-success">Simpan</button>
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

  // Tambah Input Barang Tunai
  $('#form_t').on('submit', function (e) {
    e.preventDefault();
    $('#jml').collapse('hide');
    $.ajax({
      type: 'post',
      url: 'modul/pengiriman_stok/input_data.php',
      data: $('#form_t').serialize(),
      success: function (data) {
        var oTable = $('#barang11').dataTable();
        oTable.fnDraw(false);
        $('#form_t').trigger("reset");
        total();
      }
    });
  });

  // Reset Form
  $('body').on('click','#reset_form', function () {
    $('#jml').collapse('hide');
  });

  // auto complete
  $( "#nama_barang" ).autocomplete({
    source: function( request, response ) {
      // Fetch data
      $.ajax({
      url: "modul/pengiriman_stok/cari.php",
      type: 'post',
      dataType: "json",
      data: {
        search: request.term
      },
      success: function( data ) {
        response( data );
      }
      });
    },
    select: function (event, ui) {
      // Set selection
      $('#kd_brg').val(ui.item.kd_produk);
      $('#nama_barang').val(ui.item.label);
      $('#jml').collapse('show');
      $('#jml').html("Jumlah Stok di Gudang: <b>"+ui.item.jml+"</b>");
      $('#id_satuan').val(ui.item.id_satuan);
      $('#id_kategori').val(ui.item.id_kategori);
      $('#hrg').val(ui.item.harga_beli);
      $('#harga_jual').val(ui.item.harga_jual);
      $('#tgl_produksi').val(ui.item.tgl_produksi);
      $('#tgl_expired').val(ui.item.tgl_expired);
      return false;
    }
  });

  // Datatable
  $('#barang11').dataTable( {
    "bProcessing": true,
    "bServerSide": true,
    "responsive": true,
    "autoWidth": false,
    "sAjaxSource": "modul/pengiriman_stok/data_barang.php",
    "aoColumnDefs": [{ "bVisible": false, "aTargets": [0] }],
    "aoColumns": [
      null,
      null,
      null,
      null,
      null,
      null,
      null,
      {
      "mData": "0",
      "mRender": function ( data, type, full ) {
        return '<button id="hapus_brg" data-id="'+data+'" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Remove</button>';
        }
      }
    ]
  });

  // Edit Barang Tunai
  $('body').on('click','#edit_brg', function () {
    $("#modal_pembelian_t").modal("show");
    var kode_b = $(this).closest('tr').find('td').html();
    $("#kd_brg").val(kode_b);
  });

  // Reset table input barang
  $("#reset_brg").click(function(){
    $.ajax({
      url: 'modul/pengiriman_stok/reset_brg.php',
      success:function(){
        alert("Tabel Berhasil Direset");
        var oTable = $('#barang11').dataTable(); 
        oTable.fnDraw(false);
      }
    });
  });

  // Hapus Barang
  $('body').on('click', '#hapus_brg', function (event) {
    event.preventDefault();
    var id_ps = $(this).data("id");
    var token = $("meta[name='csrf-token']").attr("content");
    Swal.fire({
      title: 'Delete',
      text: "Yakin ingin menghapus data?",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Hapus'
      })
      .then((result) => {
        console.log(result);
        if (result.value) {
          $.ajax({
            url: "modul/pengiriman_stok/hapus_brg.php",
            type: "POST",
            data: {
              "id_ps": id_ps,
              "_token": token,
            },
            success: function (response) {
              var oTable = $('#barang11').dataTable(); 
              oTable.fnDraw(false);
              total();
              Swal.fire({
                icon: 'success',
                title: 'Berhasil!',
                text: 'Data berhasil dihapus!'
              });
            },
            error: function (xhr) {
              Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Terjadi kesalahan!'
              });
            }
          });
        }
      })
  });

  // function total
  function total(){
    $.ajax({
      url : "modul/pengiriman_stok/total.php",
      success: function(data){
        var obj = JSON.parse(data);
        var t = "Total: "+obj.rupiah;
        $("#total").html(t);
        $("#tot").val(obj.total);
      }
    })
  }

  // total
  window.onload=total();
});
</script>

<script type="text/javascript">
  $(document).ready(function(){
    $('#detail').on('show.bs.modal', function (e) {
      var rowid = $(e.relatedTarget).data('id');
      //menggunakan fungsi ajax untuk pengambilan data
      $.ajax({
        type : 'post',
        url : 'detail.php',
        data :  'rowid='+ rowid,
        success : function(data){
        $('.fetched-data').html(data);//menampilkan data ke dalam modal
        }
      });
    });
  });
</script>
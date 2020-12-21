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
        <h1>Data Pembelian Kredit</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Pembelian Kredit</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <div class="row">
            <div class="col-md-12">
              <div class="col-md-12"><a href="?module=pembelian_k&act=tambah_produk" class="btn btn-primary">
                Tambah Pembelian Kredit</a>
              </div>
            </div>
          </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>No</th>
                <th>No Faktur</th>
                <th>Tanggal Pembelian</th>
                <th>Supplier</th>
                <th>Total</th>
                <th>Tanggal Tempo</th>
                <th class="nosort">Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php
                $tampil     = mysqli_query($con, "Select * From beli_k");
                $no = 1;
                while($data = mysqli_fetch_array($tampil)){
              ?>
              <tr>
                <td><?php echo $no++?></td>
                <td><?php echo $data['no_fak']; ?></td>
                <td><?php echo $data['tgl_beli']; ?></td>
                <?php $q1 = mysqli_query($con, "SELECT *FROM suplier WHERE id_sup='$data[id_sup]'"); 
                    $k = mysqli_fetch_array($q1); ?>
                <td><?php echo $k['nama_sup']; ?></td>
                <td><?php echo rupiah($data['total']); ?></td>
                <td><?php echo $data['tgl_tempo']; ?></td>
                <td>
                  <a href="#detail" id="custId" class="btn-xs btn-success" data-toggle="modal" data-id="<?php echo $data['id']?>"><i class="fa fa-eye"> Detail</i></a>
                  <a href="#editmodal" id="custId" class="btn-xs btn-warning" data-toggle="modal" data-id="<?php echo $data['id']?>"><i class="fa fa-edit"> Edit</i></a>
                  <a href="#delete" no-fak="<?php echo $data['no_fak']; ?>" class="hapus btn-xs btn-danger"><i class="fa fa-trash"> Hapus</i></a>
                </td>
              </tr>
              <?php } ?>
            </tbody>
            <!-- Modals Detail -->
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
                    url: 'modul/pembelian_k/detail.php',
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
                    url: 'modul/pembelian_k/edit.php',
                    data: 'id=' + id,
                    success: function (data) {
                      $('.fetched-data').html(data);//menampilkan data ke dalam modal
                    }
                  });
                });
              });
            </script>

            <!-- Modals Edit Barang -->
            <div class="modal fade" id="">
              <div class="modal-dialog">
                <div class="modal-content" style="width: 100%;">
                  <div class="modal-header">
                    <h5 class="modal-title"> Edit Barang</h5>
                  </div>
                  <form class="form-horizontal" role="form" method="POST" action="modul/pembelian_k/edit.php">
                    <?php
                    $id = $data['id']; 
                    $query_edit = mysqli_query($con, "SELECT * FROM beli WHERE id='$id'");
                    //$result = mysqli_query($conn, $query);
                    while ($row = mysqli_fetch_array($query_edit)) {  
                    ?>
                    <div class="form-group">
                      <label>Nomor Faktur</label>
                      <input  class="form-control" type="text" name="no_fak" value="<?php echo $row['id'];?>" >
                      <input  class="form-control" type="text" name="no_fak" value="<?php echo $row['no_fak'];?>" >
                    </div>
                    <div class="form-group">
                      <label>Tanggal Beli</label>
                      <input class="form-control"  type="date" name="tgl_beli" value="<?php echo $row['tgl_beli'];?>">
                    </div>
                    <div class="form-group">
                      <label>Total</label>
                      <input class="form-control"  type="text" name="total" value="<?php echo $row['total'];?>" readonly>
                    </div>
                    <div class="form-group">
                      <label>Suplier</label>
                      <select type="text" name="id_sup" name="id_sup" class="form-control" >
                        <option value="<?php echo $row['id_sup'];?>"><?php echo $row['id_sup'];?></option>
                          <?php $query = mysqli_query($con, "SELECT *FROM suplier");
                            while ($cb = mysqli_fetch_array($query)) { ?>
                            <option value="<?php echo $cb['id_sup']; ?>"><?php echo $cb['nama_sup']; ?></option>
                          <?php  } ?> 
                        </select>
                    </div>
                    <div class="form-group">
                      <label>Pembayaran</label>
                      <select>
                        <option value="<?php echo $row['pembayaran'];?>"></option>
                        <option value="Transfer">Transfer</option>
                        <option value="Tunai">Tunai</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Keterangan</label>
                      <input value="<?php echo $row['ket'];?>" class="form-control"  type="text" name="ket">
                    </div>
                    <?php }?>
                    <div class="modal-footer">
                      <button class="btn btn-default" data-dismiss="modal">Close</button>
                      <button type="button" type="submit" class="btn btn-primary pull-left">Simpan</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>

            <!-- SweetAlert Hapus -->
            <script>
                $('.hapus').click(function () {
                  var no_fak = $(this).attr('no-fak');
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
                    window.location = "modul/pembelian_k/aksi_pembelian_k.php?module=pembelian_k&act=hapus&no_fak="+no_fak+"";
                  }
                  })
                });
            </script>
          </table>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
</section>

<?php
  break;
  case "tambah_produk":
?>

<!-- Content Header (Page header) -->
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Pembelian Kredit</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Tambah Pembelian Kredit</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <!-- left column -->
      <div class="col-md-12">
        <!-- general form elements -->
        <div class="card card-primary">
          <div class="card-header">
              <h3 class="card-title">Silahkan pilih produk yang akan dibeli</h3>
          </div>
          <!-- form start -->
          <form role="form" id="form_kk">
            <?php 
              $tgl_beli = date('Y-m-d');
            ?>
            <input class="form-control" type="hidden" name="id_k" value="<?php echo $id_k ?>">
            <div class="card-body">
              <div class="form-row">
                <div class="form-group col-md-2">
                  <label>Nama Barang </label>
                  <input type="text" class="form-control" name="nama_brg" id="nama_barang" placeholder="Nama Barang" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Kode Barang </label>
                  <input type="text" class="form-control" name="kd_brg" id="kd_brg" placeholder="Kode Barang" required>
                </div>
                <div class="col-md-2">
                  <label>Satuan</label>
                  <select class="form-control select2" name="id_satuan" id="id_satuan" style="width: 100%;">
                    <option value="">Satuan</option>
                    <?php $query = mysqli_query($con, "SELECT *FROM data_satuan");
                      while ($cb = mysqli_fetch_array($query)) { ?>
                      <option value="<?php echo $cb['id_s']; ?>"><?php echo $cb['satuan']; ?></option>
                    <?php  } ?> 
                  </select>
                </div>
                <div class="col-md-2">
                  <label>Kategori</label>
                  <select class="form-control select2" name="id_kategori" id="id_kategori" style="width: 100%;" placeholder="Nama Produk">
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
                </div>
                <div class="form-group col-md-2">
                  <label>Harga </label>
                  <input type="text" class="form-control" name="hrg" id="hrg" placeholder="Harga" required>
                  <input class="form-control" type="hidden" name="harga_jual" id="harga_jual" required>
                  <input class="form-control" type="hidden" name="tgl_beli" value="<?php echo $tgl_beli?>">
                </div>
                <div class="form-group col-md-2">
                  <label>Diskon </label>
                  <input type="number" class="form-control" name="diskon" id="diskon" placeholder="Diskon" value="0">
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
                  <button type="button" class="btn-sm btn-danger" onclick="this.form.reset();">Reset Form</button>
                  <button type="submit" class="btn-sm btn-success">Tambah</button>
                </div>
              </div>
            </div>
          </form>

          <div class="card-body">
            <table id="barang12" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Kode Barang</th>
                  <th>Nama Barang</th>
                  <th>Jumlah</th>
                  <th>Harga</th>
                  <th>Diskon</th>
                  <th>Tanggal Produksi</th>
                  <th>Tanggal Expired</th>
                  <th>Sub Total</th>
                  <th class="nosort">Aksi</th>
                </tr>
              </thead>
              <tbody>
                <?php
                  $tampil     = mysqli_query($con, "Select * From pembelian_k");
                  $no = 1;
                  while($data = mysqli_fetch_array($tampil)){
                ?>
                <tr>
                  <td><?php echo $no++?></td>
                  <td><?php echo $data['kd_brg']; ?></td>
                  <td><?php echo $data['nama_brg']; ?></td>
                  <td><?php echo $data['harga']; ?></td>
                  <td><?php echo $data['jumlah']; ?></td>
                  <td><?php echo $data['diskon']; ?></td>
                  <td><?php echo $data['tgl_produksi']; ?></td>
                  <td><?php echo $data['tgl_expired']; ?></td>
                  <td><?php echo $data['sub_tot']; ?></td>
                </tr>
                <?php } ?>
              </tbody>
              <tr>
                <th colspan="9" style="text-align: right;" id="total">Total</th>
              </tr>
            </table>
          </div>

          <form class="form-horizontal" method="POST" action="modul/pembelian_k/input_transaksi.php">
            <!-- <?php
              $selectidmax  = mysqli_query($con, "SELECT From beli_k");
              $nofakmax = array();
              while($no       = mysqli_fetch_array($selectidmax)){
                  $ambil      = intval(substr($no['no_fak'], 4));
                  $nofakmax[] = $ambil;
              }
              $nmax = max($nofakmax);
              $nmax++;
              // $kode = "FAK-".$nmak;
            ?> -->
            <div class="card-body">
              <div class="form-group row">
                <div class="col-sm-2">
                  <label for="inputNoFaktur">No Faktur </label>
                </div>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="no_fak" value="<?php echo $kode; ?>" autocomplete="off" required>
                  <input type="hidden" name="total" id="tot">
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-2">
                  <label for="inputTglBeli2">Tanggal Pembelian </label>
                </div>
                <div class="col-sm-4">
                  <input type="date" class="form-control" name="tgl_beli" value="<?php echo date('Y-m-d') ?>" data-inputmask-alias="datetime"
                        data-inputmask-inputformat="mm/dd/yyyy" data-mask required>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-2">
                  <label for="inputSuplier">Suplier </label>
                </div>
                <div class="col-sm-4">
                  <select class="form-control select2" name="id_sup" name="id_sup" style="width: 100%;" required>
                    <option value="">--- Pilih Suplier ---</option>
                      <?php $query = mysqli_query($con, "SELECT *FROM suplier");
                        while ($cb = mysqli_fetch_array($query)) { ?>
                        <option value="<?php echo $cb['id_sup']; ?>"><?php echo $cb['nama_sup']; ?></option>
                      <?php  } ?>
                  </select>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-2">
                  <label for="inputTglTempo">Tanggal Tempo </label>
                </div>
                <div class="col-sm-4">
                  <input type="date" class="form-control" name="tgl_tempo" data-inputmask-alias="datetime"
                        data-inputmask-inputformat="mm/dd/yyyy" data-mask required>
                </div>
              </div>
              <div class="form-group col-md-2">
                <button type="submit" class="btn btn-success">Simpan Transaksi</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /.content -->

<div class="modal fade modalEditBarangKer" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-xs" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h5 class="modal-title"> Edit Barang</h5>
      </div>
      <div class="modal-body">
        <form role="form" id="edit_brg">
          <div class="form-group">
            <label>Kode Barang</label>
            <input id="kd_brg" class="form-control" type="text" name="kd_brg" >
          </div>
          <div class="form-group">
            <label>Nama Barang</label>
            <input id="nama_brg" class="form-control"  type="text" name="nama_brg">
          </div>
          <div class="form-group">
            <label>Satuan</label>
            <input id="satuan" class="form-control" type="text" name="satuan">
          </div>
          <div class="form-group">
            <label>Kategori</label>
            <input id="kategori" class="form-control"type="text" name="kategori">
          </div>
          <div class="form-group">
            <label>Jumlah</label>
            <input id="jumlah" class="form-control" type="number" name="jumlah">
          </div>
          <div class="form-group">
            <label>Harga</label>
            <input id="hrg" class="form-control" type="text" name="hrg">
          </div>
          <div class="form-group">
            <label>Diskon</label>
            <input id="diskon" class="form-control" type="text" name="diskon">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button class="btn btn-default" id="panggil-m">Batal</button>
        <button type="button" type="submit" class="btn btn-primary pull-left" data-dismiss="modal">Simpan</button>
      </div>
    </div>
  </div>
</div>

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

  // Tambah Input Barang Kredit
  $('#form_kk').on('submit', function (e) {
    e.preventDefault();
    $.ajax({
      type: 'post',
      url: 'modul/pembelian_k/input_data.php',
      data: $('#form_kk').serialize(),
      success: function (data) {
        var oTable = $('#barang12').dataTable(); 
        oTable.fnDraw(false);
        $('#form_kk').trigger("reset");
        total();
      }
    });
  });
    
  $( "#nama_barang" ).autocomplete({
    source: function( request, response ) {
      // Fetch data
      $.ajax({
      url: "modul/pembelian_k/cari.php",
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
      $('#id_satuan').val(ui.item.id_satuan);
      $('#id_kategori').val(ui.item.id_kategori);
      $('#hrg').val(ui.item.harga_beli);
      $('#harga_jual').val(ui.item.harga_jual);
      $('#tgl_produksi').val(ui.item.tgl_produksi);
      $('#tgl_expired').val(ui.item.tgl_expired);
      return false;
    }
  });

  // Datatable barang Kredit
  $('#barang12').dataTable( {
    "bProcessing": true,
    "bServerSide": true,
    "responsive": true,
    "autoWidth": false,
    "sAjaxSource": "modul/pembelian_k/data_barangk.php",
    "aoColumnDefs": [{ "bVisible": false, "aTargets": [0] }],
    "aoColumns": [
      null,
      null,
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
        return '<button id="hapus_brgk" data-id="'+data+'" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Remove</button>';
        }
      }
    ]
  });
    
  // Edit Barang Kredit
  $('body').on('click','#edit_brg', function () {
    $("#modal_pembelian_k").modal("show");
    var kode_b = $(this).closest('tr').find('td').html();
    $("#kd_brg").val(kode_b); 
  });

  // Reset table input barang
  $("#reset_brg").click(function(){
    $.ajax({
      url: 'modul/pembelian_k/reset_brgk.php',
      success:function(){
        alert("Tabel Berhasil Direset");
        var oTable = $('#barang12').dataTable(); 
        oTable.fnDraw(false);
      }
    });
  });

  // Hapus Barang
  $('body').on('click', '#hapus_brgk', function (event) {
    event.preventDefault();
    var id_k = $(this).data("id");
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
            url: "modul/pembelian_k/hapus_k.php",
            type: "POST",
            data: {
              "id_k": id_k,
              "_token": token,
            },
            success: function (response) {
              var oTable = $('#barang12').dataTable(); 
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
      url : "modul/pembelian_k/total.php",
      success: function(data){
        var obj = JSON.parse(data);
        var k = "Total: "+obj.rupiah;
        $("#total").html(k);
        $("#tot").val(obj.total);
      }
    })
  }

  // total
  window.onload=total();
});

</script>
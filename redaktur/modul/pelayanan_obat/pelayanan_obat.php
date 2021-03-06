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
        <h1>Data Penjualan Obat</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Penjualan Obat</li>
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
              <div class="col-md-12"><a href="?module=pelayanan_obat&act=tambah" class="btn btn-primary">Tambah Data
                  Penjualan</a>
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
                <th>No Transaksi</th>
                <th>Nama Pembeli</th>
                <th>Tanggal Pembelian</th>
                <th>Jenis Pembayaran</th>
                <th class="nosort">Aksi</th>
              </tr>
            </thead>
            <tbody>
            <?php
              $tampil = mysqli_query($con, "SELECT * From pelayanan_obat");
              $no = 1;
              while($data = mysqli_fetch_array($tampil)){
              ?>
              <tr>
                <td><?php echo $no++?></td>
                <td><?php echo $data['no_tran']; ?></td>
                <td><?php echo $data['nama_pembeli']; ?></td>
                <td><?php echo $data['tgl_pembelian'] ?></td>
                <td><?php echo $data['jenis_pembayaran'] ?></td>
                <td>
                <a href="#detail" id="custId" data-toggle="modal" data-id="<?php echo $data['id_pelayanan_obat']?>" class="btn-xs btn-success"><i
                      class="fa fa-eye"> Detail </i></a>
                  <!-- <a href="#cetak" id=" " data-toggle="modal" data-id="" class="btn-xs btn-warnng"><i
                      class="fa fa-print"> Cetak </i></a> -->
                  <a href="#" no-tran="<?php echo $data['no_tran']?>" class="hapus btn-xs btn-danger"><i class="fa fa-trash"> Hapus</i></a>
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
                    url: 'modul/pelayanan_obat/detail.php',
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
                  var no_tran = $(this).attr('no-tran');
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
                    window.location = "modul/pelayanan_obat/aksi_pelayanan_obat.php?module=pelayanan_obat&act=hapus&no_tran="+no_tran;
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
  case "tambah":
    $query = mysqli_query($con, "SELECT max(no_tran) as kodemax FROM history_beli_obat");
    $data = mysqli_fetch_array($query);
    $no_tran = $data['kodemax'];

    $urutan = (int) substr($no_tran, 5, 5);
  
    $urutan++;

    $huruf = "TRS-";
    $no_tran = $huruf . sprintf("%05s", $urutan);
?>

<!-- Content Header (Page header) -->
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Pelayanan Obat</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Tambah Pelayanan Obat</li>
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
          <!-- /.card-header -->
          <!-- form start -->
          <form role="form" id="form_t">
            <?php 
            $tgl_beli = date('Y-m-d H:i:s');
            ?>
            <input class="form-control" type="hidden" name="id_beli_obat" value="<?php echo $id_beli_obat ?>">
            <div class="card-body">
              <div class="form-row">
                <div class="form-group col-md-2">
                  <label>Nama Obat </label>
                  <input type="text" class="form-control" name="nama_brg" id="nama_barang" placeholder="Nama Obat" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Kode Obat </label>
                  <input type="text" class="form-control" name="kd_brg" id="kd_brg" placeholder="Kode Obat" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Jenis Obat </label>
                  <input type="text" class="form-control" name="jenis_obat" id="jenis_obat" placeholder="Jenis Obat" required>
                </div>
                <div class="col-md-2">
                  <label>Satuan</label>
                  <select class="form-control select2" name="id_satuan" id="id_satuan" style="width: 100%;" readonly>
                    <option value="">Satuan</option>
                    <?php $query = mysqli_query($con, "SELECT *FROM data_satuan");
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
                  <label>Harga </label>
                  <input type="text" class="form-control" name="hrg" id="hrg" placeholder="Harga" onkeypress="return hanyaAngka(event)" required>
                  <input class="form-control" type="hidden" name="harga_jual" id="harga_jual" required>
                  <input class="form-control" type="hidden" name="tgl_beli" value="<?php echo $tgl_beli?>">
                </div>
                <div class="form-group col-md-2">
                  <label>Jumlah </label>
                  <input type="number" class="form-control" name="jumlah" id="jumlah" placeholder="Jumlah" onkeypress="return hanyaAngka(event)" required>
                  <small id="jml" class="collapse" style="color: red;"></small>
                </div>
                <div class="form-group col-md-2">
                  <label>Diskon </label>
                  <input type="number" class="form-control" name="diskon" id="diskon" placeholder="misal: 0-100" value="0" onkeypress="return hanyaAngka(event)">
                  <input class="form-control" type="hidden" name="batas_cabang" id="batas_cabang" value="100" required>
                  <input class="form-control" type="hidden" name="batas_minim" id="batas_minim" value="10" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Tanggal Produksi </label>
                  <input type="date" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask name="tgl_produksi" id="tgl_produksi" readonly>
                </div>
                <div class="form-group col-md-2">
                  <label>Tanggal Expired </label>
                  <input type="date" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask name="tgl_expired" id="tgl_expired" readonly>
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
                  <th>Jenis Obat</th>
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
                  $tampil     = mysqli_query($con, "Select * From beli_obat");
                  $no = 1;
                  while($data = mysqli_fetch_array($tampil)){
                ?>
                <tr>
                  <td><?php echo $no++?></td>
                  <td><?php echo $data['kd_brg']; ?></td>
                  <td><?php echo $data['nama_brg']; ?></td>
                  <td><?php echo $data['jenis_obat']; ?></td>
                  <td><?php echo $data['jumlah']; ?></td>
                  <td><?php echo rupiah($data['hrg']); ?></td>
                  <td><?php echo $data['diskon']; ?></td>
                  <td><?php echo $data['tgl_produksi']; ?></td>
                  <td><?php echo $data['tgl_expired']; ?></td>
                  <td><?php echo rupiah($data['sub_tot']); ?></td>
                </tr>
                <?php } ?>
              </tbody>
              <tr>
                <th colspan="10" style="text-align: right;" id="total">Total: 
                  <?php
                    $jumlahkan = "SELECT SUM(sub_tot) AS total FROM beli_obat"; //perintah untuk menjumlahkan
                    $total =@mysqli_query($con, $jumlahkan) or die (mysqli_error($con));//melakukan query dengan varibel $jumlahkan
                    $t = mysqli_fetch_array($total); //menyimpan hasil query ke variabel $t
                    ?><b><?php echo rupiah($t["total"]); ?></b>
                    <input type="hidden" id="total" name="total" value="<?php echo $t["total"]; ?>">
                </th>
              </tr>
              <div class="modal fade modalEditBarang" tabindex="-1" role="dialog"
                  aria-hidden="true">
                <div class="modal-dialog modal-xs" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title"> Edit Barang</h5>
                    </div>
                    <div class="modal-body">
                      <form role="form">
                        <div class="form-group">
                          <label>Nomor Transaksi</label>
                          <input class="form-control" type="text" name="no_tran"
                              value="">
                        </div>
                        <div class="form-group">
                          <label>Nama Pembeli</label>
                          <input class="form-control" type="text" name="nama_pembeli"
                              value="">
                        </div>
                        <div class="form-group">
                          <label>Tanggal Beli</label>
                          <input type="date" class="form-control"
                              data-inputmask-alias="datetime"
                              data-inputmask-inputformat="mm/dd/yyyy" data-mask>
                        </div>
                        <div class="form-group">
                          <label>Total</label>
                          <input class="form-control" type="text" name="total"
                              value="" readonly>
                        </div>
                      </form>
                    </div>
                    <div class="modal-footer">
                      <button class="btn btn-default"
                          data-dismiss="modal">Batal</button>
                      <button type="button" type="submit"
                          class="btn btn-primary pull-left">Simpan</button>
                    </div>
                  </div>
                </div>
              </div>
            </table>
          </div>

          <form class="form-horizontal" method="POST" action="modul/pelayanan_obat/input_transaksi.php" enctype="multipart/form-data">
            <div class="card-body">
              <div class="row">
                <div class="col-6">
                  <div class="form-group row">
                    <div class="col-sm-4">
                      <label for="inputNoTransaksi">No Transaksi</label>
                    </div>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" name="no_tran" value="<?php echo $no_tran; ?>" readonly>
                      <input type="hidden" name="id_ju" value="<?php echo $_SESSION['jenis_u']; ?>">
                    </div>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group row">
                    <div class="col-sm-4">
                      <label for="inputNamaPembeli">Total </label>
                    </div>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" name="total" id="tot" value="<?php echo $t['total']; ?>" readonly>
                    </div>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group row">
                    <div class="col-sm-4">
                      <label for="inputTglBeli">Tanggal Pembelian </label>
                    </div>
                    <div class="col-sm-8">
                      <input type="date" class="form-control" name="tgl_pembelian" value="<?php echo date('Y-m-d') ?>" data-inputmask-alias="datetime"
                            data-inputmask-inputformat="mm/dd/yyyy" data-mask required>
                    </div>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group row">
                    <div class="col-sm-4">
                      <label for="inputNamaPembeli">Pembayaran </label>
                    </div>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" name="cash" autofocus onkeyup="hitung()" onkeypress="return hanyaAngka(event)" id="cash">
                    </div>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group row">
                    <div class="col-sm-4">
                      <label for="inputNamaPembeli">Nama Pembeli </label>
                    </div>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" name="nama_pembeli" required>
                    </div>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group row">
                    <div class="col-sm-4">
                      <label for="inputNamaPembeli">Kembalian </label>
                    </div>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" id="kembalian" name="kembalian" readonly>
                    </div>
                  </div>
                </div>
                <?php 
                $bo = mysqli_fetch_array(mysqli_query($con, "SELECT jenis_obat FROM beli_obat WHERE jenis_obat='keras' LIMIT 1")); ?>
                <input type="hidden" name="jkeras" id="jkeras" value="<?php echo $bo['jenis_obat']; ?>">
                <div class="col-6 collapse" id="resep_obat">
                  <div class="form-group row">
                    <div class="col-sm-4">
                      <label>Resep Obat </label>
                    </div>
                    <div class="col-sm-8">
                      <input type="file" class="form-control" id="resep" name="resep">
                    </div>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group row">
                    <div class="col-sm-4">
                      <label for="inputJenisByr">Jenis Pembayaran </label>
                    </div>
                    <div class="col-sm-8">
                      <select class="form-control select2" name="jenis_pembayaran" id="jenis_pembayaran" style="width: 100%;" required>
                        <option value="" selected="selected" disabled="disabled">--Pilih Salah Satu--</option>
                        <option value="tunai">Tunai</option>
                        <option value="transfer">Transfer</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div class="col-12">
                  <div class="form-group row">
                    <div class="col-sm-6 text-right">
                      <button type="submit" name="submit" value="simpan" class="btn btn-success">Simpan Transaksi</button>
                    </div>
                    <div class="col-sm-6">
                      <button type="submit" name="submit" value="cetak" formtarget="_blank" class="btn btn-info">Cetak Nota</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
          <script>
            function hitung(){
              var a = $("#tot").val();
              var b = $("#cash").val();
              var c = b - a;
              $("#kembalian").val(c);
            }

            function hanyaAngka(evt) {
              var charCode = (evt.which) ? evt.which : event.keyCode
              if (charCode > 31 && (charCode < 48 || charCode > 57))

                return false;
              return true;
            }
          </script>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /.content -->

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

  var jo = $('#jkeras').val();
  if(jo=='keras'){
    $('#resep_obat').collapse('show');
  }

  // Cetak Nota
  // $('#cetaknota').on('click', function (event) {
  //   event.preventDefault();
  //   var form = $('#form_t')[0];
  //   var data = new FormData(form);
  //   $.ajax({
  //     url: "modul/pelayanan_obat/cetak.php",
  //     type: 'post',
  //     enctype: 'multipart/form-data',
  //     data: data,
  //     processData: false,
  //     contentType: false,
  //     cache: false,
  //     success: function( data ) {
  //       Swal.fire({
  //         title: 'Delete',
  //         text: "Yakin ingin menghapus data?",
  //         icon: 'warning',
  //         showCancelButton: true,
  //         confirmButtonColor: '#3085d6',
  //         cancelButtonColor: '#d33',
  //         confirmButtonText: 'Hapus'
  //       })
  //       .then((result) => {
  //         console.log(result);
  //         if (result.value) {
  //           window.location = "/klinik_new/redaktur/media.php?module=pelayanan_obat";
  //         }
  //       })
  //     }
  //   });
  // });

  // Tambah Input Barang Tunai
  $('#form_t').on('submit', function (e) {
    e.preventDefault();
    $('#jml').collapse('hide');
    var form = $('#form_t')[0];
    var data = new FormData(form);
    $.ajax({
      type: 'post',
      url: 'modul/pelayanan_obat/input_data.php',
      enctype: 'multipart/form-data',
      data: data,
      processData: false,
      contentType: false,
      cache: false,
      success: function (data) {
        alert(data);
        var jo = $('#jkeras').val();
        var oTable = $('#barang11').dataTable();
        oTable.fnDraw(false);
        $('#form_t').trigger("reset");
        total();
        location.reload();
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
      url: "modul/pelayanan_obat/cari.php",
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
      $('#jenis_obat').val(ui.item.jenis_obat);
      return false;
    }
  });

  // Datatable
  $('#barang11').dataTable( {
    "bProcessing": true,
    "bServerSide": true,
    "responsive": true,
    "autoWidth": false,
    "sAjaxSource": "modul/pelayanan_obat/data_barang.php",
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
    $("#modal_pelayanan_obat").modal("show");
    var kode_b = $(this).closest('tr').find('td').html();
    $("#kd_brg").val(kode_b);
  });

  // Reset table input barang
  $("#reset_brg").click(function(){
    $.ajax({
      url: 'modul/pelayanan_obat/reset_brg.php',
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
    var id_beli_obat = $(this).data("id");
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
            url: "modul/pelayanan_obat/hapus_brg.php",
            type: "POST",
            data: {
              "id_beli_obat": id_beli_obat,
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
      url : "modul/pelayanan_obat/total.php",
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
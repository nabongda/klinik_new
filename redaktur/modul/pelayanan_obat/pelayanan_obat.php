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
        <h1>Data Pelayanan Obat</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Pelayanan Obat</li>
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
                  Pelayanan</a>
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
                <th>Nama Pembali</th>
                <th>Nama Obat</th>
                <th>Tanggal Pembelian</th>
                <th>Qty</th>
                <th>Harga</th>
                <th class="nosort">Aksi</th>
              </tr>
            </thead>
            <tbody>
            <?php
              $tampil = mysqli_query($con, "Select * From pelayanan_obat");
              $no = 1;
              while($data = mysqli_fetch_array($tampil)){
              ?>
              <tr>
                <td><?php echo $no++?></td>
                <td><?php echo $data['no_tran']; ?></td>
                <td><?php echo $data['nama_pembeli']; ?></td>
                <td><?php echo $data['nama_obat'] ?></td>
                <td><?php echo $data['tgl_pembelian'] ?></td>
                <td><?php echo $data['harga'] ?></td>
                <td>
                  <a href="#cetak" id=" " data-toggle="modal" data-id="" class="btn-xs btn-success"><i
                      class="fa fa-print"> Cetak </i></a>
                  <a href="#" class="hapus btn-xs btn-danger"><i class="fa fa-trash"> Hapus</i></a>
                </td>
              </tr>
              <?php } ?>
            </tbody>
            
            <!-- SweetAlert Hapus -->
            <script>
              $('body').on('click','.hapus',function (event) {
                event.preventDefault();
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
                    window.location = "";
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
            $tgl_beli = date('Y-m-d');
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
                  <input type="number" class="form-control" name="diskon" id="diskon" placeholder="misal: 1-100">
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
            <table id="barang11" class="table table-bordered table-striped">
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
                  $tampil     = mysqli_query($con, "Select * From beli_obat");
                  $no = 1;
                  while($data = mysqli_fetch_array($tampil)){
                ?>
                <tr>
                  <td><?php echo $no++?></td>
                  <td><?php echo $data['kd_brg']; ?></td>
                  <td><?php echo $data['nama_brg']; ?></td>
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
                <th colspan="9" style="text-align: right;" id="total">Total: 
                  <?php
                    $jumlahkan = "SELECT SUM(sub_tot) AS total FROM pelayanan_obat"; //perintah untuk menjumlahkan
                    $total =@mysqli_query($con, $jumlahkan) or die (mysqli_error($con));//melakukan query dengan varibel $jumlahkan
                    $t = mysqli_fetch_array($total); //menyimpan hasil query ke variabel $t
                    ?><b><?php echo rupiah($t["total"]); ?></b>
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

          <form class="form-horizontal"  method="POST" action="modul/pelayanan_obat/aksi_pelayana_obat.php">
            <!-- <?php
              $selectidmax  = mysqli_query($con, "SELECT max(no_tran) as notran From beli_obat");
              $hsilidmax    = mysqli_fetch_array($selectidmax);
              $idmax        = $hsilidmax['nofak'];
              $nourut       = (int) substr($idmax, 3);
              $nourut++;
              $kode         = "FAK-".sprintf("%05s", $nourut);
            ?> -->
            <div class="card-body">
              <div class="form-group row">
                <div class="col-sm-2">
                  <label for="inputNoTransaksi">No Transaksi</label>
                </div>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="no_tran">
                  <input type="hidden" name="total" id="tot" value="<?php echo $t['total']; ?>">
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-2">
                  <label for="inputNamaPembeli">Nama Pembeli </label>
                </div>
                <div class="col-sm-4">
                  <input type="text" class="form-control" name="nama_pembeli">
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-2">
                  <label for="inputTglBeli">Tanggal Pembelian </label>
                </div>
                <div class="col-sm-4">
                  <input type="date" class="form-control" name="tgl_beli" value="<?php echo date('Y-m-d') ?>" data-inputmask-alias="datetime"
                        data-inputmask-inputformat="mm/dd/yyyy" data-mask>
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
    $.ajax({
      type: 'post',
      url: 'modul/pelayanan_obat/input_data.php',
      data: $('#form_t').serialize(),
      success: function (data) {
        var oTable = $('#barang11').dataTable();
        oTable.fnDraw(false);
        $('#form_t').trigger("reset");
        total();
      }
    });
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
      url: 'modul/pembelian_t/reset_brg.php',
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
    var id_t = $(this).data("id");
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
            url: "modul/pembelian_t/hapus_brg.php",
            type: "POST",
            data: {
              "id_t": id_t,
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
      url : "modul/pembelian_t/total.php",
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
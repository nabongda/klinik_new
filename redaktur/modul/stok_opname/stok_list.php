<?php
	switch($_GET['act']){
	default:
?>

<section class="content-header">
  <?php 
    $bc = mysqli_fetch_assoc(mysqli_query($con, "SELECT nama_menu AS crumb FROM menu WHERE page_menu = '$_GET[module]'"));
  ?> 
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1><?php echo $bc['crumb']; ?></h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active"><?php echo $bc['crumb']; ?></li>
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
          <div class="card-body">
            <div class="row">
              <div class="form-group row col-md-3">
                <div class="col-md-12">
                  <label for="inputTgl1">Dari Tanggal </label>
                  <input type="date" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" class="form-control" name="tgl1" data-mask autocomplete="off">
                </div>
              </div>
              <div class="form-group row col-md-3">
				      <div class="col-md-12">
                <label for="inputTgl2">Sampai Tanggal </label>
                <input type="date" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" class="form-control" name="tgl2" data-mask autocomplete="off">
              </div>
				    </div>
			      </div>
			      <div class="row">
              <div class="form-group row col-md-3">
                <div class="col-md-12">
                  <button type="submit" name="submit" class="btn btn-sm btn-info">Tampilkan</button>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Tanggal</th>
                <th>Kode Produk</th>
                <th>Nama Produk</th>
                <th>Stok Awal</th>
                <th>Terjual</th>
                <th>Reture</th>
                <th>Stok Akhir</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $tampil   = mysqli_query($con, "SELECT * FROM stok_opname");
              while($r  = mysqli_fetch_array($tampil)){
                $rand = rand(1,1000);
              ?>
              <tr>
                <td><?php echo $r["tanggal"]; ?></td>
                <td><?php echo $r["kode_barang"]; ?></td>
                <td><?php echo $r["nama_produk"]; ?></td>
                <td><?php echo $r["stok_awal"]; ?></td>
                <td><?php echo $r["terjual"]; ?></td>
                <td><?php echo $r["retur"]; ?></td>
                <td><?php echo $r["stok_akhir"]; ?></td>
              </tr>
              <?php } ?>
            </tbody>
            <script>
              function additem(id){
                $("#prod").val($("#" + id).data("item"));
              }
            </script>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
$(document).ready(function(){
  //typeahead                    
  var namaProd = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('prod'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  prefetch: {
    url: '../redaktur/modul/gudang/prod.json?v=<?php echo rand(100,900); ?>'
  },
  cache: false
});
                      
  var kdProd = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('kd'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    prefetch: {
      url: '../redaktur/modul/gudang/prod.json?v=<?php echo rand(100,900); ?>'
    },
    cache: false
  });


  $('#prod').typeahead({
    hint: true,
    highlight: true,
    minLength: 3
    }, {
      name: 'nama-prod',
      display: 'prod',
      source: namaProd
    },{
      name: 'kd-prod',
      display: 'prod',
      source: kdProd
    }
  );
          
  $('#prod').bind('typeahead:select', function(ev, suggestion) {
    $("#kd").val(suggestion.kd);
    $("#nama").val(suggestion.nama);
    $("#kat").val(suggestion.kat);
    $("#sat").val(suggestion.satuan);
    $("#kat_kd").val(suggestion.kat_kd);
    $("#sat_kd").val(suggestion.sat_kd);
    $("#jual").val(suggestion.jual);
    $("#beli").val(suggestion.beli);
  });
//typeahead
});
</script>

<!-- Edit Data Stok Barang -->
<?php
  break;
  case "edit_brg":
  $id   = $_GET['id_pp'];
  $edit   = mysqli_fetch_array(mysqli_query($con, "Select * From produk_pusat Where id_pp='$id'"));
?>

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Edit Data Stok Barang</h3>
          </div>
          <form role="form" method="POST" enctype="multipart/form-data" action="modul/gudang/aksi_stok.php?act=update">
            <div class="card-body">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Kode Produk</label>
                  <input type="hidden" class="form-control" name="id_pp" value="<?php echo $edit['id_pp'];?>" required>
                  <input type="text" class="form-control" name="kd_produk" value="<?php echo $edit['kode_produk'];?>" required>
                </div>
                <div class="form-group">
                  <label>Nama Produk</label>
                  <input type="text" class="form-control" name="nama_produk" value="<?php echo $edit['nama_produk'];?>" required>
                </div>
                <div class="form-group">
                  <label>Kategori Produk</label>
                  <select name="kategori_produk" class="form-control" required>
                    <option value="">--Silakan Pilih--</option>
                    <?php
                      $data = mysqli_query($con, "Select * From kategori");            
                      while($hasil  = mysqli_fetch_array($data)){
                        $sel = ($edit['id_kategori'] == $hasil['id_kategori'])? "selected" : "";
                    ?>
                    <option value="<?php echo $hasil['id_kategori']; ?>" <?php echo $sel; ?>><?php echo $hasil['kategori']; ?></option>
                    <?php }?>
                  </select>
                </div>
                <div class="form-group">
                  <label>Jumlah Stok</label>
                  <input type="number" class="form-control" name="stok_produk" value="<?php echo $edit['jumlah'];?>" required>
                </div>
                <div class="form-group">
                  <label>Satuan</label>
                  <select name="satuan" class="form-control" required>
                    <option value="">--silakan pilih--</option>
                    <?php
                      $data = mysqli_query($con, "Select * From data_satuan");            
                      while($hasil  = mysqli_fetch_array($data)){
                        $sel = ($edit['id_sat'] == $hasil['id_s'])? "selected" : "";
                    ?>
                    <option value="<?php echo $hasil['id_s']; ?>" <?php echo $sel; ?>><?php echo $hasil['satuan']; ?></option>
                    <?php }?>
                  </select>
                </div>
                <div class="form-group">
                  <a href="?module=gudang"><button type="button" class="btn btn-danger">Batal</button></a>
                  <button type="submit" class="btn btn-success">Simpan</button>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Harga Beli</label>
                  <input type="number" class="form-control" name="harga_beli" value="<?php echo $edit['harga_beli'];?>" required>
                </div>
                <div class="form-group">
                  <label>Harga Jual</label>
                  <input type="number" class="form-control" name="harga_jual" value="<?php echo $edit['harga_jual'];?>" required>
                </div>
                <div class="form-group">
                  <label>Suplier</label>
                  <select name="suplier" class="form-control">
                    <option value="<?php echo $edit['id_sup']?>">
                    <?php
                      $data = mysqli_query($con, "Select * From suplier ");            
                      while($hasil  = mysqli_fetch_array($data)){
                    ?>
                    <?php echo $hasil['nama_sup'];?></option>
                    <option value="<?php echo $hasil['id_sup']; ?>"><?php echo $hasil['nama_sup']; ?></option>
                    <?php }?>
                  </select>
                </div>
                <div class="form-group">
                  <label>Batas Cabang</label>
                  <input type="number" class="form-control" name="batas_cabang" value="<?php echo $edit['batas_cabang'];?>" required>
                </div>
                <div class="form-group">
                  <label>Batas Minim</label>
                  <input type="number" class="form-control" name="batas_minim" value="<?php echo $edit['batas_minim'];?>" required>
                </div>
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
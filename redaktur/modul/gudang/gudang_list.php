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
        <div class="card-header callout callout-info">
          <ul class="fa-ul">
            <li>
              <i class="fa fa-li fa-arrow-right"></i>
              &nbsp;Halaman ini menampilkan Data Produk Obat yang berasal dari menu Pembelian Tunai dan Pembelian Kredit
            </li>
            <li>
              <i class="fa fa-li fa-arrow-right"></i>&nbsp;Halaman ini juga menampilkan status jumlah item Produk Obat yang ada pada menu Gudang Penjualan yang terdiri atas
              <ul>
                <li><span class='bagde bg-yellow'>Belum ada data</span> Jika item belum ada</li>
                <li><span class='bagde bg-red'>Stok tidak mencukupi</span> Jika item hampir atau sudah habis</li>
                <li><span class='bagde bg-green'>Stok mencukupi</span> Jika item masih banyak</li>
              </ul>
            </li>
            <li>
              <i class="fa fa-li fa-arrow-right"></i>
              &nbsp;Anda bisa menambahkan item berdasarkan status di atas dengan mengklik tombol Tambahkan dan mengisi jumlah yang akan ditambahkan
            </li>
          </ul>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Kode Produk</th>
                <th>Nama Produk</th>
                <th>Jumlah</th>
                <th>Status Gudang Penjualan</th>
                <!-- <th class="nosort">Aksi</th> -->
              </tr>
            </thead>
            <tbody>
              <?php
              $tampil   = mysqli_query($con, "Select * From produk_pusat");
              while($r  = mysqli_fetch_array($tampil)){
                $rand = rand(1,1000);
              ?>
              <tr>
                <td><?php echo $r["kode_barang"]; ?></td>
                <td><?php echo $r["nama_p"]; ?></td>
                <td><?php if ($r["jumlah"]<=0) {
                  echo "0";
                } else {
                  echo $r["jumlah"];
                }
                ?></td>
                <td>
                  <?php
                    //cari data di produk, kalau jumlahnya mendekati 0 maka warning
                    $j = mysqli_fetch_assoc(mysqli_query($con, "SELECT jumlah FROM produk_pusat WHERE kode_barang = '$r[kode_barang]'"));
                    if(is_null($j['jumlah'])){
                      echo "<span class='badge bg-warning'>Belum ada data</span>";
                    } else  if($j['jumlah'] < 2){
                      echo "<span class='badge bg-danger'>Stok tidak mencukupi</span>";
                    }  else {
                      echo "<span class='badge bg-success'>Stok mencukupi</span>";
                    }
                  ?>
                </td>
                <!-- <td>
                  <button class="btn-sm btn-primary" data-toggle="modal" data-target="#modal-default" onclick="additem(this.id)" id="<?php echo $rand; ?>" data-item="<?php echo $r["kode_barang"]; ?>">Tambahkan</button>
                </td> -->
              </tr>
              <?php } ?>
            </tbody>
            <script>
              function additem(id){
                $("#prod").val($("#" + id).data("item"));
              }
            </script>

            <div class="modal fade" role="dialog" id="modal-default">
              <div class="modal-dialog modal-xs" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Tambahkan Item Produk </h5>
                  </div>
                  <div class="modal-body">
                    <form class="form-horizontal" role="form" action="modul/gudang/kirim.php" method="POST">
                      <div class="form-group row">
                        <div class="col-sm-4">
                            <label for="inputNoFaktur">Jumlah Item</label>
                        </div>
                        <div class="col-sm-8">
                            <input type="number" class="form-control" name="jml" required>
                            <input type="hidden" name="produk" id="prod">
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Tambah</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Tambah Data Stok Barang  -->
<?php
  break;
  case "tambah_stok":

  $cx = mysqli_query($con, "SELECT * FROM produk_master WHERE id_kategori != 0");
  $dx = '[';
  while($cux = mysqli_fetch_assoc($cx)){
    $kat = mysqli_fetch_assoc(mysqli_query($con, "SELECT kategori AS egori FROM kategori WHERE id_kategori = $cux[id_kategori]"));
    $sat = mysqli_fetch_assoc(mysqli_query($con, "SELECT satuan AS uan FROM data_satuan WHERE id_s = $cux[id_satuan]"));
    $dtx .= '{"nama":"'.$cux['nama_produk'].'","prod":"('.$cux['kd_produk'].') '.$cux['nama_produk'].'","kd":"'.$cux['kd_produk'].'","kat_kd":"'.$cux['id_kategori'].'","sat_kd":"'.$cux['id_satuan'].'","kat":"'.$kat['egori'].'","satuan":"'.$sat['uan'].'","beli":"'.$cux['harga_beli'].'","jual":"'.$cux['harga_jual'].'"},';
  }

  $dtx = substr($dtx,0,strlen($dtx) - 1);
  $dx .= $dtx.']';
  
  file_put_contents("../redaktur/modul/gudang/prod.json",$dx);
?>

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-12">
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Tambah Data Stok Barang</h3>
          </div>
          <form role="form" method="POST" enctype="multipart/form-data" action="modul/gudang/aksi_stok.php?act=input">
            <div class="card-body">
              <div class="col-md-6">
                <div class="form-group">
                  <label for="exampleInputNamTin">Kode/Nama Produk</label>
                  <input type="text" class="form-control" id="prod" required>
                  <small>Hanya produk yang kategori dan satuan tidak kosong muncul di sini</small>
                  <input type="hidden" class="form-control" id="kd" name="kd_produk">
                  <input type="hidden" class="form-control" id="nama" name="nama_produk">
                </div>
                <div class="form-group">
                  <label for="exampleInputNamTin">Kategori Produk</label>
                  <input type="text" class="form-control" id="kat" required>
                  <input type="hidden" id="kat_kd" name="kategori_produk">
                </div>
                <div class="form-group">
                  <label for="exampleInputNamTin">Stock Awal</label>
                  <input type="number" class="form-control" name="stok_produk" placeholder="Stok Awal" required>
                </div>
                <div class="form-group">
                  <label for="exampleInputNamTin">Satuan</label>
                  <input type="hidden" id="sat_kd" name="satuan">
                  <input type="text" class="form-control" readonly id="sat">
                </div>
                <div class="form-group">
                  <a href="?module=gudang"><button type="button" class="btn btn-danger">Batal</button></a>
                  <button type="submit" class="btn btn-success">Tambah</button>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label>Harga Beli</label>
                  <input type="number" class="form-control" name="harga_beli" id="beli" placeholder="Harga Beli" readonly>
                </div>
                <div class="form-group">
                  <label>Harga Jual</label>
                  <input type="number" class="form-control" name="harga_jual" id="jual" placeholder="Harga jual" readonly>
                </div>
                <div class="form-group">
                  <label>Suplier</label>
                  <select name="suplier" class="form-control" required>
                    <option >Pilih Suplier</option>
                    <?php 
                      $data = mysqli_query($con, "Select * From suplier");            
                      while($hasil  = mysqli_fetch_array($data)){
                    ?>
                    <option value="<?php echo $hasil['id_sup']; ?>"><?php echo $hasil['nama_sup']; ?></option>
                    <?php } ?>
                  </select> 
                </div>
                <div class="form-group">
                  <label>Batas Cabang</label>
                  <input type="number" class="form-control" name="batas_cabang" placeholder="Batas Cabang" required>
                </div>
                <div class="form-group">
                  <label>Batas Minim</label>
                  <input type="number" class="form-control" name="batas_minim" placeholder="Batas Minim" required>
                </div>
              </div>
            </div>
          </form>
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
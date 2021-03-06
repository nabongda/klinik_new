<?php

include "../../../config/koneksi.php";

if($_POST['id']) {
    $id = $_POST['id'];
    // mengambil data berdasarkan id
    $tampil     = mysqli_query($con,"SELECT * FROM beli WHERE id = $id");
    while($data = mysqli_fetch_array($tampil)){ ?>
      <div class="modal-header">
        <h5 class="modal-title"> Detail Barang</h5>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" role="form">
          <div class="form-group row">
            <div class="col-sm-4">
              <label>Nomor Faktur</label>
            </div>
            <div class="col-sm-8">
              <input class="form-control" value="<?php echo $data['no_fak']; ?>" readonly>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-4">
              <label>Tanggal Beli</label>
            </div>
            <div class="col-sm-8">
              <input class="form-control" value="<?php echo $data['tgl_beli']; ?>" readonly>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-4">
              <label>Suplier</label>
            </div>
            <?php $q1 = mysqli_query($con,"SELECT *FROM suplier WHERE id_sup='$data[id_sup]'"); 
            $k = mysqli_fetch_array($q1); ?>
            <div class="col-sm-8">
              <input class="form-control" value="<?php echo $k['nama_sup']; ?>" readonly>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-4">
              <label>Total</label>
            </div>
            <div class="col-sm-8">
              <input class="form-control" value="<?php echo $data['total']; ?>" readonly>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-4">
              <label>Pembayaran</label>
            </div>
            <div class="col-sm-8">
              <input class="form-control" value="<?php echo $data['pembayaran']; ?>" readonly>
            </div>
          </div>
          <div class="form-group row">
            <div class="col-sm-4">
              <label>Keterangan</label>
            </div>
            <div class="col-sm-8">
              <input class="form-control" value="<?php echo $data['ket']; ?>" readonly>
            </div>
          </div>
        </form>
      </div>

      <div class="modal-header">
        <h5 class="modal-title"> Item :</h5>
      </div>
      <div class="modal-body">
        <table id="example1" class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>Gambar Produk</th>
              <th>Nama Barang</th>
              <th>Kode Barang</th>
              <th>Jumlah</th>
              <th>Harga</th>
              <th>Tanggal Beli</th>
              <th>Tanggal Produksi</th>
              <th>Tanggal Expired</th>
            </tr>
          </thead>
          <tbody>
            <?php
              $tampil     = mysqli_query($con,"Select * From history_beli_t where no_fak='$data[no_fak]'");
              $no = 1;
              while($data = mysqli_fetch_array($tampil)){
            ?>
            <tr class="gradeX">
              <?php $q1 = mysqli_query($con,"SELECT *FROM produk_master WHERE nama_produk='$data[nama_brg]'"); 
              $k = mysqli_fetch_array($q1); ?>
              <td><?php
                if ( $k['gambar'] == '') {
                  echo "Belum Ada Gambar";
                }else{
                  echo '<center><a href="'.$url.'/gambar_produk/'.$k['gambar'].'"><img src="'.$url.'/gambar_produk/'.$k['gambar'].'" width="40px" height="40px"></a></center>';
                }?></td>
              <td><?php echo $data['nama_brg']; ?></td>
              <td><?php echo $data['kd_brg']; ?></td>
              <td><?php echo $data['jumlah']?></td>
              <td><?php echo $data['hrg']?></td>
              <td><?php echo $data['tgl_beli']?></td>
              <td><?php echo $data['tgl_produksi']?></td>
              <td><?php echo $data['tgl_expired']?></td>
            </tr>
            <?php } ?>
          </tbody> 
        </table>
      </div>
    <?php } } ?>
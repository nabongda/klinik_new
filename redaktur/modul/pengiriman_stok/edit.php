<?php

include "../../../config/koneksi.php";

if($_POST['id']) {
$id = $_POST['id'];
// mengambil data berdasarkan id
?>
<form role="form" method="POST" enctype="multipart/form-data" action="modul/pengiriman_stok/edit_pengiriman.php">
  <div class="modal-body">
    <?php $tampil     = mysqli_query($con, "SELECT * FROM kirim_stok WHERE id=$id");
      while($data = mysqli_fetch_array($tampil)){
    ?>
    <div class="form-group">
      <label>Nomor Pengiriman</label>
      <input class="form-control" type="hidden" name="id" value="<?php echo $data['id'];?>" >
      <input class="form-control" type="text" name="no_peng" value="<?php echo $data['no_peng'];?>" readonly>
    </div>
    <div class="form-group">
      <label>Tanggal Pengiriman</label>
      <input class="form-control" type="datetime-local" name="tgl_kirim" value="<?php echo $data['tgl_kirim'];?>">
    </div>
    <div class="form-group">
      <label>Keterangan</label>
      <input value="<?php echo $data['ket'];?>" class="form-control"  type="text" name="ket">
    </div>
    <?php }?>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
    <button type="submit" name="submit" class="btn btn-primary pull-left">Simpan</button>
  </div>
</form>
<?php } ?>
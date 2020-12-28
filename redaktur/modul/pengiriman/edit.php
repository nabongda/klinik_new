<?php

include "../../../config/koneksi.php";

if($_POST['id']) {
$id = $_POST['id'];
// mengambil data berdasarkan id
?>
<form role="form" method="POST" enctype="multipart/form-data" action="modul/pengiriman/edit_pengiriman.php">
  <div class="modal-body">
    <?php $tampil     = mysqli_query($con, "SELECT * FROM history_kirim_stok WHERE id=$id");
      while($data = mysqli_fetch_array($tampil)){
    ?>
    <div class="form-group">
      <label>Jumlah Obat Yang Dikirim Ulang</label>
      <input class="form-control" type="hidden" name="id" value="<?php echo $data['id'];?>" >
      <input class="form-control" type="text" name="jumlah" placeholder="Jumlah obat yang dikirim sebelumnya: <?php echo $data['jumlah'];?>" required>
    </div>
    <?php } ?>
  </div>
  <div class="modal-footer">
    <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
    <button type="submit" name="submit" class="btn btn-primary pull-left">Simpan</button>
  </div>
</form>
<?php } ?>
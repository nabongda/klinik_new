<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
  <!-- Left navbar links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
    </li>
  </ul>
  <!-- Right navbar links -->
  <ul class="navbar-nav ml-auto">
    <!-- Notifications Dropdown Menu -->
    <?php 
    if($_SESSION['jenis_u']=="JU-01"){
      $date = date('Y-m-d');

      $qq = mysqli_query($con, "SELECT * FROM beli_k WHERE '$date' <= tgl_tempo AND bukti_bayar=''"); 

      $tot = mysqli_num_rows($qq);

      $qp = mysqli_query($con, "SELECT * FROM history_kirim_stok WHERE status='tolak'");

      $cek = mysqli_num_rows($qp);
      $notif = 0;
      if ($tot>0) {
        $notif++;
      }

      if ($cek>0) {
        $notif++;
      }
    ?>
    <li class="nav-item dropdown">
      <a class="nav-link" data-toggle="dropdown" href="#">
        <i class="far fa-bell"></i>
        <span class="badge badge-warning navbar-badge"><?php echo $notif; ?></span>
      </a>
      <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <?php if ($notif>0) { ?>
        <span class="dropdown-item dropdown-header"><?php echo $notif; ?> Notifikasi</span>
        <?php if ($tot>0) { ?>
        <div class="dropdown-divider"></div>
        <a href="media.php?module=pembayaran_kredit" class="dropdown-item">
          <i class="fas fa-envelope mr-2"></i><?php echo $tot; ?> Pembayaran Belum Dilakukan
        </a>
        <?php } if ($cek>0) { ?>
        <div class="dropdown-divider"></div>
        <a href="media.php?module=pengiriman&act=lapor" class="dropdown-item">
          <i class="fas fa-envelope mr-2"></i><?php echo $cek; ?> Pengiriman Tidak Sesuai
        </a>
        <?php } } else { ?>
        <span class="dropdown-item dropdown-header">Anda Tidak Memiliki Notifikasi</span>
        <?php } ?>
      </div>
    </li>

    <?php } 
    if($_SESSION['jenis_u']=="JU-06"){
      $qq = mysqli_query($con, "SELECT * FROM pengiriman WHERE cabang='$id_kk' AND keterangan='Sedang Proses Pengiriman'"); 
      $tot = mysqli_num_rows($qq);
    ?>
    <li class="nav-item dropdown" id="checkout" style="display: none">
      <a href="#" class="nav-link" data-toggle="dropdown" onclick="chk()">
        <i class="far fa-print"></i>
        <span class="badge badge-warning navbar-badge">1</span>
      </a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link" data-toggle="dropdown" href="#">
        <i class="far fa-bell"></i>
        <span class="badge badge-warning navbar-badge"><?php if($tot>0){echo 1;}else{ echo 0;} ?></span>
      </a>
      <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <?php if ($tot>0) { ?>
        <span class="dropdown-item dropdown-header">Anda Memiliki 1 Notifikasi</span>
        <div class="dropdown-divider"></div>
        <a href="media.php?module=penerimaan" class="dropdown-item">
          <i class="fas fa-envelope mr-2"></i><?php echo $tot; ?> Pengiriman Barang Akan Sampai
        </a>
        <?php } else { ?>
        <span class="dropdown-item dropdown-header">Anda Tidak Memiliki Notifikasi</span>
        <?php } ?>
      </div>
    </li>
    <?php } ?>

    <li class="nav-item">
      <a class="logout nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
        <i class="fa fa-power-off" aria-hidden="true"></i>
      </a>
    </li>
    <script>
      document.querySelector(".logout").addEventListener("click",
        function () {
          Swal.fire({
            title: 'Logout?',
            icon: 'question',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Logout !'
          })
          .then((result) => {
            console.log(result);
            if (result.value) {
              window.location = "logout.php";
            }
          })
        });
    </script>
  </ul>
</nav>
<!-- /.navbar -->
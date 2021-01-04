<?php
  session_start();
  //unlink("error_log");
  include ('../config/koneksi.php');
  include ('../config/kode_otomatis.php');
  include ('../config/fungsi_rupiah.php');
  include ('../config/library.php');
  include ('../config/fungsi_indotgl.php');
  include ('../config/fungsi_combobox.php');
  include ('../config/class_paging.php');
  $id_kk = $_SESSION['klinik'];

  //echo $user['id_ju'];  
  if(empty($_SESSION['jenis_u'])){ 
 $jen= mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM jenis_user WHERE id_ju ='".$_SESSION["jenis_ju"]."'"));
  }else{
	$jen= mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM jenis_user WHERE id_ju ='".$_SESSION["jenis_u"]."'"));  
  }
//fungsi cek akses user
function user_akses($mod,$id){
  $link = "?module=".$mod;
  global $con;
  $cek = mysqli_num_rows(mysqli_query($con, "SELECT * FROM modul,users_modul WHERE modul.id_modul=users_modul.id_modul AND users_modul.id_session='$id' AND modul.link='$link'"));
  return $cek;
}
//fungsi cek akses menu
function umenu_akses($link,$id){
  global $con;
  $cek = mysqli_num_rows(mysqli_query($con, "SELECT * FROM modul,users_modul WHERE modul.id_modul=users_modul.id_modul AND users_modul.id_session='$id' AND modul.link='$link'"));
  return $cek;
}
//fungsi redirect
function akses_salah(){
  global $url;
  $pesan = "<script>alert('Akses ilegal'); location.href = '".$url."media.php?module=home';</script>";
  return $pesan;
}

if (empty($_SESSION['username']) AND empty($_SESSION['passuser'])){
?>
<script>
alert("Anda belum login"); location.href = "<?php echo $url;?>/redaktur/index.php";
</script>
<?php
  } else {
    
    $iden = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM identitas"));
	if (($_SESSION['jenis_u']=='JU-01') OR ($_SESSION['jenis_u']=='JU-02')){ 
    $user = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM user WHERE id_user ='".$_SESSION["id_user"]."'"));
	
	} else {
		$user = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM karyawan WHERE id_karyawan ='".$_SESSION["id_user"]."'"));
	}
 
?>

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $iden['nama_organisasi']; ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Favicon -->
  <link rel="icon" href="../file_user/foto_identitas/<?php echo $iden['logo']; ?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- jQuery UI 1.11.4 -->
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/jquery-ui/jquery-ui.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/jqvmap/jqvmap.min.css">
  <!-- fullCalendar -->
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/fullcalendar/main.min.css">
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/fullcalendar-daygrid/main.min.css">
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/fullcalendar-timegrid/main.min.css">
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/fullcalendar-bootstrap/main.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo $url2; ?>dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="<?php echo $url2; ?>plugins/sweetalert2/sweetalert2.min.css">
  <style>
    blink {
      -webkit-animation: 2s linear infinite condemned_blink_effect; /* for Safari 4.0 - 8.0 */
      animation: 2s linear infinite condemned_blink_effect;
    }

    /* for Safari 4.0 - 8.0 */
    @-webkit-keyframes condemned_blink_effect {
      0% {
        visibility: hidden;
      }
      50% {
        visibility: hidden;
      }
      100% {
        visibility: visible;
      }
    }

    @keyframes condemned_blink_effect {
      0% {
        visibility: hidden;
      }
      50% {
        visibility: hidden;
      }
      100% {
        visibility: visible;
      }
    }
  </style>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

  <?php include 'header.php'; ?>

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="?module=home" class="brand-link">
        <img src="../file_user/foto_identitas/<?php echo $iden['logo']; ?>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
          style="opacity: .8">
        <span class="brand-text font-weight-light"><?php echo $iden['nama_organisasi']; ?></span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
          <?php
          if ($user['foto']!='') { 
            if ($_SESSION['jenis_u']=='JU-01' OR $_SESSION['jenis_u']=='JU-02'){ ?>
              <img src="<?php echo $url;?>/file_user/foto_user/<?php echo $user['foto']; ?>" class="img-circle elevation-2" alt="User Image">              
            <?php 
            }
            else { ?>
              <img src="<?php echo $url;?>/foto_karyawan/<?php echo $user['foto']; ?>" class="img-circle elevation-2" alt="User Image">
            <?php 
            }
          }
          else { ?>
            <img src="<?php echo $url;?>/file_user/foto_user/user.png" class="img-circle elevation-2" alt="User Image">
          <?php } ?>
          </div>
          <div class="info">
            <a href="#" class="d-block"><?php echo $_SESSION["namalengkap"]; ?></a>
          </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
            <li class="nav-item">
              <a href="?module=home" class="nav-link">
                <i class="fas fa-home"></i>
                <p>
                  Beranda
                </p>
              </a>
            </li>
            
        <?php
          $id = $_SESSION['id_user'];

          if (($_SESSION['jenis_u'] == 'JU-01') OR ($_SESSION['jenis_u'] == 'JU-02')){ 
            $data = mysqli_fetch_array(mysqli_query($con, "SELECT * From user Where id_user='$id'"));
          }else {
            $data = mysqli_fetch_array(mysqli_query($con, "SELECT * From karyawan Where id_karyawan='$id'"));
          }

          $ju = $data['id_ju'];

          $menu = mysqli_query($con, "SELECT * From sub_menu Where id_ju='$ju' And sts_sm='Aktif' Order by urutan Asc");
          while($data_menu  = mysqli_fetch_array($menu)){
            $id_sb = $data_menu['id_sm'];
            if($data_menu['page_sm']=='' || $data_menu['page_sm']=='#'){ ?>
  
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="fas fa-<?php echo $data_menu['icon_fa']; ?>"></i>
                <p>
                  <?php echo $data_menu['nama_sm']; ?>
                  <i class="fas fa-angle-left right"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
            <?php
              $sub_menu   = mysqli_query($con, "SELECT * From menu Where id_sm='$id_sb' And sts_menu='Aktif' Order by nama_menu Asc");
              while($data_sm  = mysqli_fetch_array($sub_menu)){
              $id_sm      = $data_sm['id_menu'];  ?>
                <li class="nav-item">
                  <a href="?module=<?php echo $data_sm['page_menu']; ?>" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p><?php echo $data_sm['nama_menu']; ?></p>
                  </a>
                </li>
                <?php } ?>
              </ul>
            </li>
            <?php } else { ?>
            <li class="nav-item">
              <a href="?module=<?php echo $data_menu['page_sm']; ?>" class="nav-link">
                <i class="fas fa-<?php echo $data_menu['icon_fa']; ?>"></i>
                <p>
                  <?php echo $data_menu['nama_sm'];
                    if($id_sb == "SM-998990"){
                      //pasien utama
                      $utama = mysqli_fetch_assoc(mysqli_query($con, "SELECT COUNT(id_pasien) AS b FROM perawatan_pasien WHERE id_dr = '$_SESSION[id_user]' AND status IS NULL"));
                      //pasien visit
                      $visit = mysqli_fetch_assoc(mysqli_query($con, "SELECT COUNT(a.id_pasien) AS b FROM dr_visit a JOIN perawatan_pasien b ON a.no_faktur = b.no_faktur WHERE a.id_dr = '$_SESSION[id_user]' AND b.status IS NULL"));
                      $jmlpas = (int) $utama['b'] + (int) $visit['b'];
                  ?>
                  <span class="badge badge-danger right" title="<?php echo $jmlpas; ?> Pasien Masih Dirawat"><?php echo $jmlpas; ?></span>
                  <?php } 
                  else if($id_sb == "SM-669969"){
                    $rujuk = mysqli_num_rows(mysqli_query($con, "SELECT * FROM rujuk_inap"));
                  ?>
                  <span class="badge badge-danger right" title="<?php echo $rujuk; ?> Pasien Dirujuk Inap"><?php echo $rujuk; ?></span>
                  <?php } ?>
                </p>
              </a>
            </li>
            <?php }  } ?>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <?php 
        include('koneksi/konten.php'); 
      ?>
    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- ./wrapper -->

  <!-- jQuery -->
  <script src="<?php echo $url2; ?>plugins/jquery/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="<?php echo $url2; ?>plugins/jquery-ui/jquery-ui.min.js"></script>
  <!-- jQuery Knob Chart -->
  <script src="<?php echo $url2; ?>plugins/jquery-knob/jquery.knob.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="<?php echo $url2; ?>plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Sparkline -->
  <script src="<?php echo $url2; ?>plugins/sparklines/sparkline.js"></script>
  <!-- JQVMap -->
  <script src="<?php echo $url2; ?>plugins/jqvmap/jquery.vmap.min.js"></script>
  <script src="<?php echo $url2; ?>plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
  <!-- daterangepicker -->
  <script src="<?php echo $url2; ?>plugins/moment/moment.min.js"></script>
  <script src="<?php echo $url2; ?>plugins/daterangepicker/daterangepicker.js"></script>
  <!-- Tempusdominus Bootstrap 4 -->
  <script src="<?php echo $url2; ?>plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
  <!-- Summernote -->
  <script src="<?php echo $url2; ?>plugins/summernote/summernote-bs4.min.js"></script>
  <!-- overlayScrollbars -->
  <script src="<?php echo $url2; ?>plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <!-- AdminLTE App -->
  <script src="<?php echo $url2; ?>dist/js/adminlte.js"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="<?php echo $url2; ?>dist/js/pages/dashboard.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="<?php echo $url2; ?>dist/js/demo.js"></script>
  <!-- fullCalendar 2.2.5 -->
  <script src="<?php echo $url2; ?>plugins/fullcalendar/main.min.js"></script>
  <script src="<?php echo $url2; ?>plugins/fullcalendar-daygrid/main.min.js"></script>
  <script src="<?php echo $url2; ?>plugins/fullcalendar-timegrid/main.min.js"></script>
  <script src="<?php echo $url2; ?>plugins/fullcalendar-interaction/main.min.js"></script>
  <script src="<?php echo $url2; ?>plugins/fullcalendar-bootstrap/main.min.js"></script>
  <!-- DataTables -->
  <script src="<?php echo $url2; ?>plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="<?php echo $url2; ?>plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="<?php echo $url2; ?>plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="<?php echo $url2; ?>plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <!-- OPTIONAL SCRIPTS -->
  <script src="<?php echo $url2; ?>plugins/chart.js/Chart.min.js"></script>
  <script src="<?php echo $url2; ?>dist/js/demo.js"></script>
  <!-- SweetAlert2 -->
  <script src="<?php echo $url2; ?>plugins/sweetalert2/sweetalert2.all.min.js"></script>
  <!-- Optional: include a polyfill for ES6 Promises for IE11 -->
  <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
  <script src="<?php echo $url2; ?>plugins/sweetalert2/sweetalert2.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  <script>
    $(document).ready(function(){
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      <?php include 'fungsi.js'; ?>
    });

    var top = -1;
    var self = false;
    function netbro_cache_analytics(fn,callback){
      return false;
    }

  </script>
  <script>
    $.widget.bridge('uibutton', $.ui.button)
    $(function () {
      $("#example1").DataTable({
        "responsive": true,
        "autoWidth": false,
      });
      $('#example2').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false,
        "responsive": true,
      });
      $("#example3").dataTable({
        "responsive": true,
        "autoWidth": false,
      });
    });
  </script>
  <script>
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: [
        <?php
        $klinik = mysqli_query($con, "SELECT tanggal, SUM(harga*jumlah) as total FROM history_kasir WHERE id_kk='$_POST[jenis_klinik]' group by tanggal");
        while ($t=mysqli_fetch_array($klinik)) { ?>
        "<?php echo $t['tanggal']; ?>",
        <?php  } ?>
        ],
        datasets: [{
          label: '',
          data: [
            <?php
          $klinik = mysqli_query($con, "SELECT tanggal, SUM(harga*jumlah) as total FROM history_kasir WHERE id_kk='$_POST[jenis_klinik]' group by tanggal");
          while ($t=mysqli_fetch_array($klinik)) { ?>
          "<?php echo $t['total']; ?>",
          <?php  } ?>
          ],
          backgroundColor: [
          'rgba(255, 99, 132, 0.2)',
          'rgba(54, 162, 235, 0.2)',
          'rgba(255, 206, 86, 0.2)',
          'rgba(75, 192, 192, 0.2)'
          ],
          borderColor: [
          'rgba(255,99,132,1)',
          'rgba(54, 162, 235, 1)',
          'rgba(255, 206, 86, 1)',
          'rgba(75, 192, 192, 1)'
          ],
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero:true
            }
          }]
        }
      }
    });
  </script>
</body>

</html>

<?php
  }
?>
<?php
  session_start();
  //require "modul/mod_log/aksi_log.php";
  if($_SESSION['jenis_u']=='JU-01'){
  	$admin = "YES";
  }
  session_destroy();
  
  if($admin=="YES"){
    echo "<script>
    setTimeout(function() {
        swal({
            title: 'Berhasil',
            text: 'Anda telah keluar dari halaman Administrator!',
            type: 'success'
        }, function() {
            window.location = '../admin/';
        });
    }, 1000);
    </script>";
  }
  else if($_SESSION['jenis_u']=='JU-02'){
    echo "<script>
    setTimeout(function() {
        swal({
            title: 'Berhasil',
            text: 'Anda telah keluar dari halaman Dokter!',
            type: 'success'
        }, function() {
            window.location = '../dokter/';
        });
    }, 1000);
    </script>";
  }
  else if($_SESSION['jenis_u']=='JU-08'){
    echo "<script>
    setTimeout(function() {
        swal({
            title: 'Berhasil',
            text: 'Anda telah keluar dari halaman Laboratorium!',
            type: 'success'
        }, function() {
            window.location = '../lab/';
        });
    }, 1000);
    </script>";
  }else if($_SESSION['jenis_u']=='JU-07'){
    echo "<script>
    setTimeout(function() {
        swal({
            title: 'Berhasil',
            text: 'Anda telah keluar dari halaman Apotek!',
            type: 'success'
        }, function() {
            window.location = '../apotek/';
        });
    }, 1000);
    </script>";
  }else if($_SESSION['jenis_u']=='JU-10'){
    echo "<script>
    setTimeout(function() {
        swal({
            title: 'Berhasil',
            text: 'Anda telah keluar dari halaman Perawat!',
            type: 'success'
        }, function() {
            window.location = '../perawat/';
        });
    }, 1000);
    </script>";
  }else{
    echo "<script>
    setTimeout(function() {
        swal({
            title: 'Berhasil',
            text: 'Anda telah keluar dari halaman Pasien!',
            type: 'success'
        }, function() {
            window.location = 'index.php';
        });
    }, 1000);
    </script>";
  }

  echo "<link href='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css' rel='stylesheet'/>
  <script src=https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js'></script>"
  
?>

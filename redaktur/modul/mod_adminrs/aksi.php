<?php 

include "../../../config/koneksi.php";

$r = mysqli_query($con, "SELECT * FROM biaya_administrasi WHERE nama = '$_POST[nama]' AND biaya = '$_POST[biaya]'");

switch($_GET['act']){
    case "input": 
    if(mysqli_num_rows($r) > 0){
        $title = "Maaf";
        $text = "Data ini sudah ada!";
        $icon = "warning";
    } else {
        $title = "Add";
        $text = "Data berhasil ditambahkan!";
        $icon = "success";
        mysqli_query($con, "INSERT INTO biaya_administrasi VALUES (NULL,'$_POST[nama]','$_POST[biaya]')");
    }

    break;
    case "edit":
        $title = "Update";
        $text = "Data berhasil diperbarui!";
        $icon = "success";
        mysqli_query($con, "UPDATE biaya_administrasi SET nama = '$_POST[nama]', biaya = '$_POST[biaya]' WHERE id = '$_POST[id]'");
    break;
    case "del": 
        $title = "Delete";
        $text = "Data berhasil dihapus!";
        $icon = "success";
        mysqli_query($con, "DELETE FROM biaya_administrasi WHERE id = '$_GET[id]'");
    break;
}

echo "<link href='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css' rel='stylesheet'/>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert-dev.js'></script>";
  
echo "<script>
    setTimeout(function() {
        swal({
            title: '$title',
            text: '$text',
            type: '$icon'
        }, function() {
            window.location = '../../media.php?module=admin_rs';
        });
    }, 1000);
    </script>";

?>
<?php
include "../../../config/koneksi.php";

$sql = "SELECT * FROM dr_praktek WHERE hari='$_GET[hari]' AND jam='$_GET[wkt]' AND id_poli='$_GET[poli]'";

$k = mysqli_query($con,$sql);
if(mysqli_num_rows($k) > 0){
    echo "<select class='form-control' name='dr'>";
    while($ki = mysqli_fetch_assoc($k)){
        $dr = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM user WHERE id_user = $ki[id_dr]"));
        echo "<option value='$ki[id_dr]'>$dr[nama_lengkap]</option>";
    }
    echo "</select>";
} else {
    echo "<select class='form-control' disabled><option value=''>--tdk ada data--</option></select>";
}


?>

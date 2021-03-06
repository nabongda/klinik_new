<?php 

include "../../../config/koneksi.php";

if ($_POST['status']=='terima') {
    //cari nama produk di master
    $nama = mysqli_fetch_assoc(mysqli_query($con, "SELECT nama_produk AS prod FROM produk_master WHERE kd_produk = '$_POST[produk]'"));

    //cek jml produk sblm pengiriman
    $jml = mysqli_fetch_assoc(mysqli_query($con, "SELECT jumlah AS sblm FROM produk WHERE kode_barang = '$_POST[produk]'"));

    //cek jml produk di gudang pusat (yg diisi saat pembelian)
    $jml_di = mysqli_fetch_assoc(mysqli_query($con, "SELECT jumlah AS gudang FROM produk_pusat WHERE kode_barang = '$_POST[produk]'"));

    $produk = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM produk_pusat WHERE kode_barang = '$_POST[produk]'"));

    //STOP kl $jml_di[gudang] < $_POST[jml]

    if( $jml_di['gudang'] < $_POST['jml'] ){
        ?> 
        
        <script>alert("Jumlah yang akan dikirim melebihi stok gudang. Silakan cek kembali pengiriman atau lakukan pembelian produk ini");
        location.href="../../media.php?module=gudang_cabang";
        </script>
        
        <?php
    } else {

    //hitung selisih jumlah yg dikirim dengan $jml_di[gudang]
    //$sisa_gudang = $jml_di["gudang"] - $_POST['jml'];

    //updatekan $sisa_gudang ke gudang pusat
    //$update_gudang_pusat = "UPDATE produk_pusat SET jumlah = '$sisa_gudang' WHERE kode_barang = '$_POST[produk]'";

    //mysqli_query($con, $update_gudang_pusat);

    //cek kl $jml[sblm] null maka insert alias kiriman pertama produk setelah pembelian
    //cek kl $jml[sblm] tdk null maka update, $jml[sblm] disimpan

    if(!$jml){
        $kiriman = "INSERT INTO produk VALUES (NULL,'$_POST[produk]','$nama[prod]','$_POST[jml]', '$_POST[hrg]', '$_POST[hrg_jual]', '$_POST[satuan]', '$_POST[kategori]', '$_POST[tgl_produksi]', '$_POST[tgl_expired]')";
    } else {
        //totalkan $jml[sblm] + $_POST[jml]
        $jmln = $jml['sblm'] + $_POST['jml'];
        $kiriman = "UPDATE produk SET jumlah = '$jmln' WHERE kode_barang = '$_POST[produk]'";
    }

    //rekam proses pengiriman
    $rekam = "INSERT INTO produk_pengiriman VALUES (NULL,NOW(),'$_POST[produk]','$nama[prod]','$_POST[jml]','$jml[sblm]')";

    //update status
    $tgl_terima	= date("Y-m-d H:i:s");
    $status     = mysqli_query($con, "UPDATE history_kirim_stok SET status='terima', tgl_terima='$tgl_terima' WHERE id='$_POST[id]'");

    mysqli_query($con, $kiriman);
    mysqli_query($con, $rekam); ?>

    <script>
        location.href="../../media.php?module=gudang_cabang";
    </script>

    <?php

    }
}

elseif ($_POST['status']=='tolak') {
    $status = mysqli_query($con, "UPDATE history_kirim_stok SET status='tolak', pesan='$_POST[pesan]' WHERE id='$_POST[id]'"); ?>

    <script>
        location.href="../../media.php?module=gudang_cabang";
    </script>

    <?php
}

?>

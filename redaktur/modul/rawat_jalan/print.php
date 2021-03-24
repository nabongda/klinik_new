<?php 

include "../../../config/koneksi.php";

$c = mysqli_query($con,"SELECT * FROM antrian_pasien a JOIN pasien b ON a.id_pasien = b.id_pasien WHERE a.no_faktur = '$_GET[faktur]'");
$d = mysqli_query($con,"SELECT * FROM history_ap a JOIN pasien b ON a.id_pasien = b.id_pasien WHERE a.no_faktur = '$_GET[faktur]'");
$e = mysqli_query($con,"SELECT * FROM perawatan_pasien a JOIN pasien b ON a.id_pasien = b.id_pasien WHERE a.no_faktur = '$_GET[faktur]'");

if(mysqli_num_rows($c) > 0){
    $dt = mysqli_fetch_assoc($c);
} else if(mysqli_num_rows($d) > 0){
    $dt = mysqli_fetch_assoc($d);
} else {
    $dt = mysqli_fetch_assoc($e);
}



$poli = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM poliklinik WHERE id_poli = $dt[poliklinik]"));
$dr = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM user WHERE id_user = $dt[id_dr]"));


$byr = mysqli_fetch_assoc(mysqli_query($con,"SELECT status FROM pembayaran WHERE no_faktur = '$_GET[faktur]'"));

?>
<style>
table, .table {width: 100%; border-collapse: collapse}
table td {padding: 1%}
.table th, .table td {border: solid 1px black; padding: 1%}
.table th {background: blue; color: white}

    </style>
        <center>
            <h4 class="box-title">Detail Billing Apotek</h4>
        </center>
    <table>
        <tr>
            <td>
                <label>Nomer Billing :</label>
                <?php echo $dt['no_faktur']; ?>
            </td>
            <td>
                <label>Nomer RM :</label>
                <?php echo $dt['id_pasien']; ?>
            </td>
            <td>
                <label>Tgl Registrasi :</label>
                <?php echo $dt['tanggal_pendaftaran']; ?>
            </td>
        </tr>
        <tr>
            <td>
                <label>Nama Pasien :</label>
                <?php echo $dt['nama_pasien']; ?>
            </td>
            <!-- <td>
                <label>Poliklinik :</label><br/>
                <?php echo $poli['poli']; ?>
            </td> -->
            <td>
                <label>Nama Dokter Pemeriksa :</label>
                <?php echo $dr['nama_lengkap']; ?>
            </td>
            <td>
                <label>Penjamin :</label>
                <?php echo $dt['jenis_pasien']; ?>
            </td>
        </tr>
        <!-- <tr>
            <td>
                <label>Jenis Layanan</label><br/>
                <?php echo $dt['jenis_layanan']; ?>
            </td>
            <td>
                <label>Status</label><br/>
                <?php echo $byr['status']; ?>
            </td>
        </tr> -->
        <br/><br/>

        <table class="table">
            <tr>
                <th>Nama Obat</th>
                <th>Qty</th>
                <th>Harga</th>
                <th>Diskon</th>
                <th>Sub Total</th>
            </tr>
        <?php 

        // $u = mysqli_query($con,"SELECT * FROM kasir_sementara WHERE no_faktur = '$_GET[faktur]' AND jenis = 'Produk' ORDER BY kategori DESC");

        // $kat = "";
        // $tot = 0;
        // while($ux = mysqli_fetch_assoc($u)){
        //     $kate = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM kategori_biaya WHERE id = $ux[kategori]"));
        //     if($kat == $ux['kategori']){} else if($ux['kategori'] == "0"){
        //         echo "<tr><td colspan=5>Biaya Obat-obatan</td></tr>";
        //     } else {
        //         echo "<tr><td colspan=5>$kate[kategori]</td></tr>";
        //     }

        //     $nama = $ux['nama'];
        //     $dsc = ($ux['diskon']/100 * $ux['harga']);
        //     echo "<tr>";
        //         echo "<td>$ux[nama] $nama</td>";
        //         echo "<td>$ux[jumlah]</td>";
        //         echo "<td>".number_format($ux['harga'],0,",",".")."</td>";
        //         echo "<td>".number_format($dsc,0,",",".")."</td>";
        //         echo "<td>".number_format($ux['sub_total'],0,",",".")."</td>";
        //     echo "</tr>";
        //     $kat = $ux['kategori'];
        //     $tot = $tot + $ux['sub_total'];
        // }

        // echo "<tr><td colspan=4>TOTAL</td><td>".number_format($tot,0,",",".")."</td></tr>";
        $a = mysqli_query($con, "SELECT * FROM kasir_sementara WHERE no_faktur = '$_GET[faktur]' AND id IN ($_GET[data]) ORDER BY kategori DESC");
        $kat = "";
        $tot = 0;
        
        while($ab = mysqli_fetch_assoc($a)){
            //cek produk
            $pro = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM produk WHERE kode_barang='$ab[kode]' AND nama_p='$ab[nama]'"));
            if($pro['jumlah'] > 0){
                $sisa = $pro['jumlah'] - $ab['jumlah'];
                mysqli_query($con, "UPDATE produk SET jumlah = '$sisa' WHERE id_p = '$pro[id_p]'");
                $status = "OBAT SUDAH DIAMBIL";
                mysqli_query($con, "INSERT INTO history_kasir (no_faktur,id_pasien,id_dr,id_kasir,tanggal,no_urut,nama,kode,harga_beli,harga,jumlah,diskon,sub_total,id_kk,jenis,status,ket,penginput,kategori,tgl_visit) SELECT no_faktur,id_pasien,id_dr,id_kasir,tanggal,no_urut,nama,kode,harga_beli,harga,jumlah,diskon,sub_total,id_kk,jenis,status,ket,penginput,kategori,tgl_visit FROM kasir_sementara WHERE id = '$ab[id]'");
                mysqli_query($con, "DELETE FROM kasir_sementara WHERE id='$ab[id]'");
            } else {
                $status = "STOK OBAT TIDAK TERSEDIA";
            }

            $kate = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM kategori_biaya WHERE id=$ab[kategori]"));
            if($kat == $ab['kategori']){} else if($ab['kategori'] == "0"){
                echo "<tr><td colspan=5>Biaya Obat-obatan</td></tr>";
            } else {
                echo "<tr><td colspan=5>$kate[kategori]</td></tr>";
            }

            $nama = $ab['nama'];
            $dsc = ($ab['diskon']/100 * $ab['harga']);
            echo "<tr>";
                echo "<td>$ab[nama]</td>";
                echo "<td>$ab[jumlah]</td>";
                echo "<td>".number_format($ab['harga'],0,",",".")."</td>";
                echo "<td>".number_format($dsc,0,",",".")."</td>";
                echo "<td>".number_format($ab['sub_total'],0,",",".")."</td>";
            echo "</tr>";
            $kat = $ab['kategori'];
            $tot = $tot + $ab['sub_total'];
        }

        ?>
        </table>
<script>
window.print();
</script>
<?php 

include "../../../config/koneksi.php";
    $no_faktur= $_GET['nofak'];
    $tgl = $_GET['tanggal'];

    $sql = mysqli_query($con,"SELECT * FROM perawatan_pasien a JOIN pasien b ON a.id_pasien = b.id_pasien WHERE no_faktur='$no_faktur'");
    $dt = mysqli_fetch_array($sql);

    $dr = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM user WHERE id_user = $dt[id_dr]"));
?>


<style>
    table, .table {width: 100%; border-collapse: collapse}
    table td {padding: 1%}
    .table th, .table td {border: solid 1px black; padding: 1%}
    .table th {background: blue; color: white}
</style>

    <center>
        <h3>Detail Pemeriksaan Pasien</h3>
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
            <td>
                <label>Nama Dokter Pemeriksa :</label>
                <?php echo $dr['nama_lengkap']; ?>
            </td>
            <td>
                <label>Penjamin :</label>
                <?php echo $dt['jenis_pasien']; ?>
            </td>
        </tr>
    </table>

    <table id="example1" class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>Tanggal</th>
                <th>Subjek</th>
                <th>Objek</th>
                <th>Assestment</th>
                <th>Resep Obat</th>
                <th>Tindakan Dokter</th>
                <!-- <th>Foto</th> -->
            </tr>
        </thead>
        <tbody>
            <?php 
                $q =  mysqli_query($con,"SELECT * FROM pasca_treatment WHERE no_faktur='$no_faktur' ORDER BY tanggal DESC"); 
                $ps = mysqli_fetch_array($q);
            ?>
            <tr>
                <td><?php echo $ps['tanggal']; ?></td>
                <td><?php echo $ps['subjek']; ?></td>
                <td><?php echo $ps['objek']; ?></td>
                <td><?php echo $ps['assestment']; ?></td>
                <td>
                    <?php 
                    $q1 = mysqli_query($con, "SELECT * FROM history_kasir WHERE no_faktur='$no_faktur' AND kategori = 0"); 
                    $cekp = mysqli_num_rows($q1);
                    if ($cekp>0) {
                        echo "| ";
                        while ($p=mysqli_fetch_array($q1)) {
                            echo $p['nama'];
                            echo " | ";
                        }
                    }else{
                        echo "Tidak Ada Resep Obat ";
                    }
                    ?>
                </td>
                <td>
                <?php 
                    $q2 = mysqli_query($con,"SELECT * FROM history_kasir WHERE no_faktur='$no_faktur' AND kategori != 0"); 
                    $cekt = mysqli_num_rows($q2);
                    if ($cekt>0) {
                        echo "| ";
                        while ($t=mysqli_fetch_array($q2)) {
                            echo $t['nama'];
                            echo " | ";
                        }
                    }else{
                        echo "Tidak Ada Tindakan Dokter";
                    }
                    ?>
                </td>
                <!-- <td>
                    <?php if ($ps['foto1']!=null) {
                        ?><img width="50" src="../file_user/foto_pasien/<?php echo $ps['foto1']; ?>" id="foto1<?php echo $no; ?>" data-uri="../file_user/foto_pasien/<?php echo $ps['foto1']; ?>" onclick="zoom(this.id)"><?php
                    }if($ps['foto2']!=null){
                        ?><img width="50" src="../file_user/foto_pasien/<?php echo $ps['foto2']; ?>" id="foto2<?php echo $no; ?>" data-uri="../file_user/foto_pasien/<?php echo $ps['foto2']; ?>" onclick="zoom(this.id)"><?php
                    }if ($ps['foto3']!=null){
                        ?><img width="50" src="../file_user/foto_pasien/<?php echo $ps['foto3']; ?>" id="foto3<?php echo $no; ?>" data-uri="../file_user/foto_pasien/<?php echo $ps['foto3']; ?>" onclick="zoom(this.id)"><?php
                    }if($ps['foto4']!=null){
                        ?><img width="50" src="../file_user/foto_pasien/<?php echo $ps['foto4']; ?>" id="foto4<?php echo $no; ?>" data-uri="../file_user/foto_pasien/<?php echo $ps['foto4']; ?>" onclick="zoom(this.id)"><?php
                    } ?>
                </td> -->
            </tr>
        </tbody>
    </table>
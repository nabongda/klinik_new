<?php

include "../../../config/koneksi.php";

//ambil detail obat yg akan dipindah
$a = mysqli_query($con, "SELECT * FROM kasir_sementara WHERE id IN ($_GET[data])");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nota | App Apotik</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">
        window.print();
    </script>
    <style>
        #invoice{
            padding: 30px;
        }

        .invoice {
            position: relative;
            background-color: #FFF;
            min-height: 680px;
            padding: 15px
        }

        .invoice header {
            padding: 10px 0;
            margin-bottom: 20px;
            border-bottom: 1px solid #3989c6
        }

        .invoice .company-details {
            text-align: right
        }

        .invoice .company-details .name {
            margin-top: 0;
            margin-bottom: 0
        }

        .invoice .contacts {
            margin-bottom: 20px
        }

        .invoice .invoice-to {
            text-align: left
        }

        .invoice .invoice-to .to {
            margin-top: 0;
            margin-bottom: 0
        }

        .invoice .invoice-details {
            text-align: right
        }

        .invoice .invoice-details .invoice-id {
            margin-top: 0;
            color: #3989c6
        }

        .invoice main {
            padding-bottom: 50px
        }

        .invoice main .thanks {
            margin-top: -100px;
            font-size: 2em;
            margin-bottom: 50px
        }

        .invoice main .notices {
            padding-left: 6px;
            border-left: 6px solid #3989c6
        }

        .invoice main .notices .notice {
            font-size: 1.2em
        }

        .invoice table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px
        }

        .invoice table td,.invoice table th {
            padding: 15px;
            background: #eee;
            border-bottom: 1px solid #fff
        }

        .invoice table th {
            white-space: nowrap;
            font-weight: 400;
            font-size: 16px
        }

        .invoice table td h3 {
            margin: 0;
            font-weight: 400;
            color: #3989c6;
            font-size: 1.2em
        }

        .invoice table .qty,.invoice table .total,.invoice table .unit {
            text-align: right;
            font-size: 1.2em
        }

        .invoice table .no {
            color: #fff;
            font-size: 1.6em;
            background: #3989c6
        }

        .invoice table .unit {
            background: #ddd
        }

        .invoice table .total {
            background: #3989c6;
            color: #fff
        }

        .invoice table tbody tr:last-child td {
            border: none
        }

        .invoice table tfoot td {
            background: 0 0;
            border-bottom: none;
            white-space: nowrap;
            text-align: right;
            padding: 10px 20px;
            font-size: 1.2em;
            border-top: 1px solid #aaa
        }

        .invoice table tfoot tr:first-child td {
            border-top: none
        }

        .invoice table tfoot tr:last-child td {
            color: #3989c6;
            font-size: 1.4em;
            border-top: 1px solid #3989c6
        }

        .invoice table tfoot tr td:first-child {
            border: none
        }

        .invoice footer {
            width: 100%;
            text-align: center;
            color: #777;
            border-top: 1px solid #aaa;
            padding: 8px 0
        }

        @media print {
            .invoice {
                font-size: 11px!important;
                overflow: hidden!important
            }

            .invoice footer {
                position: absolute;
                bottom: 10px;
                page-break-after: always
            }

            .invoice>div:last-child {
                page-break-before: always
            }
        }
    </style>
</head>
<body>
    <div id="invoice">
        <div class="invoice overflow-auto">
            <div style="min-width: 600px">
                <main>
                    <div class="row contacts">
                        <div class="col invoice-to">
                            <h2><?php echo $_GET['faktur']; ?></h2>
                            <div><?php echo $po['tgl_pembelian']; ?></div>
                        </div>
                    </div>
                    <table border="0" cellspacing="0" cellpadding="0">
                    <thead>
                        <tr>
                        <th>Obat</th>
                        <th>Keterangan</th>
                        <th>Jml</th> 
                        <th>Status</th> 
                        </tr>
                    </thead>
                    <tbody>
                    <?php

                    while($ab = mysqli_fetch_assoc($a)){
                        //cek produk
                        $pro = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM produk WHERE kode_barang = '$ab[kode]' AND nama_p = '$ab[nama]'"));
                        if($pro['jumlah'] > 0){
                            $sisa = $pro['jumlah'] - $ab['jumlah'];
                            mysqli_query($con, "UPDATE produk SET jumlah = '$sisa' WHERE id_p = '$pro[id_p]'");
                            $status = "OBAT SUDAH DIAMBIL";
                            mysqli_query($con, "INSERT INTO history_kasir (no_faktur,id_pasien,id_dr,id_kasir,tanggal,no_urut,nama,kode,harga_beli,harga,jumlah,diskon,sub_total,id_kk,jenis,status,ket,penginput,kategori,tgl_visit) SELECT no_faktur,id_pasien,id_dr,id_kasir,tanggal,no_urut,nama,kode,harga_beli,harga,jumlah,diskon,sub_total,id_kk,jenis,status,ket,penginput,kategori,tgl_visit FROM kasir_sementara WHERE id = '$ab[id]'");
                            mysqli_query($con, "DELETE FROM kasir_sementara WHERE id = '$ab[id]'");
                        } else {
                            $status = "STOK OBAT TIDAK TERSEDIA";
                        }

                        echo "<tr>";
                        echo "<td>$pro[nama_p]</td>";
                        echo "<td>$ab[ket]</td>";
                        echo "<td>$ab[jumlah]</td>";
                        echo "<td>$status</td>";
                        echo "</tr>";
                    }

                    ?>
                     </tbody>
                     <tbody>
                        <tr>
                            <td colspan="2"></td>
                            <td colspan="2" style="text-align: right;">TOTAL:</td>
                            <td>Rp <?php echo $po['total']; ?></td>
                        </tr>
                        <tr>
                        <td colspan="2"></td>
                            <td colspan="2" style="text-align: right;">BAYAR:</td>
                            <td>Rp <?php echo $po['cash']; ?></td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                            <td colspan="2" style="text-align: right;">KEMBALI:</td>
                            <td>Rp <?php echo $po['kembalian']; ?></td>
                        </tr>
                     </tbody>
                </table>
                </main>
                <div>
            </div>
        </div>
    </body>
    </html>
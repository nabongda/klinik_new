<?php 
include "../../../config/koneksi.php";
include "../../../config/fungsi_seo.php";
require_once("../../dompdf/autoload.inc.php");
use Dompdf\Dompdf;
$dompdf = new Dompdf();

$id_ju    			= $_POST['id_ju'];
$no_tran 			= $_POST['no_tran'];
$tgl				= date("Y-m-d H:i:s");
$nama_pembeli   	= $_POST['nama_pembeli'];
$total  			= $_POST['total'];
$jenis_pembayaran	= $_POST['jenis_pembayaran'];
$cash				= $_POST['cash'];
$kembalian			= $_POST['kembalian'];

$query_cetak = mysqli_query($con,"SELECT * FROM beli_obat");
$q = mysqli_fetch_array(mysqli_query($con,"SELECT SUM(sub_tot) AS total, SUM(diskon) AS diskon FROM beli_obat"));

$html .= "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Nota | Klinik CGS</title>
    <link href='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet' id='bootstrap-css'>
    <script src='//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js'></script>
    <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
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
</head>";
$html .= "<body>
    <div id='invoice'>
        <div class='invoice overflow-auto'>
            <div style='min-width: 600px'>
                <main>
                    <div class='row contacts'>
                        <div class='col invoice-to'>
                            <h2 class='to'>".$no_tran."</h2>
                            <div class='address'>".$tgl."</div>
                        </div>
                    </div>";
        $html .= "<table border='0' cellspacing='0' cellpadding='0'>
                        <thead>
                            <tr>
                                <th>#</th>
                                <th class='text-left'>NAMA OBAT</th>
                                <th class='text-right'>HARGA</th>
                                <th class='text-right'>JUMLAH</th>
                                <th class='text-right'>TOTAL</th>
                            </tr>
                        </thead>
                        <tbody>";
                        $no = 1;
                        while ($row=mysqli_fetch_array($query_cetak)) {
                        $html .= "<tr>
                                <td class='no'>".$no."</td>
                                <td class='text-left'><h3>".$row['nama_brg']."</h3>
                                </td>
                                <td class='unit'>Rp".$row['hrg']."</td>
                                <td class='qty'>".$row['jumlah']."</td>
                                <td class='total'>Rp".$row['sub_tot']."</td>
                                </tr>";
                        $no++;
                        }
                        $html .= "</tbody>
                        <tbody>
                            <tr>
                                <td colspan='2'></td>
                                <td colspan='2' style='text-align: right;'>SUBTOTAL:</td>
                                <td>Rp ".$q['total']."</td>
                            </tr>
                            <tr>
                                <td colspan='2'></td>
                                <td colspan='2' style='text-align: right;'>TOTAL:</td>
                                <td>Rp ".$total."</td>
                            </tr>
                            <tr>
                                <td colspan='2'></td>
                                <td colspan='2' style='text-align: right;'>BAYAR:</td>
                                <td>Rp ".$cash."</td>
                            </tr>
                            <tr>
                                <td colspan='2'></td>
                                <td colspan='2' style='text-align: right;'>KEMBALI:</td>
                                <td>Rp ".$kembalian."</td>
                            </tr>
                        </tbody>
                    </table>";
        $html .= "</main>
            <div>
        </div>
    </div>";
$html .= "</body>";
$html .= "</html>";
$dompdf->loadHtml($html);
// Setting ukuran dan orientasi kertas
$dompdf->setPaper('A4', 'potrait');
// Rendering dari HTML Ke PDF
$dompdf->render();
// Melakukan output file Pdf
$dompdf->stream('nota.pdf');

?>
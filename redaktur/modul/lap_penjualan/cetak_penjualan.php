<script type="text/javascript">
window.print();
</script>
<?php
	include("../../../config/koneksi.php");
	include("../../../config/fungsi_rupiah.php");
	include("../../../config/fungsi_indotgl.php");
?>
<style>
.table1{
	margin:0 auto;
	border-collapse:collapse;
	background:#FFFFFF;
}
.table1 th{
	border:solid;
	border-width:1px;
	border-color:#000000;
	color:black;
	padding:4px 8px;
}
.table1 td{
	border:solid;
	border-width:1px;
	border-color:#000000;
	padding:4px 8px;
}
#hitam{
	text-align:center;
	background:#333333;
	color:#FFFFFF;
}
#rpt{
	border:solid;
	border-color:#000000;
	border-width:1px;
}
.row:after, .row:before {
	display: table;
	content: " ";
}
.row:after {
	clear: both;
}
.col-md-2 {
    width: 20%;
  }
.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
}

</style>

<?php

switch($_GET['act']){
	case "cetakjual":
?>
<div align="center">
	<h4>Laporan Penjualan Produk Pada Tanggal : <?php echo $_GET['tgl1']; ?> Sampai Tanggal : <?php echo $_GET['tgl2']; ?></h4>
</div>
<div align="center">
	<div align="left"><h4>Data Penjualan Produk</h4></div>    
	<table width="100%" class="table1">
		<thead>
	    	<tr>
				<th>No</th>
                <th>No Transaksi</th>
                <th>Nama Pembeli</th>
                <th>Tanggal Penjualan</th>
                <th>Jenis Pembayaran</th>
                <th>Status Pembayaran</th>
                <th>Subtotal Bayar</th>
	        </tr>
	    </thead>
	    <tbody>
			<?php $q1 = mysqli_query($con, "SELECT * FROM pelayanan_obat WHERE tgl_pembelian BETWEEN '$_GET[tgl1]' AND '$_GET[tgl2]'"); 
				$no =1;
				while ($data = mysqli_fetch_array($q1)) {
			?>
            <tr>
				<td><?php echo $no; ?></td>
				<td><?php echo $data['no_tran']; ?></td>
				<td><?php echo $data['nama_pembeli']; ?></td>
				<td><?php echo $data['tgl_pembelian']; ?></td>
				<td><?php echo $data['jenis_pembayaran']; ?></td>
				<td><?php echo $data['status_pembayaran']; ?></td>
				<td><?php echo rupiah($data['total']); ?></td>
            </tr>
                <?php
                $no++;
              }
            ?>
	    </tbody>
			<tr>
				<th colspan="6" style="text-align: right;">Total Penjualan: </th>
				<th style="text-align: left;">
				<?php
					$t = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(total) AS total FROM pelayanan_obat WHERE tgl_pembelian BETWEEN '$_GET[tgl1]' AND '$_GET[tgl2]'")); //menyimpan hasil query ke variabel $t
					?><b><?php echo rupiah($t["total"]); ?></b>
					<input type="hidden" id="total" name="total" value="<?php echo $t["total"]; ?>">
				</th>
			</tr>
    </table>
    <br/>
</div>


<?php
break;
}
?>
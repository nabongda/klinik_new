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
	case "cetakrugilaba":
?>
<div align="center">
	<h4>Laporan Rugi Laba </h4>
</div>
<div align="center">
	<div align="left"><h4>Data Rugi Laba</h4></div>    
	<table width="100%" class="table1">
		<thead>
			<tr style="text-align:center;">
				<th rowspan="2">Kode Produk</th>
				<th rowspan="2">Nama Produk</th>
				<th colspan="3">Saldo Persediaan</th>
				<th rowspan="2" colspan="2">Subtotal Laba</th>
            </tr>
			<tr>
				<th>Harga Jual</th>
				<th>Harga Beli</th>
				<th>Qty</th>
            </tr>
	    </thead>
	    <tbody>
			<?php
			$tampil     = mysqli_query($con, "SELECT * FROM produk_pusat");
			$total = 0;
			while($data = mysqli_fetch_array($tampil))
			{ 
			?>
			<tr>
				<td style="text-align:center;"><?php echo $data['kode_barang']; ?></td>
				<td><?php echo $data['nama_p']; ?></td>
				<td><?php echo rupiah ($data['hrg_jual']); ?></td>
				<td><?php echo rupiah ($data['hrg']); ?></td>
				<td style="text-align:center;"><?php echo $data['jumlah']; ?></td>
				<?php 
					$subtotal = ($data['hrg_jual']-$data['hrg'])*$data['jumlah'];
					$total = $total+$subtotal;
				?>
				<td><?php echo rupiah ($subtotal); ?></td>
			</tr>
		</tbody>
		<?php } ?>
		<tbody>
			<tr>
				<th colspan="5" style="text-align: right;"> Total Laba</th>
				<th style="text-align: left;">
				<b><?php echo rupiah($total); ?></b>
				<input type="hidden" id="total" name="total" value="<?php echo rupiah($total); ?>">
				</th>
			</tr>
        </tbody>
    </table>
    <br/>
</div>


<?php
break;
}
?>
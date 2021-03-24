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
	case "cetakkas":
?>
<div align="center">
	<h4>Laporan Kas Pada Tanggal : <?php echo $_GET['tgl1']; ?> Sampai Tanggal : <?php echo $_GET['tgl2']; ?></h4>
</div>
<div align="center">
	<div align="left"><h4>Data Kas</h4></div>    
	<table width="100%" class="table1">
		<thead>
	    	<tr>
				<th>No</th>
				<th>Tanggal</th>
				<th>Nama Kas</th>
				<th>Pemasukan</th>
				<th>Pengeluaran</th>
	        </tr>
	    </thead>
	    <tbody>
			<?php
			$tampil     = mysqli_query($con, "SELECT * FROM data_kas WHERE tanggal BETWEEN '$_GET[tgl1]' AND '$_GET[tgl2]'");
			$no = 1;
			while($data = mysqli_fetch_array($tampil)){ 
			?>
			<tr>
				<td><?php echo $no++?></td>
				<td><?php echo $data['tanggal']; ?></td>
				<td><?php echo $data['nama_kas']; ?></td>
				<td><?php 
				if ($data['kategori']=='pemasukan') {
					echo rupiah($data['jumlah']); 
				}
				else {
					echo "-";
				} ?>
				</td>
				<td><?php 
				if ($data['kategori']=='pengeluaran') {
					echo rupiah($data['jumlah']); 
				}
				else {
					echo "-";
				} ?>
				</td>
			</tr>
		<?php } ?>
	    </tbody>
			<tr>
				<th colspan="3" style="text-align: right;">Total Pemasukan: </th>
				<th colspan="2" style="text-align: left;">
				<?php
					$totpem = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(jumlah) AS totpem FROM data_kas WHERE kategori='pemasukan'")); //menyimpan hasil query ke variabel $t
					?><b><?php echo rupiah($totpem["totpem"]); ?></b>
					<input type="hidden" id="totpem" name="totpem" value="<?php echo $totpem["totpem"]; ?>">
				</th>
			</tr>
			<tr>
				<th colspan="3" style="text-align: right;">Total Pengeluaran: </th>
				<th colspan="2" style="text-align: left;">
				<?php
					$totpeng = mysqli_fetch_array(mysqli_query($con, "SELECT SUM(jumlah) AS totpeng FROM data_kas WHERE kategori='pengeluaran'")); //menyimpan hasil query ke variabel $t
					?><b><?php echo rupiah($totpeng["totpeng"]); ?></b>
					<input type="hidden" id="totpeng" name="totpeng" value="<?php echo $totpeng["totpeng"]; ?>">
				</th>
			</tr>
			<tr>
				<th colspan="3" style="text-align: right;">Total Saldo: </th>
				<th colspan="2" style="text-align: left;">
					<?php echo rupiah($totpem["totpem"]-$totpeng["totpeng"]); ?>
				</th>
			</tr>
    <br/>
</div>


<?php
break;
}
?>
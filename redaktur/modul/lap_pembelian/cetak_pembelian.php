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
	case "cetakpt":
?>
<div align="center">
	<h4>Pembelian Tunai Pada Tanggal : <?php echo $_GET['tgl1']; ?> Sampai Tanggal : <?php echo $_GET['tgl2']; ?></h4>
</div>
<div align="center">
	<div align="left"><h4>Data Pembelian Tunai</h4></div>    
	<table width="100%" class="table1">
		<thead>
	    	<tr>
				<th>No</th>
				<th>No Faktur</th>
				<th>Tanggal Pembelian</th>
				<th>Suplier</th>
				<th>Total</th>
				<th>Jenis Pembayaran</th>
				<th>Keterangan</th>
	        </tr>
	    </thead>
	    <tbody>
		<?php $q1 = mysqli_query($con, "SELECT * FROM beli WHERE tgl_beli between '$_GET[tgl1]' AND '$_GET[tgl2]'"); 
              $no =1;
              while ($br = mysqli_fetch_array($q1)) {
                ?>
            <tr>
              	<td><?php echo $no; ?></td>
				<td><?php echo $br['no_fak']; ?></td>
				<td><?php echo $br['tgl_beli']; ?></td>
				<?php $sql1 = mysqli_query($con, "SELECT * FROM suplier WHERE id_sup='$br[id_sup]'"); 
					$k = mysqli_fetch_array($sql1); ?>
				<td><?php echo $k['nama_sup']; ?></td>
				<td><?php echo rupiah($br['total']); ?></td>
				<td><?php echo $br['pembayaran']; ?></td>
				<td><?php echo $br['ket']?></td>
            </tr>
                <?php
                $no++;
              }
            ?>
	    </tbody>
    </table>
    <br/>
</div>

<?php
break;
case "cetakpkb": ?>
<div align="center">
	<h4>Pembelian Kredit Pada Tanggal : <?php echo $_GET['tgl1']; ?> Sampai Tanggal : <?php echo $_GET['tgl2']; ?></h4>
</div>
<div align="center">
	<div align="left">
		<h4>Data Pembelian Kredit (<i>Belum Lunas</i>)</h4>
	</div>    
	<table width="100%" class="table1">
		<thead>
	    	<tr>
				<th>No</th>
				<th>No Faktur</th>
				<th>Tanggal Pembelian</th>
				<th>Supplier</th>
				<th>Total</th>
				<th>Tanggal Tempo</th>
	        </tr>
	    </thead>
	    <tbody>
		<?php $q2 = mysqli_query($con, "SELECT * FROM beli_k WHERE bukti_bayar='' AND tgl_beli BETWEEN '$_GET[tgl1]' AND '$_GET[tgl2]'"); 
              $no =1;
              while ($pkb = mysqli_fetch_array($q2)) {
                ?>
            <tr>
              	<td><?php echo $no; ?></td>
				<td><?php echo $pkb['no_fak']; ?></td>
				<td><?php echo $pkb['tgl_beli']; ?></td>
				<?php $sql2 = mysqli_query($con, "SELECT * FROM suplier WHERE id_sup='$pkb[id_sup]'"); 
					$k2 = mysqli_fetch_array($sql2); ?>
				<td><?php echo $k2['nama_sup']; ?></td>
				<td><?php echo rupiah($pkb['total']); ?></td>
				<td><?php echo $pkb['tgl_tempo']; ?></td>
            </tr>
                <?php
                $no++;
              }
            ?>
	    </tbody>
    </table>
    <br/>
</div>
<?php
break;
case "cetakpkl": ?>
<div align="center">
	<h4>Pembelian Kredit Pada Tanggal : <?php echo $_GET['tgl1']; ?> Sampai Tanggal : <?php echo $_GET['tgl2']; ?></h4>
</div>
<div align="center">
	<div align="left">
		<h4>Data Pembelian Kredit (<i>Sudah Lunas</i>)</h4>
	</div>    
	<table width="100%" class="table1">
		<thead>
	    	<tr>
				<th>No</th>
				<th>No Faktur</th>
				<th>Tanggal Pembelian</th>
				<th>Supplier</th>
				<th>Total</th>
				<th>Tanggal Tempo</th>
	        </tr>
	    </thead>
	    <tbody>
		<?php $q3 = mysqli_query($con, "SELECT * FROM beli_k WHERE bukti_bayar!='' AND tgl_beli BETWEEN '$_GET[tgl1]' AND '$_GET[tgl2]'"); 
              $no =1;
              while ($pkl = mysqli_fetch_array($q3)) {
                ?>
            <tr>
              	<td><?php echo $no; ?></td>
				<td><?php echo $pkl['no_fak']; ?></td>
				<td><?php echo $pkl['tgl_beli']; ?></td>
				<?php $sql3 = mysqli_query($con, "SELECT * FROM suplier WHERE id_sup='$pkl[id_sup]'"); 
					$k3 = mysqli_fetch_array($sql3); ?>
				<td><?php echo $k3['nama_sup']; ?></td>
				<td><?php echo rupiah($pkl['total']); ?></td>
				<td><?php echo $pkl['tgl_tempo']; ?></td>
            </tr>
                <?php
                $no++;
              }
            ?>
	    </tbody>
    </table>
    <br/>
</div>
<?php
break;
}
?>
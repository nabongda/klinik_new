<script type="text/javascript">
window.print();
</script>
<link href="../css/paid.css" rel="stylesheet" type="text/css" />
<?php
	include('../../config/koneksi.php');
	include('../../config/fungsi_rupiah.php');
	include('../../config/fungsi_indotgl.php');
	$id		= $_GET['id'];
	$data	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM perawatan_pasien WHERE id_antrian='$id'"));
	$idp	= $data['id_pasien'];
	$idk	= $data['no_idk'];
	$pas	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM pasien WHERE id_pasien='$idp'"));
	$dok	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM medis WHERE no_idk='$idk'"));
?><div align="center">
	<h2>KARTU ANTRIAN</h2>
	<table width="50%" id="rpt">
        <tr>
			<td rowspan="2"><div align="center"><img src="../img2/lambang.png" style="width:100px; height:100px;" /></div></td>
			<td><div align="center"><strong>Rumah Sakit Kasih Herlina</strong></div></td>
		</tr>
		<tr>
		  <td><div align="center"><strong>Sorong - Papua Barat</strong></div></td>
	  </tr>
        <tr>
            <td height="35" colspan="2"><div align="left"><?php echo $pas['nama_pasien']; ?></div></td>
        </tr>
        <tr>
            <td height="35" colspan="2"><div align="left"><?php echo $pas['alamat']; ?></div></td>
        </tr>
		<tr>
            <td height="35" colspan="2"><div align="left">Antrian <?php echo $id; ?></div></td>
        </tr>
    </table>
</div>
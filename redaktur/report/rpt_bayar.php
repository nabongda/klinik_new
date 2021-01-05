<script type="text/javascript">
window.print();
</script>
<?php
	include("../../config/koneksi.php");
	include("../../config/fungsi_rupiah.php");
	include("../../config/fungsi_indotgl.php");
	//Query Data		
	$id			= $_GET['id'];
	$sel_pem	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM pembayaran WHERE id_pembayaran='$id'"));
	$id_tag		= $sel_pem['id_tagihan'];	
	$id_mit		= $sel_pem['id_mitra'];
	//Data Mitra
	$sel_mit	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM jenis_mitra WHERE id_mitra='$id_mit'"));
	$id_jpm		= $sel_mit['id_jenispem'];
	$sel_jpm	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM jenis_pembayaran WHERE id_jenispem='$id_jpm'"));
	//Jenis Pembayaran
	$sel_tag	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM tagihan WHERE id_tagihan='$id_tag'"));
	$id_atr		= $sel_tag['id_antrian'];	
	//Id Periksa
	$sel_per	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM pemeriksaan_pasien WHERE id_antrian='$id_atr'"));
	$id_per		= $sel_per['id_periksa'];	
	//Id Resep
	$sel_res	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM obat_keluar WHERE id_periksa='$id_per' GROUP BY id_periksa"));
	$id_res		= $sel_res['id_resep'];	
	//Data Pembayaran
	$sel_br		= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM pembayaran_resep WHERE id_resep='$id_res'"));
	//Data Perawatan
	$sel_atr	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM perawatan_pasien WHERE id_antrian='$id_atr'"));
	$id_pol		= $sel_atr['id_poli'];	
	$id_pas		= $sel_atr['id_pasien'];	
	$sel_pas	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM pasien WHERE id_pasien='$id_pas'"));
	$sel_pol	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM tujuan WHERE id_poli='$id_pol'"));
	$sel_pmr	= mysqli_fetch_array(mysqli_query($con, "SELECT * FROM pembayaran_resep WHERE id_antrian='$id_atr' AND sts_pem='Lunas' ORDER BY id_pemrsp DESC LIMIT 1"));		
?>
<link href="../css/paid.css" rel="stylesheet" type="text/css" />
<div align="center">
    <h2>PEMBAYARAN TAGIHAN RUMAH SAKIT</h2>
	<table width="100%">
    	<tr>
    	  	<td>Id. Pasien</td>
    	  	<td>:</td>
          <td><div align="left"><?php echo $id_pas; ?></div></td>
    	  	<td>Id. Pembayaran</td>
    	  	<td>:</td>
        	<td><div align="left"><?php echo $id; ?></div></td>
		</tr>
    	<tr>
    	  	<td>Nama Pasien</td>
    	  	<td>:</td>
       	  <td><div align="left"><?php echo $sel_pas['nama_pasien']; ?></div></td>
    	  	<td>Keterangan</td>
    	  	<td>:</td>
        	<td><div align="left"><?php echo $sel_pem['keterangan']; ?></div></td>
		</tr>    
    	<tr>
    	  	<td>Kedatangan</td>
    	  	<td>:</td>
       	  <td><div align="left"><?php echo tgl_indo($sel_atr['tgl_datang']); ?></div></td>
    	  	<td>Pembayaran</td>
    	  	<td>:</td>			
        	<td><div align="left"><?php echo tgl_indo($sel_pem['tgl_bayar']); ?></div></td>
        </tr>    
    </table>
    <br />
	<table width="100%" class="table1">
		<thead>
    	<tr>
            <th><div align="center">Uraian</div></th>
        	<th><div align="center">Keterangan</div></th>
        	<th><div align="center">Biaya</div></th>
       	</tr>
        </thead>
        <tbody>
    	<tr>
			<td>Poli</td>
			<td>&nbsp;</td>
			<td><div align="right"><span style="float:left;">Rp.</span><?php echo rupiah2($sel_tag['biaya_poli']); ?></div></td>
		</tr>
    	<tr>
            <td>Medis</td>
            <td>&nbsp;</td>
          <td><div align="right"><span style="float:left;">Rp.</span><?php echo rupiah2($sel_tag['biaya_dokter']); ?></div></td>
		</tr>
    	<tr>
            <td>Pemeriksaan</td>
            <td>&nbsp;</td>
          <td><div align="right"><span style="float:left;">Rp.</span><?php echo rupiah2($sel_tag['biaya_tindakan']); ?></div></td>
		</tr>
		<tr>
            <td>Uji Lab</td>
            <td>&nbsp;</td>
          <td><div align="right"><span style="float:left;">Rp.</span><?php echo rupiah2($sel_tag['biaya_lab']); ?></div></td>
		</tr>
    	<tr>
            <td>Rontgen</td>
            <td>&nbsp;</td>
          <td><div align="right"><span style="float:left;">Rp.</span><?php echo rupiah2($sel_tag['biaya_rontgen']); ?></div></td>
		</tr>
    	<tr>
			<td>Ruangan/Kamar</td>
        	<td>&nbsp;</td>
       	  <td><div align="right"><span style="float:left;">Rp.</span><?php echo rupiah2($sel_tag['biaya_kamar']); ?></div></td>
		</tr>        
    	<tr>
			<td>Obat</td>
        	<td><div align="center"><?php echo $sel_pmr['keterangan']; ?></div></td>
       	  <td><div align="right"><span style="float:left;">Rp.</span><?php echo rupiah2($sel_pmr['total_harga']); ?></div></td>
		</tr>        
    	<tr>
			<td><strong>Diskon</strong></td>
            <td></td>
        	<td><div align="right"><strong><?php echo $sel_pem['diskon_pem']; ?>%</strong></div></td>
       	</tr>        
    	<tr>
			<td><strong>Total</strong></td>
            <td></td>
        	<td><div align="right"><strong><span style="float:left;">Rp.</span><?php echo rupiah2($sel_pem['tagihan_akhir'] + $sel_br['total_harga']); ?></strong></div></td>
		</tr>        
    	<tr>
			<td><strong>Pembayaran</strong></td>
            <td></td>
        	<td><div align="right"><strong><span style="float:left;">Rp.</span><?php echo rupiah2($sel_pem['nominal']); ?></strong></div></td>
		</tr>        
    	<tr>
			<td><strong>Kembalian</strong></td>
            <td></td>
        	<td><div align="right"><strong><span style="float:left;">Rp.</span><?php echo rupiah2($sel_pem['kembalian']); ?></strong></div></td>
		</tr>
        </tbody>        
    </table>
</div> 
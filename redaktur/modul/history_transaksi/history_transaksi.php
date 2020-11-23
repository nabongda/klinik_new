<?php 
  $act = $_GET['act']; 
  $id_kk = $_SESSION['klinik'];
?>

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<div class="box box-success" id="boxbos">
					<div class="box-header" id="tabone">
						<h1>History Transaksi</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
					<li class="breadcrumb-item active">History Transaksi</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<section class="content">
  <?php
    switch ($act) {
      case 'detail': ?>
        <!-- Start Detail -->
        <?php 
        $tgl = $_GET['tgl'];
        $nu = $_GET['nu'];
        $no_faktur = $_GET['nofak'];
        $p = mysqli_query($con, "SELECT *FROM history_ap JOIN pasien ON history_ap.id_pasien=pasien.id_pasien WHERE history_ap.no_faktur='$no_faktur'");
        if(mysqli_num_rows($p) > 0){
          $pas = mysqli_fetch_array($p);
        } else {
          $pas = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM perawatan_pasien JOIN pasien ON perawatan_pasien.id_pasien=pasien.id_pasien WHERE perawatan_pasien.no_faktur='$no_faktur'"));
        }
        
        // Total
        $qhk = mysqli_query($con, "SELECT SUM(harga*jumlah) AS total FROM history_kasir WHERE no_faktur='$no_faktur'");
        while($hk  = mysqli_fetch_array($qhk)){
            $total += $hk['total'];
        }
        
        // End
        $kk = mysqli_query($con, "SELECT *FROM pembayaran WHERE no_faktur='$pas[no_faktur]'");
        $k = mysqli_fetch_array($kk);
        $no_faktur = $k['no_faktur'];
  ?>
  <div class="row">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <form>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Nomor Faktur</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="nama" readonly value="<?php echo $pas['no_faktur']; ?>">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Nama</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="nama" readonly value="<?php echo $pas['nama_pasien']; ?>">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">No Antrian</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="no_urut" readonly value="<?php echo $pas['no_urut']; ?>">
              </div>
            </div>
            <?php if ($pas['pembayaran']=="Lunas" || $k["status"] == "Lunas") { ?>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Total Yang Harus Di Bayar</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="total" readonly value="<?php echo rupiah($k['total']); ?>">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Kembalian</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="kembalian" value="<?php echo rupiah($k['kembalian']); ?>" readonly>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Ongkir</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="ongkir" value="<?php echo rupiah($k['ongkir']); ?>" readonly>
              </div>
            </div>
            <?php } ?>
            <div class="form-group row">
              <div class="col-sm-12">
                <button type="submit" onclick="window.history.back()" class="btn btn-success btn-sm">Kembali</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <form>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Tanggal Pendaftaran</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="tgl" readonly value="<?php echo $pas['tanggal_pendaftaran']; ?>">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Kunjungan Ke</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="status" readonly value="<?php echo $pas['kunjungan_ke']; ?>">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Status Pembayaran</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="status" readonly value="<?php echo $pas['pembayaran']; ?>">
              </div>
            </div>
            <?php if($pas['pembayaran']=="Lunas"){ ?>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Uang Tunai</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="uang" value="<?php echo rupiah($k['uang']); ?>" readonly>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Uang Transfer</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="uang" value="<?php echo rupiah($k['uang_transfer']); ?>" readonly>
              </div>
            </div>
            <?php } ?>
            <div class="form-group row">
              <div class="form-check">
                <input class="form-check-input" <?php if ($pas["konsultasi"]=="Yes"): ?>
												checked="TRUE"								
										<?php endif ?> type="checkbox" name="konsultasi" value="Yes">
                <label class="form-check-label">
                  <b>Konsultasi</b>
                </label>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <h5>Daftar Treatment atau Produk Yang Dibeli</h5>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Nama</th>
                <th>Jenis</th>
                <th>Ket</th>
                <th>Jumlah Beli</th>
                <th>Harga</th>
                <th>Diskon (%)</th>
                <th>Sub Total</th>
              </tr>
            </thead>
            <tbody>
              <?php 
                $qhk =  mysqli_query($con, "SELECT *FROM history_kasir WHERE no_faktur='$no_faktur'"); 
                while($hk=mysqli_fetch_array($qhk)){ ?>
                <tr>
                  <td><?php echo $hk['nama']; ?></td>
                  <td><?php echo $hk['jenis']; ?></td>
                  <td><?php echo $hk['ket']; ?></td>
                  <td><?php echo $hk['jumlah']; ?></td>
                  <td><?php echo rupiah($hk['harga']); ?></td>
                  <td><?php echo $hk['diskon']; ?></td>
                  <td><?php echo rupiah($hk['sub_total']); ?></td>
                </tr>	
                <?php
                }
              ?>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="6"><b>TOTAL</b></td>
                <td><b>Rp <?php echo number_format($total); ?><b></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- End Detail -->
  <?php	break;
    case 'bayar':
    // Start Bayar
      $tgl = $_GET['tgl'];
      $nu = $_GET['nu'];
      $no_faktur = $_GET['nofak'];
      $p = mysqli_query($con, "SELECT *FROM history_ap JOIN pasien ON history_ap.id_pasien=pasien.id_pasien WHERE no_faktur='$no_faktur'");
      
      
      if(mysqli_num_rows($p) > 0){
        $pas = mysqli_fetch_array($p);
      } else {
        $pas = mysqli_fetch_array(mysqli_query($con, "SELECT * FROM perawatan_pasien JOIN pasien ON perawatan_pasien.id_pasien=pasien.id_pasien WHERE perawatan_pasien.no_faktur='$no_faktur'"));
        
      }
      // Total
      $qt = mysqli_query($con, "SELECT *,SUM(jumlah*harga) AS total FROM history_kasir WHERE no_faktur='$no_faktur' AND status='Belum Lunas'");
      while($tot = mysqli_fetch_array($qt)){
        $totalp += $tot['total'];
      }
      $qp = mysqli_query($con, "SELECT *FROM pembayaran WHERE no_faktur='$no_faktur'");
      $pem = mysqli_fetch_array($qp);
      $total = $totalp; 
      $id_kk = $_SESSION['klinik']; 
      // End 
  ?>
  <div class="row">
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <form id="form_bayar">
            <input type="hidden" name="id_pasien" value="<?php echo $pas['id_pasien']; ?>">
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">No. Faktur</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="number" id="id_nofak" name="nofak" value="<?php echo $_GET['nofak']; ?>" readonly>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Nama</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="nama" readonly value="<?php echo $pas['nama_pasien']; ?>">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">No. Antrian</label>
              <div class="col-sm-8 text-right">
                <input id="nourut_ht" class="form-control" type="text" name="no_urut" readonly value="<?php echo $pas['no_urut']; ?>">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Total Yang Harus Di Bayar</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="total" id="total_t" readonly>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Kembalian</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="kembalian" id="kembalian" readonly>
              </div>
            </div>
            <div class="form-group row collapse" id="rekening">
              <label class="col-sm-4 col-form-label">No. Rekening</label>
              <div class="col-sm-8 text-right">
                <select class="form-control" name="no_rek">
                  <?php $qr = mysqli_query($con, "SELECT * FROM rekening"); 
                    while ($r=mysqli_fetch_array($qr)) { ?>
                      <option value="<?php echo $r['id_rekening']; ?>"><?php echo $r["nama_bank"]." | ".$r["no_rek"]; ?></option>
                  <?php
                    }
                  ?>
                </select>
              </div>
            </div>
            <div class="form-group row">
              <div class="col-sm-12">
                <a href="#" onclick="window.history.back()" class="btn btn-primary btn-sm">Kembali</a>
								<button id="btn_bayar" type="submit" class="btn btn-success btn-sm">Bayar</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="card">
        <div class="card-body">
          <form>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Tanggal Perawatan</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" id="tgl_ht" name="tgl" readonly value="<?php echo $pas['tanggal_pendaftaran']; ?>">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Status Pembayaran</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" name="status" readonly value="<?php echo $pas['pembayaran']; ?>">
              </div>
            </div>
            <div class="form-group row collapse" id="tr_uang_tu">
              <label class="col-sm-4 col-form-label">Uang Tunai</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" id="uang_ht" name="uang">
              </div>
            </div>
            <div class="form-group row collapse" id="tr_uang_tr">
              <label class="col-sm-4 col-form-label">Uang Transfer</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" type="text" id="uang_tr" name="uang_tr">
              </div>
            </div>
            <div class="form-group row collapse" id="tr_uang_tr">
              <label class="col-sm-4 col-form-label">Uang Ongkir</label>
              <div class="col-sm-8 text-right">
                <input class="form-control" id="ongkir" type="text" name="ongkir" placeholder="Kosongkan jika tidak ada ongkir">
              </div>
            </div>
            <div class="form-group row">
              <label class="col-sm-4 col-form-label">Metode Pembayaran</label>
              <div class="col-sm-8 text-right">
                <select name="metode" class="form-control" id="metode">
                  <option value="Tunai">Tunai</option>
                  <option value="Transfer">Transfer</option>
                  <option value="Tunai dan Transfer">Tunai dan Transfer</option>
                </select>
              </div>
            </div>
            <div class="form-group row">
              <div class="form-check">
                <input class="form-check-input" <?php if ($pas["konsultasi"]=="Yes"): ?>
                  checked="TRUE"
                  <?php endif ?> type="checkbox" name="konsultasi" value="Yes">
                <label class="form-check-label">
                  <b>Konsultasi</b>
                </label>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <div class="col-md-12">
            <h5>Biaya Lainnya (data tersimpan otomatis)</h5>
          </div><hr>
          <div class="col-md-6">
            <form class="form-group">
              <label>Silahkan pilih Biaya Lainnya</label>
              <select class="form-control" id="tataup2">
                <option value="">--Silahkan Pilih--</option>
                <?php
                $u = mysqli_query($con, "SELECT * FROM kategori_biaya WHERE id NOT IN (1,2)");
                while($ux = mysqli_fetch_assoc($u)){
                  echo "<option value='$ux[id]'>$ux[kategori]</option>";
                }
                ?>
              </select>
            </form>
          </div><hr>
          <div class="col-md-6"></div>
          <div class="col-md-12">
            <form id="form_px" class="collapse">
              <input class="form-control" type="hidden" name="id_kk" value="<?php echo $_SESSION['klinik'] ?>">
					 		<input class="form-control" type="hidden" id="nou" name="no_urut" value="<?php echo $pas['no_urut']; ?>">
					 		<input class="form-control id_pasien" type="hidden" name="id_pasien" value="<?php echo $pas['id_pasien']; ?>">
					 		<input type="hidden" class="form-control" name="id_dr" value="<?php echo $_SESSION['id_dr']; ?>">
					 		<input type="hidden" name="modal" id="modal">
					 		<input type="hidden" name="nofak" value="<?php echo $_GET['nofak']; ?>">
              <input type="hidden" name="jasa" value="1">
              <div class="form-row">
                <div class="form-group col-md-2">
                  <label>Nama Biaya</label>
                  <input class="form-control" type="text" name="nama_t" id="nama_t" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Harga</label>
                  <input class="form-control" type="text" name="harga_t" id="harga" readonly>
                </div>
                <div class="form-group col-md-2">
                  <label>Keterangan</label>
                  <input class="form-control" type="text" name="ket" value="-" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Diskon (%)</label>
                  <input class="form-control" type="number" name="dis" id="diskon_t" value="0" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Tanggal</label>
                  <input class="form-control" type="date" name="tgl_visit" autocomplete="off" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask>
                </div>
                <div class="form-group col-md-2">
                  <label>Dokter Visit</label>
                  <select class="form-control" name="dr_visit">
                    <option value="">--Silakan Pilih--</option>
                    <?php $do = mysqli_query($con, "SELECT * FROM user WHERE id_ju = 'JU-02'");
                    while($doc = mysqli_fetch_assoc($do)){
                      echo "<option value='$doc[id_user]'>$doc[nama_lengkap]</option>";
                    }
                    ?>
                  </select>
                </div>
                <div class="form-group col-md-2">
                  <button class="btn btn-sm btn-success">Tambah</button>&nbsp;
	  				 			<button type="button" id="reset_t" class="btn btn-sm btn-danger">Reset</button>
                </div>
              </div>              
            </form>
            <form id="form_produk" class="collapse">
              <input class="form-control id_pasien" type="hidden" name="id_pasien" value="<?php echo $pas['id_pasien']; ?>">
					 		<input class="form-control" type="hidden" id="nou" name="no_urut" value="<?php echo $pas['no_urut']; ?>">
					 		<input type="hidden" name="kode_p" id="kode_p">
				 			<input type="hidden" name="harga_b" id="harga_b">
				 			<input type="hidden" name="nofak" value="<?php echo $_GET['nofak']; ?>">
              <div class="form-row">
                <div class="form-group col-md-2">
                  <label>Nama Resep Obat</label>
                  <input class="form-control" type="text" name="nama_p" id="nama_p" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Harga</label>
                  <input class="form-control" type="text" name="harga_p" id="harga_p" readonly>
                </div>
                <div class="form-group col-md-2">
                  <label>Keterangan</label>
                  <input class="form-control" type="text" name="ket" value="-" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Diskon</label>
                  <input class="form-control" type="number" name="dis" id="diskon_p" value="0" required>
                </div>
                <div class="form-group col-md-2">
                  <label>Jumlah</label>
                  <input class="form-control" min="1" type="number" name="jumlah" id="jumlah_p" value="1" required>
                </div>
                <div class="col-md-2"></div>
                <div class="form-group col-md-2">
                  <button class="btn btn-sm btn-success">Tambah</button>&nbsp;
                  <button type="button" id="reset_t" class="btn btn-sm btn-danger">Reset</button>
                </div>
                </div>              
            </form>
          </div>
        </div>
        <div class="card-body">
          <table id="tabel_tp" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Jenis</th>
                <th>Jml Beli</th>
                <th>Harga</th>
                <th>Diskon</th>
                <th>Subtotal</th>
                <th>Pilihan</th>
              </tr>
            </thead>
            <tbody>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="6"><b>TOTAL</b></td>
                <td colspan="2" id="table_total"></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
    </div>
  </div>

  <?php
  // End Bayar
  break;
  default:
    // Start default
    $pl  = $_GET['pl'];
    $tgl = $_GET['tgl'];
    switch ($pl) {
      case '1':
        $date = $tgl;
      break;
      
      default:
        $date = date("Y-m-d");
      break;
    }
  ?>    
  <div class="row">
  <div class="col-12">
      <div class="card">
        <div class="card-header">
          <div class="col-md-6">
            <div class="form-group">
              <label>Tanggal</label>
              <input type="date" id="tanggal_h" class="form-control" value="<?php echo $date; ?>" autocomplete="off" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask>
            </div>
            <div class="form-group">
              <button id="cari_h" class="btn btn-sm btn-info">Cari</button>
            </div>
          </div>
        </div>
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Nama Pasien</th>
                <th>Jenis Layanan</th>
                <th>No Antrian</th>
                <th>Status Pembayaran</th>
                <th>Pilihan</th>
              </tr>
            </thead>
            <tbody>
              <?php 
              $kuery =  mysqli_query($con, "SELECT *FROM history_ap JOIN pasien ON history_ap.id_pasien=pasien.id_pasien WHERE history_ap.tanggal_pendaftaran='$date'");
              while($data=mysqli_fetch_array($kuery)){ ?>
                <tr>
                  <td><?php echo $data['nama_pasien']; ?></td>
                  <td><?php echo $data['jenis_layanan']; ?></td>
                  <td><?php echo $data['no_urut']; ?></td>
                  <td><?php echo $data['pembayaran']; ?></td>
                  <td>
                    <?php if ($data['pembayaran']=="Belum Lunas") { ?>
                      <a href="media.php?module=history_transaksi&act=bayar&nofak=<?php echo $data['no_faktur']; ?>" class="btn btn-primary btn-xs">Bayar</a>
                  <?php }else { ?>
                    <a href="media.php?module=history_transaksi&act=detail&nofak=<?php echo $data['no_faktur']; ?>" class="btn btn-info btn-xs"><i class="fa fa-bars"></i> Detail</a>
                  <?php } ?>
                  <a href="modul/history_transaksi/wa.php?faktur=<?php echo $data['no_faktur']; ?>" target="_BLANK" class="btn btn-success btn-xs"><i class="fa fa-whatsapp"> Kirim Nota</i></a>
                  </td>
                </tr>
              <?php	
              }
              
              $kuery =  mysqli_query($con, "SELECT * FROM perawatan_pasien JOIN pasien ON perawatan_pasien.id_pasien=pasien.id_pasien WHERE perawatan_pasien.tanggal_pendaftaran='$date'");
              while($data=mysqli_fetch_array($kuery)){
                $lu = mysqli_fetch_assoc(mysqli_query($con, "SELECT status AS nas FROM pembayaran WHERE no_faktur = '$data[no_faktur]'"));
              ?>
                <tr>
                  <td><?php echo $data['nama_pasien']; ?></td>
                  <td><?php echo "inap"; ?></td>
                  <td><?php echo $data['no_urut']; ?></td>
                  <td><?php echo $lu['nas']; ?></td>
                  <td>
                    <?php if($lu["nas"] == "Lunas"){ ?>
                    <a href="media.php?module=history_transaksi&act=detail&nofak=<?php echo $data['no_faktur']; ?>" class="btn btn-info btn-xs"><i class="fa fa-bars"></i> Detail</a>

                  <a href="modul/history_transaksi/wa.php?faktur=<?php echo $data['no_faktur']; ?>" target="_BLANK" class="btn btn-success btn-xs"><i class="fa fa-whatsapp"> Kirim Nota</i></a>
                    <?php } else { ?>
                    <?php  } ?>
                  </td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- End -->
  <?php
    break;
  } ?>
</section>

<script>
  $(document).ready(function(){
    $.ajaxSetup({
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });

    var nofak = "<?php echo $_GET['nofak']; ?>";
    var layan = "<?php echo $_GET['layan']; ?>";
    // datatable
    $('#tabel_tp').dataTable( {
      "bPaginate": false,
      "bProcessing": true,
      "bServerSide": true,
      "sAjaxSource": "modul/history_transaksi/data_tp.php?nofak="+nofak+"&layan="+layan,
      "aoColumnDefs": [],
      "aoColumns": [
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        {
          "mData": "0",
          "mRender": function ( data, type, row ) {
            var x = '';
                var a = '<button id="hapus_p" data-id="'+data+'" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> Hapus</button>';
                var b = '<button id="minus_p" data-id="'+data+'" class="btn btn-danger btn-xs"><i class="fa fa-minus"></i></button>';
            var c = '<button id="plus_p" data-id="'+data+'" class="btn btn-success btn-xs"><i class="fa fa-plus"></i></button>';
            var d = '<button class="btn btn-xs btn-success">Lunas</button>';
            if(row[7]=="Lunas"){
            //  return d;
            } else if(row[2]=="Obat") {
              return x;
            } else{
              return a;
            }
          }
        }
      ]
    });

    // Onchange tunai or kredit
    $("#metode").change(function(){
      var select = $(this).val();
      if(select=="Tunai"){
        $('#rekening').collapse('hide');
        $('#tr_uang_tu').collapse('show');
        $('#tr_uang_tr').collapse('hide');
      }else if(select=="Transfer"){
        $('#rekening').collapse('show');
        $('#tr_uang_tu').collapse('hide');
        $('#tr_uang_tr').collapse('show');
      }else{
        $('#rekening').collapse('show');
        $('#tr_uang_tu').collapse('show');
        $('#tr_uang_tr').collapse('show');
      }
    });

    // Auto Complete pencarian produk
    $("#no_rek").autocomplete({
      source: function( request, response ) {
        // Fetch data
        $.ajax({
          url: "modul/history_transaksi/rekening.php",
          type: 'post',
          dataType: "json",
          data: {
          search: request.term
          },
          success: function( data ) {
            response( data );
          }
        });
      },
    });

    // diskon
    $('#uang_tr').on('input',function(){
      total();
      kembalian();
    });

    // Kembalian
    $('#uang_ht').on('input',function(){
      kembalian();
    });

    // kembalian
    function kembalian(){
      var uang     = $("#uang_ht").val();
      var  uang_tr = $("#uang_tr").val();
      var tot   = $("#total_t").val();
      $.ajax({
        type:"post",
        url:"modul/history_transaksi/kembalian.php",
        data:{
          uang:uang,tot:tot,uang_tr:uang_tr
        },
        success:function(data){
          $('#kembalian').val(data);
        }
      });
    }

    // total
    function total(){
      var nofak 	 = $("#id_nofak").val();
      var ongkir 	 = $("#ongkir").val();
      var layan 	 = "<?php echo $_GET['layan']; ?>";
      $.ajax({
        type: "POST",
        url:"modul/history_transaksi/total.php",
        data:{
          nofak:nofak,ongkir:ongkir,layan:layan
        },
        success:function(data){
          var obj = JSON.parse(data);
          $("#table_total").html(obj.rupiah);
          $("#total_t").val(obj.rupiah1);
          kembalian();
        }
      });
    }

    // ads
    window.onload=load();

    function load (){
      $("#tr_uang_tu").collapse("show");
      total();
    }

    window.setInterval(kembalian(), 10000);
    
    // Tambah Produk
    $('#form_produk').on('submit', function (e) {
      e.preventDefault();
      $.ajax({
        type: 'post',
        url: 'modul/history_transaksi/tambah_p.php',
        data: $('#form_produk').serialize(),
        success: function () {
          var oTable = $('#tabel_tp').dataTable(); 
          oTable.fnDraw(false);
          $('#form_produk').trigger("reset");
          total();
          kembalian();
        }
      });
    });
    
    // Tambah Perawatan
    $('#form_px').on('submit', function (e) {
      e.preventDefault();
      $.ajax({
        type: 'post',
        url: 'modul/history_transaksi/tambah_t.php',
        data: $('#form_px').serialize(),
        success: function (data) {
          if (data=="ada") {
            alert("Treatment Sudah Ada");
          }else{
            var ttable = $('#tabel_tp').dataTable();
            ttable.fnDraw(false);
              $('#form_px').trigger("reset");
              total();
            kembalian();
          }
        }
      });
    });

    // plus
    $('body').on("click","#plus_p",function(){
      var id = $(this).data("id");
      $.ajax({
        type:'POST',
        url: 'modul/history_transaksi/plus.php',
        data:{
          id:id
        },
        success:function(data){
          var oTable = $('#tabel_tp').dataTable(); 
          oTable.fnDraw(false);
        }
      });
    });

    // Hapus Perawatan
    $('body').on("click","#hapus_p",function(){
      var id = $(this).data("id");
      $.ajax({
        type:'POST',
        url: 'modul/history_transaksi/hapus.php',
        data:{
          id:id
        },
        success:function(data){
          alert("Berhasil dihapus");
          location.reload();
        }
      });
    });

    // Minus Produk
    $('body').on("click","#minus_p",function(){
      var id = $(this).data("id");
      $.ajax({
        type:'POST',
        url: 'modul/history_transaksi/minus.php',
        data:{
          id:id
        },
        success:function(data){
          var oTable = $('#tabel_tp').dataTable(); 
          oTable.fnDraw(false);
        }
      });
    });
  });
</script>
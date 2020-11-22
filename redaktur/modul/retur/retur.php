
<?php 

$fa = mysqli_query($con,"SELECT no_faktur,id_pasien,nama,kode,harga,jumlah FROM history_kasir WHERE jenis='Produk' GROUP BY no_faktur");
while($fak = mysqli_fetch_assoc($fa)){
  $d .= '{"faktur":"'.$fak['no_faktur'].'"},';
}

$fb = mysqli_query($con,"SELECT nama_pasien, no_faktur, history_kasir.id_pasien, nama, kode, harga, jumlah
FROM history_kasir
JOIN pasien ON history_kasir.id_pasien = pasien.id_pasien WHERE history_kasir.jenis='Produk'
GROUP BY history_kasir.id_pasien
");
while($fbk = mysqli_fetch_assoc($fb)){
  $d .= '{"faktur":"'.$fbk['nama_pasien'].'/'.$fbk['id_pasien'].'"},';
}

$fc = mysqli_query($con,"SELECT no_faktur,id_pasien,nama,kode,harga,jumlah FROM history_kasir WHERE jenis='Produk' GROUP BY nama");
while($fck = mysqli_fetch_assoc($fc)){
  $d .= '{"faktur":"'.$fck['nama'].'"},';
}


$d = substr($d,0,strlen($d) - 1);
$data = '['.$d.']';

file_put_contents("modul/retur/retur.json",$data);

$d = '';

$fa = mysqli_query($con,"SELECT nama_p FROM produk");
while($fak = mysqli_fetch_assoc($fa)){
  $d .= '{"nama":"'.$fak['nama_p'].'"},';
}

$d = substr($d,0,strlen($d) - 1);
$data = '['.$d.']';

file_put_contents("modul/retur/prod.json",$data);

?>

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<div class="box box-success" id="boxbos">
					<div class="box-header" id="tabone">
						<h1>Retur Penjualan</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
					<li class="breadcrumb-item active">Retur Penjualan</li>
				</ol>
			</div>
		</div>
	</div>
</section>

<section class="content">
  <div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <div class="callout callout-success">
            <button type="button" class="btn btn-success xbtn" data-toggle="modal" data-target="#modal-default">
              Tambah Retur Penjualan
            </button>
          </div>
        </div>
        <div class="card-body">
          <h5>Data Produk Retur Penjualan</h5><hr>
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Aksi</th>
                <th>No Faktur</th>
                <th>Jumlah yang diretur</th>
              </tr>
            </thead>
            <tbody>
              <?php
                $z = mysqli_query($con,"SELECT COUNT(a.id) jml,a.*,b.* FROM retur_jual a JOIN history_kasir b ON a.history = b.id GROUP BY b.no_faktur");
                while($zz = mysqli_fetch_assoc($z)){
                  
                  $cust = mysqli_fetch_assoc(mysqli_query($con,"SELECT * FROM pasien WHERE id_pasien = '$zz[id_pasien]'"));
                  echo "<tr>";
                  echo "<td><button class='btn btn-sm btn-warning' id='$zz[no_faktur]' onclick='cetak2(this.id)'>Print</button></td>";
                  echo "<td>$zz[no_faktur]  <br/> $cust[nama_pasien] ($cust[id_pasien])</td>";
                  echo "<td>$zz[jml]</td>";
                  echo "</tr>";
                }
              ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" role="dialog" id="modal-default">
    <div class="modal-dialog modal-xs" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title"> Data Retur Penjualan</h5>
          <span id="msg"></span>
        </div>
        <div class="modal-body">
          <table class="tbl">
            <tr>
              <td><input onblur="trigger()" type="text" id="faktur" class="form-control" placeholder="untuk mencari data retur, ketik no faktur, nama pasien, atau nama produk"/></td>
            </tr>
          </table>
        </div>
        <div class="modal-body">
          <table class="table" id="dataorder">
            <thead>
              <tr>
                <th>Aksi</th>
                <th>Jml Retur</th>
                <th>Pasien</th>
                <th>Jml Prod</th>
                <th>Nm Prod</th>
                <th>Subtotal</th>
              </tr>
            </thead>
            <tbody></tbody>
          </table>
          <input type="hidden" id="json" />
          <span style="color: red"><small><strong>Perhatian! Cetak bukti retur dapat dilakukan lewat halaman utama menu Retur Penjualan</strong></small></span>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-success" data-dismiss="modal" onclick='location.reload()'>Selesai</button>
        </div>
      </div>
    </div>
  </div>
  <style>
  .tbl {border-collapse: collapse; width: 100%}
  .tbl td {padding: 1%}
  #scrollable-dropdown-menu .tt-dropdown-menu {
    max-height: 40px;
    overflow-y: auto;
  }
  #scrollable-dropdown-menu .tt-suggestion {
    font-size: 9.5px;
  }
  #dataorder td, #dataorder th {font-size: 9.5px !important}
  #dataorder td {border-top: none}
  .ctrl {font-size: 9px !important;}
  </style>

</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
  function cetak2(fak){
    window.open("modul/retur/cetak.php?faktur=" + fak,"_BLANK");
  }

  function cetak(){
    var faktur = $("#faktur").val();
    window.open("modul/retur/cetak.php?faktur=" + faktur,"_BLANK");
    location.reload();
  }

  function tukar(id){
    var ids = id.split("-");
    if($("#" + "jml-" + ids[1]).val() == ""){
      alert("Jml Retur belum diisi");
      $("#" + id).val("0");
    } 
    else {
      var nilai = $("select#" + id + " option:checked").text();  
      $("#" + id).hide();
      $("#" + "btl-" + ids[1]).show();
      $("#" + "stat-" + ids[1]).html(nilai);

      var xhr = $.ajax({
        dataType: "JSON",
        url: "modul/retur/aksi_retur.php",
        data: {"history": ids[1],"retur": $("#" + id).val(),"tgl":"<?php echo date("Y-m-d"); ?>","username":"<?php echo $_SESSION['namauser']; ?>","jml": $("#" + "jml-" + ids[1]).val()},
        success: function(data){
          $("#" + "btl-" + ids[1]).attr("data-idretur",data.idretur);
          $("#" + "hrg-" + ids[1]).html(data.subtotal);
        }
      });
    }
  }

  function batal(id){
    $("#" + id).hide();
    var ids = id.split("-");
    $("#" + "tukar-" + ids[1]).show();
    $("#" + "stat-" + ids[1]).html("");
    $("#" + "tukar-" + ids[1]).val("0");
    
    var xhr = $.ajax({
      url: "modul/retur/aksi_retur.php?act=del",
      data: {"idretur": $("#" + id).data("idretur")},
      dataType: "JSON",
      success: function(data){
        $("#" + "hrg-" + ids[1]).html(data.subtotal);
      }
    });
  }


  function trigger(){                   
    var prods = new Bloodhound({
      datumTokenizer: Bloodhound.tokenizers.obj.whitespace('nama'),
      queryTokenizer: Bloodhound.tokenizers.whitespace,
      prefetch: {
        url: '../redaktur/modul/retur/prod.json?v=<?php echo rand(100,900); ?>'
      },
      cache: false
    });
  }

  $(document).ready(function(){                  
    var namaProd = new Bloodhound({
      datumTokenizer: Bloodhound.tokenizers.obj.whitespace('faktur'),
      queryTokenizer: Bloodhound.tokenizers.whitespace,
      prefetch: {
        url: '../redaktur/modul/retur/retur.json?v=<?php echo rand(100,900); ?>'
      },
      cache: false
    });


    $('#faktur').typeahead({
        hint: true,
      highlight: true,
    minLength: 3
    }, {
      name: 'nama-prod',
      display: 'faktur',
      source: namaProd
    });

    $('#faktur').bind('typeahead:select', function(ev, suggestion) {
      $('#dataorder').DataTable().destroy(); //hancurkan inisialiasi awal datatable
      var tbl =  $('#dataorder').DataTable({
        "pageLength": 50,
        "order": [[3,"desc"]],
        "scrollX": true,
        "columns": [
          { "data": "aksi" },
          { "data": "retur" },
          { "data": "pasien" },
          { "data": "jml" },
          { "data": "prd" },
          { "data": "hrg" },
        ]
      });

      var xhr = $.ajax({
        url: "modul/retur/data.php",
        data: {"faktur": suggestion.faktur},
        dataType: "JSON",
        success: function(data){
          $("th[class*=sorting]").css("font-size","9.5px");
          tbl.rows().remove().draw(); //hancurkan data yg disimpan datatable cache
          for(i in data){
            tbl.row.add(data[i]).draw();
          }
        }
      });
    });
  });
</script> 
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Jadwal Dokter Ganti</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active">Jadwal Dokter Ganti</li>
        </ol>
      </div>
    </div>
  </div>
</section>

<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="sticky-top mb-3">
          <div class="card">
            <div class="card-header">
              <h4 class="card-title">Perhatian</h4>
            </div>
            <div class="card-body">
              <div id="external-events">
                <ul>
                  <li>Untuk menghapus data Dokter Pengganti, klik pada nama dokter pada kalender di sebelah kanan</li>
                  <li>Jika ada inputan yang keliru, silakan dihapus lalu input ulang</li>
                </ul>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Tambah Dokter Pengganti</h3>
            </div>
            <div class="card-body">
              <form>
                <div class="form-group">
                  <label>Nama Dokter</label>
                  <select class="form-control" name="dr">
                    <option value="">--Silakan Pilih--</option>
                    <?php
                    $dr = mysqli_query($con, "SELECT * FROM user WHERE id_ju = 'JU-02'");
                    while($dri = mysqli_fetch_assoc($dr)){
                      echo "<option value='$dri[id_user]'>$dri[nama_lengkap]</option>";
                    }
                    ?>
                  </select>
                </div>
                <div class="form-group">
                  <label>Tanggal</label>
                  <input type="date" class="form-control" name="tgl" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask>
                </div>
                <div class="form-group">
                  <label>Jam</label>
                  <input type="text" class="form-control" name="jam" placeholder="misal 01:00:00">
                </div>
                <div class="form-group">
                  <label>Poliklinik</label>
                  <select class="form-control" name="klinik">
                    <option value="">--Silakan Pilih--</option>
                    <?php
                    $dr = mysqli_query($con, "SELECT * FROM poliklinik");
                    while($dri = mysqli_fetch_assoc($dr)){
                      echo "<option value='$dri[id_poli]'>$dri[poli]</option>";
                    }
                    ?>
                  </select>
                </div>
                <div class="form-group">
                  <button type="submit" class="btn btn-success">Tambahkan</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-9">
        <div class="card card-primary">
          <div class="card-body p-0">
            <div id="calendars"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script>
  $(document).ready(function(){
    function init_events(ele) {
      ele.each(function () {
        var eventObject = {
          title: $(this).text() // use the element's text as the event title
        }
        
        $(this).data('event', eventObject)

        // make the event draggable using jQuery UI
        $(this).draggable({
          zIndex        : 1070,
          revert        : true, // will cause the event to go back to its
          revertDuration: 0  //  original position after the drag
        })

      })
    }

    init_events($('#external-events div.external-event'));
    var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()
        
    $("#calendars").fullCalendar({
      eventClick: function(a,b,c){
        var u = confirm("apakah yakin akan menghapus?");
        if(u){
          var xhr =  $.ajax({
            url: "modul/dr_praktek/aksi_ganti.php?act=del",
            data: {"id" : a.id},
            success: function(data){
              $("#calendars").fullCalendar("removeEvents",a.id);
            }
          });
          
          if(xhr.readyState == "1"){
            a.title = "menghapus...";
            $("#calendars").fullCalendar("updateEvent",a);
          }
             
        } else {}
            
      },
      
      events: [
        <?php
        $ev = mysqli_query($con, "SELECT * FROM dr_pengganti");
        while($eve = mysqli_fetch_assoc($ev)){
          $dr = mysqli_fetch_assoc(mysqli_query($con, "SELECT nama_lengkap FROM user WHERE id_user = $eve[id_dr]"));
          $k .= "{id: $eve[id], title: '$dr[nama_lengkap]', start: '$eve[tgl] $eve[jam]', allDay: false},";
        }
        echo substr($k,0,strlen($k) - 1);
        ?>
      ],
      editable  : true,
      droppable : true, // this allows things to be dropped onto the calendar !!!
      drop      : function (date, allDay) {
        // retrieve the dropped element's stored Event Object
        var originalEventObject = $(this).data('eventObject')
        // we need to copy it, so that multiple events don't have a reference to the same object
        var copiedEventObject = $.extend({}, originalEventObject)

        // assign it the date that was reported
        copiedEventObject.start           = date
        copiedEventObject.allDay          = allDay
        copiedEventObject.backgroundColor = $(this).css('background-color')
        copiedEventObject.borderColor     = $(this).css('border-color')

        // render the event on the calendar
        // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
        $('#calendar').fullCalendar('renderEvent', copiedEventObject, true)

        // is the "remove after drop" checkbox checked?
        if ($('#drop-remove').is(':checked')) {
          // if so, remove the element from the "Draggable Events" list
          $(this).remove()
        }
      }
    });

    /* ADDING EVENTS */
    var currColor = '#3c8dbc' //Red by default
    //Color chooser button
    var colorChooser = $('#color-chooser-btn')
    $('#color-chooser > li > a').click(function (e) {
      e.preventDefault()
      //Save color
      currColor = $(this).css('color')
      //Add color effect to button
      $('#add-new-event').css({ 'background-color': currColor, 'border-color': currColor })
    })
    $('#add-new-event').click(function (e) {
      e.preventDefault()
      //Get value and make sure it is not null
      var val = $('#new-event').val()
      if (val.length == 0) {
        return
      }

      //Create events
      var event = $('<div />')
      event.css({
        'background-color': currColor,
        'border-color'    : currColor,
        'color'           : '#fff'
      }).addClass('external-event')
      event.html(val)
      $('#external-events').prepend(event)

      //Add draggable funtionality
      init_events(event)

      //Remove event from text input
      $('#new-event').val('')
    })
  });
</script>
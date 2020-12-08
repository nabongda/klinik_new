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
              <form action="modul/dr_praktek/aksi_ganti.php?act=input" method="POST">
                <div class="form-group">
                  <label>Nama Dokter</label>
                  <select class="form-control" name="dr">
                    <option value="">Pilih Dokter</option>
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
                    <option value="">Pilih Poliklinik</option>
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
            <div id="calendar"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
  $(document).ready(function() {
    function ini_events(ele) {
      ele.each(function () {
        var eventObject = {
          title: $.trim($(this).text())
        }
        
        $(this).data('eventObject', eventObject)

        $(this).draggable({
          zIndex        : 1070,
          revert        : true,
          revertDuration: 0
        })

      })
    }

    ini_events($('#external-events div.external-event'))
    
    var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()

    var Calendar = FullCalendar.Calendar;
    var Draggable = FullCalendarInteraction.Draggable;

    var containerEl = document.getElementById('external-events');
    var checkbox = document.getElementById('drop-remove');
    var calendarEl = document.getElementById('calendar');

    new Draggable(containerEl, {
      itemSelector: '.external-event',
      eventData: function(eventEl) {
        console.log(eventEl);
        return {
          title: eventEl.innerText,
          backgroundColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
          borderColor: window.getComputedStyle( eventEl ,null).getPropertyValue('background-color'),
          textColor: window.getComputedStyle( eventEl ,null).getPropertyValue('color'),
        };
      }
    });

    var calendar = new Calendar(calendarEl, {
      plugins: [ 'bootstrap', 'interaction', 'dayGrid', 'timeGrid' ],
      header    : {
        left  : 'prev,next today',
        center: 'title',
        right : 'dayGridMonth,timeGridWeek,timeGridDay'
      },
      'themeSystem': 'bootstrap',
      
      eventClick: function(a,b,c){
        var u = confirm("apakah yakin akan menghapus?");
        if(u){
          var xhr =  $.ajax({
            url: "modul/dr_praktek/aksi_ganti.php?act=del",
            data: {"id" : a.id},
            success: function(data){
              $("#calendar").fullCalendar("removeEvents",a.id);
            }
          });

          if(xhr.readyState == "1"){
            a.title = "menghapus...";
            $("#calendar").fullCalendar("updateEvent",a);
          }
        } else {}
      },

      events    : [
        <?php
        $ev = mysqli_query($con, "SELECT * FROM dr_pengganti");
        while($eve = mysqli_fetch_assoc($ev)){
          $dr = mysqli_fetch_assoc(mysqli_query($con, "SELECT nama_lengkap FROM user WHERE id_user = $eve[id_dr]"));
          $k .= "{id: $eve[id], title: '$dr[nama_lengkap]', start: '$eve[tgl] $eve[jam]', allDay: false, backgroundColor: '#00a65a', borderColor: '#00a65a'},";
        }
        echo substr($k,0,strlen($k) - 1);
        ?>
      ],
      editable  : true,
      droppable : true,
      drop      : function(date, allDay) {
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

    calendar.render();
    
    var currColor = '#3c8dbc' //Red by default
    
    var colorChooser = $('#color-chooser-btn')
    $('#color-chooser > li > a').click(function (e) {
      e.preventDefault()
      
      currColor = $(this).css('color')
      
      $('#add-new-event').css({
        'background-color': currColor,
        'border-color'    : currColor
      })
    })
    $('#add-new-event').click(function (e) {
      e.preventDefault()
      var val = $('#new-event').val()
      if (val.length == 0) {
        return
      }

      var event = $('<div />')
      event.css({
        'background-color': currColor,
        'border-color'    : currColor,
        'color'           : '#fff'
      }).addClass('external-event')
      event.html(val)
      $('#external-events').prepend(event)

      ini_events(event)

      $('#new-event').val('')
    })
  })
</script>
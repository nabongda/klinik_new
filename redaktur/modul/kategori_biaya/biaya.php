
<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Data Kategori Biaya</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="?module=home">Beranda</a></li>
          <li class="breadcrumb-item active">Data Kategori</li>
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
          <div class="row">
            <div class="col-md-12">
              <div class="col-md-12"><a href="?module=kategori_biaya_add" class="btn btn-primary">Tambah
                  Kategori</a></div>
            </div>
          </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <table id="example1" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th>Kategori Biaya</th>
                <th class="nosort">Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $j = mysqli_query($con, "SELECT * FROM kategori_biaya WHERE id != 2");
              while($jo = mysqli_fetch_assoc($j)){ ?>
              <tr>
                <td><?php echo $jo['kategori']; ?></td>
                <td>
                  <a href="?module=kategori_biaya_edit&id=<?php echo $jo['id']; ?>" class="btn-sm btn-warning"> Edit</a>
                  <a href="#" class="hapus btn-sm btn-danger"> Hapus</a>
                </td>
              </tr>
              <?php } ?>
            </tbody>
            
            <script>
              document.querySelector(".hapus").addEventListener("click",
                function () {
                  Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Delete !'
                  });
                });
            </script>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

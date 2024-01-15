<section class="content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <div class="card-tools">
                    <span data-toggle="tooltip" data-placement="left" title="Tambah Data">
                        <a class="btn btn-tool" data-toggle="modal" data-target="#tambahModal">
                            <i class="fas fa-plus" style="color:blue"></i> Tambah Data
                        </a>
                    </span>
                </div>
            </div>
            <div class="card-body">
                <table id="example3" class="table table-sm table-bordered table-striped">
                    <thead>
                        <tr class="text-center">
                            <th width="5%">No</th>
                            <th>Nama</th>
                            <th>Latitude</th>
                            <th>Longitude</th>
                            <th>Deskripsi</th>
                            <th width="5%">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $data_objek_wisata = $this->db->get('objek_wisata')->result_array();

                        if (!empty($data_objek_wisata)) :
                            foreach ($data_objek_wisata as $index => $objek_wisata) :
                        ?>
                                <tr>
                                    <td class="text-center"><?= $index + 1; ?></td>
                                    <td class="text-center"><?= $objek_wisata['nama']; ?></td>
                                    <td class="text-center"><?= $objek_wisata['latitude']; ?></td>
                                    <td class="text-center"><?= $objek_wisata['longitude']; ?></td>
                                    <td class="text-center"><?= $objek_wisata['deskripsi']; ?></td>
                                    <td class="text-center">
                                        <div style="display: flex; justify-content: space-between;">
                                            <a href="#" class="btn btn-sm btn-info" style="margin-right: 10px;" data-toggle="modal" data-target="#updateModal" onclick="showUpdateModal('<?= $objek_wisata['id']; ?>', '<?= $objek_wisata['nama']; ?>', '<?= $objek_wisata['latitude']; ?>', '<?= $objek_wisata['longitude']; ?>', '<?= $objek_wisata['deskripsi']; ?>')">
                                                Edit
                                            </a>
                                            <a href="#" class="btn btn-sm btn-danger">Hapus</a>
                                        </div>
                                    </td>
                                </tr>
                            <?php
                            endforeach;
                        else :
                            ?>
                            <tr>
                                <td colspan="5" class="text-center">Tidak ada data objek wisata.</td>
                            </tr>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
</div>

<div class="modal fade" id="tambahModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form id="profile" method="post" action="<?= base_url('admin/wisata/save') ?>" class="needs-validation" enctype="multipart/form-data">
                <div class="container-fluid">
                    <div class="card card-primary card-outline mt-1">
                        <div class="card-body box-profile">
                            <div class="form-group">
                                <input type="text" class="form-control form-control-sm" id="nama" name="nama" placeholder="Nama Tempat">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-sm" id="latitude" name="latitude" placeholder="Latitude ">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-sm" id="longitude" name="longitude" placeholder="Longitude">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control form-control-sm" name="deskripsi" id="deskripsi" rows=5" placeholder="Deskripsi"></textarea>
                            </div>

                        </div>
                        <div class="card-footer">
                            <div class="text-right">
                                <button class="btn btn-sm btn-info" type="submit">
                                    <i class="fas fa-save"></i> Submit
                                </button>
                                <button class="btn btn-sm btn-danger" data-dismiss="modal">
                                    <i class="fa-solid fa-xmark"></i> Batal
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <form id="updateForm" method="post" action="<?= base_url('admin/wisata/update') ?>" class="needs-validation" enctype="multipart/form-data">
                <!-- Tambahkan input untuk menyimpan ID objek wisata yang akan diupdate -->
                <input type="hidden" name="id" id="id">

                <div class="container-fluid">
                    <div class="card card-primary card-outline mt-1">
                        <div class="card-body box-profile">
                            <div class="form-group">
                                <input type="text" class="form-control form-control-sm" id="nama_update" name="nama" placeholder="Nama Tempat">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-sm" id="latitude_update" name="latitude" placeholder="Latitude">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-sm" id="longitude_update" name="longitude" placeholder="Longitude">
                            </div>
                            <div class="form-group">
                                <textarea class="form-control form-control-sm" name="deskripsi" id="deskripsi_update" rows="5" placeholder="Deskripsi"></textarea>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="text-right">
                                <button class="btn btn-sm btn-info" type="submit">
                                    <i class="fas fa-save"></i> Update
                                </button>
                                <button class="btn btn-sm btn-danger" data-dismiss="modal">
                                    <i class="fa-solid fa-xmark"></i> Batal
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function showUpdateModal(id, nama, latitude, longitude, deskripsi) {
        $('#id').val(id);
        $('#nama_update').val(nama);
        $('#latitude_update').val(latitude);
        $('#longitude_update').val(longitude);
        $('#deskripsi_update').val(deskripsi);

        // Tampilkan modal update
        $('#updateModal').modal('show');
    }
</script>


<script>
    const chooseFile = document.getElementById("choose-file");
    const imgPreview = document.getElementById("img-preview");

    chooseFile.addEventListener("change", function() {
        getImgData();
    });

    function getImgData() {
        const files = chooseFile.files[0];
        if (files) {
            const fileReader = new FileReader();
            fileReader.readAsDataURL(files);
            fileReader.addEventListener("load", function() {
                imgPreview.style.display = "block";
                imgPreview.innerHTML = '<img src="' + this.result + '" />';
            });
        }
    }
</script>
<div class="main-content">
    <section class="section">
        <div class="section-header">
        <h1>Data user</h1>
        </div>

        <a href="<?= base_url('admin/data_user/tambah_user')?>" class="btn btn-primary mb-3"> <i class="fas fa-plus"></i>  Tambah Data</a>
        <?= $this->session->flashdata('pesan') ?>
        <table class="table table table-hover table-striped table-bordered" id="user">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>Alamat</th>
                    <th>Gender</th>
                    <th>No. Telp</th>
                    <th>No. KTP</th>
                    <th>Level</th>
                    <th>Status</th>
                    <!-- <th>Scan KTP</th>
                    <th>Scan KK</th> -->
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $no=1;
                    foreach($user as $u) : ?>
                        <tr>
                            <td><?= $no++?></td>
                            <td><?= $u->nama?></td>
                            <td><?= $u->email?></td>
                            <td><?= $u->alamat?></td>
                            <td><?= $u->gender?></td>
                            <td><?= $u->no_telp?></td>
                            <td><?= $u->no_ktp?></td>
                            <td>
                                <?php if($u->level == 1){
                                    echo "Admin";
                                }else{
                                    echo "Customer";
                                }
                                
                                ?>
                            
                            </td>
                            <td>
                                <?php 
                                if($u->status == 0){
                                    echo "<span class='badge badge-danger'>Pending</span>";
                                }else{
                                    echo "<span class='badge badge-primary'>Aktif</span>";
                                }
                                ?>
                            </td>
                            <!-- <td>
                                <div class="image-popup">
                                   <a href="<?=base_url().'assets/upload/user/'.$u->scan_ktp?>"><img width="100px" class="main-popup" height="60px" src="<?=base_url().'assets/upload/user/'.$u->scan_ktp?>"></a>
                                </div>
                            </!--> 
                            <!-- <td>
                                <div class="image-popup">
                                    <a href="<?=base_url().'assets/upload/user/'.$u->scan_kk?>"><img width="100px" class="main-popup" height="60px" src="<?=base_url().'assets/upload/user/'.$u->scan_kk?>"></a>
                                </div>
                            </!--> 
                            <td>
                                <div class="input-group-append">
                                <a href="<?= base_url('admin/data_user/delete_user/').$u->id_user?>" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a>
                                <a href="<?= base_url('admin/data_user/edit_user/').$u->id_user?>" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a>
                                </div>
                            </td>
                        </tr>
                    <?php endforeach; ?>
            </tbody>

        </table>
    </section>
</div>






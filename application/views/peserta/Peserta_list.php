<div class="row">
<div class="col-xs-12">
    <div class="box box-primary">
        <div class="box-header">
            <h3 class="box-title">List Peserta</h3>
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-box-tool" onclick="location.reload()" title="Refresh">
                <i class="fa fa-refresh"></i></button>
            </div>
        </div>
        <div class="box-body">
            <form id="myform" method="post" onsubmit="return false">
                <div class="row" style="margin-bottom: 10px">
                    <div class="col-xs-4 col-md-4">                      
                        <?php echo anchor(site_url('peserta/create'), '<i class="fa fa-plus"></i><span class="hidden-xs">&nbsp;&nbsp;Tambah</span>', 'class="'.$this->config->item('botton').'"'); ?>
                        <button class="btn btn-danger btn-flat" type="submit"><i class="fa fa-trash"></i><span class="hidden-xs">&nbsp;&nbsp;Hapus Data Terpilih</span></button>
                    </div>
                    <div class="col-xs-8 col-md-8 text-right">
						<?php echo anchor(site_url('peserta/reset_all'), '<i class="fa fa-user-check"></i><span class="hidden-xs">&nbsp;&nbsp;Reset Hasil</span>', 'class="btn btn-warning btn-flat"'); ?>
						<?php echo anchor(site_url('peserta/terima_all'), '<i class="fa fa-user-check"></i><span class="hidden-xs">&nbsp;&nbsp;Terima semua</span>', 'class="btn btn-success btn-flat"'); ?>
						<!-- print
						<?php echo anchor(site_url('peserta/printdoc'), '<i class="fa fa-print"></i><span class="hidden-xs">&nbsp;&nbsp;Print</span>', 'class="btn bg-maroon btn-flat"'); ?>
						-->
						<?php echo anchor(site_url('peserta/rekap_nilai'), '<i class="fa fa-download"></i><span class="hidden-xs">&nbsp;&nbsp;Unduh Rekap Nilai</span>', 'class="btn bg-yellow btn-flat"'); ?>						
						<?php echo anchor(site_url('peserta/excel'), '<i class="fa fa-download"></i><span class="hidden-xs">&nbsp;&nbsp;Unduh Rekap Peserta Excel</span>', 'class="btn bg-purple btn-flat"'); ?>
						<!-- word 
						<?php echo anchor(site_url('peserta/word'), '<i class="fa fa-file-word"></i><span class="hidden-xs">&nbsp;&nbsp;Word</span>', 'class="btn btn-primary btn-flat"'); ?>
						-->
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped" id="mytable" style="width:100%">
                        <thead>
                            <tr>
                                <th width=""></th>
                                <th width="10px">No</th>
							    <th>No Pendaftaran</th>
								<th>Nama Peserta</th>
 								<th>Jalur</th>
							    <th>Status</th>
							    <th>Hasil</th>
							    <th>Daftar Ulang</th>
							    <th>Aktivasi</th>
							    <!-- <th>Id Users</th>		 -->
                                <th width="140px">Action</th>
                            </tr>
                        </thead>	
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
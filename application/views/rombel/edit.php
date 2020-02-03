<link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/multi-select.css'); ?>">

<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Content Row -->
	<div class="row">
		<div class="col-12">
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h3 class="m-0 font-weight-bold text-primary">Edit Rombel</h3>
				</div>
				<div class="card-body">
					<?php echo form_open('rombel/update',array("class"=>"form-horizontal")); ?>
					<div class="form-group col-md-4">
						<label for="">Tahun Pelajaran</label>
						<input type="text" value='<?= $_SESSION['tahun']?>' class='form-control' readonly>
					</div>
					<div class="form-group col-md-4">
						<label for="">Semester</label>
						<input type="text" value='<?= $_SESSION['semester']?>' class='form-control' readonly>
					</div>
					<div class="form-group col-md-4">
						<label for="">Kelas</label>
						<?php foreach($kelas as $k) {?>
						<input type="hidden" name='id_kelas' id='id_kelas' value='<?= $k['id'] ?>'>
						<?php }?>
						<select class="custom-select" disabled>
							<?php foreach($kelas as $k) {?>
							<option value="<?= $k['id'] ?>"><?= $k['nama'] ?></option>
							<?php }?>
						</select>
					</div>
					<div class="form-group col-md-4">
						<label for="">Anggota Rombel</label>
						<select class='searchable-edit' multiple='multiple' name='id_siswa[]' id='id_siswa'>
							<?php 
								foreach($rombel as $r){
									if(empty($r['cek'])){
										echo '<option value='.$r['id_siswa'].'>'.$r['nama_lengkap'].'</option>';
									} else {
										echo '<option value='.$r['id_siswa'].' selected >'.$r['nama_lengkap'].'</option>';
									}
								}
							?>
						</select>
					</div>
					<input type="text" name="tes[]" id="tes">
					<div class="form-group col-md-4">
						<button type="submit" class='btn btn-primary'>Simpan</button>
						<a href="<?= base_url('rombel') ?>" class='btn btn-secondary'>Batal</a>
					</div>

					<?php echo form_close(); ?>
				</div>
			</div>
		</div>
	</div>


	<!-- content row -->

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
	<div class="container my-auto">
		<div class="copyright text-center my-auto">
			<span>Copyright &copy; Your Website 2019</span>
		</div>
	</div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
	<i class="fas fa-angle-up"></i>
</a>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="<?= base_url('assets/js/jquery.multi-select.js'); ?>"></script>
<script src="<?= base_url('assets/js/jquery.quicksearch.js'); ?>"></script>


<script type="text/javascript">
	var id_siswa_deselect = [];

	$('.searchable-edit').multiSelect({
		selectableHeader: "<input type='text' class='form-control mb-1' autocomplete='off' placeholder='cari siswa'>",
		selectionHeader: "<input type='text' class='form-control mb-1' autocomplete='off' placeholder='cari siswa'>",
		afterInit: function (ms) {
			var that = this,
				$selectableSearch = that.$selectableUl.prev(),
				$selectionSearch = that.$selectionUl.prev(),
				selectableSearchString = '#' + that.$container.attr('id') +
				' .ms-elem-selectable:not(.ms-selected)',
				selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

			that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
				.on('keydown', function (e) {
					if (e.which === 40) {
						that.$selectableUl.focus();
						return false;
					}
				});

			that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
				.on('keydown', function (e) {
					if (e.which == 40) {
						that.$selectionUl.focus();
						return false;
					}
				});
		},
		afterSelect: function () {
			this.qs1.cache();
			this.qs2.cache();
		},
		afterDeselect: function (values) {
			this.qs1.cache();
			this.qs2.cache();
			id_siswa_deselect.push(tes);
			document.getElementById("tes").value = values;
			console.log(id_siswa_deselect);
		}
	});

</script>

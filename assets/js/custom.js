// datatable users
$(document).ready(function() {
    $('#datatable-users').DataTable();
    $('#datatable-guru').DataTable();
    $('#datatable-kelas').DataTable();
    $('#datatable-siswa').DataTable();
    $('#datatable-mapel').DataTable();
    $('#datatable-walikelas').DataTable();
    $('#datatable-tahun-pelajaran').DataTable({
        "order": [[ 1, "asc" ]]
    });
} );
<?php
/* 
 * Generated by CRUDigniter v3.2 
 * www.crudigniter.com
 */

use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Helper\Sample;

class Siswa extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Siswa_model');

        // cek user login
        check_login();
    }

    /*
     * Listing of siswa
     */
    function index()
    {
        $data['siswa'] = $this->Siswa_model->get_all_siswa();

        $data['_view'] = 'siswa/index';

        $this->load->view('template/header', $data);
        $this->load->view('template/sidebar', $data);
        $this->load->view('siswa/index', $data);
        $this->load->view('template/footer', $data);
    }

    /*
     * Adding a new siswa
     */
    function add()
    {
        $this->load->helper('string');
        $this->load->library('form_validation');

        $this->form_validation->set_rules('nama_lengkap', 'Nama Lengkap', 'required');
        $this->form_validation->set_rules('nis', 'Nomor Induk Siswa', 'required');

        if ($this->form_validation->run()) {
            // upload image
            $config['upload_path']          = './uploads/siswa/';
            $config['allowed_types']        = 'jpg';
            $config['overwrite']             = true;
            $config['file_name']             = $this->input->post('nis');

            $this->load->library('upload', $config);

            if (!$this->upload->do_upload('foto')) {
                $error = array('error' => $this->upload->display_errors());
                // print_r($error);
                $data = '';
            } else {
                $data = array('upload_data' => $this->upload->data());
            }
            $params = array(
                'jenis_kelamin' => $this->input->post('jenis_kelamin'),
                'agama' => $this->input->post('agama'),
                'aktif' => $this->input->post('aktif'),
                'nama_lengkap' => $this->input->post('nama_lengkap'),
                'nama_panggilan' => $this->input->post('nama_panggilan'),
                'nis' => $this->input->post('nis'),
                'nisn' => $this->input->post('nisn'),
                'nik' => $this->input->post('nik'),
                'nikk' => $this->input->post('nikk'),
                'tempat_lahir' => $this->input->post('tempat_lahir'),
                'tanggal_lahir' => $this->input->post('tanggal_lahir'),
                'alamat' => $this->input->post('alamat'),
                'kelurahan' => $this->input->post('kelurahan'),
                'kecamatan' => $this->input->post('kecamatan'),
                'kota_kab' => $this->input->post('kota_kab'),
                'provinsi' => $this->input->post('provinsi'),
                'kode_pos' => $this->input->post('kode_pos'),
                'ayah' => $this->input->post('ayah'),
                'pekerjaan_ayah' => $this->input->post('pekerjaan_ayah'),
                'penghasilan_ayah' => $this->input->post('penghasilan_ayah'),
                'ibu' => $this->input->post('ibu'),
                'pekerjaan_ibu' => $this->input->post('pekerjaan_ibu'),
                'penghasilan_ibu' => $this->input->post('penghasilan_ibu'),
                'wali' => $this->input->post('wali'),
                'pekerjaan_wali' => $this->input->post('pekerjaan_wali'),
                'penghasilan_wali' => $this->input->post('penghasilan_wali'),
                'foto' => $data['upload_data']['file_name'],
                'tanggal_masuk' => $this->input->post('tanggal_masuk'),
                'telp_wali' => $this->input->post('telp_wali'),
                'telp_ayah' => $this->input->post('telp_ayah'),
                'telp_ibu' => $this->input->post('telp_ibu'),
            );

            $siswa_id = $this->Siswa_model->add_siswa($params);
            $this->session->set_flashdata('berhasil', 'Anda berhasil menambahkan data <strong>' . $params['nama_lengkap'] . '</strong>');
            redirect('siswa/index');
        } else {
            $data['_view'] = 'siswa/add';
            $this->load->view('template/header', $data);
            $this->load->view('template/sidebar', $data);
            $this->load->view('siswa/add', $data);
            $this->load->view('template/footer', $data);
        }
    }

    /*
     * Editing a siswa
     */
    function edit($id)
    {
        // check if the siswa exists before trying to edit it
        $data['siswa'] = $this->Siswa_model->get_siswa($id);

        if (isset($data['siswa']['id'])) {
            $this->load->library('form_validation');

            $this->form_validation->set_rules('nama_lengkap', 'Nama Lengkap', 'required');
            $this->form_validation->set_rules('nis', 'Nomor Induk Siswa', 'required');

            if ($this->form_validation->run()) {
                // upload image
                $file_ext = pathinfo($_FILES["foto"]["name"], PATHINFO_EXTENSION);
                $config['upload_path']          = './uploads/siswa/';
                $config['allowed_types']        = 'jpg';
                $config['overwrite']             = true;
                $config['file_name']             = $this->input->post('nis');

                $this->load->library('upload', $config);

                if ($_FILES['foto']['name'] == "") {
                    $foto = $this->input->post('foto_old');
                } else {
                    if (!$this->upload->do_upload('foto')) {
                        $error = array('error' => $this->upload->display_errors());
                        print_r($error);
                    } else {
                        $data = array('upload_data' => $this->upload->data());
                        $foto = $data['upload_data']['file_name'];
                        // print_r($data);
                    }
                }

                $params = array(
                    'jenis_kelamin' => $this->input->post('jenis_kelamin'),
                    'agama' => $this->input->post('agama'),
                    'aktif' => $this->input->post('aktif'),
                    'nama_lengkap' => $this->input->post('nama_lengkap'),
                    'nama_panggilan' => $this->input->post('nama_panggilan'),
                    'nis' => $this->input->post('nis'),
                    'nisn' => $this->input->post('nisn'),
                    'nik' => $this->input->post('nik'),
                    'nikk' => $this->input->post('nikk'),
                    'tempat_lahir' => $this->input->post('tempat_lahir'),
                    'tanggal_lahir' => $this->input->post('tanggal_lahir'),
                    'alamat' => $this->input->post('alamat'),
                    'kelurahan' => $this->input->post('kelurahan'),
                    'kecamatan' => $this->input->post('kecamatan'),
                    'kota_kab' => $this->input->post('kota_kab'),
                    'provinsi' => $this->input->post('provinsi'),
                    'kode_pos' => $this->input->post('kode_pos'),
                    'ayah' => $this->input->post('ayah'),
                    'pekerjaan_ayah' => $this->input->post('pekerjaan_ayah'),
                    'penghasilan_ayah' => $this->input->post('penghasilan_ayah'),
                    'ibu' => $this->input->post('ibu'),
                    'pekerjaan_ibu' => $this->input->post('pekerjaan_ibu'),
                    'penghasilan_ibu' => $this->input->post('penghasilan_ibu'),
                    'wali' => $this->input->post('wali'),
                    'pekerjaan_wali' => $this->input->post('pekerjaan_wali'),
                    'penghasilan_wali' => $this->input->post('penghasilan_wali'),
                    'foto' => $foto,
                    'tanggal_masuk' => $this->input->post('tanggal_masuk'),
                    'telp_wali' => $this->input->post('telp_wali'),
                    'telp_ayah' => $this->input->post('telp_ayah'),
                    'telp_ibu' => $this->input->post('telp_ibu'),
                );

                $this->Siswa_model->update_siswa($id, $params);
                $this->session->set_flashdata('berhasil', 'Anda berhasil mengubah data <strong>' . $params['nama_lengkap'] . '</strong>');
                redirect('siswa/index');
            } else {
                $data['_view'] = 'siswa/edit';
                $this->load->view('template/header', $data);
                $this->load->view('template/sidebar', $data);
                $this->load->view('siswa/edit', $data);
                $this->load->view('template/footer', $data);
            }
        } else
            show_error('The siswa you are trying to edit does not exist.');
    }

    /*
     * Deleting siswa
     */
    function remove($id)
    {
        $siswa = $this->Siswa_model->get_siswa($id);
        $foto = $siswa['foto'];
        // check if the siswa exists before trying to delete it
        if (isset($siswa['id'])) {
            $this->session->set_flashdata('hapus', 'Anda berhasil menghapus data <strong>' . $siswa['nama_lengkap'] . '</strong>');
            unlink('./uploads/siswa/' . $foto);
            $this->Siswa_model->delete_siswa($id);
            redirect('siswa/index');
        } else
            show_error('The siswa you are trying to delete does not exist.');
    }

    /*
    * upload siswa 
    */
    function do_upload()
    {
        $file_ext = pathinfo($_FILES["userfile"]["name"], PATHINFO_EXTENSION);

        $config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'xlsx|xls|csv';
        $config['overwrite']             = true;
        $config['file_name']             = 'siswa';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('userfile')) {
            $error = array('error' => $this->upload->display_errors());
            print_r($error);
        } else {
            $data = array('upload_data' => $this->upload->data());

            $helper = new Sample();
            $inputFileName = 'uploads/'.$data['upload_data']['file_name'];
            $helper->log('Loading file ' . pathinfo($inputFileName, PATHINFO_BASENAME) . ' using IOFactory to identify the format');
            $spreadsheet = IOFactory::load($inputFileName);
            $sheetData = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);
            $highestRow = $spreadsheet->getActiveSheet()->getHighestRow();

            // hitung jumlah data yang di upload
            $jumlahData = $highestRow - 1;
            $dataAwal = array();
            foreach ($sheetData as $s) {
                array_push($dataAwal, array(
                    'nama_lengkap' => $s['A'],
                    'nama_panggilan' => $s['B'],
                    'jenis_kelamin' => $s['C'],
                    'agama' => $s['D'],
                    'nis' => $s['E'],
                    'nisn' => $s['F'],
                    'nik' => $s['G'],
                    'nikk' => $s['H'],
                    'tempat_lahir' => $s['I'],
                    'tanggal_lahir' => $s['J'],
                    'alamat' => $s['K'],
                    'kelurahan' => $s['L'],
                    'kecamatan' => $s['M'],
                    'kota_kab' => $s['N'],
                    'provinsi' => $s['O'],
                    'kode_pos' => $s['P'],
                    'ayah' => $s['Q'],
                    'pekerjaan_ayah' => $s['R'],
                    'penghasilan_ayah' => $s['S'],
                    'ibu' => $s['T'],
                    'pekerjaan_ibu' => $s['U'],
                    'penghasilan_ibu' => $s['V'],
                    'wali' => $s['W'],
                    'pekerjaan_wali' => $s['X'],
                    'penghasilan_wali' => $s['Y'],
                    'tanggal_masuk' => $s['Z'],
                    'telp_siswa' => $s['AA'],
                    'telp_ayah' => $s['AB'],
                    'telp_ibu' => $s['AC'],
                    'foto' => NULL,
                    'aktif' => '1' // aktif
                ));
            }
            // $dataAwal membaca semua data yang ada di excel termasuk nama kolom
            // $dataAkhir membaca $dataAwal dari array urutan ke 2
            $dataAkhir = array_slice($dataAwal, 1);
            $this->session->set_flashdata('berhasil_upload', 'Anda berhasil mengunggah <strong>' . $jumlahData . ' data siswa.</strong>');
            $this->db->insert_batch('siswa', $dataAkhir);
            unlink($inputFileName);
            redirect('siswa');
        }
    }

    function download_template_siswa()
    {
        force_download('downloads/template_siswa.xlsx', null);
    }

    function delete_all_siswa()
    {
        $this->db->empty_table('siswa'); // Produces: DELETE FROM siswa
        redirect('siswa');
    }
}

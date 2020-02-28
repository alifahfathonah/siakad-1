<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Absensi extends CI_Controller {
    public function __construct(){
        parent::__construct();
        $this->load->model('Absensi_model');
    }

    public function index()
    {
        // dapatkan semua siswa dalam rombel berdasarkan id kelas yang aktif
        $data['absensi'] = $this->Absensi_model->get_absensi();

        // print_r($data['absensi']);

        $this->load->view('template/header');
        $this->load->view('template/sidebar');
        $this->load->view('absensi/index', $data);
        $this->load->view('template/footer');
    }

}
<?php
use PhpOffice\PhpWord\PhpWord;

class Rapor extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Rapor_model');
        
        // cek user login
        check_login();
    }
    
    function index()
    {
        $data['siswa'] = $this->Rapor_model->get_siswa();
        
        $this->load->view('template/header');
        $this->load->view('template/sidebar', $data);
        $this->load->view('rapor/index',$data);
        $this->load->view('template/footer');
    }

    function word()
    {
        $phpWord = new PhpWord();
		$section = $phpWord->addSection();
		$section->addText('Hello World !');
		
        // Saving the document as OOXML file...
        $objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
        $objWriter->save('helloWorld.docx');
		
		$filename = 'simple';
		
		header('Content-Type: application/msword');
        header('Content-Disposition: attachment;filename="'. $filename .'.docx"'); 
		header('Cache-Control: max-age=0');
		
		$objWriter->save('php://output');       
    
    }

    function load_rapor($id_siswa)
    {
        $get_data_siswa = $this->Rapor_model->get_data_siswa($id_siswa);
        $get_rombel_siswa = $this->Rapor_model->get_rombel_siswa($id_siswa);
        $get_mapel_siswa = $this->Rapor_model->get_mapel_siswa($id_siswa);
        $data_nilai = [];
        
        // dapatkan nilai dan deskripsi kd untuk masing-masing mapel
        foreach($get_mapel_siswa as $mapel){
            $nilai = $this->Rapor_model->get_nilai($mapel['id_mapel'], $id_siswa);
            $des = $this->Rapor_model-> get_deskripsi($mapel['id_mapel'], $id_siswa);

            print_r($des);
            exit;
            array_push($data_nilai, [
                'id_mapel' => $mapel['id_mapel'],
                $mapel['kode_mapel'] => $mapel['nama_mapel'],
                'nilai_'.$mapel['kode_mapel'] => $nilai['rerata_up'],
                'kd_'.$mapel['kode_mapel'] => $nilai['des_kd'],
            ]);
        }

        // var_dump($nilai);

        print_r($get_data_siswa);
        print_r($get_rombel_siswa);
        print_r($get_mapel_siswa);
        print_r($data_nilai);
        exit;
        // load template rapor default
        $templateProcessor = new \PhpOffice\PhpWord\TemplateProcessor('uploads/Template.docx');
 
        $templateProcessor->setValue('date', date("d-m-Y"));
        $templateProcessor->setValue('name', 'Teguh');
        $templateProcessor->setValue(
            ['city', 'street'],
            ['Sunnydale, 54321 Wisconsin', '123 International Lane']);
        
        $templateProcessor->saveAs('MyWordFile.docx');
    }
}
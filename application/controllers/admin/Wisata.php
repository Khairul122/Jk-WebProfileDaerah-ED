<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Wisata extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        if ($this->session->userdata('user') == FALSE) {
            $this->myModel->set_notifikasi_swal('error', 'Oops', 'Anda Belum Login Bosku!!!');
            redirect('auth');
        }
    }

    public function index()
    {
        $data['pages']       = 'wisata';
        $data['subtitles']   = 'Wisata';
        $data['pagesTitle']  = 'Wisata';

        $this->load->view('temp/header', $data);
        $this->load->view('temp/sidebar', $data);
        $this->load->view('temp/contentHeader', $data);
        $this->load->view('admin/wisata', $data);
        $this->load->view('temp/footer', $data);
    }


    public function save()
    {
        $nama   = $this->input->post('nama');
        $latitude     = $this->input->post('latitude');
        $longitude     = $this->input->post('longitude');
        $deskripsi     = $this->input->post('deskripsi');

        $data = array(
            'nama' => $nama,
            'latitude'  => $latitude,
            'longitude'  => $longitude,
            'deskripsi'   => $deskripsi,
        );

        $this->db->insert('objek_wisata', $data);
        $this->myModel->set_notifikasi_swal('success', 'Yuhuu...', 'Yuhuu..objek wisata berhasil disimpan');
        redirect('admin/wisata', 'refresh');
    }

    public function update()
    {
        $id_wisata = $this->input->post('id');
        $nama = $this->input->post('nama');
        $latitude = $this->input->post('latitude');
        $longitude = $this->input->post('longitude');
        $deskripsi = $this->input->post('deskripsi');

        // Lakukan validasi atau operasi update sesuai kebutuhan Anda
        // Contoh validasi sederhana
        if (empty($id_wisata) || empty($nama) || empty($latitude) || empty($longitude) || empty($deskripsi)) {
            // Handle error jika data tidak lengkap
            // Redirect atau tampilkan pesan error
            redirect('admin/wisata', 'refresh');
            return;
        }

        // Lakukan operasi update ke database
        $data = array(
            'nama' => $nama,
            'latitude' => $latitude,
            'longitude' => $longitude,
            'deskripsi' => $deskripsi
            // Tambahkan kolom lain sesuai kebutuhan
        );

        $this->db->where('id', $id_wisata);
        $this->db->update('objek_wisata', $data);

        // Setelah update, redirect atau berikan respons sukses
        redirect('admin/wisata', 'refresh');
    }
}

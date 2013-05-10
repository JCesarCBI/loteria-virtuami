<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CLogin extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('usuario/mLogin');
	}
	
	public function validarLogin(){
		$this->form_validation->set_rules('Lusuario_nombreUsr','','trim|required|max_length[15]|xss_clean');
		$this->form_validation->set_rules('Lusuario_contrasena', '', 'trim|required');
        if ($this->form_validation->run() == FALSE){
            $this->load->view('vinicio2');
        }else{
        	$usr = $this->input->post('Lusuario_nombreUsr');
			$psw = $this->input->post('Lusuario_contrasena');
        	$usuario = $this->mLogin->login_usuario($usr, $psw);
			if($usuario){
				$this->session->set_userdata('usuario', $usr);
				$this->load->view('vPruebaEfrenLogin');
			}else{
				echo "error, usuario no esta en la DB";
				$this->load->view('vinicio2');
			}
        }
	}
	
	public function terminarSesion(){
		$this->session->sess_destroy();
		$this->load->view('vinicio2');
	}
}
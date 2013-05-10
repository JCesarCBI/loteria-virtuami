<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CLogin extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation', 'email');
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
        	$jugador = $this->mLogin->login_usuario($usr, $psw);
			if($jugador){
				$this->session->set_userdata('usuario', $usr);
				$this->session->set_userdata('avatar', $jugador[0]->avatar);				
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
	
	public function recuperarContrasena($correo){
		$this->form_validation->set_rules('correoUsr','','trim|required|xss_clean|valid_email');
		if ($this->form_validation->run() == FALSE){
            $this->load->view('vinicio2');
        }else{
        	$pswUsuario = $this->mLogin->getContrasena($correo);
			if($pswUsuario){
				$this->email->from('tu_direccion@tu_sitio.com', 'LOTERIA UAMI');
				$this->email->to($correo);
				$this->email->subject('Te enviamos tu contraseña de LOTERIA UAMI');
				$this->email->message('Tu contraseña es: '.$pswUsuario);
				$this->email->send();
				echo $this->email->print_debugger();
			}else{
				echo "No tienes cuenta en Loteria UAM, registrate...";
				$this->load->view('vinicio2');
			}        	
        }
	}
}
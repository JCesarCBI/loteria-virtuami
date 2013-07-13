<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CLogin extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->helper('form');
		$this->load->library('form_validation');
		$this->load->model('usuario/mlogin');
		//$this->ci->load->model('usuario/mregistro');
		$this->load->library('micombobox');
		
	}
	
	public function validarLogin(){
		$this->session->set_userdata('idUsuario', 0);
		$this->form_validation->set_rules('Lusuario_nombreUsr','','trim|required|max_length[15]|xss_clean');
		$this->form_validation->set_rules('Lusuario_contrasena', '', 'trim|required');
        if ($this->form_validation->run() == FALSE){
            $this->load->view('vinicio');
        }else{
        	$usr = $this->input->post('Lusuario_nombreUsr');
			$psw = $this->input->post('Lusuario_contrasena');
        	$jugador = $this->mlogin->login_usuario($usr, $psw);
			if($jugador){
				$this->session->set_userdata('usuario', $usr);
				$this->session->set_userdata('idUsuario', $jugador[0]->idUsr);
				$this->session->set_userdata('idJuego', 1);
				$this->session->set_userdata('avatar', $jugador[0]->avatar);			
				$this->load->view('vPruebaEfrenLogin');  //aqui se cargara vModalidad
			}else{
				echo "error, usuario no esta en la DB";
				$this->load->view('vinicio', $this->micombobox->datosComboBox());
			}
        }
	}
	
	public function terminarSesion(){
		$this->session->sess_destroy();
		$this->load->view('vinicio', $this->micombobox->datosComboBox());
	}
	
	public function recuperarContrasena(){
		
		$this->form_validation->set_rules('usuario_correo_recuperarContrena','','trim|required|valid_email');
		if ($this->form_validation->run() == FALSE){
            $this->load->view('vinicio');
			echo "dentro de la funcion";
        }else{
        	$correo = $this->input->post('usuario_correo_recuperarContrena');
        	$Usuario = $this->mlogin->getContrasena($correo);
			if($Usuario){
				$config['protocol']    = 'smtp';
		        $config['smtp_host']    = 'ssl://smtp.googlemail.com';
		        $config['smtp_port']    = '465';
		        $config['smtp_timeout'] = '7';
		        $config['smtp_user']    = 'ludico@virtuami.izt.uam.mx';
		        $config['smtp_pass']    = '7Ud1C0u@m';
		        $config['charset']    = 'iso-8859-1';
		        $config['newline']    = "\r\n";
		        $config['mailtype'] = 'html'; // or html
		        $config['validation'] = TRUE;    
		        $this->load->library('email', $config);
		        $this->email->from('ludico@virtuami.izt.uam.mx', 'myname');
		        $this->email->to($correo); 
		        $this->email->subject('Email Test');
		        $this->email->message('Tu usuario es '.$Usuario[0]->nombreUsr. 'y tu contraseña es'.$Usuario[0]->contrasena);  	
		        echo $this->email->print_debugger();
				}else{
					echo "No tienes cuenta en Loteria UAM, registrate...";
			}        	
        }
		$this->load->view('vinicio',$this->micombobox->datosComboBox());
	}
}
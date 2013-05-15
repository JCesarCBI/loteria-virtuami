<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CLogin extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->helper('form');
		$this->load->library('form_validation');
		//$this->load->library('email');
		$this->load->model('usuario/mlogin');
	}
	
	public function validarLogin(){
		$this->form_validation->set_rules('Lusuario_nombreUsr','','trim|required|max_length[15]|xss_clean');
		$this->form_validation->set_rules('Lusuario_contrasena', '', 'trim|required');
        if ($this->form_validation->run() == FALSE){
            $this->load->view('vinicio2');
        }else{
        	$usr = $this->input->post('Lusuario_nombreUsr');
			$psw = $this->input->post('Lusuario_contrasena');
        	$jugador = $this->mlogin->login_usuario($usr, $psw);
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
	
	public function recuperarContrasena(){
		
		$this->form_validation->set_rules('usuario_correo_recuperarContrena','','trim|required|valid_email');
		if ($this->form_validation->run() == FALSE){
            $this->load->view('vinicio2');
			echo "dentro de la funcion";
        }else{
        	$correo = $this->input->post('usuario_correo_recuperarContrena');
        	$Usuario = $this->mlogin->getContrasena($correo);
			//echo print_r($Usuario);
			if($Usuario){
				// Set SMTP Configuration
				$config = Array(
			    'protocol' => 'smtp',
			    'smtp_host' => 'ssl://smtp.googlemail.com',
			    'smtp_port' => 465,
			    'smtp_user' => 'ludico@virtuami.izt.uam.mx',
			    'smtp_pass' => '7Ud1C0u@m',
			    'mailtype'  => 'html', 
			    'charset'   => 'iso-8859-1'
				);
				$config['protocol']    = 'smtp';
		        $config['smtp_host']    = 'ssl://smtp.googlemail.com';
		        $config['smtp_port']    = '465';
		        $config['smtp_timeout'] = '7';
		        $config['smtp_user']    = 'ludico@virtuami.izt.uam.mx';
		        $config['smtp_pass']    = '7Ud1C0u@m';
		        $config['charset']    = 'iso-8859-1';
		        $config['newline']    = "\r\n";
		        $config['mailtype'] = 'html'; // or html
		        $config['validation'] = TRUE; // bool whether to validate email or not      
		
		        $this->load->library('email', $config);
		
		        $this->email->from('ludico@virtuami.izt.uam.mx', 'myname');
		        $this->email->to('jezrelmx1304@gmail.com'); 
		
		        $this->email->subject('Email Test');
		        $this->email->message('Testing the email class.');  
		
		        $this->email->send();
		
		        echo $this->email->print_debugger();
		
		        $this->load->view('email_view');
				
							
				}else{
					echo "No tienes cuenta en Loteria UAM, registrate...";
					
			}        	
        }
		$this->load->view('vinicio2');
	}
}
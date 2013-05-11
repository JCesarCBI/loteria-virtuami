<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CLogin extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->helper('form');
		$this->load->library('form_validation');
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
				$config = Array(
					'useragent'      => 'CodeIgniter',
					'mailpath'     => '/usr/sbin/sendmail',// or "/usr/sbin/sendmail"
					'protocol'     => 'mail',
					'smtp_host'     => 'localhost',
					'smtp_user'     => '',
					'smtp_pass'      => '',
					'smtp_port'  =>  '25', 
					);
				$this->load->library('email', $config);				
				$this->email->from('tu_direccion@tu_sitio.com', 'LOTERIA UAMI');
				$this->email->to("jcesarcbi@gmail.com");
				//$this->email->to($correo);
				$this->email->subject('Te enviamos tu contraseña de LOTERIA UAMI');
				$this->email->message('Tu usuario es hola');
				//$this->email->message('Tu usuario es '.$Usuario[0]->nombreUsr.'y tu contraseña es '.$Usuario[0]->contrasena);
				$this->email->send();
				echo $this->email->print_debugger();
				echo "CORREO ENVIADO";
			}else{
				echo "No tienes cuenta en Loteria UAM, registrate...";
				$this->load->view('vinicio2');
			}        	
        }
	}
}
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
			echo "<pre>";
			print_r($jugador);
			echo "</pre>";
			if($jugador){
				if ($jugador[0]->estatus == 1) {
					$this->session->set_userdata('usuario', $usr);
					$this->session->set_userdata('idUsuario', $jugador[0]->idUsr);
					$this->session->set_userdata('idJuego', 1);
					$this->session->set_userdata('avatar', $jugador[0]->avatar);			
					$this->load->view('vModalidad');  //aqui se cargara vPruebaEfrenLogin
				} else {
					$datos = $this->micombobox->datosComboBox();
					//Agrega este índice para que se emita la alerta correspondiente
					$datos['noExiste'] = 0;
					$this->load->view('vinicio', $datos);
					echo "<script>alert('Activa tu cuenta para poder jugar')</script>";
				}
			}else{
				
				//Envíame los datos de esta manera, por favor
				$datos = $this->micombobox->datosComboBox();
				//Agrega este índice para que se emita la alerta correspondiente
				$datos['noExiste'] = 1;
				$this->load->view('vinicio', $datos);
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
            $datos = $this->micombobox->datosComboBox();
			//Agrega este índice para que se emita la alerta correspondiente
			echo "<script>alert('Introduce un e-mail valido')</script>";
			$datos['noExiste'] = 0;
			$this->load->view('vinicio', $datos);
        }else{
        	$correo = $this->input->post('usuario_correo_recuperarContrena');
        	$Usuario = $this->mlogin->getContrasena($correo);
			if($Usuario){
				$nombreUsr = "jezrelmx1304";
				$contrasena = "123456";
				$miMensaje = '<html><head><meta charset="utf-8">';
				$miMensaje .= "<link rel='stylesheet' href=".base_url()."media/css/foundation.css.>";
				$miMensaje .= "<link rel='stylesheet' href=".base_url()."media/css/formatoCorreos.css>";
				$miMensaje .= "<script src=".base_url()."media/js/jquery-1.9.1.min.js></script>";
				$miMensaje .= '</head><body><title>Recuperar contraseña</title>';
				$miMensaje .= '<div class="twelve columns"><div class="row"><div class="eight columns">
								<h2>Recuperación de contraseña</h2>
								<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in 
									this spot, which was created for the bliss of souls like mine.
								</p>	
								<p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that
								 I never was a greater artist than now. When, while the lovely valley teems with 
								</p>
								<div id="datosUsuario">';
				$miMensaje .= "<label class='dato'>Nombre de usuario:</label>".$nombreUsr."<br><br>";
				$miMensaje .= "<label class='dato'>Tu contraseña:</label>".$contrasena."<br><br>";
				$miMensaje .=	'</div></div><div class="four columns">';
				// $miMensaje .= "<img id='loteria-img' src='".base_url()."media/img/loteria.jpg'/>";
				$miMensaje .= "<img id='loteria-img' src='http://148.206.34.85/loteriaVIRTUAMI/media/img/loteria.jpg'/>";
				$miMensaje .= '</div></div><div id="segundo" class="row"><div class="three columns">';
				$miMensaje .= "<img id='virtuami-img' src='".base_url()."/media/img/virtuami_logo.png'/>";
				$miMensaje .= '</div><div class="six columns"><p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p> 
							<p>I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.</p></div><div class="three columns">';
				$miMensaje .= "<img id='uam' src='".base_url()."/media/img/uamizt.png'/>";
				$miMensaje .='</div></div></div></body></html>';
				// $destino = $correo;
				$destino = "jezrelmx1304@gmail.com";
				$cabecera = "Content-type: text/html\r\n";
				// $desde   = "virtuami@izt.uam.com";
				$asunto  = "Contraseña virtuami";
				//$mensaje = "Tu contraseña de loteria virtuami es ".$Usuario[0]->contrasena;
				mail($destino, $asunto, $miMensaje, $cabecera);
				echo '<script type="text/javascript">alert("Recibiras tu contraseña en tu correo");</script>'; 
				// echo "<pre>";
				// print_r($Usuario[0]->contrasena);
				// echo "<pre>";
				}else{
					$datos = $this->micombobox->datosComboBox();
					//Agrega este índice para que se emita la alerta correspondiente
					echo "<script>alert('No tienes una cuenta en Loteria Virtuami')</script>";
					$datos['noExiste'] = 0;
					$this->load->view('vinicio', $datos);
			}        	
        }
		// $this->load->view('vinicio',$this->micombobox->datosComboBox());
	}
}
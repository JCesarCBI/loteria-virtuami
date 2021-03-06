<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cpruebasNaye extends CI_Controller {

	  function __construct() {
        
        parent::__construct();
        
        $this->load->helper(array('html', 'url'));
		$this->load->helper('form'); //Contiene funciones que ayuda a trabajar con formularios en html 
		$this->load->model('usuario/mregistro');
		$this->load->library('form_validation');
		$this->load->model('usuario/mlogin');
		$this->load->library('micombobox');	
		$this->load->model('usuario/mdatosperfil');		
		$this->load->model('estadisticas/mestadisticas');
		
	  }
	
	public function index()	{
		$datos = $this->micombobox->datosComboBox();
		$datos['gradoActivo'] = array('1'=>'Maestría', '2'=>'Doctorado');
		$datos['posgrado'] = array('1'=>'posgrado', '2'=> 'doctorado');	
		$this->load->view('vinicio', $datos);
	}
	
	public function modalidadPrueba(){
		$datos = array ( 
			'idUsr' => 1,
			'nombreUsr' => 'anjudark89',
			'idAvatar' => '1',
			'icnAvatar' => '/media/img/avatar/av_ic_aguadulce.jpg'			
		);
		$this->load->view('vconfiguracionJuego', $datos);
	}
	
	//Función AJAX que verifica si el usuario existe o no existe en la BD
		function usuario(){
			$term = $this->input->post('usuario',TRUE); //Recibo variable "usuario" a través de AJAX. Archivo media/js/inicio.js. Línea 90
			
			$valor= $this->mregistro->getExisteUsuario($term);//La función 'getExisteUsuario' regresa true si el ususario existe y false en caso contrario.
			
			//Envia respuesta a la vista si el usuario existe o no en la BD
			if( $valor){
				// echo "El usuario existe";  
				echo json_encode(1);	
			}else{
				// echo "El usuario no existe";
				echo json_encode(0);
			}		
		}
	
		function correo(){
			$term = $this->input->post('correo',TRUE); //Recibo variable "correo" a través de AJAX. Archivo media/js/inicio.js. Línea 119
			$valor= $this->mregistro->getExisteCorreo($term);//La función 'getExisteCorreo' regresa true si el correo existe y false en caso contrario.
			$correo_xanum = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]xanum[.]uam[.]mx$/', $term);
			if( $valor){
				//Correo existe   
				echo json_encode(1);	
			}else{
				//Correo no existe
				echo json_encode(0);
			}					
		}
		
		function dominio(){
			$term = $this->input->post('correo',TRUE); //Recibo variable "correo" a través de AJAX. Archivo media/js/inicio.js. Línea 119
			$correo_xanum = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]xanum[.]uam[.]mx$/', $term);
			$correo_docencia = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]docencia[.]uam[.]mx$/', $term);
			$correo_titlani = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]titlani[.]uam[.]mx$/', $term);
			
			//Comprobando si el dominio es correcto
			if($correo_xanum == FALSE && $correo_titlani==FALSE && $correo_docencia==FALSE){
				echo json_encode(0);	
			}else{
				echo json_encode(1);
			}					
			
		}
		
		//Esta función estará definida por el ajax para enviar el correo para recuperar la contraseña
		public function recuperarContrasena(){
			$correo = $this->input->post('correo',TRUE);
			$Usuario = $this->mlogin->getContrasena($correo);
			if($Usuario){ //Enviará el correo. No imprimir ningún echo más que el json_encode
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
				echo json_encode(1);	
			}else{ //El correo no existe
				echo json_encode(0);
			}        	
        }
		
		public function lecciones(){
			$this->load->view('vlecciones');
		}

		public function registroActivacion($idUsuario, $idjuego){
			$datosPerfil = $this->mdatosperfil->getDatosUsuario($idUsuario);
			// echo "<pre>";
			// print_r($datosPerfil[0]);
			// echo "</pre>";	
			$this->load->view('registroActivacion', $datosPerfil[0]);
		}

		public function recuperaPass($idUsuario, $idjuego){
			$datosPerfil = $this->mdatosperfil->getDatosUsuario($idUsuario);
			$this->load->view('vrecuperaPass', $datosPerfil[0]);
		}

		public function activaCuenta($idUsuario, $idjuego){
			$datosPerfil = $this->mdatosperfil->getDatosUsuario($idUsuario);
			$this->load->view('vactivaCuenta', $datosPerfil[0]);
		}
} //Fin de la clase




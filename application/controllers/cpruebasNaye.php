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
		$datos['pos'] = array('1'=>'posgrado', '2'=> 'doctorado');	
		$this->load->view('vinicio', $datos);
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

		public function editarPerfilJugador($idUsuario){
			if($idUsuario == 0){
					$idUsuario = "Usuario no existente";
					return $idUsuario;
				}else{
					$datosPerfil = $this->mdatosperfil->getDatosUsuario($idUsuario);
					if(!$datosPerfil){
						$idUsuario = "Usuario no existente";
						return $idUsuario;
					}else{
						$datosPerfil;

						echo "<pre>";
						print_r($datosPerfil[0]);
						echo "</pre>";
					}
			}			
			$this->load->view('veditarPerfilJugador', $datosPerfil[0]);			
		}
		
		public function perfilUsuario($idUsuario){
			if($idUsuario == 0){
				$idUsuario = "Usuario no existente";
				echo "<script>
					alert('usuario no existe')
				</script>";
			}else{
				$datosPerfil = $this->mdatosperfil->getDatosUsuario($idUsuario);
				if(!$datosPerfil){
					$idUsuario = "Usuario no existente";
					echo $idUsuario;
				}else{
					$datosPerfilOrdenados = $datosPerfil[0];
					$datosPerfilOrdenados["Sexo"][1] = "Hombre";
					$datosPerfilOrdenados["Sexo"][2] = "Mujer";
					$datosPerfilOrdenados['trofeos'] = Array(
						1 => Array (
							'idTrofeo' => 1,
							'nombreTrofeo' =>'Trofeo1',
							'Descripción' => 'Este es el trofeo1',
							'Estado' => 1, //Trofeo ganado
							'url-chico' => 'media/img/trofeo/trofeo01.png',
							'url-grande' => 'media/img/trofeo/trofeo01.png'
						),
						2 => Array (
							'idTrofeo' => 2,
							'nombreTrofeo' =>'Trofeo2',
							'Descripción' => 'Este es el trofeo2',
							'Estado' => 1, //Trofeo ganado
							'url-chico' => 'media/img/trofeo/trofeo02.png',
							'url-grande' => 'media/img/trofeo/trofeo02.png'
						),
						3 => Array (
							'idTrofeo' => 3,
							'nombreTrofeo' =>'Trofeo3',
							'Descripción' => 'Este es el trofeo3',
							'Estado' => 0, //Trofeo no ganado
							'url-chico' => 'media/img/trofeo/trofeo03.png',
							'url-grande' => 'media/img/trofeo/trofeo03.png'
						),
						4 => Array (
							'idTrofeo' => 4,
							'nombreTrofeo' =>'Trofeo4',
							'Descripción' => 'Este es el trofeo4',
							'Estado' => 0, //Trofeo no ganado
							'url-chico' => 'media/img/trofeo/trofeo04.png',
							'url-grande' => 'media/img/trofeo/trofeo04.png'
						),
						5 => Array (
							'idTrofeo' => 4,
							'nombreTrofeo' =>'Trofeo4',
							'Descripción' => 'Este es el trofeo4',
							'Estado' => 0, //Trofeo no ganado
							'url-chico' => 'media/img/trofeo/trofeo04.png',
							'url-grande' => 'media/img/trofeo/trofeo04.png'
						),
						6 => Array (
							'idTrofeo' => 4,
							'nombreTrofeo' =>'Trofeo4',
							'Descripción' => 'Este es el trofeo4',
							'Estado' => 0, //Trofeo no ganado
							'url-chico' => 'media/img/trofeo/trofeo04.png',
							'url-grande' => 'media/img/trofeo/trofeo04.png'
						),
					);
					for($i=1; $i<45; $i++){
						$datosPerfilOrdenados["Edades"][$i] = $i+16;	
					}
					$datosPerfilOrdenados['datos'] = $this->micombobox->datosComboBox();
					$datosPerfilOrdenados['datos']['comunidad_universitaria'] = array('1'=>'Alumno', '2'=>'Profe', '3'=>'Admin', '4'=>'Otro');
					$datosPerfilOrdenados['datos']['gradoActivo'] = array('1'=>'Licenciatura', '2'=>'Posgrado');
					$datosPerfilOrdenados['datos']['pos'] = array('1'=>'Maestría', '2'=> 'Doctorado');	
				}
				
				// echo "<pre>";
				// print_r($datosPerfilOrdenados);
				// echo "</pre>";
				$this->load->view('veditarPerfilJugador', $datosPerfilOrdenados);			
			}
		}

		//Confirmará si la contraseña del usuario es correcta a través de AJAX. $contrasena es la contraseña que el usuario escribe y 
		//Se recibe mediante AJAX	 
		public function confirmaContrasena($contrasena){
			$contrasenaUsuario = "a1b1c2d3";
			echo json_encode(strcmp($contrasenaUsuario, $contrasena));	
		}

	
} //Fin de la clase




<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

    class CRegistro extends CI_Controller {
    public function __construct(){
        parent::__construct();
        $this->load->helper(array('html', 'url'));
		$this->load->helper('form'); //Contiene funciones que ayuda a trabajar con formularios en html 
		$this->load->model('usuario/mregistro');
		$this->load->library('form_validation');
		$this->load->library('micombobox');	
		$this->load->model('usuario/mdatosperfil');		
		$this->load->model('estadisticas/mestadisticas');
		//Filename: views/vinicio.php
				
	}

	//Esta función ya no es necesaria, ya que el controlador que se carga desde
	//El inicio es welcome.php
	 public function index(){
	 	echo '<h1>';
	 	echo 'Mis pruebas';
	 	echo '</h1>';
		 $datos = $this->micombobox->datosComboBox();
		 $this->load->view('vpruebasGuillermo', $datos);
	 }
	
	//Función AJAX que verifica si el usuario existe o no existe en la BD
	function usuario(){
		$term = $this->input->post('usuario',TRUE); //Recibo variable "usuario" a través de AJAX. Archivo media/js/inicio.js. Línea 90
		$valor= $this->mregistro->getExisteUsuario($term);//La función 'getExisteUsuario' regresa true si el ususario existe y false en caso contrario.
		//Envia respuesta a la vista si el usuario existe o no en la BD
		if( $valor){
			echo json_encode(1);	
		}else{
			echo json_encode(0);
		}		
	}
	
	function correo(){
			$term = $this->input->post('correo',TRUE); //Recibo variable "correo" a través de AJAX. Archivo media/js/inicio.js. Línea 119
			$valor= $this->mregistro->getExisteCorreo($term);//La función 'getExisteCorreo' regresa true si el correo existe y false en caso contrario.
			$correo_xanum = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]xanum[.]uam[.]mx$/', $term);
			$correo_titlani = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]titlani[.]uam[.]mx$/', $term);
			if( $valor || ($correo_xanum == FALSE && $correo_titlani==FALSE)){
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
			$correo_titlani = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]titlani[.]uam[.]mx$/', $term);
			$correo_docencia = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]docencia[.]uam[.]mx$/', $term);
			//Comprobando si el dominio es correcto
				if($correo_xanum == FALSE && $correo_titlani==FALSE && $correo_docencia == FALSE){
					echo json_encode(0);	
				}else{
					echo json_encode(1);
				}
		}

		/**Aquí harás todas las validaciones correspondientes de todos los campos.
		 * No hagas validaciones por separado, al menos que yo pida que así sean.
		 * Te enviaré la información vía POST. Tú las recibirás y manejarás para enviar
		 * los datos a la BD. Si crees que necesito enviarte alguna cosa extra, me dices por favor */		
		function RegistraUsuario(){
			//Recibe arreglo
			
			//Realiza validaciones
			$this->form_validation->set_rules('usuario_nombreUsr','','required');
        	$this->form_validation->set_rules('usuario_correo','','required|trim|valid_email');
			$this->form_validation->set_rules('usuario_contrasena','','required|trim|min_length[6]');
        	$this->form_validation->set_rules('usuario_nombre','required|trim');		
			$this->form_validation->set_rules('usuario_aPaterno','required|trim');
			$this->form_validation->set_rules('usuario_aMaterno','required|trim');
			$this->form_validation->set_rules('usuario_edad','numeric|integer|trim|max_legth[3]');
		    if($this->form_validation->run() != FALSE){
			//echo "<pre>";
			//print_r($_POST);
			//echo "</pre>";
			$datosUsuario= array(
                'nombreUsr'=>$this->input->post('usuario_nombreUsr',TRUE),
                'correo'=>$this->input->post('usuario_correo',TRUE),
                'contrasena'=>$this->input->post('usuario_contrasena',TRUE),
                'sexo'=>$this->input->post('usuario_sexo',TRUE),
                'nombre'=>$this->input->post('usuario_nombre',TRUE),
                'aPaterno'=>$this->input->post('usuario_aPaterno',TRUE),
                'aMaterno'=>$this->input->post('usuario_aMaterno',TRUE),
				'edad'=>$this->input->post('usuario_edad',TRUE),
				'cargo'=>$this->input->post('usuario_cargo',TRUE),
				'area'=>$this->input->post('usuario_area',TRUE),
				'idTipoUsuario'=>$this->input->post('usuario_comunidadUniversitaria',TRUE),
				'idDivision'=>$this->input->post('usuario_division',TRUE),
				'idGradoActivo'=>$this->input->post('usuario_gradoActivo',TRUE),
				'idGradoPosgrado'=>$this->input->post('usuario_posgrado',TRUE),
				'idAvatar'=>1		
			);
			if($datosUsuario['idDivision']==-1)$datosUsuario['idDivision']=null;
			if($datosUsuario['idGradoActivo']==-1)$datosUsuario['idGradoActivo']=null;
		    if($datosUsuario['idGradoPosgrado']==-1)$datosUsuario['idGradoPosgrado']=null;			
			if($datosUsuario['cargo']=="")$datosUsuario['cargo']=null;
			if($datosUsuario['area']=="")$datosUsuario['area']=null;
			//Si la validación es correcta, me enviarás esto:
			echo "<script>
				alert('¡Estás a un paso de comenzar a jugar! Por favor, confirma tu solicitud a través de la liga que ha sido enviada a tu correo')
			</script>";	
			echo "<pre>";
			print_r($datosUsuario);
			echo "</pre>";
			$this->mregistro->setAgregarUsuario($datosUsuario);
			//Qué vista mostrar?
			}
			
			//En otro caso, esto:
			else{
			echo "<script>
			alert('Alguno de los datos que ingresaste no está siendo aceptado por nuestro servidor :()')
			</script>";
			
			//Mandas a llamar nuevamente a la vista vinicio					
			$datos = $this->micombobox->datosComboBox();
			$this->load->view('vinicio', $datos);			
			}	
		}	
		
							
		
	function vacio($input){
		$term = $this->input->post($input,TRUE);
	
		if($term == ""){
			echo json_encode(1);	
		}else{
			echo json_encode(0);
		}
	}
	
	function validarAreaYCargo(){
		//$datos;	
		$area=$this->input->post('usuario_area',TRUE);
		$cargo=$this->input->post('usuario_cargo',TRUE);
		if($area==""){$datos['area']="NULL";}
		if($cargo=="")$datos['cargo']="NULL";
		
		return $datos;
		}

	
}

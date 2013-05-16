<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cpruebasNaye extends CI_Controller {

	  function __construct() {
        
        parent::__construct();
        
        $this->load->helper(array('html', 'url'));
		$this->load->helper('form'); //Contiene funciones que ayuda a trabajar con formularios en html 
		$this->load->model('usuario/mregistro');
		$this->load->library('form_validation');
	  }
	
	public function index()	{
			
		$tipoUsuario = $this->mregistro->getTipoUsuario();
		$division = $this->mregistro->getDivision();
		$i = 0;
		foreach ($tipoUsuario as $lugar) {
			foreach ($lugar as $key) {
				$datos['comunidad_universitaria'][$i] = $key['tipoUsr'];
				$i++;
			}			
		}
		$i = 0;
		foreach ($division as $lugar) {
			foreach ($lugar as $key) {
				$datos['division'][$i] = $key['iniciales'];
				$i++;
			}
		}
		$this->load->view('vinicio2', $datos);
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
			$patron = "[0-9]";
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
		
		function vacio($input){
			$term = $this->input->post($input,TRUE);
		
			if($term == ""){
				echo json_encode(1);	
			}else{
				echo json_encode(0);
			}
		}

}

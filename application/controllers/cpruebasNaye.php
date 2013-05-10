<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cpruebasNaye extends CI_Controller {

	  function __construct() {
        
        parent::__construct();
        
        $this->load->helper(array('html', 'url'));
		$this->load->helper('form'); //Contiene funciones que ayuda a trabajar con formularios en html 
	  }
	
	public function index()	{
		$datos['comunidad_universitaria'] = array (
			'0' => 'comunidad universitaria',
			'1' => 'comunidad 1',
			'2' => 'comunidad 2',
			'3' => 'comunidad 2'
		);
		
		$datos['area'] = array (
			'0' => 'area',
			'1' => 'area1',
			'2' => 'area2',
			'3' => 'area3'
		);
		
		$datos['division'] = array (
			'0' => 'division',
			'1' => 'division1',
			'2' => 'division2',
			'3' => 'division3'
		);
		$this->load->view('vinicio2', $datos);
	}
	
	//Función AJAX que verifica si el usuario existe o no existe en la BD
	function usuario(){
		$term = $this->input->post('usuario',TRUE); //Recibo variable "usuario" a través de AJAX. Archivo media/js/inicio.js. Línea 90
		$usuarios = array( //Este array debería ser el creado por el modelo
			'1' => "alejandro",
			'2' => "mariana",
			'3' => "lupe"
 		);

		//Envia respuesta a la vista si el usuario existe o no en la BD
		if( array_search($term, $usuarios)){  
			echo json_encode(1);	
		}else{
			echo json_encode(0);
		}		
	}
	
	function correo(){
		$term = $this->input->post('correo',TRUE); //Recibo variable "correo" a través de AJAX. Archivo media/js/inicio.js. Línea 119
		$correos = array( //Este array debería ser el creado por el modelo
			'1' => "alejandro@gmail.com.mx",
			'2' => "mariana@gmail.com.mx",
			'3' => "lupe@gmail.com.mx"
		);
		//Envia la respuesta a la vista si el correo existe o no en la BD
		if( array_search($term, $correos)){  
			echo json_encode(1);	
		}else{
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

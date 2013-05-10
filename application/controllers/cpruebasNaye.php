<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cpruebasNaye extends CI_Controller {

	  function __construct() {
        
        parent::__construct();
        
        $this->load->helper(array('html', 'url'));
		
	  }
	
	public function index()	{
		$this->load->view('vinicio2');
	}
	
	//Función AJAX que verifica si el usuario existe o no existe en la BD
	function usuario(){
		$term = $this->input->post('usuario',TRUE);
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
		$term = $this->input->post('correo',TRUE);
		$correos = array(
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
}

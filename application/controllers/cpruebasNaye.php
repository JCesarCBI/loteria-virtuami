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
	function prueba(){
		$term = $this->input->post('usuario',TRUE);
		$usuarios = array( //Este array debería ser el creado por el modelo
			'1' => "alejandro",
			'2' => "mariana",
			'3' => "lupe"
 		);
		
		//Envia respuesta a la vista
		if( array_search($term, $usuarios)){  
			echo json_encode(1);	
		}else{
			echo json_encode(0);
		}		
		
	}
}

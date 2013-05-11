<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

    class CRegistro extends CI_Controller {
    public function __construct(){
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
        $this->load->library('form_validation');
        $this->load->model('usuario/mregistro');
		
		
	}
	
	
	
	//Función AJAX que verifica si el usuario existe o no existe en la BD
	function usuario(){
		$term = $this->input->post('usuario',TRUE); //Recibo variable "usuario" a través de AJAX. Archivo media/js/inicio.js. Línea 90
		
		$valor= $this->mregistro->getExisteUsuario($term);//La función 'getExisteUsuario' regresa true si el ususario existe y false en caso contrario.
		
		//Envia respuesta a la vista si el usuario existe o no en la BD
		if( $valor){
			echo "El usuario existe";  
			echo json_encode(1);	
		}else{
			echo "El usuario no existe";
			echo json_encode(0);
		}		
	}
	
	
	
	function correo(){
		$term = $this->input->post('correo',TRUE); //Recibo variable "correo" a través de AJAX. Archivo media/js/inicio.js. Línea 119
		$valor=$valor= $this->mregistro->getExisteCorreo($term);//La función 'getExisteCorreo' regresa true si el ususario existe y false en caso contrario.
		//Envia la respuesta a la vista si el correo existe o no en la BD
		if( $valor){  
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

	
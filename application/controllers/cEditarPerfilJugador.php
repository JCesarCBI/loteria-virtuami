<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CEditarPerfilJugador extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		//$this->load->model('usuario/mregistro');
		//$this->load->library('micombobox');
	}
	
	public function index(){
		
		
		// echo "<pre>";
		// print_r($datos);
		// echo "<pre>";
		//$this->load->view('vinicio', $datos);
		
	}
	
	public function actualizarDatos(){
		
		print_r($_POST_);
		
	}
}
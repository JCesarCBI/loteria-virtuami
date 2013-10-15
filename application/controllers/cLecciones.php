<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CLecciones extends CI_Controller {

	  function __construct() {
        
        parent::__construct();
        $this->load->helper(array('html', 'url'));
		$this->load->helper('form'); //Contiene funciones que ayuda a trabajar con formularios en html 
		$this->load->model('usuario/mregistro');
		$this->load->model('usuario/mlogin');
		
        
	  }
	
	public function index()	{
 		
		
	}
	
	public function cargarLecciones(){
		$datos['idUsr'] = $this->session->userdata('idUsuario');
		$datos['nombreUsr'] = $this->session->userdata('usuario');
		$datos['icnAvatar'] = $this->session->userdata('avatar');
		// echo "<pre>";
		// print_r($datos);
		// echo "</pre>";
		$this->load->view('barraUsuario',$datos);
		$this->load->view('vlecciones', $datos);
		
	}
	
}

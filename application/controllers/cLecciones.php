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
 		$this->load->view('vlecciones');
		
	}
	
}

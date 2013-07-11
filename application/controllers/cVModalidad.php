<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CVModalidad extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		// $this->load->model('usuario/mdatosperfil');
		// $this->load->model('estadisticas/mestadisticas');
		// $this->load->model('usuario/mregistro');
		
	}
	
	public function loadVModalidad(){
		$this->load->view('vModalidad');
	}
}
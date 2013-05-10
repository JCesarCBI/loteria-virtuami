<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CPruebaJuegoLibre extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		//$this->load->model('usuario/mLogin');
	}
	
	public function juegoLibre(){
		
		$this->load->view('vPruebasCartas');
	}
}
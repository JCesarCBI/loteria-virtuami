<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CLogin extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		//$this->load->library('session');
	}
	
	public function validarLogin(){
		$this->form_validation->set_rules('Lusuario_nombreUsr','','trim|required|max_length[30]|xss_clean');
		$this->form_validation->set_rules('Lusuario_contrasena', '', 'trim|required');
        if ($this->form_validation->run() == FALSE){
        	//echo "fallo";
            $this->load->view('vinicio2');
        }else{
        	        		
				
        	//echo "exito";
            $this->load->view('vPruebaEfren');
        }
		
		//$this->load->view('cPruebaEfren');
	}
}
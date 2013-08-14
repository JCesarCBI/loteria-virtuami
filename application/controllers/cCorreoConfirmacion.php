<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
		
		class  CCorreoConfirmacion extends CI_Controller {
			
			
		function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		//$this->load->model('usuario/mdatosperfil');
		$this->load->model('usuario/mregistro');
		}
	
		
		
		function datosCorreo($idUsuario){
		$datos=$this->mregistro->getCodigoActivacion($idUsuario);
		print_r($datos);
		return $datos;
		
	} 
		
}
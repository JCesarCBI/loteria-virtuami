<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CDatosPerfil extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->model('usuario/mdatosperfil');
		//$this->ci->load->model('usuario/mregistro');
		// $this->load->library('micombobox');
		
	}
	
	public function getTrofeos(){
		$idUsuario = 1; //este dato lo traere posteriormente del formulario
		
		
		
		
		if($idUsuario == 0){
			$idUsuario = "Usuario no existente";
			echo $idUsuario;
			return $idUsuario;
		}else{
			$datosPerfil = $this->mdatosperfil->getDatosUsuario($idUsuario);
			if(!$datosPerfil){
				$idUsuario = "Usuario no existente";
				echo $idUsuario;
				return $idUsuario;
			}else{
				echo $idUsuario;
				echo "<pre>";
				print_r($datosPerfil);
				echo "<pre>";
			}
		}
	}
}
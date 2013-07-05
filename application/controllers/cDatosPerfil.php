<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CDatosPerfil extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->model('usuario/mdatosperfil');
		//$this->ci->load->model('usuario/mregistro');
		// $this->load->library('micombobox');
		
	}
	
	public function perfilUsuario(){
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
				$datosPerfilOrdenados = $datosPerfil[0];
				$datosPerfilOrdenados["idUsuario"] = $idUsuario;
				$datosPerfilOrdenados["Sexo"]["H"] = "Hombre";
				$datosPerfilOrdenados["Sexo"]["M"] = "Mujer";
				for($i=1; $i<45; $i++){
					$datosPerfilOrdenados["Edades"][$i+16] = $i+16;	
				}
				// echo "<pre>";
				// print_r($datosPerfilOrdenados);
				// echo "<pre>";
				//return $datosPerfilOrdenados;
				$this->load->view('veditarPerfilJugador', $datosPerfilOrdenados);
			}
		}
	}
}
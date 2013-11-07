<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CEstadisticas extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->model('estadisticas/mestadisticas');
		if (($this->session->userdata('logeado') != 1)) {
			exit("Acceso denegado 403, pedir vista al equipo de diseño");
		}
	}
	
	public function getTrofeos(){  //posiblemente reciba como parametros el id de usuario y el id de juego
		$idUsuario = 3; //ests dos datos los traere posteriormente del formulario
		$idJuego = 1;
		
		if($idJuego != 0 && $idUsuario != 0){
			$trofeosJugador = $this->mestadisticas->getTrofeos($idUsuario, $idJuego);
			for($i=0; $i<count($trofeosJugador); $i++){
				$trofeosJugadorOrdenados[$i+1] = $trofeosJugador[$i];
			}
			echo $idJuego;
			echo $idUsuario;
			echo "<pre>";
			print_r($trofeosJugadorOrdenados);
			echo "<pre>";
			return $trofeosJugadorOrdenados;
		}else{
			return FALSE;
		}
		
		
	}
}
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CEstadisticas extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->model('estadisticas/mestadisticas');
		//$this->ci->load->model('usuario/mregistro');
		// $this->load->library('micombobox');
		
	}
	
	public function getTrofeos(){  //posiblemente reciba como parametros el id de usuario y el id de juego
		$idUsuario = 5; //este dato lo traere posteriormente del formulario
		$idJuego = 1;
		
		
		
		
		$trofeosJugador = $this->mestadisticas->getTrofeos($idUsuario, $idJuego);
		//$datos = $this->micombobox->datosComboBox();
		echo $idJuego;
		echo $idUsuario;
		echo "<pre>";
		print_r($trofeosJugador);
		echo "<pre>";
		echo "HOLA";
	}
}
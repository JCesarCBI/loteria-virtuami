<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CPruebaJuegoLibre2 extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('juego/mJuegoLibre');
	}
	
	public function juegoLibre(){
		$baraja = $this->mJuegoLibre->getMazo();
		shuffle($baraja);
		foreach ($baraja as $key) {
			$id = $key["idCarta"];
			$data["baraja"][$id] = $key;
		}
		$k = 0;
		$conta = 0;
		for ($k=0; $k < 16; $k++) { 
			srand ();
			$aleat = rand(0,53);
			$r = $baraja[$aleat]['idCarta'];
			$data["lote"][$r] = $baraja[$aleat];
		}
		/*echo "<pre>";
		print_r($data);
		echo "</pre>";*/
		$this->load->view('vPruebasCartas', $data);
	}
	
	/******Función que escribe la descripción una carta en la baraja********/
	public function descripcion($id=-1){
		
		//Voy por el mazo de las cartas    
		$baraja = $this->mJuegoLibre->getMazo();
		
		//Si el id es correcto y la carta existe busco la descripción
		if ($id>-1 && isset($baraja[$id]['nombre'])) {
			
			$datos=$baraja[$id]['nombre'];
			//Le mando los datos a la función juegoCartas.js/ajax_compararCarta
			print_r($datos);
	
		}
		//si no lo encuentra me manda una cadena vacía
		else{
			echo "";
		}
		
	}
}
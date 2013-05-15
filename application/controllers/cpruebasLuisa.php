<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cpruebasLuisa extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('juego/mJuegoLibre');
	}
	
	public function juegoLibre2(){
		
		$baraja = $this->mJuegoLibre->getMazo();

		$k = 0;
		foreach ($baraja as $key) {

			$data["baraja"][$k+1] = $baraja[$k];
			$k++;

		}
		
		$k = 0;
		$conta = 0;
		
		for ($k=0; $k < 16; $k++) { 
			srand ();  //Introducimos la "semilla"
			$aleat = rand(0,53);    //rand(mínimo,máximo);
			$r = $baraja[$aleat]['idCarta'];
			$data["lote"][$r] = $baraja[$aleat];
		}

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
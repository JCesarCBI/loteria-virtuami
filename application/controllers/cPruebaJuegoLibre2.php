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
		$k = 0;
		foreach ($baraja as $key) {
			$data["baraja"][$k+1] = $baraja[$k];
			$k++;
		}
		$k = 0;
		$conta = 0;
		for ($k=0; $k < 16; $k++) { 
			srand ();
			$aleat = rand(0,53);
			$r = $baraja[$aleat]['idCarta'];
			$data["lote"][$r] = $baraja[$aleat];
		}
		$this->load->view('vPruebasCartas', $data);
	}
}
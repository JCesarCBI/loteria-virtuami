<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CPruebaJuegoLibre extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('juego/mJuegoLibre');
	}
	
	public function juegoLibre(){
		
		$baraja = $this->mJuegoLibre->getMazo();
		// echo "<pre>";
		// print_r($baraja);
		// echo"</pre>";
		// $this->load->view('vPruebasCartas');
		
		for ($i=0; $i <16 ; $i++) {
						
			// $data["lote"][$i] = base_url()."/media/cardCaptor/img/mazo/Clow-".$i.".jpeg";
			$data["lote"][$i] = base_url()."/media/img/mazo/Clow-".$i.".jpg";
						
		}
		
		for ($j=0; $j < 46; $j++) {
			 
			// $data["baraja"][$j]=base_url()."/media/img/mazo/Clow-".$j.".jpeg";
			$data["baraja"][$j]=base_url()."/media/img/mazo/Clow-".$j.".jpg";
		}
		
		$this->load->view('vPruebaEfrenJuego', $data);
		
		
	}
}
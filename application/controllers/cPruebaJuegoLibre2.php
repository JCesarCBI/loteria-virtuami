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
		// echo "<pre>";
		// print_r($baraja);
		// echo"</pre>";
		//$this->load->view('vPruebasCartas');
		$k = 0;
		foreach ($baraja as $key) {
			// echo "<pre>";
			// print_r($k.$baraja[$k]->imagen);
			// echo"</pre>";
			//$data["lote"][$k] = base_url().$baraja[$k]->imagen;
			$data["baraja"][$k+1] = $baraja[$k];
			$k++;
		}
		
		$k = 0;
		$conta = 0;
		
		for ($k=0; $k < 16; $k++) { 
			srand ();  //Introducimos la "semilla"
			$aleat = rand(0,53);    //rand(mínimo,máximo);
			$data["lote"][$k] = $baraja[$aleat];
		}
		
		// for ($i=0; $i <16 ; $i++) {
// 						
			// // $data["lote"][$i] = base_url()."/media/cardCaptor/img/mazo/Clow-".$i.".jpeg";
			// $data["lote"][$i] = base_url()."/media/img/mazo/Clow-".$i.".jpg";
// 						
		// }
// 		
		// for ($j=0; $j < 46; $j++) {
// 			 
			// // $data["baraja"][$j]=base_url()."/media/img/mazo/Clow-".$j.".jpeg";
			// $data["baraja"][$j]=base_url()."/media/img/mazo/Clow-".$j.".jpg";
		// }
		
		//$this->load->view('vPruebaEfrenJuego', $data);
		
		echo "<pre>";
		print_r($data);
		echo"</pre>";
	}
}
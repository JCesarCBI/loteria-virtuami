<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cpruebasLuisa extends CI_Controller {

	  function __construct() {
        
        parent::__construct();
        
        $this->load->helper(array('html', 'url'));
		
	  }
	
	public function index()
	{
		
		for ($i=0; $i <16 ; $i++) {
						
			$data["lote"][$i] = base_url()."/media/cardCaptor/Clow-".$i;
						
		}
		
		for ($j=0; $j < 46; $j++) {
			 
			$data["baraja"][$j]=base_url()."/media/cardCaptor/Clow-".$j;
		}
		
		
		$this->load->view('vPruebasCartas', $data);
	}
}

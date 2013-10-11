<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cAjaxJuego extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('juego/mJuegoLibre');
		$this->load->model('juego/mjuegoavanzado');
	}
	
/******Función que escribe la descripción una carta en la baraja********/
public function descripcion($id=-1, $tipoAudio=-1){
	
	if ($tipoAudio==2) {
		$baraja = $this->mJuegoLibre->getMazoFrase();
		
	} else {		
		$baraja = $this->mJuegoLibre->getMazoCarta();
	}
	
			
	//Si el id es correcto y la carta existe busco la descripción
	if ($id>-1 && isset($baraja[$id]['frase'])) {
		
		//$datos=$baraja[$id]['nombre']."   ".$id."<img src='".base_url().$baraja[$id]['imagen']."' style='width:90px; height:80px'/>";
		$datos=$baraja[$id]['frase'];
		//Le mando los datos a la función juegoCartas.js/ajax_compararCarta
		print_r($datos);

	}
	//si no lo encuentra me manda una cadena vacía
	else{
		echo "";
	}
	
}

/******Función que trae el audio de una carta en la baraja********/
public function audio($id=-1, $audio=-1, $mazoFrase=-1){
	
	if ($mazoFrase==1) {
		$baraja = $this->mJuegoLibre->getMazoCarta();
		
	} else {
		$baraja = $this->mJuegoLibre->getMazoFrase();
	}
	
			
	//Si el id es correcto y la carta existe busco la descripción
	if ($id>-1 && isset($baraja[$id]['audioMP3'])) {
		
		//Si es 1 se reproducirá el Mp3
		if ($audio==1) {
		//$datos=$baraja[$id]['nombre']."   ".$id."<img src='".base_url().$baraja[$id]['imagen']."' style='width:90px; height:80px'/>";
		$datos=$baraja[$id]['audioMP3'];
		//Le mando los datos a la función juegoCartas.js/ajax_compararCarta
			
		} else {
			if ($audio==2 && (isset($baraja[$id]['audioOGG']))) {
				
				$datos=$baraja[$id]['audioOGG'];
			} else {
				$datos="";
			}
			
		}
		
		
		echo $datos;

	}
	//si no lo encuentra me manda una cadena vacía
	else{
		echo "";
	}
	
}


public function longitudRespuesta($id){
		
	$baraja = $this->mJuegoLibre->getMazoCarta();
				
		//Si el id es correcto y la carta existe busco la descripción
		if ($id>-1 && isset($baraja[$id]['nombre'])) {
			
			$datos=$baraja[$id]['nombre'];


			$respuesta=$this->stripAccents($datos);
			
			//$datosReal=$datos."  ".strlen($respuesta);
			$datosReal=strlen($respuesta);
			echo($datosReal);
	
		}
		//si no lo encuentra me manda una cadena vacía
		else{
			echo 0;
		}
				

	}

	public function stripAccents($String){
		
		$String = str_replace(array('á','à','â','ã','ª','ä'),'a',$String);
		$String = str_replace(array('Á','À','Â','Ã','Ä'),"A",$String);
		$String = str_replace(array("Í",'Ì','Î','Ï'),'I',$String);
		$String = str_replace(array('í','ì','î','ï'),'i',$String);
		$String = str_replace(array('é','è','ê','ë'),'e',$String);
		$String = str_replace(array('É','È','Ê','Ë'),'E',$String);
		$String = str_replace(array('ó','ò','ô','õ','ö','º'),'o',$String);
		$String = str_replace(array('Ó','Ò','Ô','Õ','Ö'),'O',$String);
		$String = str_replace(array('ú','ù','û','ü'),'u',$String);
		$String = str_replace(array('Ú','Ù','Û','Ü'),'U',$String);
		$String = str_replace(array('[','^','´','`','¨','~',']'),'',$String);
		$String = str_replace('ç','c',$String);
		$String = str_replace('Ç','C',$String);
		$String = str_replace('ñ','n',$String);
		$String = str_replace('Ñ','N',$String);
		$String = str_replace('Ý','Y',$String);
		$String = str_replace('ý','y',$String);
		return $String;
	}


}

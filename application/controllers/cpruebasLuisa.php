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
			$conteo = count($data["lote"]);
			
			if($conteo == $k){
				$k--;
			}
		}
		
		$this->load->view('vPruebasCartas', $data);

	}
	

/******Función que escribe la descripción una carta en la baraja********/
public function descripcion($id=-1){
	

	//Voy por el mazo de las cartas    
	$barajas = $this->mJuegoLibre->getMazo();

		$k = 0;
		foreach ($barajas as $key) {

			$baraja[$k+1] = $barajas[$k];
			$k++;

		}
			
	//Si el id es correcto y la carta existe busco la descripción
	if ($id>-1 && isset($baraja[$id]['nombre'])) {
		
		//$datos=$baraja[$id]['nombre']."   ".$id."<img src='".base_url().$baraja[$id]['imagen']."' style='width:90px; height:80px'/>";
		$datos=$baraja[$id]['nombre'];
		//Le mando los datos a la función juegoCartas.js/ajax_compararCarta
		print_r($datos);

	}
	//si no lo encuentra me manda una cadena vacía
	else{
		echo "";
	}
	
}

//******Función que escribe la trae larespuesta correcta********/
public function respuestaCorrecta($id=-1){
	

	//Voy por el mazo de las cartas    
	$barajas = $this->mJuegoLibre->getMazo();

		$k = 0;
		foreach ($barajas as $key) {

			$baraja[$k+1] = $barajas[$k];
			$k++;

		}
			
	//Si el id es correcto y la carta existe busco la descripción
	if ($id>-1 && isset($baraja[$id]['nombre'])) {
		
		$datos=$baraja[$id]['nombre'];
		//Le mando los datos a la función juegoCartas.js/ajax_compararCarta
		print_r($datos);

	}
	//si no lo encuentra me manda una cadena vacía
	else{
		echo 0;
	}
	
}


public function seleccionJuego($respuesta="neko"){
		$id=1;
		//$respuesta="neko";
		$baraja[$id]['respuesta'][1]="gato";
		$baraja[$id]['respuesta'][2]="felino";
		$baraja[$id]['respuesta'][3]="neko";
		$baraja[$id]['respuesta'][4]="cat";
		
		print_r($baraja[$id]);
		
			echo "<pre>";
		foreach ($baraja[$id]['respuesta'] as $value) {
			print_r($value);
			echo "<br />";
		}
			echo "</pre>";
		
		 echo "************************";
		
		foreach ($baraja[$id]['respuesta'] as $value) {
			
			echo "<br />";
			if ($respuesta==$value) {
				echo "******Respuesta Correcta*******";
			echo "<br />";
				
			}
			
		}
				

}

public function seleccionarPosibleRespuesta($respuesta="neko"){
		$id=1;
		//$respuesta="neko";
		$baraja[$id]['respuesta'][1]="gato";
		$baraja[$id]['respuesta'][2]="felino";
		$baraja[$id]['respuesta'][3]="neko";
		$baraja[$id]['respuesta'][4]="cat";
		
		print_r($baraja[$id]);
		
			echo "<pre>";
		foreach ($baraja[$id]['respuesta'] as $value) {
			print_r($value);
			echo "<br />";
		}
			echo "</pre>";
		
		 echo "************************";
		
		foreach ($baraja[$id]['respuesta'] as $value) {
			
			echo "<br />";
			if ($respuesta==$value) {
				echo "******Respuesta Correcta*******";
			echo "<br />";
				
			}
			
		}
				

}

}
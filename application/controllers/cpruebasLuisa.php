<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cpruebasLuisa extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('juego/mJuegoLibre');
	}
	
	public function modalidad(){
		$this->load->view('vpruebasLuisa', "");
	}
	
	public function juegoLibre2(){
		/**Mio***/
			$data['hojaResultado'] = $this->load->view('vhojaResultados', "", true);
		
		/**Termina lo mio***/
		$this->form_validation->set_rules('vPartida','','required');
		$this->form_validation->set_rules('vNivel', '', 'required');
		$this->form_validation->set_rules('vModalidad', '', 'required');
        if ($this->form_validation->run() == FALSE){
        	echo "<script> alert('Debe selecionar un modo completo de juego'); </script>";
			$this->load->view('vModalidad');
			
        }else{
	        $idPartida = $this->input->post('vPartida');
			$idNivel = $this->input->post('vNivel');
			$idModalidad = $this->input->post('vModalidad');
				
			
			$puntaje = 0;
			$tiempo = 0;
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
			//Aqui se hace la configuración del juego conforme a los parametros recibidos
			if ($idPartida == 1) {  //Configuración para las partidas completas
				if ($idNivel == 1 && $idModalidad == 1) {  //Nivel básico libre
					$puntaje = 20;
					$tiempo = 10000;
				}
				if ($idNivel == 3 && $idModalidad == 1) {	//Nivel Avanzado Libre
					$puntaje = 60;
					$tiempo = 6000;
				}
				if ($idNivel == 3 && $idModalidad == 2) {	//Nivel Avanzado Diminutivos
					$puntaje = 120;
					$tiempo = 6000;
				}
				if ($idNivel == 3 && $idModalidad == 3) {	//Nivel Avanzado Adjetivos
					$puntaje = 240;
					$tiempo = 6000;
				}
				if ($idNivel == 3 && $idModalidad == 4) {	//Nivel Avanzado Sinonimos
					$puntaje = 360;
					$tiempo = 6000;
				}
			} else {  //Configuración para las partidas rapidas
				$puntaje = 1;
				$tiempo = 1;
			}
			//Guardamos los siguientes datos en la cookie
			$this->session->set_userdata('idPartida', $idPartida);
			$this->session->set_userdata('idNivel', $idNivel);
			$this->session->set_userdata('idModalidad', $idModalidad);
			$data['puntaje']=$puntaje;
			$data['tiempo']=$tiempo;
			// echo "<pre>";
			// print_r($this->session->all_userdata());
			// echo "</pre>";
			$this->load->view('vPruebasCartas', $data);
		}
	}
	

/******Función que escribe la descripción una carta en la baraja********/
public function descripcion($id=-1){
	

	$baraja = $this->mJuegoLibre->getMazo();
			
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
public function respuestaCorrecta($respuesta,$id){
	
	
	$baraja = $this->mJuegoLibre->getMazo();
					
	//Si el id es correcto y la carta existe busco la descripción
	if ($id>-1 && isset($baraja[$id]['nombre'])) {
		
		$datos=$baraja[$id]['nombre'];
		if ($datos==$respuesta) {
			$resultado=0;
		} else {
			$resultado=1;
		}
		
		//Le mando los datos a la función juegoCartas.js/ajax_compararCarta
		echo($resultado);

	}
	//si no lo encuentra me manda una cadena vacía
	else{
		echo 1;
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

public function stripAccents($String)
{
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
public function longitudRespuesta($id){
		
	$baraja = $this->mJuegoLibre->getMazo();
				
		//Si el id es correcto y la carta existe busco la descripción
		if ($id>-1 && isset($baraja[$id]['nombre'])) {
			
			$datos=$baraja[$id]['nombre'];


			$respuesta=$this->stripAccents($datos);
			
			$datosReal=$datos."  ".strlen($respuesta);
			echo($datosReal);
	
		}
		//si no lo encuentra me manda una cadena vacía
		else{
			echo 0;
		}
				

	}


}

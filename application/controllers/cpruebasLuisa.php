<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class cpruebasLuisa extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('juego/mJuegoLibre');
		$this->load->model('juego/mjuegoavanzado');
	}
	
	public function modalidad(){
		$this->load->view('vModalidad', "");
	}
	
	public function juegoLibre2(){
		
	//Traigo la baraja y la acomodo para mandar las imagenes del tablero y del mazo
		$this->form_validation->set_rules('vPartida','','required');
		$this->form_validation->set_rules('vNivel', '', 'required');
		$this->form_validation->set_rules('vModalidad', '', 'required');
        if ($this->form_validation->run() == FALSE){
        	echo "<script> alert('Debe selecionar un modo completo de juego'); </script>";
			$this->load->view('vModalidad');
            // $this->load->view('vinicio');
            //header("Location: " . "http://" . $_SERVER['HTTP_HOST']."index.php/");
        }else{
	        $idPartida = $this->input->post('vPartida');
			$idNivel = $this->input->post('vNivel');
			$idModalidad = $this->input->post('vModalidad');
			$puntaje = 0;
			$tiempo = 0;
			if ($idPartida == 1) {  //Configuración para las partidas completas
				if ($idNivel == 1 && $idModalidad == 1) {  //Nivel básico libre
					$puntaje = 20;
					$tiempo = 10000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 2;
				}
				if ($idNivel == 3 && $idModalidad == 1) {	//Nivel Avanzado Libre
					$puntaje = 60;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoFrase();
					$data['audio'] = 2;
				}
				if ($idNivel == 3 && $idModalidad == 2) {	//Nivel Avanzado Diminutivos
					$puntaje = 120;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 1;
				}
				if ($idNivel == 3 && $idModalidad == 3) {	//Nivel Avanzado Adjetivos
					$puntaje = 240;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 1;
				}
				if ($idNivel == 3 && $idModalidad == 4) {	//Nivel Avanzado Sinonimos
					$puntaje = 360;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 1;
				}
			} else {  //Configuración para las partidas rapidas
				$puntaje = 400;
				$tiempo = 4000;
				$baraja = $this->mJuegoLibre->getMazoFrase();
				$data['audio'] = 2;
			}
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
			//Guardamos los siguientes datos en la cookie
			$this->session->set_userdata('idPartida', $idPartida);
			$this->session->set_userdata('idNivel', $idNivel);
			$this->session->set_userdata('idModalidad', $idModalidad);
			$data['puntaje']=$puntaje;
			$data['tiempo']=$tiempo;
			$data['juego']['idPartida'] = $idPartida;
			$data['juego']['idNivel'] = $idNivel;
			$data['juego']['idModalidad'] = $idModalidad;
			$data['jugador']['nombre'] = $this->session->userdata('usuario');
			$data['jugador']['avatarGde'] = $this->session->userdata('avatar');
			$data['jugador']['avatarCh'] = $this->session->userdata('icnavatar');
			$data['hojaResultado'] = $this->load->view('vhojaResultados', "", true);
			$baraja2 = $this->mJuegoLibre->getMazoFrase();	
			// echo "<pre> Baraja con audio ";
			// print_r($data);
			// echo "</pre>";
			$this->load->view('vPruebasCartas', $data);
		}
	}

	public function guardarScore($record, $idEdoPartida){
		
		$score = array('idPartida' => $this->session->userdata('idPartida') ,
						'idNivel' =>  $this->session->userdata('idNivel'),
						'idModalidad' => $this->session->userdata('idModalidad'),
						'idUsr' => $this->session->userdata('idUsuario'),
						'idJuego' => $this->session->userdata('idJuego'));
		
		// echo "<pre>";
		// print_r($this->session->all_userdata());
		// echo "   ";
		// print_r($score);
		// echo "</pre>";
		$this->mscore->setScore($score, $record, $idEdoPartida);
		
			
			/**Código mio  **/
			// echo "<pre>";
			// print_r($baraja);
			// echo "</pre>";
			/**Código mio**/
			
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
		echo "asdassadasd";
	}
	
}

/*********************************/

	
		public function validarSinonimo($respuestaCarta, $idCarta){	//Valida si el 
			$sinonimo=$this->mjuegoavanzado->getCartaSinonimo($idCarta); 
		
			
			$valor=0;
			$i=1;
			foreach ($sinonimo as $key) {
				$resultado['respuestas'][$i]=$key['sinonimo'];
				$i++;
			}
			
			
			foreach ($resultado['respuestas'] as $value) {
				if ($respuestaCarta==$value) {
					$valor=1;
					}
			}	
			
			return $valor;
		}
		
		public function validarAdjetivos($respuestaCarta, $idCArta){
			$adjetivos= $this->mjuegoavanzado->getCartaAdjetivo($idCArta);
			
			
			$valor =0;
			$i=1;
			foreach ($adjetivos as $key) {
				$resultado['respuestas'][$i]=$key['adjetivo'];
				$i++;
			}
			
			foreach ($resultado['respuestas'] as $value) {
				if ($respuestaCarta==$value) {
					$valor=1;
					}
			}	
			echo $valor;
			return $valor;
			
		}
		
		public function validarDiminutivos($respuestaCarta, $idCArta){
			$diminutivos= $this->mjuegoavanzado->getCartaDiminutivo($idCArta);
			
			
			$valor =0;
			$i=1;
			foreach ($diminutivos as $key) {
				$resultado['respuestas'][$i]=$key['diminutivo'];
				$i++;
			}
			
			foreach ($resultado['respuestas'] as $value) {
				if ($respuestaCarta==$value) {
					$valor=1;
					}
			}	
			echo $valor;
			return $valor;
			
		} 
		
public function seleccionarPosibleRespuesta($id, $modalidad){
	
	
	//Respuesta via post 
	$respuesta=$_POST['respuesta'];
	
	switch ($modalidad) {
		case 1:// Juego Libre	
		
			$baraja = $this->mJuegoLibre->getMazoCarta();
					
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
			//si no lo encuentra me manda 1
			else{
				echo 1;
			}
			
		break;
		case 2://Diminutivos
			if($this->validarDiminutivos($respuesta, $id)== 1) echo 0;
			else echo 1;
		break;
		case 3://Adjetivos
			if($this->validarAdjetivos($respuesta, $id)== 1) echo 0;
			else echo 1;
		break;
		case 4://Sinonimos				
			if($this->validarSinonimo($respuesta, $id)== 1) echo 0;
			else echo 1;										
		break;
		//Agregar aquí las otras modalidades ...
	}	
}	


//******Función que escribe trae larespuesta correcta********/
public function respuestaCorrecta($id){
	
	$respuesta = $_POST['respuesta'];
	
	$baraja = $this->mJuegoLibre->getMazoCarta();
					
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
	//si no lo encuentra me manda 1
	else{
		echo 1;
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

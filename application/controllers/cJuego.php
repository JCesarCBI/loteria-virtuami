<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CJuego extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('juego/mJuegoLibre');
		$this->load->model('juego/mscore');
		$this->load->model('estadisticas/mestadisticas');
		$this->load->model('juego/mtrofeo');
	}
	
	public function configuracionJuego(){
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
					$this->session->set_userdata('idTrofeo', 1);
				}
				if ($idNivel == 3 && $idModalidad == 1) {	//Nivel Avanzado Libre
					$puntaje = 60;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoFrase();
					$data['audio'] = 2;
					$this->session->set_userdata('idTrofeo', 2);
				}
				if ($idNivel == 3 && $idModalidad == 2) {	//Nivel Avanzado Diminutivos
					$puntaje = 120;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 1;
					$this->session->set_userdata('idTrofeo', 3);
				}
				if ($idNivel == 3 && $idModalidad == 3) {	//Nivel Avanzado Adjetivos
					$puntaje = 240;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 1;
					$this->session->set_userdata('idTrofeo', 4);
				}
				if ($idNivel == 3 && $idModalidad == 4) {	//Nivel Avanzado Sinonimos
					$puntaje = 360;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 1;
					$this->session->set_userdata('idTrofeo', 5);
				}
			} else {  //Configuración para las partidas rapidas
				$puntaje = 400;
				$tiempo = 4000;
				$baraja = $this->mJuegoLibre->getMazoFrase();
				$data['audio'] = 2;
				$this->session->set_userdata('idTrofeo', 0);
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
		$idUsr = $this->session->userdata('idUsuario');
		$ganado = -1;
		$trofeos = $this->mestadisticas->getTodosTrofeos();
		// $score = array('idPartida' => $this->session->userdata('idPartida') ,
						// 'idNivel' =>  $this->session->userdata('idNivel'),
						// 'idModalidad' => $this->session->userdata('idModalidad'),
						// 'idUsr' => $this->session->userdata('idUsuario'),
						// 'idJuego' => $this->session->userdata('idJuego'));
		$score = array('idPartida' => 1 ,
						'idNivel' =>  1,
						'idModalidad' => 1,
						'idUsr' => 1,
						'idJuego' => 1);
		
		// echo "<pre>";
		// print_r($this->session->all_userdata());
		// echo "   ";
		// print_r($score);
		// echo "</pre>";
		$this->mscore->setScore($score, $record, $idEdoPartida);
		$misTrofeos = $this->mestadisticas->getTrofeos($idUsr,1);
		if ($idEdoPartida == 2) { //Precision quirurgica
			if ($misTrofeos) {
				$ganado = array_search(6, $misTrofeos);
			}
			if($ganado == -1 || !$ganado){
				$this->mtrofeo->setTrofeo($idUsr, 1, 6);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == 6){
						$misTrofeosGanados[$key["idTrofeo"]] = $key;
					}
				}
			}
		}
		//$misTrofeosGanados = -1;
		$trofeoGanado = $this->validarTrofeos($record, $idEdoPartida); //Validamos y asignamos los trofeos de habilidad
		if ($trofeoGanado) {
			$misTrofeosGanados[$trofeoGanado["idTrofeo"]] = $trofeoGanado;
		}
		
		
		
		if (isset($misTrofeosGanados)) {
			echo "<pre>";
			print_r($misTrofeosGanados);
			echo "</pre>";
		} else {
			echo "No ganaste algo :(";
		}
		
		
		
	}
	
	public function validarTrofeos($score, $idEdoPartida){
		$idJuego = 1;
		$idPartida = 1;//$this->session->userdata('idPartida');
		$idNivel = 1;//$this->session->userdata('idNivel');
		$idTrofeo = 3;//$this->session->userdata('idTrofeo');
		$idModalidad = 1;//$this->session->userdata('idModalidad');
		$idUsr = $this->session->userdata('idUsuario');
		$misTrofeos = $this->mestadisticas->getTrofeos($idUsr,1);
		$trofeos = $this->mestadisticas->getTodosTrofeos();
		$ganado = -1;
		if ($score >= 1000 && $idTrofeo == 1) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == $idTrofeo) {
						$ganado = $idTrofeo;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, $idTrofeo);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == $idTrofeo){
						return $key;
					}
				}
			}
		}
		if ($score >= 3500 && $idTrofeo == 2) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == $idTrofeo) {
						$ganado = $idTrofeo;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, $idTrofeo);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == $idTrofeo){
						return $key;
					}
				}
			}
		}
		if ($score >= 7500 && $idTrofeo == 3) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == $idTrofeo) {
						$ganado = $idTrofeo;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, $idTrofeo);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == $idTrofeo){
						return $key;
					}
				}
			}
		}
		if ($score >= 15000 && $idTrofeo == 4) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == $idTrofeo) {
						$ganado = $idTrofeo;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, $idTrofeo);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == $idTrofeo){
						return $key;
					}
				}
			}
		}
		if ($score >= 21000 && $idTrofeo == 5) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == $idTrofeo) {
						$ganado = $idTrofeo;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, $idTrofeo);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == $idTrofeo){
						return $key;
					}
				}
			}
		}
		return FALSE;
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


}
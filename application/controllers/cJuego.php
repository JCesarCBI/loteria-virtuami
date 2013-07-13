<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CJuego extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('juego/mJuegoLibre');
		$this->load->model('juego/mscore');
	}
	
	public function configuracionJuego($idPartida, $idNivel, $idModalidad){ //Recibir tres parametros idPartida, idNivel, idModalidad
	//Traigo la baraja y la acomodo para mandar las imagenes del tablero y del mazo
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
				$tiempo = 540000;
			}
			if ($idNivel == 3 && $idModalidad == 1) {	//Nivel Avanzado Libre
				$puntaje = 60;
				$tiempo = 270000;
			}
			if ($idNivel == 3 && $idModalidad == 2) {	//Nivel Avanzado Diminutivos
				$puntaje = 120;
				$tiempo = 270000;
			}
			if ($idNivel == 3 && $idModalidad == 3) {	//Nivel Avanzado Adjetivos
				$puntaje = 240;
				$tiempo = 270000;
			}
			if ($idNivel == 3 && $idModalidad == 4) {	//Nivel Avanzado Sinonimos
				$puntaje = 360;
				$tiempo = 270000;
			}
		} else {  //Configuración para las partidas rapidas
			$puntaje = 1;
			$tiempo = 1;
		}
		//Guardamos los siguientes datos en la cookie
		$this->session->set_userdata('idPartida', $idPartida);
		$this->session->set_userdata('idNivel', $idNivel);
		$this->session->set_userdata('idModalidad', $idModalidad);
		// echo "<pre>";
		// print_r($this->session->all_userdata());
		// echo "</pre>";
		$this->load->view('vPruebasCartas', $data, $puntaje, $tiempo);
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
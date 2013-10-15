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
	
	public function opcionesJuego(){
		$datos['idUsr'] = $this->session->userdata('idUsuario');
		$datos['nombreUsr'] = $this->session->userdata('usuario');
		$datos['icnAvatar'] = $this->session->userdata('avatar');
		$datos['barraUsuario'] = $this->load->view('barraUsuario', $datos, TRUE);
		$this->load->view('vconfiguracionJuego', $datos);
		// echo "<pre>";
		// print_r($datos);
		// echo "</pre>";
		
	}
	
	public function configuracionJuego(){
	//Traigo la baraja y la acomodo para mandar las imagenes del tablero y del mazo
		$this->form_validation->set_rules('vPartida','','required');
		$this->form_validation->set_rules('vNivel', '', 'required');
		$this->form_validation->set_rules('vModalidad', '', 'required');
        if ($this->form_validation->run() == FALSE){
        	echo "<script> alert('Debe selecionar un modo completo de juego'); </script>";
			$datos['idUsr'] = $this->session->userdata('idUsuario');
			$datos['nombreUsr'] = $this->session->userdata('usuario');
			$datos['icnAvatar'] = $this->session->userdata('avatar');
			$datos['barraUsuario'] = $this->load->view('barraUsuario', $datos, TRUE);
			$this->load->view('vconfiguracionJuego', $datos);
			
			
			// $this->load->view('vconfiguracionJuego');
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
					$this->session->set_userdata('idTrofeoEvento', 12);
				}
				if ($idNivel == 3 && $idModalidad == 1) {	//Nivel Avanzado Libre
					$puntaje = 60;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoFrase();
					$data['audio'] = 2;
					$this->session->set_userdata('idTrofeo', 2);
					$this->session->set_userdata('idTrofeoEvento', 13);
				}
				if ($idNivel == 3 && $idModalidad == 2) {	//Nivel Avanzado Diminutivos
					$puntaje = 120;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 1;
					$this->session->set_userdata('idTrofeo', 3);
					$this->session->set_userdata('idTrofeoEvento', 14);
				}
				if ($idNivel == 3 && $idModalidad == 3) {	//Nivel Avanzado Adjetivos
					$puntaje = 240;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 1;
					$this->session->set_userdata('idTrofeo', 4);
					$this->session->set_userdata('idTrofeoEvento', 15);
				}
				if ($idNivel == 3 && $idModalidad == 4) {	//Nivel Avanzado Sinonimos
					$puntaje = 360;
					$tiempo = 6000;
					$baraja = $this->mJuegoLibre->getMazoCarta();
					$data['audio'] = 1;
					$this->session->set_userdata('idTrofeo', 5);
					$this->session->set_userdata('idTrofeoEvento', 16);
				}
			} else {  //Configuración para las partidas rapidas
				$puntaje = 400;
				$tiempo = 4000;
				$baraja = $this->mJuegoLibre->getMazoFrase();
				$data['audio'] = 2;
				$this->session->set_userdata('idTrofeo', 0);
				$this->session->set_userdata('idTrofeoEvento', 0);
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
			$datos['barraUsuario'] = $this->load->view('barraUsuario', $datos, TRUE);
			// $data['barraUsuario'] = "barraUsuario";
			$data['hojaResultado'] = $this->load->view('vhojaResultados', "", true);
			$baraja2 = $this->mJuegoLibre->getMazoFrase();	
			// echo "<pre> Baraja con audio ";
			// print_r($data);
			// echo "</pre>";
			$this->load->view('vPruebasCartas', $data);
		}
	}

	public function guardarScore($record, $idEdoPartida, $cthulu, $ofortuna, $tinieblas){
		$idUsr = $this->session->userdata('idUsuario');
		$ganado = -1;
		$idJuego = 1;
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
		$idTrofeo = 20;
		if ($cthulu) {
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
						$misTrofeosGanados[$key["idTrofeo"]] = $key;
					}
				}
			}
		}
		$ganado = -1;
		$idTrofeo = 18;
		if ($ofortuna) {
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
						$misTrofeosGanados[$key["idTrofeo"]] = $key;
					}
				}
			}
		}
		$ganado = -1;
		$idTrofeo = 19;
		if ($tinieblas) {
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
						$misTrofeosGanados[$key["idTrofeo"]] = $key;
					}
				}
			}
		}
		$ganado = -1;
		$idTrofeo = 6;//Precision quirurgica
		if ($idEdoPartida == 2) { 
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
		$trofeoGanado = $this->validarTrofeosConstancia($idUsr, $idEdoPartida);
		if ($trofeoGanado) {
			$misTrofeosGanados[$trofeoGanado["idTrofeo"]] = $trofeoGanado;
		}
		$trofeoGanado = $this->validarTrofeosEventos($idEdoPartida);
		if ($trofeoGanado) {
			$misTrofeosGanados[$trofeoGanado["idTrofeo"]] = $trofeoGanado;
		}
		//Validar trofeos de las cartas ganadas
		$numCartas = $this->mtrofeo->getTermino($idUsr, $idJuego);
		$ganado = -1;
		$idTrofeo = 21;//Coleecionista
		if ($numCartas >= 18) {
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
						$misTrofeosGanados[$key["idTrofeo"]] = $key;
					}
				}
			}
		}
		$ganado = -1;
		$idTrofeo = 22;//Galerista
		if ($numCartas >= 33) {
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
						$misTrofeosGanados[$key["idTrofeo"]] = $key;
					}
				}
			}
		}
		$ganado = -1;
		$idTrofeo = 23;//Museografo
		if ($numCartas >= 54) {
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
						$misTrofeosGanados[$key["idTrofeo"]] = $key;
					}
				}
			}
		}
		$ganado = -1;
		$idTrofeo = 24;//Leyenda
		$leyenda = $this->mtrofeo->getLeyenda($idUsr, $idJuego);
		if ($leyenda == 1) {
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
						$misTrofeosGanados[$key["idTrofeo"]] = $key;
					}
				}
			}
		}
		$misCartasDesbloqueadas = $this->desbloquearCartas($idUsr, $idJuego);
		if (($misCartasDesbloqueadas)) {
			$datos['cartas'] = $misCartasDesbloqueadas;
			// echo "<pre>";
			// print_r(($misCartasDesbloqueadas));
			// echo "</pre>";
		} else {
			$datos['cartas'] = -1;
		}
		if (isset($misTrofeosGanados)) {
			$datos['trofeos'] = $misTrofeosGanados;
		} else {
			$datos['trofeos'] = -1;
		}
		echo json_encode($datos);
		// echo json_encode(array_pop($datos));
		// echo "<pre>";
		// print_r($datos);
		// echo "</pre>";
		
		
	}

	public function desbloquearCartas($idUser, $idJuego){
		$miScore = $this->mscore->getScoreTotal($idUser, $idJuego);
		if ($miScore >= 50000) {
			$miGaleria = $this->mestadisticas->getGaleria($idUser, $idJuego);
			$umbral = intval($miScore/50000);
			$numCartas = count($miGaleria);
			if ($numCartas < 54) {
				$divCartas = intval(($numCartas-3)/3);
				if ($umbral > $divCartas) {
					$galeria = $this->mestadisticas->getCartas();
					foreach ($miGaleria as $key) {
						unset($galeria[$key]);
					}
					if (count($galeria) == 0) {
						return FALSE;
					} else {
						shuffle($galeria);
						for ($i=0; $i < 3; $i++) { 
							$resultado[$galeria[$i]["idCarta"]] = $galeria[$i];
						}
						/*
						 * Hacer insercion en la base de datos de las cartas adquiridas
						 */
						return $resultado;
						// echo "<pre> div ";
						// print_r($resultado);
						// echo "</pre>";
						
					}
				}else{
					return FALSE;
				}
			} else {
				return FALSE;
			}
		} else {
			return FALSE;
		}
	}
	
	public function validarTrofeosEventos($idEdoPartida){
		$idJuego = 1;
		$idPartida = 1;//$this->session->userdata('idPartida');
		$idNivel = 1;//$this->session->userdata('idNivel');
		$idTrofeo = 14;//$this->session->userdata('idTrofeoEvento');
		$idModalidad = 1;//$this->session->userdata('idModalidad');
		$idUsr = $this->session->userdata('idUsuario');
		$misTrofeos = $this->mestadisticas->getTrofeos($idUsr,1);
		$trofeos = $this->mestadisticas->getTodosTrofeos();
		$ganado = -1;
		if($idEdoPartida == 1 || $idEdoPartida == 2){
			if ($idTrofeo == 12) {
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
			if ($idTrofeo == 13) {
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
			if ($idTrofeo == 14) {
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
			if ($idTrofeo == 15) {
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
			if ($idTrofeo == 16) {
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
			// if ($idTrofeo == 17) { *******************************Lobo de mar
				// if ($misTrofeos) {
					// foreach ($misTrofeos as $key) {
						// if ($key == $idTrofeo) {
							// $ganado = $idTrofeo;
						// }
					// }
				// }
				// if($ganado == -1){
					// $this->mtrofeo->setTrofeo($idUsr, $idJuego, $idTrofeo);
					// foreach ($trofeos as $key) {
						// if($key["idTrofeo"] == $idTrofeo){
							// return $key;
						// }
					// }
				// }
			// }
		}
		return FALSE;
	}
	
	public function validarTrofeosConstancia($idUsr,$idEstPartida){
		$numPartidasExitosas = $this->mtrofeo->getConstancia($idUsr, 1, $idEstPartida);
		//echo "Partidas Ganadas ".$numPartidasExitosas;
		$misTrofeos = $this->mestadisticas->getTrofeos($idUsr,1);
		$trofeos = $this->mestadisticas->getTodosTrofeos();
		$ganado = -1;
		$idJuego = 1;
		if ($numPartidasExitosas >= 10) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == 7) {
						$ganado = 7;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, 7);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == 7){
						return $key;
					}
				}
			}
		}
		if ($numPartidasExitosas >= 25) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == 8) {
						$ganado = 8;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, 8);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == 8){
						return $key;
					}
				}
			}
		}
		if ($numPartidasExitosas >= 50) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == 9) {
						$ganado = 9;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, 9);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == 9){
						return $key;
					}
				}
			}
		}
		if ($numPartidasExitosas >= 75) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == 10) {
						$ganado = 10;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, 10);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == 10){
						return $key;
					}
				}
			}
		}
		if ($numPartidasExitosas >= 100) {
			if ($misTrofeos) {
				foreach ($misTrofeos as $key) {
					if ($key == 11) {
						$ganado = 11;
					}
				}
			}
			if($ganado == -1){
				$this->mtrofeo->setTrofeo($idUsr, $idJuego, 11);
				foreach ($trofeos as $key) {
					if($key["idTrofeo"] == 11){
						return $key;
					}
				}
			}
		}
		return FALSE;
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
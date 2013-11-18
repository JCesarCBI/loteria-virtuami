<?php
	/**
	 * 
	 */
	class Mestadisticas extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		//Obtiene todos los trofeos que tiene el jugador en su vitrina, de no tener ninguno regresa un FALSE.
		public function getTrofeos($idUsr, $idJuego){
			$this->db->SELECT('trofeo.idTrofeo');
			$this->db->FROM('vitrina');
			$this->db->JOIN('trofeo','trofeo.idTrofeo = vitrina.idTrofeo');
			$this->db->JOIN('tipoTrofeo','tipoTrofeo.idTipoTrofeo = trofeo.idTipoTrofeo');
			$this->db->WHERE('vitrina.idUsr', $idUsr);
			$this->db->WHERE('vitrina.idJuego', $idJuego);
			
			$query = $this->db->get();
			
			if ($query->num_rows() != 0) {
				foreach ($query->result_array() as $key => $value) {
					$trofeosGanados[$key] = $value['idTrofeo'];
				}
				return $trofeosGanados;
			} else {
				return FALSE;
			}
		}
		
		//Obtiene todos los trofeos almacenados en la base de datos.
		public function getTodosTrofeos()
		{
			$this->db->SELECT('*');
			$this->db->FROM('trofeo');
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				FALSE;
			}
		}
		
		//Obtiene todas las cartas almacenadas en la base de datos.
		public function getCartas()
		{
			$this->db->SELECT('idCarta, nombre, descripcion, imgMazo, imgPlantilla, imgGaleria');
			$this->db->FROM('carta');
			
			$query = $this->db->get();
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $value) {
					$cartas[$value['idCarta']] = $value;
				}
				return $cartas;
			} else {
				return FALSE;
			}
		}
		
		
		//Obtiene todos los avatares almacenados en la base de datos.
		public function getAvatar()
		{
			$this->db->SELECT('*');
			$this->db->FROM('avatar');
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $value) {
					$avatar[$value['idAvatar']] = $value;
				}
				return $avatar;
			} else {
				return FALSE;
			}
			
		}
		
		//Obtiene la galería por jugador almacenada en la base de datos.
		public function getGaleria($idUsr, $idJuego)
		{
			$this->db->SELECT('idCarta');
			$this->db->FROM('galeria');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->WHERE('idJuego', $idJuego);
			
			$query = $this->db->get();
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $key => $value) {
					$galeria[$key] = $value['idCarta'];
				}
				return $galeria;
			} else {
				return FALSE;
			}
		}
		
		//Obtiene las rimas ligadas a cada carta.
		public function getRima($idCarta)
		{
			$this->db->SELECT('*');
			$this->db->FROM('frase');
			$this->db->WHERE('idCarta', $idCarta);
			
			$query = $this->db->get();
						
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $key => $value) {
					$frase[$key] = $value['frase'];
				}
				return $frase;
			} else {
				return FALSE;
			}
		}
		
		// Verifica que el nombre del usuario ya exista en la base de datos, si existe regresa un TRUE de lo contrario regresa un FALSE.
		public function getExisteUsuario($idUsr)
		{
			$this->db->SELECT('idUsr');
			$this->db->FROM('usuario');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query-> num_rows() == 1) {
				return true;
			} else {
				return false;
			}
		}
		
		// Actualiza los datos personales del jugados en la base de datos.
		public function setActualizaUsuario($idUser, $data)
		{
			if ($this->getExisteUsuario($idUser)==TRUE) {
				$this->db->WHERE('idUsr', $idUser);
				$this->db->UPDATE('usuario', $data);
				log_message('error', 'A ocurrido un error en la base de datos');
			} else {
				log_message('error', 'A ocurrido un error en la base de datos');
			}
			
		}
		
		//Obtiene la lista  de los 3 primeros jugadores con mayor número de puntos totales en el juego.
		public function getRanking()
		{
			$this->db->SELECT('usuario.nombreUsr, jugador.scoreTotal');
			$this->db->FROM('jugador');
			$this->db->JOIN('usuario','usuario.idUsr = jugador.idUsr');
			$this->db->ORDER_BY('scoreTotal', 'desc');
			$this->db->LIMIT(3);
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				FALSE;
			}
		}
		
		//Obtiene la configuración de la última partida jugada por el jugador
		public function getUltimoScore($idUsr)
		{		
			$this->db->SELECT('partida.partida, nivel.nivel, modalidad.modalidad, record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->JOIN('partida','partida.idPartida = score.idPartida');
			$this->db->JOIN('nivel','nivel.idNivel = score.idNivel');
			$this->db->JOIN('modalidad','modalidad.idModalidad = score.idModalidad');
			$this->db->WHERE('score.idUsr',$idUsr);
			// $this->db->WHERE_NOT_IN('record.idEstadoPartida', 3);
			$this->db->ORDER_BY('record.fecha', 'desc');
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				FALSE;
			}
		}
		
		//Obtiene la mejor puntuación obtenida por el jugador en todo el juego.
		public function getMejorPuntuacion($idUsr)
		{
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->ORDER_BY('record.record', 'desc');
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				FALSE;
			}
		}
		
		//Obtiene el número total de partidas ganadas y perfectas en nivel básico por jugador.
		public function getBasicoGanadas($idUsr)
		{
			$ganado = array(1,2);
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idNivel', 1);
			$this->db->WHERE_IN('record.idEstadoPartida',$ganado);
			// $this->db->OR_WHERE('record.idEstadoPartida',2);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		//Obtiene el número total de partidas ganadas y perfectas en nivel avanzado por jugador.
		public function getAvanzadoGanadas($idUsr)
		{
			$ganado = array(1,2);
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idNivel', 3);
			$this->db->WHERE_IN('record.idEstadoPartida',$ganado);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		//Obtiene el número total de partidas ganadas y perfectas en nivel experto por jugador.
		public function getExpertoGanadas($idUsr)
		{
			$ganado = array(1,2);
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idNivel', 4);
			$this->db->WHERE_IN('record.idEstadoPartida',$ganado);
			
			$query = $this->db->count_all_results();
			return $query;
		}

		//Obtiene el número total de partidas pedidas en todo el juego por jugador.
		public function getPartidasPerdidas($idUsr)
		{
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('record.idEstadoPartida',3);
			
			$query = $this->db->count_all_results();
			return $query;
		}

		//Obtiene el score total del jugador de no encontrarlo regresa un FALSE.
		public function getTotalPuntos($idUsr, $idJuego)
		{
			$this->db->SELECT('scoreTotal');
			$this->db->FROM('jugador');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->WHERE('idJuego', $idJuego);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				FALSE;
			}
		}
	}
?>
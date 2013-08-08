<?php
	/**
	 * 
	 */
	class Mtrofeo extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		// public function getHabilidad($idUsr, $idJuego, $modalidad, $nivel)
		// {
			// $this->db->SELECT_SUM('record.record', 'scoreTotal');
			// $this->db->FROM('record');
			// $this->db->JOIN('score', 'score.idScore = record.idScore');
			// $this->db->WHERE('score.idUsr', $idUsr);
			// $this->db->WHERE('score.idJuego', $idJuego);
			// $this->db->WHERE('score.idModalidad', $modalidad);
			// $this->db->WHERE('score.idNivel', $nivel);
// 			
			// $query = $this->db->get();
// 			
			// if ($query->num_rows()!=0) {
				// foreach ($query->result_array() as $key => $value) {
					// $scoreTotal[$key] = $value['scoreTotal'];
				// }
				// return $scoreTotal[0];
			// } else {
				// return FALSE;
			// }
		// }
		
		//Función que obtiene el numero de partidas ganadas/perdidas/perfectas por usuario
		public function getConstancia($idUsr, $idJuego, $idEstPartida)
		{
			$this->db->SELECT('record.idRecord');
			$this->db->FROM('record');
			$this->db->JOIN('score', 'score.idScore = record.idScore');
			$this->db->WHERE('score.idUsr', $idUsr);
			$this->db->WHERE('score.idJuego', $idJuego);
			$this->db->WHERE('record.idEstadoPartida', $idEstPartida);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		//Funcion que obtiene la cantidad de cartas en la galeria por usuario
		public function getTermino($idUsr, $idJuego)
		{
			$this->db->SELECT('idCarta');
			$this->db->FROM('galeria');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->WHERE('idJuego', $idJuego);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		//Funcion que obtiene el numero de trofeos de tipo Easter Eggs
		public function getEasterEggs()
		{
			$this->db->SELECT('idTrofeo');
			$this->db->FROM('trofeo');
			$this->db->WHERE('idTipoTrofeo', 4);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		//Función que obtiene el numero total de trofeos
		public function getNumeroTrofeos()
		{
			$this->db->SELECT('idTrofeo');
			$this->db->FROM('trofeo');
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		//Funcion que devuelve verdadero si eres acredor al trofeo leyenda (Total de trofeos - easter eggs + 1)
		public function getLeyenda($idUsr, $idJuego)
		{
			$easterEggs = $this->getEasterEggs() + 1;
			$totalTrofeos = $this->getNumeroTrofeos();
			
			$this->db->SELECT('idTrofeo');
			$this->db->FROM('vitrina');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->WHERE('idJuego', $idJuego);
			
			$query = $this->db->count_all_results();
			$trofeos = $totalTrofeos - $easterEggs;
			
			if ($query == $trofeos) {
				return 1;
			} else {
				return 0;
			}
		}
		
		public function setTrofeo($idUsr, $idJuego, $idTrofeo)
		{
			$trofeo = array(
							'idUsr'=> $idUsr,
							'idJuego'=> $idJuego,
							'idTrofeo'=> $idTrofeo,
							);
			
			$this->db->INSERT('vitrina', $trofeo);
		}
	}
	
?>
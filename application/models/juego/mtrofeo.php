<?php
	/**
	 * 
	 */
	class Mtrofeo extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
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
		
		public function getGane($idUsr, $idJuego, $idModalidad, $idNivel)
		{
			$this->db->SELECT('idScore');
			$this->db->FROM('score');
			$this->db->JOIN('record', 'record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr', $idUsr);
			$this->db->WHERE('score.idJuego', $idJuego);
			$this->db->WHERE('score.idModalidad', $idModalidad);
			$this->db->WHERE('score.idNivel', $idNivel);
			$this->db->WHERE('record.idEstadoPartida', 1);
			$this->db->OR_WHERE('record.idEstadoPartida', 2);
			
			$query = $this->db->get();
			
			if ($query->num_rows()==1) {
				return TRUE;
			} else {
				return FALSE;
			}
		}
		
		public function getLobodeMar($idUsr, $idJuego, $idModalidad, $idNivel)
		{
			//----------Modalidad Juego Libre----------
			if ($idModalidad == 1 && $idNivel == 1) {
				if (($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			if ($idModalidad == 1 && $idNivel == 3) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			if ($idModalidad == 1 && $idNivel == 4) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			//----------Modalidad Diminutivos----------
			if ($idModalidad == 2 && $idNivel == 1) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			if ($idModalidad == 2 && $idNivel == 3) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			if ($idModalidad == 2 && $idNivel == 4) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			//----------Modalidad Adjetivos----------
			if ($idModalidad == 3 && $idNivel == 1) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			if ($idModalidad == 3 && $idNivel == 3) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			if ($idModalidad == 3 && $idNivel == 4) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			//----------Modalidad Sinonimos----------
			if ($idModalidad == 5 && $idNivel == 1) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			if ($idModalidad == 5 && $idNivel == 3) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 4)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
			}
			if ($idModalidad == 5 && $idNivel == 4) {
				if (($this->getGane($idUsr, $idJuego, 1, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 1, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 2, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 3)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 3, 4)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 1)==TRUE)&&
					($this->getGane($idUsr, $idJuego, 5, 3)==TRUE)) {
					return TRUE;
				} else {
					return FALSE;
				}	
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
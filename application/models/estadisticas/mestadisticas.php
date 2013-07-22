<?php
	/**
	 * 
	 */
	class Mestadisticas extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		public function getTrofeos($idUsr, $idJuego){
			$this->db->SELECT('trofeo.*, tipoTrofeo.tipoTrofeo');
			$this->db->FROM('vitrina');
			$this->db->JOIN('trofeo','trofeo.idTrofeo = vitrina.idTrofeo');
			$this->db->JOIN('tipoTrofeo','tipoTrofeo.idTipoTrofeo = trofeo.idTipoTrofeo');
			$this->db->WHERE('vitrina.idUsr', $idUsr);
			$this->db->WHERE('vitrina.idJuego', $idJuego);
			
			$query = $this->db->get();
			
			if ($query->num_rows() != 0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
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
		
		public function getCartas()
		{
			$this->db->SELECT('idCarta, nombre, descripcion, imgMazo, imgPlantilla, imgIcon');
			$this->db->FROM('carta');
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
		public function getGaleria($idUsr, $idJuego)
		{
			$this->db->SELECT('idCarta');
			$this->db->FROM('galeria');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->WHERE('idJuego', $idJuego);
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
		public function getPartidas($idUsr, $idJuego, $idPartida, $idEstadoPartida)
		{
			$this->db->SELECT('score.*,record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idPartida',$idPartida);
			$this->db->WHERE('score.idJuego',$idJuego);
			$this->db->WHERE('record.idEstadoPartida',$idEstadoPartida);
			
			$query = $this->db->count_all_results();
			return $query;
			
			// $query = $this->db->get(); 			
			// if ($query->num_rows()!=0) {
				// return $query->result_array();
			// } else {
				// return FALSE;
			// }
		}
		
		public function getNiveles($idUsr, $idJuego, $idNivel, $idEstadoPartida)
		{
			$this->db->SELECT('score.*,record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idNivel',$idNivel);
			$this->db->WHERE('score.idJuego',$idJuego);
			$this->db->WHERE('record.idEstadoPartida',$idEstadoPartida);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		public function getModalidades($idUsr, $idJuego, $idModalidad, $idEstadoPartida)
		{
			$this->db->SELECT('score.*,record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idModalidad',$idModalidad);
			$this->db->WHERE('score.idJuego',$idJuego);
			$this->db->WHERE('record.idEstadoPartida',$idEstadoPartida);
			
			$query = $this->db->count_all_results();
			return $query;
		}
	}
?>
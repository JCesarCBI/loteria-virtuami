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
		
		public function getCartas()
		{
			$this->db->SELECT('*');
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
	}
?>
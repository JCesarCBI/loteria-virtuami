<?php
	/**
	 * 
	 */
	class Mjuegoavanzado extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
			
		public function getCardPhrase()
		{
			$query = $this->db->query('
						SELECT c.idCarta, c.nombre, f.frase, f.audio FROM carta c
						JOIN (SELECT frase, audio, idCarta, idFrase FROM frase ORDER BY RAND()) f
						ON c.idCarta = f.idCarta
						WHERE f.frase IS NOT NULL
						GROUP BY f.idCarta
						ORDER BY c.idCarta;');
											
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $value) {
					$cartas[$value['idCarta']] = $value;
				}
				return $cartas;
			} else {
				return FALSE;
			}
		}
		
		public function getCartaAdjetivo($idCarta)
		{
			$this->db->SELECT('*');
			$this->db->FROM('adjetivo');
			$this->db->WHERE('idCarta', $idCarta);
			
			$query = $this->db->get();
		
			if ($query-> num_rows() != 0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
		public function getCartaDiminutivo($idCarta)
		{
			$this->db->SELECT('*');
			$this->db->FROM('diminutivo');
			$this->db->WHERE('idCarta', $idCarta);
			
			$query = $this->db->get();
		
			if ($query-> num_rows() != 0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
		public function getCartaSinonimo($idCarta)
		{
			$this->db->SELECT('*');
			$this->db->FROM('sinonimo');
			$this->db->WHERE('idCarta', $idCarta);
			
			$query = $this->db->get();
		
			if ($query-> num_rows() != 0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
	}
?>
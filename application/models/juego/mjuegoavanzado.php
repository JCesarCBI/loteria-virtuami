<?php
	/**
	 * 
	 */
	class Mjuegolibre extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		public function getCartas()
		{
			$this->db->SELECT('carta.*, frase.frase, frase.audio');
			$this->db->FROM('carta');
			$this->db->JOIN('frase', 'frase.idCarta = carta.idCarta');
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
	}
?>
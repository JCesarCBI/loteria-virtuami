<?php
	/**
	 * 
	 */
	class Mjuegolibre extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		public function getMazo()
		{
			$this->db->SELECT('*');
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
		
		public function getFrase()
		{
			$this->db->SELECT('*');
			$this->db->FROM('frase');
			
			$query = $this->db->get();
			
			if ($query->num_rows()>0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
		public function getCartas()
		{
			$this->db->SELECT('carta.*, frase.frase');
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
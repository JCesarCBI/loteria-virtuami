<?php
	/**
	 * 
	 */
	class Mseleccionjuego extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		public function getPartida()
		{
			$this->db->SELECT('*');
			$this->db->FROM('partida');
			
			$query = $this->db->get();
			
			if ($query->num_rows()>0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
		public function getNivel()
		{
			$this->db->SELECT('*');
			$this->db->FROM('nivel');
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
		public function getModalidad($value='')
		{
			$this->db->SELECT('*');
			$this->db->FROM('modalidad');
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
	}
	
?>
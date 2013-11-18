<?php
	/**
	 * 
	 */
	class Mseleccionjuego extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		//Obtiene todos los tipos de partida almacenados en la base de datos.
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
		
		//Obtiene todos los niveles almacenados en la base de datos.
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
		
		//Obtiene todas las modalidades almacenadas en la base de datos.
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
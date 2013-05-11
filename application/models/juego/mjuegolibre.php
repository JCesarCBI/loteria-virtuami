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
			
			if ($query->num_rows()>0) {
				return $query->result_array();
			} else {
				return false;
			}
		}
	}
?>
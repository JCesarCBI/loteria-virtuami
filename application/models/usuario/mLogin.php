<?php
	/**
	 * 
	 */
	class Mlogin extends CI_Model {
			
		function __construct() {
			parent::__construct();
		}
	
		function login_usuario($nombreUsr, $contrasena){
			$this->db->SELECT('idUsr, nombreUsr, contrasena, avatar');
			$this->db->FROM('usuario');
			$this->db->WHERE('nombreUsr', $nombreUsr);
			$this->db->WHERE('contrasena', md5($contrasena));
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			if ($query-> num_rows() == 1) {
				return $query->result();
			} else {
				return false;
			}
		}
		
		public function getContrasena($correo)
		{
			$this->db->SELECT('idUsr, nombreUsr, contrasena');
			$this->db->FROM('usuario');
			$this->db->WHERE('correo', $correo);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query->num_rows()==1) {
				return $query->result();
			} else {
				return false;
			}
		}
	
	}
?>
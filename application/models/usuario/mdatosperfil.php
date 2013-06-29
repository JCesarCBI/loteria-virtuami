<?php

	/**
	 * 
	 */
	class Mdatosperfil extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		function getDatosUsuario($idUsr){
			$this->db->SELECT('nombreUsr, nombre, aPaterno, aMaterno, sexo, edad, correo, contrasena, idTipoUsr, idDivision, idGradoPosgrado, idGradoActivo, avatar, cargo, area');
			// $this->db->SELECT('*');
			$this->db->FROM('usuario');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			if ($query-> num_rows() == 1) {
				return $query->result_array();
			} else {
				return false;
			}
		}
	}
?>
<?php

	/**
	 * 
	 */
	class Mdatosperfil extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		function getDatosUsuario($idUsr){
			$this->db->SELECT('usuario.idUsr, usuario.nombreUsr, usuario.nombre, 
								usuario.aPaterno, usuario.aMaterno, usuario.sexo, 
								usuario.edad, usuario.correo, usuario.contrasena, 
								usuario.idTipoUsuario, usuario.idDivision, 
								usuario.idGradoPosgrado, usuario.idGradoActivo, 
								avatar.avatar, usuario.cargo, usuario.area');
			$this->db->FROM('usuario');
			$this->db->JOIN('avatar','avatar.idAvatar = usuario.idAvatar');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			if ($query-> num_rows() == 1) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
	}
?>
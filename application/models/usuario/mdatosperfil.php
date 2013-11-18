<?php

	/**
	 * 
	 */
	class Mdatosperfil extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		// Obtiene todos los datos personales del jugador, de no encontrar al jugador devuelve un FALSE.
		function getDatosUsuario($idUsr){
			$this->db->SELECT('usuario.idUsr, usuario.nombreUsr, usuario.nombre, 
								usuario.aPaterno, usuario.aMaterno, usuario.sexo, 
								usuario.edad, usuario.correo, usuario.contrasena, 
								usuario.idTipoUsuario, usuario.idDivision, 
								usuario.idGradoPosgrado, usuario.idGradoActivo,usuario.idAvatar, 
								avatar.gdeAvatar, avatar.icnAvatar, usuario.cargo, usuario.area');
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
		
		// Obtiene la contraseña del jugador de la base de datos, de no encontrar al jugador devuelve un FALSE.		
		public function getContrasena($idUsr)
		{
			$this->db->SELECT('nombreUsr, contrasena');
			$this->db->FROM('usuario');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query->num_rows()==1) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
				
		// Actualiza los datos personales del jugador en la base de datos.
		public function setActualizaUsuario($idUsr, $usuario)
		{
			$this->db->where('idUsr', $idUsr);
			$this->db->update('usuario', $usuario);
		}
	}
?>
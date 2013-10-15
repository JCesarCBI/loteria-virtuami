<?php
	/**
	 * 
	 */
	class Mlogin extends CI_Model {
			
		function __construct() {
			parent::__construct();
		}
		
		//Obtiene las credenciales del usuario	
		public function login_usuario($nombreUsr, $contrasena){
			$this->db->SELECT('usuario.idUsr, usuario.nombreUsr, usuario.contrasena, usuario.estatus, avatar.gdeAvatar, avatar.icnAvatar');
			$this->db->FROM('usuario');
			$this->db->JOIN('avatar','avatar.idAvatar = usuario.idAvatar');
			$this->db->WHERE('nombreUsr', $nombreUsr);
			$this->db->WHERE('contrasena', $contrasena);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			if ($query-> num_rows() == 1) {
				return $query->result();
			} else {
				return false;
			}
		}
		
		//Obtiene la contraseña del usuario mediante el valor del correo
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
		
		//Validación de usuario
		public function getExisteUsuario($nombreUsr)
		{
			$this->db->SELECT('idUsr');
			$this->db->FROM('usuario');
			$this->db->WHERE('nombreUsr', $nombreUsr);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query-> num_rows() == 1) {
				return true;
			} else {
				return false;
			}
		}
		
		//Verifica que el nombre de usuario y codigo de confirmacion concuerden con la base de datos
		public function getCodigoActivacion($userName, $codigoActivacion)
		{
			$this->db->SELECT('idUsr');
			$this->db->FROM('usuario');
			$this->db->WHERE('nombreUsr', $userName);
			$this->db->WHERE('codigoActivacion', $codigoActivacion);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query-> num_rows() == 1) {
				return TRUE;
			} else {
				return FALSE;
			}
		}
		
		//Actualiza el estado del usuario a Activo
		public function setEstatus($userName, $codigoActivacion)
		{
			if ($this->getCodigoActivacion($userName, $codigoActivacion) == TRUE) {
			
				$data = array(
					'estatus' => 1
				);
					
				$this->db->WHERE('codigoActivacion', $codigoActivacion);
				$this->db->UPDATE('usuario', $data);
			
				return TRUE;
			} else {
				return FALSE;
			}
		}
	}
?>
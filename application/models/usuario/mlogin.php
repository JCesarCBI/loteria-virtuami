<?php
	/**
	 * 
	 */
	class Mlogin extends CI_Model {
			
		function __construct() {
			parent::__construct();
		}
		
		// Obtiene las credenciales del usuario desde la base de datos, de no encontrar el usuario o coincidir la contraseña regresa un FALSE.		
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
		
		//Obtiene la contraseña del jugador mediante el correo electrónico de la base de datos, de no encontrarla regresa un FALSE.
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
		
		//Verifica que el nombre del usuario ya exista en la base de datos, si existe regresa un TRUE de lo contrario regresa un FALSE.
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
		
		//Verifica que el nombre de usuario y código de activación existan y concuerden en la base de datos, de ser correctos regresa un TRUE de lo contrario regresa un FALSE.
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
		
		//Activa la cuenta del jugador en la base de datos, de concordar el nombre de usuario y el código de activación hace un UPDATE a la base de datos cambiando el atributo estatus a 1 y regresa un TRUE si se ejecuta correctamente el UPDATE, de lo contrario regresa un FALSE.
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
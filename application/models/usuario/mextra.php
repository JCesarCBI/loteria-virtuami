<?php
	class Mextra extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		// Obtiene el path de la imagen icono del avatar de la base de datos, de no encontrar el avatar devuelve un FALSE.
		function traeUrlAvatarIcon($idAvatar){
			$this->db->SELECT('icnAvatar');
			$this->db->FROM('avatar');
			$this->db->WHERE('idAvatar', $idAvatar);
			
			$query = $this->db->get();
			if ($query-> num_rows() == 1) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
	}
?>
<?php
	class Mextra extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
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
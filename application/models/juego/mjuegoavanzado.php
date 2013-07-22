<?php
	/**
	 * 
	 */
	class Mjuegoavanzado extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
			
		public function getCardPhrase()
		{
			$query = $this->db->query('
						SELECT c.idCarta, c.nombre, f.frase, f.audio FROM carta c
						JOIN (SELECT frase, audio, idCarta, idFrase FROM frase ORDER BY RAND()) f
						ON c.idCarta = f.idCarta
						WHERE f.frase IS NOT NULL
						GROUP BY f.idCarta
						ORDER BY c.idCarta;');
											
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
		public function getCartaSinonimo($idCarta)
		{
			return 0;
		}
	}
?>
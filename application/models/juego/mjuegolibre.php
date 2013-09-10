<?php
	/**
	 * 
	 */
	class Mjuegolibre extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		public function getMazoCarta()
			{
			$query = $this->db->query('
					SELECT c.idCarta, c.nombre, c.descripcion, c.audioOGG, c.audioMP3, c.imgMazo, c.imgPlantilla, c.imgGaleria, f.frase FROM carta c
					JOIN (SELECT frase, audioOGG, audioMP3, idCarta, idFrase FROM frase ORDER BY RAND()) f
					ON c.idCarta = f.idCarta
					WHERE f.frase IS NOT NULL
					GROUP BY f.idCarta
					ORDER BY c.idCarta;');
												
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $value) {
					$cartas[$value['idCarta']] = $value;
				}
				return $cartas;
			} else {
				return FALSE;
			}
		}
		public function getMazoFrase()
		{
			$query = $this->db->query('
				SELECT c.idCarta, c.nombre, c.descripcion, f.audioOGG, f.audioMP3, c.imgMazo, c.imgPlantilla, c.imgGaleria, f.frase FROM carta c
				JOIN (SELECT frase, audioOGG, audioMP3, idCarta, idFrase FROM frase ORDER BY RAND()) f
				ON c.idCarta = f.idCarta
				WHERE f.frase IS NOT NULL
				GROUP BY f.idCarta
				ORDER BY c.idCarta;');
											
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $value) {
					$cartas[$value['idCarta']] = $value;
				}
				return $cartas;
			} else {
				return FALSE;
			}
		}
		
		public function getFrase()
		{
			$this->db->SELECT('*');
			$this->db->FROM('frase');
			
			$query = $this->db->get();
			
			if ($query->num_rows()>0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
		
		public function getCartas()
		{
			$this->db->SELECT('carta.*, frase.frase');
			$this->db->FROM('carta');
			$this->db->JOIN('frase', 'frase.idCarta = carta.idCarta');
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				return FALSE;
			}
		}
	}
?>
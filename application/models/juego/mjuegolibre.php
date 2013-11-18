<?php
	/**
	 * 
	 */
	class Mjuegolibre extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		//Obtiene todos los atributos de las cartas de la base de datos. El audio que se obtiene es el nombre de la carta.
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
			
		//Obtiene todos los atributos de las cartas de la base de datos. El audio que se obtiene es de la frase ligada a la carta.
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
		
		//Obtiene todas las frases almacenadas en la base de datos.
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
		
		//Obtiene todas las cartas junto a su frase relacionada desde la base de datos.
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
		
		//Asigna una carta al jugar en su galería.
		public function setGaleria($idUser, $idJuego, $idCarta)
		{
			$galeria = array(	'idUsr' => $idUser,
								'idJuego' => $idJuego,
								'idCarta' => $idCarta
								);
			$this->db->INSERT('galeria', $galeria);
		}
		
	}
?>
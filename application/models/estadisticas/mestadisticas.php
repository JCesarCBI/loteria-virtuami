<?php
	/**
	 * 
	 */
	class Mestadisticas extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		function getTrofeos($idUsr, $idJuego){
			$this->db->SELECT('tr.nombre, tr.imagen, tr.condicion, tr.descripcion, tipo.tipoTrofeo');
			$this->db->FROM('trofeo AS tr, trofeo_has_jugador AS trusr, tipoTrofeo AS tipo');
			$this->db->WHERE('trusr.jugador_usuario_idUsr', $idUsr);
			$this->db->WHERE('trusr.jugador_juego_idJuego', $idJuego);
			$this->db->WHERE('trusr.trofeo_idTrofeo', 'tr.idTrofeo');
			$this->db->WHERE('tr.idTipoTrofeo', 'tipo.idtipoTrofeo');
			
			$query = $this->db->get();
			if ($query-> num_rows() != 0) {
				return $query->result();
			} else {
				return 'El judor aun no ha obtendido ningun trofeo aun.';
			}
		}
	}
?>
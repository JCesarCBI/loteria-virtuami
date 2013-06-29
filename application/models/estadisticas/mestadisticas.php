<?php
	/**
	 * 
	 */
	class Mestadisticas extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		function getTrofeos($idUsr, $idJuego){
			$this->db->SELECT('trofeo.nombre, trofeo.imagen, trofeo.condicion, trofeo.descripcion, tipoTrofeo.tipoTrofeo');
			$this->db->FROM('trofeo_has_jugador');
			$this->db->JOIN('trofeo','trofeo.idTrofeo = trofeo_has_jugador.trofeo_idTrofeo');
			$this->db->JOIN('tipoTrofeo','tipoTrofeo.idtipoTrofeo = trofeo.idTipoTrofeo');
			$this->db->WHERE('trofeo_has_jugador.jugador_usuario_idUsr', $idUsr);
			$this->db->WHERE('trofeo_has_jugador.jugador_juego_idJuego', $idJuego);
			
			$query = $this->db->get();
			if ($query-> num_rows() >= 1) {
				return $query->result_array();
			} else {
				return 'El judor aun no ha obtendido ningun trofeo aun.';
			}
		}
	}
?>
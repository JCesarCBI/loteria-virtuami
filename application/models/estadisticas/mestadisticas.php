<?php
	/**
	 * 
	 */
	class Mestadisticas extends CI_Model {
		
		function __construct() {
			parent::__construct();
		}
		
		public function getTrofeos($idUsr, $idJuego){
			$this->db->SELECT('trofeo.idTrofeo');
			$this->db->FROM('vitrina');
			$this->db->JOIN('trofeo','trofeo.idTrofeo = vitrina.idTrofeo');
			$this->db->JOIN('tipoTrofeo','tipoTrofeo.idTipoTrofeo = trofeo.idTipoTrofeo');
			$this->db->WHERE('vitrina.idUsr', $idUsr);
			$this->db->WHERE('vitrina.idJuego', $idJuego);
			
			$query = $this->db->get();
			
			if ($query->num_rows() != 0) {
				foreach ($query->result_array() as $key => $value) {
					$trofeosGanados[$key] = $value['idTrofeo'];
				}
				return $trofeosGanados;
			} else {
				return FALSE;
			}
		}
		
		public function getTodosTrofeos()
		{
			$this->db->SELECT('*');
			$this->db->FROM('trofeo');
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				FALSE;
			}
		}
		
		public function getCartas()
		{
			$this->db->SELECT('idCarta, nombre, descripcion, imgMazo, imgPlantilla, imgIcon');
			$this->db->FROM('carta');
			
			$query = $this->db->get();
			//Trata de acomodar los arreglos de manera que estos lleven
			//en el índice, el ID del dato que almacenan
			//De esa manera, la información que le das a controladres es más ordenada 
			//Y ellos se ahorran ese trabajo
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $value) {
					$cartas[$value['idCarta']] = $value;
				}
				return $cartas;
			} else {
				return FALSE;
			}
		}
		
		public function getAvatar()
		{
			$this->db->SELECT('*');
			$this->db->FROM('avatar');
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $value) {
					$avatar[$value['idAvatar']] = $value;
				}
				return $avatar;
			} else {
				return FALSE;
			}
			
		}
		
		public function getGaleria($idUsr, $idJuego)
		{
			$this->db->SELECT('idCarta');
			$this->db->FROM('galeria');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->WHERE('idJuego', $idJuego);
			
			$query = $this->db->get();
			
			//Cuando sólo tengas que regresar un array con un único dato (como en este caso, 
			//Que únicamente tenías que regresar los idCarta, limpia el arreglo para que no
			//mandes arreglos de arreglos y le ahorres trabajo a los controladores).
			//Hice una corrección similar en getTrofeos
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $key => $value) {
					$galeria[$key] = $value['idCarta'];
				}
				return $galeria;
			} else {
				return FALSE;
			}
		}
		
		public function getPartidas($idUsr, $idJuego, $idPartida, $idEstadoPartida)
		{
			$this->db->SELECT('score.*,record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idPartida',$idPartida);
			$this->db->WHERE('score.idJuego',$idJuego);
			$this->db->WHERE('record.idEstadoPartida',$idEstadoPartida);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		public function getNiveles($idUsr, $idJuego, $idNivel, $idEstadoPartida)
		{
			$this->db->SELECT('score.*,record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idNivel',$idNivel);
			$this->db->WHERE('score.idJuego',$idJuego);
			$this->db->WHERE('record.idEstadoPartida',$idEstadoPartida);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		public function getModalidades($idUsr, $idJuego, $idModalidad, $idEstadoPartida)
		{
			$this->db->SELECT('score.*,record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idModalidad',$idModalidad);
			$this->db->WHERE('score.idJuego',$idJuego);
			$this->db->WHERE('record.idEstadoPartida',$idEstadoPartida);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		public function getRima($idCarta)
		{
			$this->db->SELECT('*');
			$this->db->FROM('frase');
			$this->db->WHERE('idCarta', $idCarta);
			
			$query = $this->db->get();
						
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $key => $value) {
					$frase[$key] = $value['frase'];
				}
				return $frase;
			} else {
				return FALSE;
			}
		}
	}
?>
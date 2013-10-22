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
			$this->db->SELECT('idCarta, nombre, descripcion, imgMazo, imgPlantilla, imgGaleria');
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
		
		public function getExisteUsuario($idUsr)
		{
			$this->db->SELECT('idUsr');
			$this->db->FROM('usuario');
			$this->db->WHERE('idUsr', $idUsr);
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query-> num_rows() == 1) {
				return true;
			} else {
				return false;
			}
		}
		
		public function setActualizaUsuario($idUser, $data)
		{
			if ($this->getExisteUsuario($idUser)==TRUE) {
				$this->db->WHERE('idUsr', $idUser);
				$this->db->UPDATE('usuario', $data);
				log_message('error', 'A ocurrido un error en la base de datos');
			} else {
				log_message('error', 'A ocurrido un error en la base de datos');
			}
			
		}
		
		public function getRanking()
		{
			$this->db->SELECT('usuario.nombreUsr, jugador.scoreTotal');
			$this->db->FROM('jugador');
			$this->db->JOIN('usuario','usuario.idUsr = jugador.idUsr');
			$this->db->ORDER_BY('scoreTotal', 'desc');
			$this->db->LIMIT(3);
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				FALSE;
			}
		}
		
		public function getUltimoScore($idUsr)
		{		
			$this->db->SELECT('partida.partida, nivel.nivel, modalidad.modalidad, record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->JOIN('partida','partida.idPartida = score.idPartida');
			$this->db->JOIN('nivel','nivel.idNivel = score.idNivel');
			$this->db->JOIN('modalidad','modalidad.idModalidad = score.idModalidad');
			$this->db->WHERE('score.idUsr',$idUsr);
			// $this->db->WHERE_NOT_IN('record.idEstadoPartida', 3);
			$this->db->ORDER_BY('record.fecha', 'desc');
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				FALSE;
			}
		}
		
		public function getMejorPuntuacion($idUsr)
		{
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->ORDER_BY('record.record', 'desc');
			$this->db->LIMIT(1);
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				return $query->result_array();
			} else {
				FALSE;
			}
		}
		
		public function getBasicoGanadas($idUsr)
		{
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idNivel', 1);
			$this->db->WHERE('record.idEstadoPartida',1);
			
			$query = $this->db->count_all_results();
			return $query;
		}

		public function getAvanzadoGanadas($idUsr)
		{
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idNivel', 3);
			$this->db->WHERE('record.idEstadoPartida',1);
			
			$query = $this->db->count_all_results();
			return $query;
		}
		
		public function getExpertoGanadas($idUsr)
		{
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('score.idNivel', 4);
			$this->db->WHERE('record.idEstadoPartida',1);
			
			$query = $this->db->count_all_results();
			return $query;
		}

		public function getPartidasPerdidas($idUsr)
		{
			$this->db->SELECT('record.record');
			$this->db->FROM('score');
			$this->db->JOIN('record','record.idScore = score.idScore');
			$this->db->WHERE('score.idUsr',$idUsr);
			$this->db->WHERE('record.idEstadoPartida',3);
			
			$query = $this->db->count_all_results();
			return $query;
		}
	}
?>
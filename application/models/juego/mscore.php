<?php
	/**
	 * 
	 */
	class Mscore extends CI_Model {
		
		function __construct() {
			parent::__construct();
			$this->load->helper('date');
		}
		
		//Asigna un score y un record obtenido en una partida al jugador y actualiza el score total del jugador con el record obtenido en la partida.
		public function setScore($score, $record, $idEstadoPartida)
		{
			$idUser = $score["idUsr"];
			$idJuego = $score["idJuego"];
			$aux = $record;
			
			$this->db->insert('score', $score);
			
			$lastId = $this->db->select_max('idScore')->from('score')->get();
			
			if ($lastId->num_rows>0) {
				foreach ($lastId->result_array() as $row) {
					$idScore = $row['idScore'];
				}
			}
									
			$recordArray = array(
					'record'=> $record,
					'fecha' => date('Y-m-d H:i:s'),
					'idScore' => $idScore,
					'idEstadoPartida' => $idEstadoPartida,
			);
			
			$this->db->INSERT('record', $recordArray);
			
			$scoreTotal = $this->getScoreTotal($idUser, $idJuego);
			
			$total = $scoreTotal+$record;
						
			$data = array('scoreTotal'=>$total);
			
			$this->db->WHERE('idUsr', $idUser);
			$this->db->UPDATE('jugador', $data);
			
		}
		
		//Obtiene el score total del jugador de no encontrarlo regresa un NULL.
		public function getScoreTotal($idUser, $idJuego)
		{
			$this->db->SELECT('scoreTotal');
			$this->db->FROM('jugador');
			$this->db->WHERE('idUsr', $idUser);
			$this->db->WHERE('idJuego', $idJuego);
			
			$query = $this->db->get();
			
			if ($query->num_rows()==1) {
				$row = $query->row();
				return $row->scoreTotal;
			} else {
				return NULL;
			}
		}
	}
	
?>
<?php
	/**
	 * 
	 */
	class Mscore extends CI_Model {
		
		function __construct() {
			parent::__construct();
			$this->load->helper('date');
		}
		
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
									
			$record = array(
					'record'=> $record,
					'fecha' => date('Y-m-d H:i:s'),
					'idScore' => $idScore,
					'idEstadoPartida' => $idEstadoPartida,
			);
			
			$this->db->insert('record', $record);
			
			$scoreTotal = $this->getScoreTotal($idUser, $idJuego);
			$aux = $scoreTotal['scoreTotal'];
			
			
		}
		
		public function getScoreTotal($idUser, $idJuego)
		{
			$this->db->SELECT('*');
			$this->db->FROM('jugador');
			$this->db->WHERE('idUsr', $idUser);
			$this->db->WHERE('idJuego', $idJuego);
			
			$query = $this->db->get();
			
			if ($query->num_rows()!=0) {
				foreach ($query->result_array() as $value) {
					$total[$value['idUsr']] = $value;
				}
				return $total;
			} else {
				return FALSE;
			}
		}
	}
	
?>
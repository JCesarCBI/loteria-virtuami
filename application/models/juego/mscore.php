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
		}
	}
	
?>
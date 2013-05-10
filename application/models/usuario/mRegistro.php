<?php
/**
 * 
 */
class MRegistro extends CI_Model {
	
	function __construct() {
			parent::__construct();
		}
	
	public function getTipoUsuario()
	{
		$this->db->SELECT('*');
		$this->db->FROM('tipoUsuario');
		
		$consulta = $this->db->get();
		
		if ($consulta->num_rows() > 0) {
			foreach ($consulta->result_array() as $row) {
				$datos['tipoUsuario'][] = $row;
			}
			return $datos;
		} else {
			$msj = 'No hay datos en el catalodo "Tipo de Usuarios"';
			return (isset($msj));
		}
	}
	
	public function getDivision()
	{
		$consuta = $this->db->get('division');
	}
	
	public function getGradoActivo()
	{
		$consuta = $this->db->get('gradoActivo');
	}
	
	public function getGradoAcademico()
	{
		$consuta = $this->db->get('gradoAcademico');
	}	
}

?>
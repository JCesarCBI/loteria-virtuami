<?php
/**
 * 
 */
class Mregistro extends CI_Model {
	
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
		$this->db->SELECT('*');
		$this->db->FROM('division');
		
		$consulta = $this->db->get();
		
		if ($consulta->num_rows() > 0) {
			foreach ($consulta->result_array() as $row) {
				$datos['division'][] = $row;
			}
			return $datos;
		} else {
			$msj = 'No hay datos en el catalodo "Tipo de Usuarios"';
			return (isset($msj));
		}
	}
	
	public function getGradoActivo()
	{
		$this->db->SELECT('*');
		$this->db->FROM('gradoActivo');
		
		$consulta = $this->db->get();
		
		if ($consulta->num_rows() > 0) {
			foreach ($consulta->result_array() as $row) {
				$datos['gradoActivo'][] = $row;
			}
			return $datos;
		} else {
			$msj = 'No hay datos en el catalodo "Tipo de Usuarios"';
			return (isset($msj));
		}
	}
	
	public function getGradoAcademico()
	{
		$this->db->SELECT('*');
		$this->db->FROM('gradoAcademico');
		
		$consulta = $this->db->get();
		
		if ($consulta->num_rows() > 0) {
			foreach ($consulta->result_array() as $row) {
				$datos['gradoAcademico'][] = $row;
			}
			return $datos;
		} else {
			$msj = 'No hay datos en el catalodo "Tipo de Usuarios"';
			return (isset($msj));
		}
	}
	
	public function getExisteUsuario($nombreUsr)
	{
		$this->db->SELECT('idUsr');
		$this->db->FROM('usuario');
		$this->db->WHERE('nombreUsr', $nombreUsr);
		$this->db->LIMIT(1);
		
		$query = $this->db->get();
		
		if ($query-> num_rows() == 1) {
			return true;
		} else {
			return false;
		}
		
	}
	
	public function getExisteCorreo($correo)
	{
		$this->db->SELECT('idUsr');
		$this->db->FROM('usuario');
		$this->db->WHERE('correo', $correo);
		$this->db->LIMIT(1);
		
		$query = $this->db->get();
		
		if ($query-> num_rows() == 1) {
			return true;
		} else {
			return false;
		}
	}
}

?>
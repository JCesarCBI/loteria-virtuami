<?php
/**
 * 
 */
class Mregistro extends Model {
	
	function __construct() {
		parent::Model();
	}
	
	public function getTipoUsuario()
	{
		$qSqlA = 'SELECT * FROM tipoUsuario;';
		$eSqlA = $this->db->query($qSqlA);
		return $eSqlA->result();		
	}
	
	public function getDivision()
	{
		$qSqlA = 'SELECT * FROM division;';
		$eSqlA = $this->db->query($qSqlA);
		return $eSqlA->result();		
	}
	
	public function getGradoActivo()
	{
		$qSqlA = 'SELECT * FROM gradoActivo;';
		$eSqlA = $this->db->query($qSqlA);
		return $eSqlA->result();		
	}
	
	public function getGradoAcademico()
	{
		$qSqlA = 'SELECT * FROM gradoAcademico;';
		$eSqlA = $this->db->query($qSqlA);
		return $eSqlA->result();		
	}
	
/*	public function getGradoAcademico()
	{
		$this->db->SELECT('*');
		$this->db->FROM('gradoAcademico');
		
		$query = $this->db->get();
		
		return $query->result();		
	}*/
}

?>
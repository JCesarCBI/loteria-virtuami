<?php
/**
 * 
 */
class Mregistro extends CI_Model {
	
	function __construct() {
			parent::__construct();
		}
	
	//Tipo de Usuario
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
			$msj = 'No hay datos en el catalogo "Tipo de Usuarios"';
			return (isset($msj));
		}
	}
	
	//Division
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
			$msj = 'No hay datos en el catalogo "División"';
			return (isset($msj));
		}
	}
	
	//Grado activo (Licenciatura/Posgrado)
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
			$msj = 'No hay datos en el catalogo "Grado activo"';
			return (isset($msj));
		}
	}
	
	//Grado máximo de estudios
	public function getGradoPosgrado()
	{
		$this->db->SELECT('*');
		$this->db->FROM('gradoPosgrado');
		
		$consulta = $this->db->get();
		
		if ($consulta->num_rows() > 0) {
			foreach ($consulta->result_array() as $row) {
				$datos['gradoAcademico'][] = $row;
			}
			return $datos;
		} else {
			$msj = 'No hay datos en el catalogo "Grado posgrado"';
			return (isset($msj));
		}
	}
	
	//Validación de usuario
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
	
	//Validación de correo
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
		
	//Agrega un nuevo usuario/jugador
	public function setAgregarUsuario($datos)
	{
		$idJuego = 1;
		$idUsr = 0;
		
		if (!empty($datos)) {
			$this->db->insert('usuario', $datos);
			$lastId = $this->db->select_max('idUsr')->from('usuario')->get();
			if ($lastId->num_rows() > 0) {
				foreach ($lastId->result_array() as $row) {
					$idUsr = $row['idUsr'];
				}
			}	
		}
		$player = array(
			'idUsr' => $idUsr,
			'idJuego'=> 1,
			'scoreTotal'=> 0
		);
		
		$this->db->insert('jugador', $player);
		
		$randCarta = $this->getRandomCarta();
		
		echo'<pre>';
			print_r($randCarta);
		echo'</pre>';
		
		foreach($randCarta as $carta)
		{
			$this->db->INSERT('galeria', array('idUsr' => $idUsr, 'idJuego' => $idJuego, 'idCarta' => $carta));
			print_r($carta);
		}
	}
	
	//Obtiene el codigo de activacion
	public function getCodigoActivacion($idUsr)
	{
		$this->db->SELECT('nombreUsr, correo, contrasena, codigoActivacion');
		$this->db->FROM('usuario');
		$this->db->WHERE('idUsr', $idUsr);
		$this->db->LIMIT(1);
			
		$query = $this->db->get();
			
		if ($query-> num_rows() == 1) {
			return $query->result_array();
		} else {
			return FALSE;
		}
	}
	
	public function getRandomCarta()
	{
		$num = Array();
		reset($num);
		for($i=1;$i<=3;$i++){
			$num[$i]=rand(1,54);
			if($i>1){
				for($x=1; $x<$i; $x++){
					if($num[$i]==$num[$x]){
						$i--;
						break;
					}
				}
			}
		}
		return $num;
	}
		
}

?>
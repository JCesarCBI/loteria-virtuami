<?php
/**
 * 
 */
class Mregistro extends CI_Model {
	
	function __construct() {
			parent::__construct();
		}
	
	//: Obtiene la lista de los diferentes tipos de usuarios agregados a la base de datos, de estar vacía esta lista devuelve un mensaje de advertencia.
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
	
	//Obtiene la lista de las diferentes divisiones agregadas a la base de datos, de estar vacía esta lista devuelve un mensaje de advertencia.
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
	
	//Obtiene la lista de las diferentes grados activos (Licenciatura y Posgrado) a la base de datos, de estar vacía esta lista devuelve un mensaje de advertencia.
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
	
	//Obtiene la lista de las diferentes grados a nivel posgrado a la base de datos, de estar vacía esta lista devuelve un mensaje de advertencia.
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
	
	//Verifica que el nombre del usuario ya exista en la base de datos, si existe regresa un TRUE de lo contrario regresa un FALSE.
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
		
	//Agrega un nuevo usuario a la base de datos, agrega como jugador al juego de lotería con el identificador de usuario otorgado en la tabla de usuarios y además registra 3 cartas aleatorias a la galería del usuario.
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
				
		foreach($randCarta as $carta)
		{
			$this->db->INSERT('galeria', array('idUsr' => $idUsr, 'idJuego' => $idJuego, 'idCarta' => $carta));
		}
	}
	
	//Obtiene el código de activación de la cuenta del usuario mediante su id, de no encontrar el usuario o el código de activación devuelve un FALSE.
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
	
	//Devuelve un arreglo de tres identificadores de  cartas de la base de datos sin repetir para asignarlos al registro del usuario.
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
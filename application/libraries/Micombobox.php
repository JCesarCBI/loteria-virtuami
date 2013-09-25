<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Micombobox{
	protected $ci;
	
	function __construct(){
		$this->ci =& get_instance();
	}	
	public function datosComboBox(){
		$this->ci->load->model('usuario/mregistro');
		$tipoUsuario = $this->ci->mregistro->getTipoUsuario();
		$division = $this->ci->mregistro->getDivision();
		$gradoActivo = $this->ci->mregistro->getGradoActivo();
		$posgrado = $this->ci->mregistro->getGradoPosgrado();
		// $datos['comunidad_universitaria'][-1] = 'Comunidad Universitaria';
		//$datos['division'][-1] = 'Division';
		//$datos['gradoActivo'][-1] = 'Grado activo';
		//$datos['pos'][-1] = 'Posgrado';
		$i = 1;
		foreach ($tipoUsuario as $lugar) {
			foreach ($lugar as $key) {
				$datos['comunidad_universitaria'][$i] = $key['tipoUsr'];
				$i++;
			}			
		}
		$i = 1;
		foreach ($division as $lugar) {
			foreach ($lugar as $key) {
				$datos['division'][$i] = $key['iniciales'];
				$i++;
			}
		}
		$i = 1;
		foreach ($gradoActivo as $key) {
			foreach ($key as $keyl) {
				$datos['gradoActivo'][$i] = $keyl["gradoActivo"];
				$i++;
			}
		}
		$i = 1;
		foreach ($posgrado as $key) {
			foreach ($key as $keyl) {
				$datos['pos'][$i] = $keyl["gradoPosgrado"];
				$i++;
			}
		}
		for ($i=17; $i < 61; $i++) {
			$datos['edad'][$i] = $i; 
		}
		 
		// echo "<pre>";
		// print_r($datos);
		// echo "</pre>";
		return $datos;
		// echo "<pre>";
		// print_r($datos);
		// echo "</pre>";
		// echo "<pre>";
		// print_r($posgrado);
		// echo "</pre>";
	}
   
}
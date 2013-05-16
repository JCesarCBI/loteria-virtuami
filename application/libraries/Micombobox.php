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
		$datos['comunidad_universitaria'][-1] = 'Comunidad Universitaria';
		$datos['division'][-1] = 'Division';
		$i = 0;
		foreach ($tipoUsuario as $lugar) {
			foreach ($lugar as $key) {
				$datos['comunidad_universitaria'][$i] = $key['tipoUsr'];
				$i++;
			}			
		}
		$i = 0;
		foreach ($division as $lugar) {
			foreach ($lugar as $key) {
				$datos['division'][$i] = $key['iniciales'];
				$i++;
			}
		}
		return $datos;
	}
   
}
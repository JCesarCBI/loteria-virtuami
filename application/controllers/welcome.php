<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->model('usuario/mregistro');
		$this->load->library('micombobox');
		$this->load->library('user_agent');
	}
	
	public function index(){
		/*$tipoUsuario = $this->mregistro->getTipoUsuario();
		$division = $this->mregistro->getDivision();
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
		}*/
		if (($this->agent->is_mobile())) {
			$datos['mensaje'] = "La aplicación no ha sido optimizada para dispositivos móviles, por lo que aún no está disponible por esta vía. Por favor, ingresa de nuevo desde tu computadora. Atentamente, Coordinación de Educación Virtual, Universidad Autónoma Metropolitana Unidad Iztapalapa.";
			$datos['depuracion'] = " ";
			$this->load->view('vMensaje', $datos);
			//echo "No soporta moviles";
		} else {
			$datos = $this->micombobox->datosComboBox();
			$datos['noExiste'] = 0;
			// echo "<pre>";
			// print_r($datos);
			// echo "<pre>";
			$this->load->view('vinicio', $datos);
		}
	}
}
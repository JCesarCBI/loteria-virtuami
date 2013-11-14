<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CExtras extends CI_Controller {

	function __construct() {    
        parent::__construct();
		$this->load->library('session');
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('usuario/mdatosperfil');
		$this->load->model('estadisticas/mestadisticas');
		$this->load->model('usuario/mextra');
		
		if (($this->session->userdata('logeado') != 1)) {
			exit("Acceso denegado 403, pedir vista al equipo de diseño");
		}
		
	}

	//cEditarPerfilJugador  confirmaContrasena
	//Confirmará si la contraseña del usuario es correcta a través de AJAX. $contrasena es la contraseña que el usuario escribe y 
	//Se recibe mediante AJAX 
	public function confirmaContrasena(){
		//Recibiendo el arreglo con los datos y convirtiéndolo a arreglo para manejarlo
		$datos = explode(",",$_POST['data']);
		//Mandas a llamar el modelo y recibes la contraseña actual del usuario
		$contrasenaUsuario = $this->mdatosperfil->getContrasena($datos[1]);//"a1b1c2d3"; //suponiendo que se recibe esto del modelo
		$contrasenaUsuario = $contrasenaUsuario[0]["contrasena"];
		echo json_encode(strcmp($contrasenaUsuario, $datos[0]));	
	}
	
	public function traeUrlAvatar($idImg){
		$urlAvatarI = $this->mextra->traeUrlAvatarIcon($idImg);
		echo json_encode($urlAvatarI[0]);
	}
}
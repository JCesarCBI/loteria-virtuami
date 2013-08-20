<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CPruebaOriginal extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->model('usuario/mregistro');
		$this->load->library('micombobox');
	}
	public function index()
	{
		$this->load->view('vinicio2');
	}
	
	function cargarVista(){
		$nombreUsr = "jezrelmx1304";
		$contrasena = "123456";
		$headers = '<html><head><meta charset="utf-8">';
		$headers .= "<link rel='stylesheet' href=".base_url()."media/css/foundation.css.>";
		$headers .= "<link rel='stylesheet' href=".base_url()."media/css/formatoCorreos.css>";
		$headers .= "<script src=".base_url()."media/js/jquery-1.9.1.min.js></script>";
		$headers .= '</head><body><title>Recuperar contraseña</title>';
		$headers .= '<div class="twelve columns"><div class="row"><div class="eight columns">
						<h2>Recuperación de contraseña</h2>
						<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in 
							this spot, which was created for the bliss of souls like mine.
						</p>	
						<p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that
						 I never was a greater artist than now. When, while the lovely valley teems with 
						</p>
						<div id="datosUsuario">';
		$headers .= "<label class='dato'>Nombre de usuario:</label>".$nombreUsr."<br><br>";
		$headers .= "<label class='dato'>Tu contraseña:</label>".$contrasena."<br><br>";
		$headers .=	'</div></div><div class="four columns">';
		$headers .= "<img id='loteria-img' src='".base_url()."media/img/loteria.jpg'/>";
		$headers .= '</div></div><div id="segundo" class="row"><div class="three columns">';
		$headers .= "<img id='virtuami-img' src='".base_url()."/media/img/virtuami_logo.png'/>";
		$headers .= '</div><div class="six columns"><p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p> 
					<p>I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.</p></div><div class="three columns">';
		$headers .= "<img id='uam' src='".base_url()."/media/img/uamizt.png'/>";
		
		$headers .='</div></div></div></body></html>';
		// echo "<pre>";
		echo $headers;
		// echo "</pre>";
		
		// $datos = $this->micombobox->datosComboBox();
		// $datos['nombreUsr'] = 'jezrelmx1304';
		// $datos['contrasena'] = '123456';
		// // echo "<pre>";
		// // print_r($datos);
		// // echo "<pre>";
		// $this->load->view('vrecuperaPass', $datos);
		
	}
}

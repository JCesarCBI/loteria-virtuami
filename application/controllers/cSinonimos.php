<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
		
		class  CSinonimos extends CI_Controller {
			
			
		function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->model('usuario/mdatosperfil');
		$this->load->model('estadisticas/mestadisticas');
		$this->load->model('usuario/mregistro');
		$this->load->model('juego/mJuegoLibre');
		$this->load->model('juego/mjuegoavanzado');
		}
	
		public function index(){
			
		}
		
		public function seleccionarPosibleRespuesta($respuesta= "cortesana",$id=2){
		$sinonimo=$this->mjuegoavanzado->getCartaSinonimo($id);
		/*echo "<pre>";
		print_r($sinonimos);
		echo "</pre>";
		*/
			$ok=0;
			$i=1;
			foreach ($sinonimo as $key) {
				$resultado['respuestas'][$i]=$key['sinonimo'];
				$i++;
			}
			
			echo "<pre>";
			print_r($resultado['respuestas']);
			echo "</pre>";
			foreach ($resultado['respuestas'] as $value) {
				if ($respuesta==$value) {
					$ok=1;
					}
			}	
			
			if($ok==1) echo 1;
			else echo 0;
		}
}
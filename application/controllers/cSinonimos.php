<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
		
		class  CSinonimos extends CI_Controller {
			
			
		function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		//$this->load->model('usuario/mdatosperfil');
		//$this->load->model('estadisticas/mestadisticas');
		//$this->load->model('usuario/mregistro');
		$this->load->model('juego/mJuegoLibre');
		$this->load->model('juego/mjuegoavanzado');
		}
	
		public function index(){
			
		}
		
		public function seleccionarPosibleRespuesta($respuesta,$id, $modalidad){
			
			
			switch ($modalidad) {
    			case 1:// Juego Libre
        			echo "i es igual a 1";
        		break;
    			case 2://Diminutivos
        			echo "i es igual a 2";
        		break;
    			case 3://Adjetivos
        			echo "i es igual a 3";
        		break;
				case 4://Sinonimos				
					if($this->validarSinonimo($respuesta, $id)== 1) echo 0;
					else echo 1;										
				break;
				//Agregar aquí las otras modalidades ...
			}	
		}	
		
		
		
		
		public function validarSinonimo($respuestaCarta, $idCarta){	//Valida si el 
			$sinonimo=$this->mjuegoavanzado->getCartaSinonimo($idCarta); 
		
			
			$valor=0;
			$i=1;
			foreach ($sinonimo as $key) {
				$resultado['respuestas'][$i]=$key['sinonimo'];
				$i++;
			}
			
			
			foreach ($resultado['respuestas'] as $value) {
				if ($respuestaCarta==$value) {
					$valor=1;
					}
			}	
			
			return $valor;
		}
}
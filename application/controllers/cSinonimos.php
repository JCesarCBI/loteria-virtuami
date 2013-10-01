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
		
		public function seleccionarPosibleRespuesta($id, $modalidad){
			
			
			//Respuesta via post 
			$respuesta=$_POST['respuesta'];
			switch ($modalidad) {
    			case 1:// Juego Libre
        			echo "i es igual a 1";
        		break;
    			case 2://Diminutivos
        			if($this->validarDiminutivos($respuesta, $id)== 1) echo 0;
					else echo 1;
        		break;
    			case 3://Adjetivos
        			if($this->validarAdjetivos($respuesta, $id)== 1) echo 0;
					else echo 1;
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
		
		public function validarAdjetivos($respuestaCarta, $idCArta){
			$adjetivos= $this->mjuegoavanzado->getCartaAdjetivo($idCArta);
			
			
			$valor =0;
			$i=1;
			foreach ($adjetivos as $key) {
				$resultado['respuestas'][$i]=$key['adjetivo'];
				$i++;
			}
			
			foreach ($resultado['respuestas'] as $value) {
				if ($respuestaCarta==$value) {
					$valor=1;
					}
			}	
			echo $valor;
			return $valor;
			
		}
		
		public function validarDiminutivos($respuestaCarta, $idCArta){
			$diminutivos= $this->mjuegoavanzado->getCartaDiminutivo($idCArta);
			
			
			$valor =0;
			$i=1;
			foreach ($diminutivos as $key) {
				$resultado['respuestas'][$i]=$key['diminutivo'];
				$i++;
			}
			
			foreach ($resultado['respuestas'] as $value) {
				if ($respuestaCarta==$value) {
					$valor=1;
					}
			}	
			echo $valor;
			return $valor;
			
		} 
		
		
}
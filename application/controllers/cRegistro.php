<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

    class CRegistro extends CI_Controller {
    public function __construct(){
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
        $this->load->library('form_validation');
        $this->load->model('usuario/mregistro');
		
		
	}
	
	//Valida el registro y agrega los datos a la base de datos 
	public function validarRegistro(){
        // Reglas de validacion
        	
            $this->form_validation->set_rules('usuario_nombreUsr','','required');
            $this->form_validation->set_rules('usuario_correo','','required|trim|valid_email');
			$this->form_validation->set_rules('usuario_contrasena','','required|trim|min_length[6]');
            $this->form_validation->set_rules('usuario_nombre','required|trim');		
			$this->form_validation->set_rules('usuario_aPaterno','required|trim');
			$this->form_validation->set_rules('usuario_aMaterno','required|trim');
			
            
           
            $this->form_validation->set_message('required','El Campo %s Es Obligatorio');
            $this->form_validation->set_message('valid_email','Ingrese un %s Válido');
            $this->form_validation->set_message('matches','El Campo %s no es igual que el campos %s');
            $this->form_validation->set_message('min_length','El Campo %s debe tener como minimo 6 caracteres');
           
            if($this->form_validation->run() != FALSE)
            {
               
                $data = array('mensaje'=>'El usuario se registro correctamente');
                $datosUsuario= array(
                            'usuario'=>$this->input->post('usuario_nombreUsr',TRUE),
                            'correo'=>$this->input->post('usuario_correo',TRUE),
                            'contrasena'=>$this->input->post('usuario_contrasena',TRUE),
                            'sexo'=>$this->input->post('usuario_sexo',TRUE),
                            'nombre'=>$this->input->post('usuario_nombre',TRUE),
                            'aPaterno'=>$this->input->post('usuario_aPaterno',TRUE),
                            'aMaterno'=>$this->input->post('usuario_aMaterno',TRUE));
				//Regresar el arreglo con los datos del usuario para que el modelo los agregue a la base de datos e iniciar sesión	
            }
            else
            {
          
                //Regresar al registro
            }
        }
	//Función AJAX que verifica si el usuario existe o no existe en la BD
	function usuario(){
		$term = $this->input->post('usuario',TRUE); //Recibo variable "usuario" a través de AJAX. Archivo media/js/inicio.js. Línea 90
		
		$valor= $this->mregistro->getExisteUsuario($term);//La función 'getExisteUsuario' regresa true si el ususario existe y false en caso contrario.
		
		//Envia respuesta a la vista si el usuario existe o no en la BD
		if( $valor){
			echo "El usuario existe";  
			echo json_encode(1);	
		}else{
			echo "El usuario no existe";
			echo json_encode(0);
		}		
	}
	
	
	
	function correo(){
			$term = $this->input->post('correo',TRUE); //Recibo variable "correo" a través de AJAX. Archivo media/js/inicio.js. Línea 119
			$valor= $this->mregistro->getExisteCorreo($term);//La función 'getExisteCorreo' regresa true si el correo existe y false en caso contrario.
			$correo_xanum = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]xanum[.]uam[.]mx$/', $term);
			$correo_titlani = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]titlani[.]uam[.]mx$/', $term);
			if( $valor || ($correo_xanum == FALSE && $correo_titlani==FALSE)){
				//Correo existe   
				echo json_encode(1);	
			}else{
				//Correo no existe
				echo json_encode(0);
			}					
		}
		
		function dominio(){
			$term = $this->input->post('correo',TRUE); //Recibo variable "correo" a través de AJAX. Archivo media/js/inicio.js. Línea 119
			$correo_xanum = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]xanum[.]uam[.]mx$/', $term);
			$correo_titlani = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]titlani[.]uam[.]mx$/', $term);
			//Comprobando si el dominio es correcto
				if($correo_xanum == FALSE && $correo_titlani==FALSE){
					echo json_encode(0);	
				}else{
					echo json_encode(1);
				}
		}	
							
			
	function vacio($input){
		$term = $this->input->post($input,TRUE);
	
		if($term == ""){
			echo json_encode(1);	
		}else{
			echo json_encode(0);
		}
	}
	
	
		
}
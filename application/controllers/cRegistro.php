<?php
    class CRegistro extends CI_Controller {
    public function __construct(){
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
        $this->load->library('form_validation');
        $this->load->model('usuario/mRegistro');
    }
    /*public function index(){
        // Cargar vista de formulario
        $this->load->view('mi_form');
    }*/
    
    /*public function registro()
    {
        $this->load->view('vinicio2');
    }
    */
	
    public function validarRegistro(){
        // Reglas de validacion
        
            $this->form_validation->set_rules('usuario_nombreUsr','','required');
            $this->form_validation->set_rules('usuario_correo','','required|trim|valid_email');
			$this->form_validation->set_rules('usuario_contrasena','','required|trim|min_length[6]');
            $this->form_validation->set_rules('usuario_nombre','required|trim');		
			$this->form_validation->set_rules('usuario_aPaterno','required|trim');
			$this->form_validation->set_rules('usuario_aMaterno','required|trim');
			
            
           // $this->form_validation->set_rules('','','required|trim|matches[pass]');
            
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
                            'aMaterno'=>$this->input->post('usuario_aMaterno',TRUE),
							'edad'=>$this->input->post('usuario_edad',TRUE),
							'comunidad'=>$this->input->post('usuario_comunidadUniversitaria',TRUE),
							'division'=>$this->input->post('usuario_comunidadUniversitaria',TRUE));			
            }
            else
            {
                $this->load->view('vinicio2');
            }
        }
        
		
	
		function existeUsuario($nombreUser){
       	 $variable = $this->mRegistro->getExisteUsuario($nombreUser);
        	if($variable == true)
        	{
            	return true;
        	}
        	else
        	{
            	return false;
        	}
    	}
   
    	function existeCorreo($correo){
    		$variable = $this->mRegistro->getExisteCorreo($correo);
        	if($variable == true)
        	{
            	return true;
        	}
        	else
        	{
            	return false;
        	}
    	}
	
		function datosComUniv(){
			$comUniv = $this->mRegistro->getTipoUsuario();
			return $comUniv;
		}

}
?>
<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

    class CRegistro extends CI_Controller {
    public function __construct(){
        parent::__construct();
        $this->load->helper(array('html', 'url'));
		$this->load->helper('form'); //Contiene funciones que ayuda a trabajar con formularios en html 
		$this->load->model('usuario/mregistro');//Carga funciones para agregar usuarios a la base de datos
		$this->load->library('form_validation');
		$this->load->library('micombobox');	//Libreria para cargar datos del comboBox de la vista vinicio
		
		//Filename: views/vinicio.php
				
	}
	
	
	
	//Función AJAX que verifica si el usuario existe o no existe en la BD
	function usuario(){
		$term = $this->input->post('usuario',TRUE); //Recibo variable "usuario" a través de AJAX. Archivo media/js/inicio.js. Línea 90
		$valor= $this->mregistro->getExisteUsuario($term);//La función 'getExisteUsuario' regresa true si el ususario existe y false en caso contrario.
		//Envia respuesta a la vista si el usuario existe o no en la BD
		if( $valor){
			echo json_encode(1);	
		}else{
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
			$correo_docencia = preg_match('/^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@]docencia[.]uam[.]mx$/', $term);
			//Comprobando si el dominio es correcto
				if($correo_xanum == FALSE && $correo_titlani==FALSE && $correo_docencia == FALSE){
					echo json_encode(0);	
				}else{
					echo json_encode(1);
				}
		}

		
		function RegistraUsuario(){
			
			//Realiza validaciones
			$this->form_validation->set_rules('usuario_nombreUsr', 'Usuario', 'trim|required|min_length[5]|max_length[25]|xss_clean');//minimo 5 max 25
        	$this->form_validation->set_rules('usuario_correo','Correo','required|trim|valid_email');//
			$this->form_validation->set_rules('usuario_contrasena','Contrasena','required|trim|min_length[6]');
        	$this->form_validation->set_rules('usuario_nombre','Nombre','required|trim|alpha|min_length[3]|max_length[50]');//min 4 max db	
			$this->form_validation->set_rules('usuario_aPaterno','ApellidoPaterno','required|trim|alpha|min_length[3]|max_length[25]');//min3 max db
			$this->form_validation->set_rules('usuario_aMaterno','ApellidoMaterno','required|trim|alpha|min_length[3]|max_length[25]|');//min 3 max db
			$this->form_validation->set_rules('usuario_edad','edad','trim|greater_than[17]|less_than[60]');//17-60
			//Si la validavión es correcta
			
			
		    if($this->form_validation->run()!= FALSE){
		    	
				//Guardando datos en el arreglo "datosUsuario" que se reciben por POST y se enviarán al modelo
				$datosUsuario= array(
                'nombreUsr'=>$this->input->post('usuario_nombreUsr',TRUE),
                'correo'=>$this->input->post('usuario_correo',TRUE),
                'contrasena'=>$this->input->post('usuario_contrasena',TRUE),
                'sexo'=>$this->input->post('usuario_sexo',TRUE),
                'nombre'=>$this->input->post('usuario_nombre',TRUE),
                'aPaterno'=>$this->input->post('usuario_aPaterno',TRUE),
                'aMaterno'=>$this->input->post('usuario_aMaterno',TRUE),
				'edad'=>$this->input->post('usuario_edad',TRUE),
				'cargo'=>$this->input->post('usuario_cargo',TRUE),
				'area'=>$this->input->post('usuario_area',TRUE),
				'idTipoUsuario'=>$this->input->post('usuario_comunidadUniversitaria',TRUE),
				'idDivision'=>$this->input->post('usuario_division',TRUE),
				'idGradoActivo'=>$this->input->post('usuario_gradoActivo',TRUE),
				'idGradoPosgrado'=>$this->input->post('usuario_posgrado',TRUE),
				'idAvatar'=>1,
				'codigoActivacion'=>uniqid(),
				'estatus'=>0
				);
				
			//Valido casos especiales de registro.
				if($datosUsuario['idDivision']==-1)$datosUsuario['idDivision']=null;
				if($datosUsuario['idGradoActivo']==-1)$datosUsuario['idGradoActivo']=null;
		    	if($datosUsuario['idGradoPosgrado']==-1)$datosUsuario['idGradoPosgrado']=null;			
				if($datosUsuario['cargo']=="")$datosUsuario['cargo']=null;
				if($datosUsuario['area']=="")$datosUsuario['area']=null;
			//Si la validación es correcta
			
			echo "<script>
				alert('¡Estás a un paso de comenzar a jugar! Por favor, confirma tu solicitud a través de la liga que ha sido enviada a tu correo')
			</script>";	
			
			$this->correoConfirmacion($datosUsuario);
			$this->mregistro->setAgregarUsuario($datosUsuario);//Registrando datos en la BD
			
			
			$datos = $this->micombobox->datosComboBox();
			$this->load->view('vinicio', $datos);
			
			//$this->load->view('vinicio', $datos);	
			}
			
			else{
			echo "<script>
			alert('Alguno de los datos que ingresaste no está siendo aceptado por nuestro servidor :()')
			</script>";
			
			//Manda llamar nuevamente a la vista vinicio					
			$datos = $this->micombobox->datosComboBox();
			$this->load->view('vinicio', $datos);			
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
	

	function datosCorreo($idUsuario){
		$datos=$this->mregistro->getCodigoActivacion($idUsuario);
		//print_r($datos);
		return $datos;
		
	}
	
	
  	function correoConfirmacion($datosUsr){
		
		require_once 'class.phpmailer.php';
		$mail = new PHPMailer();
		$mail->IsSMTP();
		$mail->Host = 'ssl://smtp.gmail.com';
		$mail->Port = 465;
		$mail->SMTPAuth = true;
		$mail->CharSet = "UTF-8";
		$mail->Username = 'ludico@virtuami.izt.uam.mx';
		$mail->Password = '7Ud1C0u@m';
		$mail->From = "remitente@dominio.com";
		$mail->FromName = "Loteria VIRTU@MI";
		$mail->IsHTML(true);
		$mail->Subject = "Test phpMailer";
		
		//$correo=$datosUsr['correo'];
		$correo="guillermotorreslopez@gmail.com";
		$mail->AddAddress($correo);
		//$altbody = "USUARIO:".$datosUsr['nombreUsr']."\n"."CORREO:".$datosUsr['correo']."\n"."CONTRASEÑA:".$datosUsr['contrasena']."\n"."TU CODIGO DE ACTIVACION ES: ".$datosUsr['codigoActivacion']."\n"."DA CLICK AQUI: http://google.com.mx";
		/*$body="<h1>Prueba de correo</h1>";
		$body.="<h2>";
		$body.="USUARIO:".$datosUsr['nombreUsr']."\n"."CORREO:".$datosUsr['correo']."\n"."CONTRASEÑA:".$datosUsr['contrasena']."\n"."TU CODIGO DE ACTIVACION ES: ".$datosUsr['codigoActivacion']."\n"."DA CLICK AQUI: http://google.com.mx";
		$body.="</h2>";*/
		//$mail->AltBody =$altbody;
		//$body=$this->view('welcome_message');
		$datosCorreo['nombreUsr']=$datosUsr['nombreUsr'];
		$datosCorreo['correo']=$datosUsr['correo'];
		$datosCorreo['contrasena']=$datosUsr['contrasena'];
		$datosCorreo['codigoActivacion']=$datosUsr['codigoActivacion'];
		
		$body = $this->load->view('registroActivacion', $datosCorreo, true);
		$mail-­>AddAttachment("/var/www/loteriaVIRTUAMI/media/img/loteria.jpg");
		
		
		//$mail-­>AddAttachment("/var/www/loteriaVIRTUAMI/media/img/virtuami_logo.png","virtuami_logo.png");
		//$mail-­>AddAttachment("/var/www/loteriaVIRTUAMI/media/img/uamizt.png","uamizt.png");
		
		//$mail->AddEmbeddedImage("/var/www/loteriaVIRTUAMI/media/img/loteria.jpg","fondo","loteria.jpg");
		//$body = file_get_contents('/var/www/loteriaVIRTUAMI/application/views/welcome_message.php');
		$mail->Body = $body;
		
		if(!$mail->Send())
		{
			echo "No se pudo enviar el Mensaje.";
		}
		else
		{
			echo "Mensaje enviado"; 
		}
	}
}
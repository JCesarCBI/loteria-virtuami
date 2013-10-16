<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CEditarPerfilJugador extends CI_Controller {
	
	function __construct() {    
        parent::__construct();
		$this->load->library('session');
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('usuario/mdatosperfil');
		$this->load->model('estadisticas/mestadisticas');
		$this->load->model('usuario/mregistro');
		$this->load->model('juego/mJuegoLibre');
		if (($this->session->userdata('logeado') != 1)) {
			exit("Acceso denegado 403, pedir vista al equipo de diseño");
		}
		
	}
		public function PerfilUsuario($idJuego, $idUsuario){
		
		if($idUsuario == 0){
			echo "<script>alert('Usuario no existe')</script>";
		}else{
			if ($idUsuario == -1) {
				$idUsuario = $this->session->userdata('idUsuario');
				$idJuego == $this->session->userdata('idJuego');
			}
			$datosPerfil = $this->mdatosperfil->getDatosUsuario($idUsuario);
			if(!$datosPerfil){
				echo "<script>alert('Usuario no existe')</script>";
			}else{
				$datosPerfilOrdenados = $datosPerfil[0];
				$datosPerfilOrdenados["idTipoUsr"] = $idUsuario;
				$datosPerfilOrdenados["Sexo"]["H"] = "Hombre";
				$datosPerfilOrdenados["Sexo"]["M"] = "Mujer";
				
				//Obteniendo trofeos
				if($idJuego != 0 && $idUsuario != 0){
					//Se obtiene lista completa de trofeos
					$trofeos = $this->mestadisticas->getTodosTrofeos();
					//Se obtiene lista de trofeos ganados por el jugador en el juego
					$trofeosJugador = $this->mestadisticas->getTrofeos($idUsuario, $idJuego);
					$numTrofeos = count($trofeosJugador);
					for ($i=0; $i < $numTrofeos; $i++) {
						$aux[$i+1] = $trofeosJugador[$i];
						unset($trofeosJugador[$i]);
					}
					$trofeosJugador = $aux;
					// echo "<pre>OOOOOOOOOOOOOOOOOOOOO";
					// print_r($trofeosJugador);
					// echo "</pre>";
					//Verificamos si el jugador ha ganado o no trofeos
					if($trofeosJugador == FALSE){ //Si el usuario no ha ganado ningún trofeo
						//Se agrega el edo de no ganado a todos los trofeos
						foreach ($trofeos as $i => $trof) {
							$trof['Estado'] = 0;
							$trofeos[$i]=$trof; //Se "actualiza" el arreglo
						}
						//Una vez agregado el estado a todos los trofeos, se agregan
						//Al arreglo final que pasaremos a la vista
						foreach ($trofeos as $trof) {
							$datosPerfilOrdenados['trofeos'][$trof['idTrofeo']] = $trof;
						}
					}else{ //Si el usuario ha ganado al menos un trofeo
						//Se realiza una búsqueda en los trofeos ganados por el jugador
						//Para determinar el estado del trofeo (ganado/no ganado)
						foreach ($trofeos as $i => $trof) {
							//Se agrega el edo de ganado o no ganado
							if(array_search($trof['idTrofeo'],$trofeosJugador)){
								$trof['Estado'] = 1; //Trofeo ganado
							}else{
								$trof['Estado'] =0; //Trofeo no ganado
							}

							$trofeos[$i] = $trof; //Se "actualiza" el arreglo
						}
						//Una vez agregado el estado a todos los trofeos, se agregan
						//Al arreglo final que pasaremos a la vista
						foreach ($trofeos as $trof) {
							$datosPerfilOrdenados['trofeos'][$trof['idTrofeo']] = $trof;
						}
					}
				}else{
					echo "no trofeos ganados";
					return FALSE;
				}
				for($i=1; $i<45; $i++){
					$datosPerfilOrdenados["Edades"][$i+16] = $i+16;	
				}
				//Aqui saco el tipo de usuario
				$aux = $this->mregistro->getTipoUsuario();
				foreach ($aux['tipoUsuario'] as $key) {
					$comunidad_universitaria[$key['idTipoUsuario']] = $key['tipoUsr']; 
				}
				//Aqui saco el tipo de division
				$aux = $this->mregistro->getDivision();
				foreach ($aux['division'] as $key) {
					$division[$key['idDivision']] = $key['iniciales']; 
				}
				//Aqui saco el grado activo
				$aux = $this->mregistro->getGradoActivo();
				foreach ($aux['gradoActivo'] as $key) {
					$gradoActivo[$key['idGradoActivo']] = $key['gradoActivo']; 
				}
				//Aqui saco el grado pos
				$aux = $this->mregistro->getGradoPosgrado();
				foreach ($aux['gradoAcademico'] as $key) {
					$gradoPos[$key['idGradoPosgrado']] = $key['gradoPosgrado']; 
				}
				$datosPerfilOrdenados['datos']['comunidad_universitaria'] = $comunidad_universitaria;
				$datosPerfilOrdenados['datos']['division'] = $division;
				$datosPerfilOrdenados['datos']['gradoActivo'] = $gradoActivo;
				$datosPerfilOrdenados['datos']['gradoActivo'] = $gradoActivo;
				$datosPerfilOrdenados['datos']['pos'] = $gradoPos;
				$datosPerfilOrdenados['idTipoUsr'] = $datosPerfilOrdenados['idTipoUsuario'];
				unset($datosPerfilOrdenados['idTipoUsuario']);
				
				//Los tres primeros lugares del juego de loteria
				$auxiliar =  $this->mestadisticas->getRanking();
				if ($auxiliar) {
					$datosPerfilOrdenados['estadisticas']['ranking'] = $auxiliar;
				} else {
					$datosPerfilOrdenados['estadisticas']['ranking'] = -1;
				}
				//Datos de la ultima partida jugada por el usuario
				$auxiliar =  $this->mestadisticas->getUltimoScore($idUsuario);
				if ($auxiliar) {
					$datosPerfilOrdenados['estadisticas']['ultimoScore'] = $auxiliar[0];
				} else {
					$datosPerfilOrdenados['estadisticas']['ultimoScore'] = -1;
				}				
				//Mejor puntuacion en una partida
				$auxiliar =  $this->mestadisticas->getMejorPuntuacion($idUsuario);
				if ($auxiliar) {
					$datosPerfilOrdenados['estadisticas']['mejorScore'] = $auxiliar[0]["record"];
				} else {
					$datosPerfilOrdenados['estadisticas']['mejorScore'] = -1;
				}
				$datosPerfilOrdenados['estadisticas']['numPartidas'] = 0;
				//Numero de partidas ganadas en modo básico
				$auxiliar =  $this->mestadisticas->getBasicoGanadas($idUsuario);
				if ($auxiliar) {
					$datosPerfilOrdenados['estadisticas']['basicoGanados'] = $auxiliar;
					$datosPerfilOrdenados['estadisticas']['numPartidas'] = $auxiliar + $datosPerfilOrdenados['estadisticas']['numPartidas'];
				} else {
					$datosPerfilOrdenados['estadisticas']['basicoGanados'] = -1;
				}
				//Numero de partidas ganadas en modo avanzado
				$auxiliar =  $this->mestadisticas->getAvanzadoGanadas($idUsuario);
				if ($auxiliar) {
					$datosPerfilOrdenados['estadisticas']['avanzadoGanados'] = $auxiliar;
					$datosPerfilOrdenados['estadisticas']['numPartidas'] = $auxiliar + $datosPerfilOrdenados['estadisticas']['numPartidas'];
				} else {
					$datosPerfilOrdenados['estadisticas']['avanzadoGanados'] = -1;
				}
				//Numero de partidas ganadas en modo experto
				$auxiliar =  $this->mestadisticas->getExpertoGanadas($idUsuario);
				if ($auxiliar) {
					$datosPerfilOrdenados['estadisticas']['expertoGanados'] = $auxiliar;
					$datosPerfilOrdenados['estadisticas']['numPartidas'] = $auxiliar + $datosPerfilOrdenados['estadisticas']['numPartidas'];
				} else {
					$datosPerfilOrdenados['estadisticas']['expertoGanados'] = -1;
				}				
				//Numero de partidas perdidas
				$auxiliar =  $this->mestadisticas->getPartidasPerdidas($idUsuario);
				if ($auxiliar) {
					$datosPerfilOrdenados['estadisticas']['partidasPerdidas'] = $auxiliar;
					$datosPerfilOrdenados['estadisticas']['numPartidas'] = $auxiliar + $datosPerfilOrdenados['estadisticas']['numPartidas'];
				} else {
					$datosPerfilOrdenados['estadisticas']['partidasPerdidas'] = -1;
				}			
				//Datos para la galeria de cartas
				$idGaleria = $this->mestadisticas->getGaleria($idUsuario,1);
				$mazoCartas = $this->mestadisticas->getCartas();
				foreach ($idGaleria as $key) {
					$auxIdGaleria[$key] = $key;
					unset($idGaleria[$key]);
				}
				$idGaleria = $auxIdGaleria;
				// echo "<pre> AQUIIIIIIIIIIIIIIIIIIIIIIIII ";
				// print_r($idGaleria);
				// echo "</pre>";
				if($idGaleria != FALSE){
					foreach ($mazoCartas as $i=>$key) {
						if(array_search($key['idCarta'], $idGaleria)){
							$key["Estado"] = 1;
						}else{
							$key["Estado"] = 0;
						}
						$mazoCartas[$i]=$key;
					}
				}else{
					echo "no hay galeria";
					foreach ($mazoCartas as $i=>$key) {
						$key["Estado"] = 0;
						$mazoCartas[$i]=$key;
					}				
				}
				foreach ($mazoCartas as $cartas) {
					$datosPerfilOrdenados["galeriaCartas"][$cartas["idCarta"]] = $cartas;
				}
				$datosPerfilOrdenados['avatares'] = $this->mestadisticas->getAvatar();
				foreach ($datosPerfilOrdenados["galeriaCartas"] as $key) {
					$resultado = $this->mestadisticas->getRima($key["idCarta"]);
					if ($resultado == FALSE) {
						$datosPerfilOrdenados["galeriaCartas"][$key["idCarta"]]['numRimas'] = 0;
					} else {
						$datosPerfilOrdenados["galeriaCartas"][$key["idCarta"]]['numRimas'] = count($resultado);
					}
					
					
				}
				$datos['idUsr'] = $this->session->userdata('idUsuario');
				$datos['nombreUsr'] = $this->session->userdata('usuario');
				$datos['icnAvatar'] = $this->session->userdata('avatar');
				$datos['barraUsuario'] = $this->load->view('barraUsuario', $datos, TRUE);
				$datosPerfilOrdenados['barraUsuario'] = $this->load->view('barraUsuario', $datos, TRUE);
				$this->load->view('vPerfil', $datosPerfilOrdenados);
				$this->load->view('vEstadisticas', $datosPerfilOrdenados);
				$this->load->view('vGaleria', $datosPerfilOrdenados);
				// echo "<pre>";
				// print_r($datosPerfilOrdenados);
				// echo "</pre>";
				
			}
		}
	}
	
		

		//Confirmará si la contraseña del usuario es correcta a través de AJAX. $contrasena es la contraseña que el usuario escribe y 
		//Se recibe mediante AJAX 
		public function confirmaContrasena($contrasena,$idusuario){
			//Mandas a llamar el modelo y recibes la contraseña actual del usuario
			$contrasenaUsuario = $this->mdatosperfil->getContrasena($idusuario);//"a1b1c2d3"; //suponiendo que se recibe esto del modelo
			$contrasenaUsuario = $contrasenaUsuario[0]["contrasena"];
			echo json_encode(strcmp($contrasenaUsuario, $contrasena));	
		}
		
		public function traeDatosCarta($idcarta){
			//Esta función recibirá vía AJAX el idcarta de la cual se mostrará la información
			//El siguiente arreglo deberá ser traído desde la BD
			//El id del arreglo $cartas debe ser similiar al id de la carta de la que se está guardando información
			//Se recomienda sea de la siguiente manera, para facilitar el retorno de datos vía JSON
			$mazoCartas = $this->mestadisticas->getCartas();
			echo json_encode($mazoCartas[$idcarta]);
		}
		
		public function traeRimaCarta($idcarta, $rima){
			$resultado = $this->mestadisticas->getRima($idcarta);
			if(count($resultado) < $rima){
				echo json_encode(array_pop($resultado));
			}else{
				echo json_encode($resultado[$rima-1]);
			}
		}
		//Apartir de aquí se hacen validaciones de los datos a actualizar //
		public function actualizarDatos(){
		echo"<pre>";
		 print_r($_POST);
		 echo"</pre>";
 		
 			
		 	
		 	//----------------------------------------------Comienza UPDATE-------------------------
			$this->form_validation->set_rules('usuario_nombre', 'Usuario', 'trim|required|min_length[5]|max_length[25]|xss_clean');//minimo 5 max 25
        	$this->form_validation->set_rules('usr_correo','Correo','required|trim|valid_email|xss_clean');//
			$this->form_validation->set_rules('usuario_contrasena','Contrasena','required|trim|min_length[6]|xss_clean');		
  			$this->form_validation->set_rules('usuario_Apat','ApellidoPaterno','required|trim|min_length[3]|max_length[25]|xss_clean');//min3 max db
			$this->form_validation->set_rules('usuario_Amat','ApellidoMaterno','required|trim|min_length[3]|max_length[25]|xss_clean');//min 3 max db
			$this->form_validation->set_rules('usuario_edad','edad','trim|greater_than[17]|less_than[60]|xss_clean');//17-60
			//Si la validavión es correcta
			
			
		    if($this->form_validation->run()!= FALSE){
		    	
				$nuevo['idUsr']=$_POST['idUsuario'];
       		    $nuevo['nombre']=$_POST['usuario_nombre'];
        		$nuevo['aPaterno']=$_POST['usuario_Apat'];
        		$nuevo['aMaterno']=$_POST['usuario_Amat'];
       			$nuevo['sexo']=$_POST['usuario_sexo'];
        		$nuevo['edad']=$_POST['usuario_edad']; 
        		$nuevo['correo']=$_POST['usr_correo'];
        		$nuevo['idTipoUsuario']=$_POST['usuario_comunidadUniversitaria'];
        		$nuevo['idDivision']=$_POST['usuario_division'];
        		$nuevo['idGradoPosgrado']= $_POST['usuario_posgrado'] ;
        		$nuevo['idGradoActivo']= $_POST['usuario_gradoActivo'];
        		$nuevo['idAvatar']=$_POST['id_avatar'];
        		$nuevo['cargo']= $_POST['usuario_area'];
        		$nuevo['area']= $_POST['usuario_cargo'];
				$nuevo['contrasena']=$_POST['usuario_contrasenaActual'];
			//Válido casos especiales de registro.
				
			// echo "Datos Nuevos:";
			// echo "<pre>";
			// print_r($nuevo);
			// echo "</pre>";
			
			$actuales=$this->mdatosperfil->getDatosUsuario($nuevo['idUsr']);
		
			// echo "Datos en la base de datos antes de actualizar...";
		     // echo"<pre>";
			 // echo "Datos Actuales en la base";
	      	 // print_r($actuales);
		     // echo"</pre>";
			
			$this->analizarDatos($nuevo, $actuales);
		
				// $datos['idUsr'] = $this->session->userdata('idUsuario');
				// $datos['nombreUsr'] = $this->session->userdata('usuario');
				// $datos['icnAvatar'] = $this->session->userdata('avatar');
				// $datos['barraUsuario'] = $this->load->view('barraUsuario', $datos, TRUE);
				// $datosPerfilOrdenados['barraUsuario'] = $this->load->view('barraUsuario', $datos, TRUE);
				// $this->load->view('vPerfil', $datosPerfilOrdenados);
				// $this->load->view('vEstadisticas', $datosPerfilOrdenados);
				// $this->load->view('vGaleria', $datosPerfilOrdenados);
				//$idUsuario = $this->session->userdata('idUsuario');
				$idJue = $this->session->userdata('idJuego');
				$this->PerfilUsuario($idJue, $nuevo['idUsr']);
				}
			
			else{
				
				echo"ERROR NO ANALIZO...";
				$this->PerfilUsuario($idJue, $nuevo['idUsr']);
				/*echo "<script>
				alert('Alguno de los datos que ingresaste no está siendo aceptado por nuestro servidor :()')
				</script>";
				*/
		
		
		
		
			}
		}	
		
		public function analizarDatos($datosNuevos, $datosActuales){
			
		
			// echo "Dentro de analizar datos";
// 			
// 				
			// echo "Datos Nuevos:";
			// echo "<pre>";
			// print_r($datosNuevos);
			// echo "</pre>";
			
			switch ($datosActuales[0]['idTipoUsuario']) {
				case 1:
					//echo 'Es alumno...';
					switch($datosNuevos['idTipoUsuario']){
						case 1: //Sigue siendo alumno
							if($datosNuevos['idGradoActivo']== 2){//es de posgrado 
								//echo"Cambia a posgrado...";
								$datosNuevos['idDivision']= null;
								$datosNuevos['cargo']= null;
        						$datosNuevos['area']=null;
								$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
								//$this->cargarVista();
								
							}
							else{
								if($datosNuevos['idGradoActivo']==1){//es Licenciatura
									//echo "Es licenciatura";
									$datosNuevos['cargo']=null;
									$datosNuevos['area']=null;
									$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
									//$this->cargarVista();
								}
								else
								echo 'Error Grado Activo Incorrecto';
								//$this->cargarVista();
						}
							//echo"Actualizado";
							break;
						
						case 2://Cambia a profesor
							//echo "ahora es profesor";
							$datosNuevos['idDivision']=null;
							$datosNuevos['idGradoPosgrado']=null;
							$datosNuevos['idGradoActivo']=null;
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							//$this->cargarVista();
							break;
						case 3://Ahora es administrativo
							//echo "ahora es administrativo";
							$datosNuevos['idDivision']=null;
							$datosNuevos['idGradoActivo']=null;
							$datosNuevos['idGradoPosgrado']=null;
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							//$this->cargarVista();
							break;
						default:
							echo 'ERROR NO DISPONIBLE...';
							//$this->cargarVista();
							
							
							
					 
					//echo 'Fin caso 1 Alumno actualizado...';
					}				
					break;
				case 2:
					//echo ' Es Profesor';
					switch($datosNuevos['idTipoUsuario']){
						case 1: //De profesor a alumno
								//echo "Ahora es alumno";
								$datosNuevos['cargo']= null;
        						$datosNuevos['area']=null;
								$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
								//$this->cargarVista();							
							//echo"Actualizado alumno";
							break;
						
						case 2://sigue siendo profesor
							//echo "sigue siendo profesor";
							
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							//$this->cargarVista();
							break;
						case 3://Ahora es administrativo
							//echo "ahora es administrativo";
							
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							//$this->cargarVista();
							break;
						default:
							echo 'ERROR NO DISPONIBLE...';
							
							
							
					 
					//echo "Fin caso 2 profesor actualizado";
					}				
					
					break;	
				case 3:
					//echo 'Es Administrativo';
					switch($datosNuevos['idTipoUsuario']){
						case 1: //De Administrativo a alumno
								//echo "Ahora es alumno";
								$datosNuevos['cargo']= null;
        						$datosNuevos['area']=null;
								$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
								//$this->cargarVista();
							//echo"Actualizado alumno";
							break;
						
						case 2://Ahora es profesor
							//echo "sigue siendo profesor";
							
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							//$this->cargarVista();
							break;
						case 3://Sigue siendo administrativo
							//echo "ahora es administrativo";
							
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							//$this->cargarVista();
							break;
						default:
							echo 'ERROR NO DISPONIBLE...';
							//$this->cargarVista();
							
							
					 
					//echo "Fin caso 3 Administrativo actualizado";
					}	
					break;
				
				case 4:
					echo 'Es otro';
					//$this->cargarVista();
					break;
				default:
					echo 'Error';
					break;
			}
			
		}//Fin funcion analizar


	
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
		function cargarVista(){
				$datos['idUsr'] = $this->session->userdata('idUsuario');
				$datos['nombreUsr'] = $this->session->userdata('usuario');
				$datos['icnAvatar'] = $this->session->userdata('avatar');
				$datos['barraUsuario'] = $this->load->view('barraUsuario', $datos, TRUE);
				$datosPerfilOrdenados['barraUsuario'] = $this->load->view('barraUsuario', $datos, TRUE);
				$this->load->view('vPerfil', $datosPerfilOrdenados);
				$this->load->view('vEstadisticas', $datosPerfilOrdenados);
				$this->load->view('vGaleria', $datosPerfilOrdenados);
		}
		
		
		function validaUsuarioCorreo($datos){
			
			
		}
}
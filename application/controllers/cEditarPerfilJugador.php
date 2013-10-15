<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CEditarPerfilJugador extends CI_Controller {
	
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->library('form_validation');
		$this->load->model('usuario/mdatosperfil');
		$this->load->model('estadisticas/mestadisticas');
		$this->load->model('usuario/mregistro');
		$this->load->model('juego/mJuegoLibre');
		
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
// 				
				// //Estadisticas de juegos ganados y perdidos, en cuanto a rapidas y completas
				// $datosPerfilOrdenados['estadisticas']['partida']['rapidasGanadas'] = $this->mestadisticas->getPartidas($idUsuario, $idJuego, 2, 1); //Ganadas
								
				
				// $datosPerfilOrdenados['estadisticas']['partida']['rapidasPerdidas'] = $this->mestadisticas->getPartidas($idUsuario, $idJuego, 2, 3); //Perdidas
				// $datosPerfilOrdenados['estadisticas']['partida']['completasGanadas'] = $this->mestadisticas->getPartidas($idUsuario, $idJuego, 1, 1); //Ganadas
				// $datosPerfilOrdenados['estadisticas']['partida']['completasPerdidas'] = $this->mestadisticas->getPartidas($idUsuario, $idJuego, 1, 3); //Perdidas
				// //Estadisticas de juegos en sus diferentes niveles que haya perdido y ganado
				// $datosPerfilOrdenados['estadisticas']['juego']['basicoGanados'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 1, 1); //Ganadas
				// $datosPerfilOrdenados['estadisticas']['juego']['basicoPerdidos'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 1, 3); //Perdidas
				// $datosPerfilOrdenados['estadisticas']['juego']['intermedioGanados'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 2, 1); //Ganadas
				// $datosPerfilOrdenados['estadisticas']['juego']['intermedioPerdidos'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 2, 3); //Perdidas
				// $datosPerfilOrdenados['estadisticas']['juego']['avanzadoGanados'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 3, 1); //Ganadas
				// $datosPerfilOrdenados['estadisticas']['juego']['avanzadoPerdidos'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 3, 3); //Perdidas
				// $datosPerfilOrdenados['estadisticas']['juego']['expertoGanados'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 4, 1); //Ganadas
				// $datosPerfilOrdenados['estadisticas']['juego']['expertoPerdidos'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 4, 3); //Perdidas
				// //Estadisticas de juegos ganados y perdidos por modalidad
				// $datosPerfilOrdenados['estadisticas']['modalidad']['juegoLibreGanados'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 1, 1); //Ganadas
				// $datosPerfilOrdenados['estadisticas']['modalidad']['juegoLibrePerdidos'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 1, 3); //Perdidas
				// $datosPerfilOrdenados['estadisticas']['modalidad']['diminutivosGanados'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 2, 1); //Ganadas
				// $datosPerfilOrdenados['estadisticas']['modalidad']['diminutivosPerdidos'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 2, 3); //Perdidas
				// $datosPerfilOrdenados['estadisticas']['modalidad']['adjetivosGanados'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 3, 1); //Ganadas
				// $datosPerfilOrdenados['estadisticas']['modalidad']['adjetivosPerdidos'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 3, 3); //Perdidas
				// $datosPerfilOrdenados['estadisticas']['modalidad']['sinonimosGanados'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 5, 1); //Ganadas
				// $datosPerfilOrdenados['estadisticas']['modalidad']['sinonimosPerdidos'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 5, 3); //Perdidas
				
				//Datos para la galeria de cartas
				$idGaleria = $this->mestadisticas->getGaleria(1,1);
				$mazoCartas = $this->mestadisticas->getCartas();

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
				// echo "<pre> Arreglo ";
				 //print_r($datosPerfilOrdenados);
				//echo "</pre>";
				$this->load->view('pruebaPerfil', $datosPerfilOrdenados);
				$this->load->view('vEstadisticas', $datosPerfilOrdenados);
				$this->load->view('vGaleria', $datosPerfilOrdenados);
				
				
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
	
		/*Post array
		 *  [usuario_avatar] => /media/img/avatar/av_us_coleccionista.jpg
    	    [id_avatar] => /media/img/avatar/av_us_coleccionista.jpg
    		[usuario_contrasenaActual] => 123456
    		[idUsuario] => 4
		    [usuario_nombre]=> Guillermo
    		[usuario_Apat] => Torres
    		[usuario_Amat] => Lopez
    		[usr_correo] => guillermotorres@xanum.uam.mx
    		[usuario_sexo] => H
    		[usuario_edad] => 29
    		[usuario_comunidadUniversitaria] => 4
    		[usuario_gradoActivo] => 1
    		[usuario_division] => 2
    		[usuario_posgrado] => 1
    		[usuario_area] => 
    		[usuario_cargo] => 
    		[usuario_contrasena] => 123456
		 	* */
		 	
		 	
		 	
			$this->form_validation->set_rules('usuario_nombre', 'Usuario', 'trim|required|min_length[5]|max_length[25]|xss_clean');//minimo 5 max 25
        	$this->form_validation->set_rules('usr_correo','Correo','required|trim|valid_email|xss_clean');//
			$this->form_validation->set_rules('usuario_contrasena','Contrasena','required|trim|min_length[6]|xss_clean');		
  			$this->form_validation->set_rules('usuario_Apat','ApellidoPaterno','required|trim|alpha|min_length[3]|max_length[25]|xss_clean');//min3 max db
			$this->form_validation->set_rules('usuario_Amat','ApellidoMaterno','required|trim|alpha|min_length[3]|max_length[25]|xss_clean');//min 3 max db
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
        		$nuevo['idAvatar']=3;
        		$nuevo['cargo']= $_POST['usuario_area'];
        		$nuevo['area']= $_POST['usuario_cargo'];
				
			//Válido casos especiales de registro.
				
			echo "Datos Nuevos:";
			echo "<pre>";
			print_r($nuevo);
			echo "</pre>";
			
			$actuales=$this->mdatosperfil->getDatosUsuario($nuevo['idUsr']);
		
			echo "Datos en la base de datos antes de actualizar...";
		     echo"<pre>";
			 echo "Datos Actuales en la base";
	      	 print_r($actuales);
		     echo"</pre>";
			
			$this->analizarDatos($nuevo, $actuales);
			//$this->mdatosperfil->setActualizaUsuario($nuevo['idUsr'], $nuevo);
				
			}
			
			else{
				
				echo"ERROR NO ANALIZO...";
				/*echo "<script>
				alert('Alguno de los datos que ingresaste no está siendo aceptado por nuestro servidor :()')
				</script>";
				*/
		
		
		
		
			}
		}	
		
		public function analizarDatos($datosNuevos, $datosActuales){
			
		
			echo "Dentro de analizar datos";
			
				
			echo "Datos Nuevos:";
			echo "<pre>";
			print_r($datosNuevos);
			echo "</pre>";
			
			switch ($datosActuales[0]['idTipoUsuario']) {
				case 1:
					echo 'Es alumno...';
					switch($datosNuevos['idTipoUsuario']){
						case 1: //Sigue siendo alumno
							if($datosNuevos['idGradoActivo']== 2){//es de posgrado 
								echo"Cambia a posgrado...";
								$datosNuevos['idDivision']= null;
								$datosNuevos['cargo']= null;
        						$datosNuevos['area']=null;
								$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							}
							else{
								if($datosNuevos['idGradoActivo']==1){//es Licenciatura
									echo "Es licenciatura";
									$datosNuevos['cargo']=null;
									$datosNuevos['area']=null;
									$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
									
								}
								else
								echo 'Error Grado Activo Incorrecto';
						}
							echo"Actualizado";
							break;
						
						case 2://Cambia a profesor
							echo "ahora es profesor";
							$datosNuevos['idDivision']=null;
							$datosNuevos['idGradoPosgrado']=null;
							$datosNuevos['idGradoActivo']=null;
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							break;
						case 3://Ahora es administrativo
							echo "ahora es administrativo";
							$datosNuevos['idDivision']=null;
							$datosNuevos['idGradoActivo']=null;
							$datosNuevos['idGradoPosgrado']=null;
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
						default:
							echo 'ERROR NO DISPONIBLE...';
							
							
							
					 
					echo 'Fin caso 1 Alumno actualizado...';
					}				
					break;
				case 2:
					echo ' Es Profesor';
					switch($datosNuevos['idTipoUsuario']){
						case 1: //De profesor a alumno
								echo "Ahora es alumno";
								$datosNuevos['cargo']= null;
        						$datosNuevos['area']=null;
								$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							
							echo"Actualizado alumno";
							break;
						
						case 2://sigue siendo profesor
							echo "sigue siendo profesor";
							
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							break;
						case 3://Ahora es administrativo
							echo "ahora es administrativo";
							
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
						default:
							echo 'ERROR NO DISPONIBLE...';
							
							
							
					 
					echo "Fin caso 2 profesor actualizado";
					}				
					
					break;	
				case 3:
					echo 'Es Administrativo';
					switch($datosNuevos['idTipoUsuario']){
						case 1: //De Administrativo a alumno
								echo "Ahora es alumno";
								$datosNuevos['cargo']= null;
        						$datosNuevos['area']=null;
								$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							
							echo"Actualizado alumno";
							break;
						
						case 2://Ahora es profesor
							echo "sigue siendo profesor";
							
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
							break;
						case 3://Sigue siendo administrativo
							echo "ahora es administrativo";
							
							$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
						default:
							echo 'ERROR NO DISPONIBLE...';
							
							
							
					 
					echo "Fin caso 3 Administrativo actualizado";
					}	
					break;
				
				case 4:
					echo 'Es otro';
					
				default:
					echo 'Error';
					break;
			}
			
		}//Fin funcion analizar


	//public function validacionFormulario($datos)
	/*
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
	*/
		/*function correo(){
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
		}*/
}
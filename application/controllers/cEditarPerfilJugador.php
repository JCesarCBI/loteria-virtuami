<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CEditarPerfilJugador extends CI_Controller {
	
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
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
				
				//Estadisticas de juegos ganados y perdidos, en cuanto a rapidas y completas
				$datosPerfilOrdenados['estadisticas']['partida']['rapidasGanadas'] = $this->mestadisticas->getPartidas($idUsuario, $idJuego, 2, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['partida']['rapidasPerdidas'] = $this->mestadisticas->getPartidas($idUsuario, $idJuego, 2, 3); //Perdidas
				$datosPerfilOrdenados['estadisticas']['partida']['completasGanadas'] = $this->mestadisticas->getPartidas($idUsuario, $idJuego, 1, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['partida']['completasPerdidas'] = $this->mestadisticas->getPartidas($idUsuario, $idJuego, 1, 3); //Perdidas
				//Estadisticas de juegos en sus diferentes niveles que haya perdido y ganado
				$datosPerfilOrdenados['estadisticas']['juego']['basicoGanados'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 1, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['juego']['basicoPerdidos'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 1, 3); //Perdidas
				$datosPerfilOrdenados['estadisticas']['juego']['intermedioGanados'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 2, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['juego']['intermedioPerdidos'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 2, 3); //Perdidas
				$datosPerfilOrdenados['estadisticas']['juego']['avanzadoGanados'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 3, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['juego']['avanzadoPerdidos'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 3, 3); //Perdidas
				$datosPerfilOrdenados['estadisticas']['juego']['expertoGanados'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 4, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['juego']['expertoPerdidos'] = $this->mestadisticas->getNiveles($idUsuario, $idJuego, 4, 3); //Perdidas
				//Estadisticas de juegos ganados y perdidos por modalidad
				$datosPerfilOrdenados['estadisticas']['modalidad']['juegoLibreGanados'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 1, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['modalidad']['juegoLibrePerdidos'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 1, 3); //Perdidas
				$datosPerfilOrdenados['estadisticas']['modalidad']['diminutivosGanados'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 2, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['modalidad']['diminutivosPerdidos'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 2, 3); //Perdidas
				$datosPerfilOrdenados['estadisticas']['modalidad']['adjetivosGanados'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 3, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['modalidad']['adjetivosPerdidos'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 3, 3); //Perdidas
				$datosPerfilOrdenados['estadisticas']['modalidad']['sinonimosGanados'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 5, 1); //Ganadas
				$datosPerfilOrdenados['estadisticas']['modalidad']['sinonimosPerdidos'] = $this->mestadisticas->getModalidades($idUsuario, $idJuego, 5, 3); //Perdidas
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
				// echo "<pre>";
				// print_r($datosPerfilOrdenados);
				// echo "</pre>";
				$this->load->view('veditarPerfilJugadorPruebas', $datosPerfilOrdenados);
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
			
			//No es necesario:
			// $idGaleria = $this->mestadisticas->getGaleria($this->session->userdata('idUsuario'), $this->session->userdata('idJuego'));
			
			$mazoCartas = $this->mestadisticas->getCartas();

			//No es necesario:
			// foreach ($mazoCartas as $key) {
				// unset($key["audio"]);
				// unset($key["longitud"]);
				// $key['Estado'] = 0;
				// $cartas[$key["idCarta"]] = $key;
			// }
			// foreach ($idGaleria as $key) {
				// $cartas[$key["idCarta"]]["Estado"] = 1;
			// }
			// echo "<pre>";
			// print_r($cartas);
			// echo "</pre>";
			// echo "<pre>";
			// print_r($idGaleria);
			// echo "</pre>";
			
			//La función regresará vía JSON un arreglo con los datos de la carta que tenga ID = $idcarta
			echo json_encode($mazoCartas[$idcarta]);
		}

		public function actualizarDatos(){
		echo"<pre>";
		print_r($_POST);
		echo"</pre>";
		
		$nuevo['idUsr']=$_POST['idUsuario'];
        $nuevo['nombre']=$_POST['usuario_nombre'];
        $nuevo['aPaterno']=$_POST['usuario_Apat'];
        $nuevo['aMaterno']=$_POST['usuario_Amat'];
       // $nuevo['sexo']=$_POST['sexo'];
        $nuevo['edad']=$_POST['usuario_sexo']; 
        $nuevo['correo']=$_POST['usr_correo'];
        $nuevo['idTipoUsuario']=$_POST['usuario_comunidadUniversitaria'];
        $nuevo['idDivision']=$_POST['usuario_division'];
        $nuevo['idGradoPosgrado']= $_POST['usuario_posgrado'] ;
        $nuevo['idGradoActivo']= $_POST['usuario_gradoActivo'];
        $nuevo['idAvatar']=3;
        $nuevo['cargo']= $_POST['usuario_area'];
        $nuevo['area']= $_POST['usuario_cargo'];
		
		$actuales=$this->mdatosperfil->getDatosUsuario($nuevo['idUsr']);
		//$nuevos=$_POST;
		
		echo"<pre>";
		print_r($actuales);
		echo"</pre>";
		$this->analizarDatos($nuevo, $actuales);
		
		}
		
		
		/*[usuario_avatar] => /media/img/avatar/avatarE.png
    	[idUsuario] => 1
    	[usuario_nombre] => Flor Nallely
    	[usuario_Apat] => Flores
    	[usuario_Amat] => Vicente
    	[usr_correo] => anjudark@xanum.uam.mx
    	[usuario_sexo] => 22
    	[usuario_comunidadUniversitaria] => 1
    	[usuario_area] => 
    	[usuario_cargo] => 
    	[usuario_gradoActivo] => 1
    	[usuario_division] => 2
    	[usuario_posgrado] => 1*/

    	
    	/*[idUsr] => 1
            [nombreUsr] => anjudark89
            [nombre] => Flor Nallely
            [aPaterno] => Flores
            [aMaterno] => Vicente
            [sexo] => M
            [edad] => 22
            [correo] => anjudark@xanum.uam.mx
            [contrasena] => 123456
            [idTipoUsuario] => 1
            [idDivision] => 2
            [idGradoPosgrado] => 
            [idGradoActivo] => 1
            [avatar] => /media/img/avatar/avatarE.png
            [cargo] => 
            [area] => */	
            
            
            
            
            /*
			 * $nuevo['idUsr']=$_POST['idUsuario'];
        $nuevo['nombre']=$_POST['usuario_nombre'];
        $nuevo['aPaterno']=$_POST['usuario_Apat'];
        $nuevo['aMaterno']=$_POST['usuario_Amat'];
       // $nuevo['sexo']=$_POST['sexo'];
        $nuevo['edad']=$_POST['usuario_sexo']; 
        $nuevo['correo']=$_POST['usr_correo'];
        $nuevo['idTipoUsuario']=$_POST['usuario_comunidadUniversitaria'];
        $nuevo['idDivision']=$_POST['usuario_division'];
        $nuevo['idGradoPosgrado']= $_POST['usuario_posgrado'] ;
        $nuevo['idGradoActivo']= $_POST['usuario_gradoActivo'];
        $nuevo['idAvatar']=1;
        $nuevo['cargo']= $_POST['usuario_area'];
        $nuevo['area']= $_POST['usuario_cargo'];
			 * 
			 * */	
		public function analizarDatos($datosNuevos, $datosActuales){
			
		
			
			switch ($datosActuales[0]['idTipoUsuario']) {
				case '1':
					echo 'Es alumno...';
					if($datosNuevos['idGradoActivo']== 2){
						$datosNuevos['idDivision']= null;
						$datosNuevos['cargo']= null;
        				$datosNuevos['area']=null;
						$this->mdatosperfil->setActualizaUsuario($datosNuevos['idUsr'], $datosNuevos);
					}
					echo 'actualizado...';
					break;
				case '2':
					echo 'Es Profesor';
					break;	
				case '3':
					echo 'Es Administrativo';
					break;
				
				case '4':
					echo 'Es otro';
				
				default:
					echo 'Error';
					break;
			}
			
		}
}
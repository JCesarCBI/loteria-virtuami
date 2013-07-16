<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CDatosPerfil2 extends CI_Controller {
	function __construct() {    
        parent::__construct();
        $this->load->helper(array('html', 'url', 'form'));
		$this->load->model('usuario/mdatosperfil');
		$this->load->model('estadisticas/mestadisticas');
		$this->load->model('usuario/mregistro');
		
	}
	
	public function PerfilUsuario($idJuego, $idUsuario){
		// $idJuego = 1;
		// $idUsuario = 5; //estos datos los traere posteriormente del formulario		
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
				if($idJuego != 0 && $idUsuario != 0){
					$trofeos = $this->mestadisticas->getTodosTrofeos();
					$trofeosJugador = $this->mestadisticas->getTrofeos($idUsuario, $idJuego);
					for($i=0; $i<count($trofeos); $i++){
						$datosPerfilOrdenados["trofeos"][$i+1] = $trofeos[$i];
						$datosPerfilOrdenados["trofeos"][$i+1]["Estado"] = 0;
						$datosPerfilOrdenados["trofeos"][$i+1]['nombreTrofeo'] = $datosPerfilOrdenados["trofeos"][$i+1]['nombre'];
						unset($datosPerfilOrdenados["trofeos"][$i+1]['nombre']);
						$datosPerfilOrdenados["trofeos"][$i+1]['Descripcion'] = $datosPerfilOrdenados["trofeos"][$i+1]['descripcion'];
						unset($datosPerfilOrdenados["trofeos"][$i+1]['descripcion']);
						$datosPerfilOrdenados["trofeos"][$i+1]['url-chico'] = $datosPerfilOrdenados["trofeos"][$i+1]['imagenIcon'];
						unset($datosPerfilOrdenados["trofeos"][$i+1]['imagenIcon']);
						$datosPerfilOrdenados["trofeos"][$i+1]['url-grande'] = $datosPerfilOrdenados["trofeos"][$i+1]['imagen'];
						unset($datosPerfilOrdenados["trofeos"][$i+1]['imagen']);
					}
					for ($i=0; $i < count($trofeosJugador); $i++) { 
						$auxId = $trofeosJugador[$i]['idTrofeo'];
						$datosPerfilOrdenados["trofeos"][$auxId]["Estado"] = 1;
					}
					// echo "<pre>";
					// print_r($datosPerfilOrdenados);
					// echo "<pre>";	
					
					
					
					// echo "<pre>";
					// print_r($trofeos);
					// echo "<pre>";	
					
				}else{
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
				$datosPerfilOrdenados['galeria'] = Array(
					1 => Array (
						'idImagen' => 1,
						'nombreImagen' =>'El Gallo',
						// 'Descripción/Rima' => 'Kikiriki',
						// 'Estado' => 1, //imagen desbloqueada. Si la imagen no ha sido desbloqueda, el valor debe ser 0
						'url-chico' => 'media/img/mazo/h_01_gallo.jpg',
						'grande' => 'media/img/cargas/h_01_gallo.jpg'
					),
					2 => Array (
						'idImagen' => 2,
						'nombreImagen' =>'El diablo',
						// 'Descripción/Rima' => 'Muajajajaja',
						// 'Estado' => 0, //imagen desbloqueada. Si la imagen no ha sido desbloqueda, el valor debe ser 0
						'url-chico' => 'media/img/mazo/h_02_diablo.jpg',
						'grande' => 'media/img/cargas/h_02_diablo.jpg'
					),
					3 => Array (
						'idImagen' => 3,
						// 'nombreImagen' =>'La botella',
						// 'Descripción/Rima' => 'es una botella',	
						'Estado' => 0, //imagen desbloqueada. Si la imagen no ha sido desbloqueda, el valor debe ser 0
						'url-chico' => 'media/img/mazo/h_08_botella.jpg',
						'grande' => 'media/img/cargas/h_08_botella.jpg'
					),
					4 => Array (
						'idImagen' => 4,
						// 'nombreImagen' =>'La muerte',
						// 'Descripción/Rima' => 'Buuuuuuuuu',
						'Estado' => 1, //imagen desbloqueada. Si la imagen no ha sido desbloqueda, el valor debe ser 0
						'url-chico' => 'media/img/mazo/h_14_muerte.jpg',
						'grande' => 'media/img/cargas/h_14_muerte.jpg'
					),
					
					
				);					
				// echo "<pre>";
				// print_r($datosPerfilOrdenados);
				// echo "<pre>";
				// return $datosPerfilOrdenados;
				$this->load->view('veditarPerfilJugador', $datosPerfilOrdenados);
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
				$cartas = Array(
					1 => Array (
						'idImagen' => 1,
						'nombreImagen' =>'El Gallo',
						'Descripcion/Rima' => 'Kikiriki',
						'Estado' => 1, //imagen desbloqueada. Si la imagen no ha sido desbloqueda, el valor debe ser 0
						'url-chico' => 'h_01_gallo.jpg',
						'grande' => 'h_01_gallo.jpg'
					),
					2 => Array (
						'idImagen' => 2,
						'nombreImagen' =>'El diablo',
						'Descripcion/Rima' => 'Muajajajaja',
						'Estado' => 0, //imagen desbloqueada. Si la imagen no ha sido desbloqueda, el valor debe ser 0
						'url-chico' => 'h_02_diablo.jpg',
						'grande' => 'h_02_diablo.jpg'
					),
					3 => Array (
						'idImagen' => 3,
						'nombreImagen' =>'La botella',
						'Descripcion/Rima' => 'es una botella',
						'Estado' => 0, //imagen desbloqueada. Si la imagen no ha sido desbloqueda, el valor debe ser 0
						'url-chico' => 'h_08_botella.jpg',
						'grande' => 'h_08_botella.jpg'
					),
					4 => Array (
						'idImagen' => 4,
						'nombreImagen' =>'La muerte',
						'Descripcion/Rima' => 'Buuuuuuuuu',
						'Estado' => 1, //imagen desbloqueada. Si la imagen no ha sido desbloqueda, el valor debe ser 0
						'url-chico' => 'h_14_muerte.jpg',
						'grande' => 'h_14_muerte.jpg'
					),
					
				);
				echo json_encode($cartas[$idcarta]);
	}
}
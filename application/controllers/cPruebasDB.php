<html>
	<head>
		<meta name="tipo_contenido"  content="text/html;" http-equiv="content-type" charset="utf-8">
	</head>
	<body>
		<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
			/**
			 * 
			 */
			class CPruebasDB extends CI_Controller {
				
				function __construct() {
					parent::__construct();
					$this->load->helper(array('html', 'url', 'form'));
					$this->load->model('usuario/mregistro');
				}
				
				public function getDatos(){
					$idJuego = 1;
					$idUser = 1;
					$idPartida = 1; //1 es completa | 2 es rapida
					// $idEstadoPartida = 3; //1 es Ganado | 2 es Perfecto | 3 es Perdido
					$userName = 'jcesarcbi';
					$password = '123456s';
					$mail = 'jcesarcbi@xanum.uam.mx';
					$score = array(
							'idPartida'=>1,
							'idNivel'=>3,
							'idModalidad'=>1,
							'idUsr'=>3,
							'idJuego'=>1
							);
					$usuario = array(
								'nombreUsr'=> 'conejo73',
								'nombre'=> 'Oscar',
								'aPaterno'=> 'Peréz',
								'aMaterno'=> 'Rojas',
								'sexo'=> 'H',
								'edad'=> 40,
								'correo'=> 'conejo73@xanum.uam.mx',
								'contrasena'=> '123456',
								'cargo'=> null,
								'area'=> null,
								'idTipoUsuario'=> 1,
								'idDivision'=> 3,
								'idGradoActivo'=> 1,
								'idGradoPosgrado'=> null,
								'idAvatar'=> 5,
								);
					$record = 696969;
					$idEstadoPartida = 2;
					
					if ($idUser != 0) {
						$datos = $this->mregistro->getContrasena($idUser);
						// echo'<pre>';
							// print_r($datos);
						// echo'</pre>';
						for ($i = 0; $i < count($datos) ; $i++) { 
							$datosOrdenados[$i+1] = $datos[$i];
						}
						echo'<pre>';
							print_r($datosOrdenados);
						echo'</pre>';
					} else {
						return FALSE;
					}
				}
			}
		?>
	</body>
</html>
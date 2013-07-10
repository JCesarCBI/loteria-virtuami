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
					$this->load->model('estadisticas/mestadisticas');
				}
				
				public function getDatos(){
					$idJuego = 1;
					$idUser = 1;
					$idPartida = 1; //1 es completa | 2 es rapida
					$idEstadoPartida = 3; //1 es Ganado | 2 es Perfecto | 3 es Perdido
					$userName = 'jcesarcbi';
					$password = '123456s';
					$mail = 'jcesarcbi@xanum.uam.mx';
					
					if ($idUser != 0) {
						$datos = $this->mestadisticas->getPartidas($idUser, $idJuego, $idPartida, $idEstadoPartida);
						//echo $datos;
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
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
					$this->load->model('juego/mseleccionjuego');
				}
				
				public function getDatos(){
					$idJuego = 1;
					$idUser = 3;
					$userName = 'jcesarcbi';
					$password = 'a1b2c3d4e5';
					$mail = 'jcesarcbi@xanum.uam.mx';
					
					if ($idUser != 0) {
						$datos = $this->mseleccionjuego->getModalidad();
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
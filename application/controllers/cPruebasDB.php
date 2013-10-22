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
					$idUser = 1;
					$idJuego = 1;
					$idPartida = 1; 		//1 Completa | 2 Rapida
					$idNivel = 1; 			//1 Basico| 2 Intermedio | 3 Avanzado| 4 Experto
					$idModalidad = 1;		//1 Juego Libre| 2 Diminutivos| 3 Adjetivos| 4 Verbos| 5 Sinonimos| 6 Genero| 7 Plural| 8 Aumentativo| 9 Peyorativos| 10 Sustantivos| 11 Antonimos 
					$idEstadoPartida = 1;	//1 es Ganado | 2 es Perfecto | 3 es Perdido
					$idCarta = 1;
					$nombreUsr = 'JCesarCBI';
					$record = 200;
					
					$score = array(
									"idPartida" => 1,
									"idNivel" => 1,
									"idModalidad" => 1,
									"idUsr" => 1,
									"idJuego" => 1
					);
										
					$aleatorio = uniqid();
									
					echo $aleatorio;
					
					if ($idUser != 0) {
						$datos = $this->mestadisticas->getUltimoScore($idUser);
						// $datos = $this->mscore->setScore($score, $record, $idEstadoPartida);
						// $datos = $this->mscore->getScoreTotal($idUser, $idJuego);
						// $datos = $this->mtrofeo->getEasterEggs();
						echo'<pre>';
							print_r($datos);
						echo'</pre>';
						
						// for ($i = 0; $i < count($datos) ; $i++) { 
							// $datosOrdenados[$i+1] = $datos[$i];
						// }
						// echo'<pre>';
							// print_r($datosOrdenados);
						// echo'</pre>';
					} else {
						return FALSE;
					}
				}
			}
		?>
	</body>
</html>
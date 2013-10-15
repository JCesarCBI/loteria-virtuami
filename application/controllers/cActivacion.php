<html>
	<head>
		<meta name="tipo_contenido"  content="text/html;" http-equiv="content-type" charset="utf-8">
	</head>
	<body>
		<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
			/**
			 * 
			 */
			class CActivacion extends CI_Controller {
				
				function __construct() {
					parent::__construct();
					$this->load->helper(array('html', 'url', 'form'));
					$this->load->model('usuario/mlogin');
					$this->load->library('micombobox');
				}
				
				public function accountActivation($userName, $activationCode){
					if (($activationCode!=null)&&($userName!=null)) {
						$this->mlogin->setEstatus($userName, $activationCode);
						sleep(3);
						echo "Activación completa... Redireccionando a Loteria VIRTU@MI";
						sleep(3);
						$datos = $this->micombobox->datosComboBox();
						$this->load->view('vinicio', $datos);
					} else {
						echo "Activación incompleta";
						$datos = $this->micombobox->datosComboBox();
						$this->load->view('vinicio', $datos);
					}
				}
			}
		?>
	</body>
</html>
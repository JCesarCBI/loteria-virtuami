<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Vista Prueba Efren</title>
</head>
<body>
	<h1 id="">Loteria</h1>
	<h3>Bienvenido <?php print_r($this->session->userdata('usuario')); ?></h3>
	<form action="<?=base_url(); ?>index.php/cLogin/terminarSesion">
		<input type="submit" id="" name="" value="salir">
	</form>
	<button>Jugar</button>
	<pre>
		<!-- <?php
			print_r($this->session->userdata('usuario'));
		?> -->
	</pre>
</body>
</html>
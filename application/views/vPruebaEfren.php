<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Vista Prueba Efren</title>
</head>
<body>
	<h1 id="">Esta es una vista de prueba</h1>
	<pre>
		<?php
			print_r($this->session->userdata('usuario'));
		?>
	</pre>
</body>
</html>
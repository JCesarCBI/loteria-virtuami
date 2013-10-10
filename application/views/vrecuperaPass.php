<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/formatoCorreos.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
	</head>

	<body>
		<title>Registro de activación</title>
		<div class="header">
			<img src="<?= base_url()?>media/img/uami.png">
		</div>
		<div class="twelve columns">
			<span class="twelve columns"><h2>Recuperación de contraseña</h2></span>
			<span id="estimada" class="eight columns">
					<p>
						Estimad@:<br><br>
						 <?= $nombreUsr ?>, has solicitado la recuperación de tu contraseña
						 de acceso para poder seguir jugando en el Entorno Lúdico de Aprendizaje:
						 "Lotería", adaptado y desarrollado por la Coordinación de Educación
						 Virtual de la Universidad Autónoma Metropolitana Unidad Iztapalapa. 
					</p>	
										
					<div id="datosUsuario">
						<span>Nombre de usuario:</span><span class="dato"><?=$nombreUsr?></span><br>
						<span>Contraseña:</span><span class="dato"><?=$contrasena?></span><br>
					</div>
					<p>Para volver al entorno, da clic aquí:
						<br><a href="">Código de activación</a>
					</p>
					<p id="mensaje" class="twelve columns">
						¡Recuerda hacer uso de tus habilidades de velocidad y precisión y de tu conocimiento<br> gramatical para mejorar tu competencia
						lingüística!	
					</p>
			</span>
			<span class="four columns">
				<center><img id="loteria-img" src="<?=base_url()?>/media/img/loteria.jpg"/></center>
			</span>
		</div>
		
		
		
		<div id="segundo" class="twelve columns">
			<div class="six columns">	
				<p>Entorno Lúdico de Aprendizaje</p> 
				<p>Coordinación de Educación Virtual</p>
				<p>Universidad Autónoma Metropolitana Iztapalapa</p>
			</div>
			<div class="six columns">
				<img id="virtuami-img" src="<?=base_url()?>/media/img/i_virtuami.png"/>
			</div>
		</div>
	</body>
</html>
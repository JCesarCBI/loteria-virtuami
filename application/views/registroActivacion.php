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
			<span class="twelve columns"><h2>¡Bienvenido!</h2></span>
			<span class="eight columns">
					<p>
						Estimad@:<br><br>
						 <?= $nombreUsr ?>, estás a un paso de terminar el proceso de registro para poder jugar en el Entorno Lúdico de Aprendizaje: "Lotería", adaptado
						y desarrollado por la Coordinación de Educación Virtual de la Universidad Autónoma Metropolitana Unidad Iztapalapa.
					</p>	
										
					<div id="datosUsuario">
						<span>Nombre de usuario:</span><span class="dato"><?=$nombreUsr?></span><br>
						<!-- <label class="dato">Correo electrónico:</label><?=$correo?><br><br> -->
						<span>Contraseña:</span><span class="dato"><?=$contrasena?></span><br>
					</div>
					<p>Para completar tu registro y comenzar a jugar, da click aquí:
						<br><a href="http://148.206.34.85/index.php/cActivacion/accountActivation/<?=$nombreUsr?>/<?=$codigoActivacion?>">Código de activación</a>
					</p>
					<p id="mensaje" class="twelve columns">
						¡Haz uso de tus habilidades de velocidad y precisión y de tu conocimiento<br> gramatical para mejorar tu competencia
						lingüística!	
					</p>
			</span>
			<span class="four columns">
				<center><img id="loteria-img" src="<?=base_url()?>/media/img/m_cartas.png"/></center>
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
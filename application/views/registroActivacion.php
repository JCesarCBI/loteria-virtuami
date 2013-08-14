<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/formatoCorreos.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<!-- <script> base = "<?= base_url() ?>"</script> -->
	</head>

	<body>
		<title>Registro de activación</title>
		<div class="twelve columns">
			<div class="row">
				<div class="eight colums">
					<h2>Bienvenid@ <?= $nombreUsr ?></h2>
					<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in 
						this spot, which was created for the bliss of souls like mine.
					</p>	
					<p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that
					 I never was a greater artist than now. When, while the lovely valley teems with 
					</p>
					
					<div id="datosUsuario">
						<label class="dato">Nombre de usuario:</label><?=$nombreUsr?>
						<label class="dato">Correo electrónico:</label><?=$correo?>
						<label class="dato">Contraseña:</label><?=$contrasena?>
					</div>
					
					<p>Activa tu cuenta para comentar a jugar:</p>
					
				</div>
				<div class="four columns">
					<img id="loteria-img" src="<?=base_url()?>/media/img/loteria.jpg"/>
				</div>			</div>
			<br><br><br>
			<div class="row">
				<div class="three columns">
					<img id="virtuami-img" src="<?=base_url()?>/media/img/virtuami_logo.png"/>
				</div>
				<div class="six columns">	
					<p>
						A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.
					</p>
					<p>
I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with 
					</p>

				</div>
				<div class="three colums">
					<img id="virtuami-img" src="<?=base_url()?>/media/img/uamizt.png"/>
				</div>	
			</div>
		</div>
	</body>
</html>
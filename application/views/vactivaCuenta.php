<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/formatoCorreos.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<!-- <script> base = "<?= base_url() ?>"</script> -->
	</head>

	<body>
		<title>Activar cuenta</title>
		<div class="twelve columns">
			<div class="row">
				<div class="eight columns">
						<h2>Activación de tu cuenta</h2>
						<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in 
							this spot, which was created for the bliss of souls like mine.
						</p>	
						
						<div id="datosUsuario">
							<label class="dato">Nombre de usuario:</label><?=$nombreUsr?><br><br>
						</div>
						<p>Activa tu cuenta para comenzar a jugar:<br>
							<a href="#">Código de activación</a>
						</p>				
				</div>
				<div class="four columns">
					<img id="loteria-img" src="<?=base_url()?>/media/img/loteria.jpg"/>
				</div>
			</div>
			
			<div id="segundo" class="row">
				<div class="three columns">
					<img id="virtuami-img" src="<?=base_url()?>/media/img/virtuami_logo.png"/>
				</div>
				<div class="six columns">	
					<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p> 
					<p>I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.</p>
					
				</div>
				<div class="three columns">
					<img id="uam" src="<?=base_url()?>/media/img/uamizt.png"/>
				</div>
			</div>
		</div>
	</body>
</html>
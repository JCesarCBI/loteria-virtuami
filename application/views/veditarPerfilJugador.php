<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/perfil.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/inicio.js"></script>
	</head>

	<body>
		<title>Editar perfil</title>
		<div class="twelve columns">
		<div class="twelve columns header"></div>

		<div class="row">
			<div class="three columns foto">
				<img src="<?= base_url() ?><?= $avatar ?>" title="kawaii"/>
			</div>	
			<div class="nine columns informacion">
				<div class="row">
					<label for="usuario_nombreUsuario">Nombre de usuario:</label>
					<input type="text" id="usuario_nombreUSuario" name="usuario_nombreUSuario" value="<?= $nombreUsr?>" autofocus>
				</div>
				<div class="row">
					<div class="four columns">
						<label for="usuario_nombreUsuario">Nombre(s):</label>
						<input class="" type="text" id="usuario_nombreUsuario" name="usuario_nombreUsuario" value="<?= $nombre?>" autofocus>
					</div>
					<div class="four columns">
						<label for="usuario_nombreUsuario">Apellido paterno:</label>
						<input class="" type="text" id="usuario_nombreUsuario" name="usuario_nombreUsuario" value="<?= $aPaterno?>" autofocus>
					</div>
					<div class="four columns">
						<label for="usuario_nombreUsuario">Apellido materno:</label>
						<input class="" type="text" id="usuario_nombreUsuario" name="usuario_nombreUsuario" value="<?= $aMaterno?>" autofocus>
					</div>
				</div>
				
				<div class="row">
					<div class="four columns">
						<label for="usuario_nombreUsuario">Sexo:</label>
			        	<?php  
			        	$sexo = Array('1' => "Hombre", '2' => "Mujer");
			        	echo form_dropdown('usuario_sexo', $sexo, 1, 'id=usuario_sexo'); ?>
					</div>
					<div class="four columns">
						<label for="usuario_nombreUsuario">Edad:</label>
			        	<?php  
			        	$sexo = Array('1' => "Hombre", '2' => "Mujer");
			        	echo form_dropdown('usuario_sexo', $sexo, 1, 'id=usuario_sexo'); ?>
					</div>
					<div class="four columns"></div>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>
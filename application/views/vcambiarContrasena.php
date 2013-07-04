<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/general.css">
		<link rel="stylesheet" href="<?=base_url(); ?>media/css/perfil.css">
		<script src="<?= base_url()?>media/js/jquery-1.9.1.min.js"></script>
		<script> base = "<?= base_url() ?>"</script>
		<script src="<?= base_url()?>media/js/cambiarContrasena.js"></script>
		<style>
			form{
				margin-top:20px;
			}
		</style>
	</head>

	<body>
		<div class="twelve columns">
			<form action="" metho="post">
				<label for="usuario_contrasena">Contraseña actual:</label>
				<input type="hidden" name="id_usuario">
				<input type="text" id="usuario_contrasena" placeholder="Contraseña">
			</form>
		</div>
	</body>
</html>
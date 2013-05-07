<html>
	<head>
	<meta charset="utf-8">
	
	<title>Inicio</title>
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/foundation.css">
	<link rel="stylesheet" href="<?=base_url(); ?>media/css/fondoLoguin.css">

	</head>
	<body>
		
		<div class="nine columns">
			<div class="cajonSuperior">

			</div>
			<div class="mesa"></div>
			<div class="cajonLateral">
                <input autofocus class="lateral" type="text" id="usuario_nombreUsr" name="usuario_nombreUsr" required placeholder="usuario"/>
                <input autofocus class="lateral" type="text" id="usuario_correo" name="usuario_correo" required placeholder="e-mail"/>
                <input autofocus class="lateral" type="text" id="usuario_contrasena" name="usuario_contrasena" required	placeholder="contraseña" />
                <p class="sexo">
                	<label class="sexo" for="usuario_sexo">hombre</label><input class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="h">
                </p>
                <p class="sexo"> 
                	<label class="sexo" for="usuario_sexo">mujer</label><input class="sexo" type="radio" id="usuario_sexo" name="usuario_sexo" value="m">
                </p><br>
                <input type="button" class="boton-lateral" id="sig" name="sig" value="siguiente" />
			</div>
						<!--img src="<?=base_url();?>media/img/mesa.png"  class="mesa2"/>
						<img src="<?=base_url();?>media/img/cajon_reg.png" class="cajon2"/-->
			
		
	</body>
</html>